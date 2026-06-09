#!/bin/bash
while true; do
    echo ""
    echo "===== File System Simulation ====="
    echo "1. Create a file"
    echo "2. Delete a file"
    echo "3. Copy a file"
    echo "4. Rename a file"
    echo "5. Read a file"
    echo "6. Write to a file"
    echo "7. Backup a file"
    echo "8. Clear file content"
    echo "9. Find a file"
    echo "10. Search text in files"
    echo "11. Check file size"
    echo "12. Display file type"
    echo "13. Count lines, words, characters"
    echo "14. Check modified/accessed time"
    echo "15. Exit"
    echo "Choose an option (1-15):"
    read choice

    case $choice in
        1)
            echo "Enter filename to create:"
            read filename
            if [ -e "$filename" ]; then
                echo "File already exists!"
            else
                touch "$filename"
                echo "File '$filename' created."
            fi
            ;;
        2)
            echo "Enter filename to delete:"
            read filename
            if [ -e "$filename" ]; then
                rm "$filename"
                echo "File '$filename' deleted."
            else
                echo "File does not exist!"
            fi
            ;;
        3)
            echo "Enter source filename to copy:"
            read src
            echo "Enter destination filename:"
            read dest
            if [ -e "$src" ]; then
                cp "$src" "$dest"
                echo "File copied to '$dest'."
            else
                echo "Source file does not exist!"
            fi
            ;;
        4)
            echo "Enter current filename:"
            read oldname
            echo "Enter new filename:"
            read newname
            if [ -e "$oldname" ]; then
                mv "$oldname" "$newname"
                echo "File renamed to '$newname'."
            else
                echo "File does not exist!"
            fi
            ;;
        5)
            echo "Enter filename to read:"
            read filename
            if [ -e "$filename" ]; then
                echo "Contents of '$filename':"
                cat "$filename"
            else
                echo "File does not exist!"
            fi
            ;;
        6)
            echo "Enter filename to write to:"
            read filename
            if [ -e "$filename" ]; then
                echo "Enter text to append:"
                read text
                echo "$text" >> "$filename"
                echo "Text written to '$filename'."
            else
                echo "File does not exist!"
            fi
            ;;
        7)
            echo "Enter filename to backup:"
            read filename
            if [ -e "$filename" ]; then
                cp "$filename" "${filename}.bak"
                echo "Backup created as '${filename}.bak'"
            else
                echo "File does not exist!"
            fi
            ;;
        8)
            echo "Enter filename to clear:"
            read filename
            if [ -e "$filename" ]; then
                > "$filename"
                echo "Content cleared in '$filename'."
            else
                echo "File does not exist!"
            fi
            ;;
        9)
            echo "Enter filename to find:"
            read filename
            find . -type f -name "$filename"
            ;;
        10)
            echo "Enter text to search:"
            read search
            grep -rnw . -e "$search"
            ;;
        11)
            echo "Enter filename to check size:"
            read filename
            if [ -e "$filename" ]; then
                stat --format="%s bytes" "$filename"
            else
                echo "File does not exist!"
            fi
            ;;
        12)
            echo "Enter filename to check type:"
            read filename
            if [ -e "$filename" ]; then
                file "$filename"
            else
                echo "File does not exist!"
            fi
            ;;
        13)
            echo "Enter filename to count:"
            read filename
            if [ -e "$filename" ]; then
                wc "$filename"
            else
                echo "File does not exist!"
            fi
            ;;
        14)
            echo "Enter filename to check time:"
            read filename
            if [ -e "$filename" ]; then
                echo "Last modified:"
                stat -c %y "$filename"
                echo "Last accessed:"
                stat -c %x "$filename"
            else
                echo "File does not exist!"
            fi
            ;;
        15)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice. Try again."
            ;;
    esac
done
