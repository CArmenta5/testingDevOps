require 'fileutils'


firstFile = File.basename("/home/carmenta/testingDevOps/hello.js");
secondFIle = File.basename("/home/carmenta/testingDevOps/helloCopia.js");


flag = FileUtils.compare_file(firstFile, secondFIle);

if flag
    puts "Archivos iguales"
    #puts "Eliminando archivos desactualizados del servidor"

    #puts "Creación de server con documento actualizado"
else
    puts "Archivos no iguales"
    wasGood = system("/usr/bin/node /usr/local/bin/pm2 restart hello.js");


   

end #


