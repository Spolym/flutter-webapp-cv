import json
import ftplib
import subprocess
import os
import shutil

with open('creds.json') as f:
    creds = json.load(f)

ftp = ftplib.FTP(creds['host'])
ftp.login(creds['user'], creds['pass'])


# flutter build web run command using os.system
print('Building web app...')
os.system('flutter clean')
print('Getting packages...')
os.system('flutter pub get')
print('Building web app...')
os.system('flutter build web --web-renderer html')

# upload files to server in the build/web directory
print('Uploading files...')
shutil.make_archive('build', 'zip', 'build/web')
ftp.storbinary('STOR build.zip', open('build.zip', 'rb'))

# done
print('\n'*3)
print('Done!')
ftp.quit()