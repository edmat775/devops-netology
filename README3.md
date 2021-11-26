1. Системный вызов команды cd - chdir("/tmp")

2. База данных находится  /usr/share/misc/magic.mgc

openat(AT_FDCWD, "/usr/share/misc/magic.mgc", O_RDONLY) = 3

stat("/home/vagrant/.magic.mgc", 0x7fff9c337980) = -1 ENOENT (No such file or directory)
stat("/home/vagrant/.magic", 0x7fff9c337980) = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/etc/magic.mgc", O_RDONLY) = -1 ENOENT (No such file or directory)
stat("/etc/magic", {st_mode=S_IFREG|0644, st_size=111, ...}) = 0
openat(AT_FDCWD, "/etc/magic", O_RDONLY) = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=111, ...}) = 0
read(3, "# Magic local data for file(1) c"..., 4096) = 111
read(3, "", 4096)                       = 0
close(3)                                = 0
openat(AT_FDCWD, "/usr/share/misc/magic.mgc", O_RDONLY) = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=5811536, ...}) = 0
mmap(NULL, 5811536, PROT_READ|PROT_WRITE, MAP_PRIVATE, 3, 0) = 0x7fb86811c000
close(3)

3. 
vagrant@vagrant:~$ ping 10.0.1.2 > log &
[1] 2823
vagrant@vagrant:~$ ps aux | grep ping
vagrant     2823  0.0  0.0   9692   936 pts/0    S    10:37   0:00 ping 10.0.1.2
vagrant     2828  0.0  0.0   8900   740 pts/0    S+   10:43   0:00 grep --color=auto ping
vagrant@vagrant:~$ rm log
vagrant@vagrant:~$ sudo lsof -p 2823 | grep log
ping    2823 vagrant    1w   REG  253,0   169745 131081 /home/vagrant/log (deleted)
root@vagrant:/home/vagrant# echo '' >/proc/2823/fd/1

4. Зомби-процессы не занимают память (как процессы-сироты), но блокируют записи в таблице процессов, размер которой ограничен для каждого пользователя и системы в целом.

5.  root@vagrant:~# /usr/sbin/opensnoop-bpfcc
PID    COMM               FD ERR PATH
769    vminfo              4   0 /var/run/utmp
583    dbus-daemon        -1   2 /usr/local/share/dbus-1/system-services
583    dbus-daemon        16   0 /usr/share/dbus-1/system-services
583    dbus-daemon        -1   2 /lib/dbus-1/system-services
583    dbus-daemon        16   0 /var/lib/snapd/dbus-1/system-services/
588    irqbalance          6   0 /proc/interrupts
588    irqbalance          6   0 /proc/stat
588    irqbalance          6   0 /proc/irq/20/smp_affinity
588    irqbalance          6   0 /proc/irq/0/smp_affinity
588    irqbalance          6   0 /proc/irq/1/smp_affinity
588    irqbalance          6   0 /proc/irq/8/smp_affinity
588    irqbalance          6   0 /proc/irq/12/smp_affinity
588    irqbalance          6   0 /proc/irq/14/smp_affinity
588    irqbalance          6   0 /proc/irq/15/smp_affinity
769    vminfo              4   0 /var/run/utmp
583    dbus-daemon        -1   2 /usr/local/share/dbus-1/system-services
583    dbus-daemon        16   0 /usr/share/dbus-1/system-services
583    dbus-daemon        -1   2 /lib/dbus-1/system-services
583    dbus-daemon        16   0 /var/lib/snapd/dbus-1/system-services/


6. системный вызов uname()
Part of the utsname information is also accessible  via  /proc/sys/kernel/{ostype, hostname, osrelease, version, domainname}
Часть  информации,  возвращаемой  данным  системным  вызовом также доступна через sysctl и через файлы /proc/sys/kernel/{ostype, hostname, osrelease, version, domainname}

7.
&& Оператор (AND оператор)
# command 1 && command 2  Оператор выполнит вторую команду только в том случае, если команда 1 успешно выполнена.
Оператор точка с запятой (;)
Оператор точка с запятой выполняет несколько команд одновременно последовательно и обеспечивает вывод без зависимости от успеха и отказа других команд, таких как && и ||

8. 
-e Выход немедленно, если команда завершается с ненулевым статусом
-u неустановленные/не заданные параметры и переменные считаются как ошибки
-x вывод печати команд по мере их выполнения
-o pipefail возвращает код возврата набора/последовательности команд, ненулевой при последней команды или 0 для успешного выполнения команд.
Для сценария, повышает детализацию вывода ошибок, завершит сценарий при наличии ошибок на любом этапе выполнения, кроме последней завершающей команды.

9. Самые частые 
S*(S,S+,Ss,Ssl,Ss+) - Процессы ожидающие завершения (спящие с прерыванием "сна")
I*(I,I<) - фоновые(бездействующие) процессы ядра
доп символы это доп характеристики, например s является лидером сеанса.


