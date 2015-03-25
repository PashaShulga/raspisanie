# -*- coding: utf-8 -*-
from app import app


def main():
    app.run(host='localhost', port=8000)
    return 0
if __name__ == '__main__':
    main() 
