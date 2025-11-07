FOLDER_PATH="/mnt/c/Users/tungb/Documents" 


find "$FOLDER_PATH" -type f -name "*.txt" | while read -r file; do
    # Lệnh wc -l đếm số dòng. Cắt bỏ tên file để chỉ lấy số
    LINE_COUNT=$(wc -l < "$file" | tr -d ' ')
    echo "File: $file - Số dòng: $LINE_COUNT"
done

echo "------------------------------"
echo "Đã hoàn thành việc đếm dòng."