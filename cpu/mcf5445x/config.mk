#
# (C) Copyright 2003 Josef Baumgartner <josef.baumgartner@telex.de>
#
# (C) Copyright 2000-2004
# Wolfgang Denk, DENX Software Engineering, wd@denx.de.
#
# See file CREDITS for list of people who contributed to this
# project.
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2 of
# the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston,
# MA 02111-1307 USA
#

PLATFORM_RELFLAGS += -ffixed-d7 -msep-data
ifeq ($(findstring 4.2,$(shell $(CC) --version)),4.2)
PLATFORM_CPPFLAGS += -mcpu=54455 -fPIC
else
PLATFORM_CPPFLAGS += -m5407 -fPIC
endif
