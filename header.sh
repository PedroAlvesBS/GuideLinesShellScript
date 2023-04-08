#!/bin/bash
#
# full_name.sh - Search for a user's full name in Unix
#
# Website    : http://program.com.br/fullname/
# Author     : John Wick <john@mail.com>
# Maintenance: Mary Poppins <mary@mail.com>
#
# --------------------------------------------------------------
#  This program receives a user's login as a parameters and
#  searchs in some sources what are thir full name, returning 
#  the result in the standard output (STDOUT).
#
# Examples:
#   $ ./full_name.sh joseph
#   Joseph Smith
#   $ ./full_name.sh josephhh
#   $
#
# The order of full name searching is sequential:
#
#  1. File /etc/passwd
#  2. File $HOME/.plan
#  3. LDAP Users source
#  4. MySQL Users source
#
# The first result found is returned, according to the search order.
# --------------------------------------------------------------
#
#
# History:
#
#  v1.0 1999-05-18, John Wick:
#     - First Version, searching in /etc/passwd
#  v1.1 1999-08-02, John Wick:
#     - Added searching in $HOME/.plan
#     - Fixed bug with accented names
#  v2.0 2000-04-28, Mario Smith:
#     - Fixeds 2534 bugs (John is not a programmer!)
#     - Signed my name throughout the code hehehe
#  v2.1 2000-04-30, Joseph Clark:
#     - Undone "fixed" performed by Mário (he broke the program)
#     - Removed sentence "Mario Rule" from everywhere
#  v2.2 2000-05-02, Joseph Clark:
#     - Added support to LDAP (What a hassle!)
#     - Accept UPERCASE usernames
#     - Removed accent support (it breaks my terminal)
#  v2.3 2000-05-03, Joseph Clark:
#     - Fixed LDAP support (Now it will work)
#  v2.4 2000-05-03, Joseph Clark:
#     - Fixed LDAP supporte (Now it is for real)
#  v2.5 2000-05-04, Joseph Clark:
#     - Removed LDAP support (I hate LDAP!)
#  v3.0 2000-05-10, Mary Poppins:
#     - Program rewrite from zero
#     - Added support to LDAP (functional)
#     - Added support to MySQL
#     - Restored support to accent
#  v3.1 2003-05-10, Mary Poppins:
#     - Added this to comment to celebrate 3 years 
#       without changes :)
#
#
#
#  License GPL.
#