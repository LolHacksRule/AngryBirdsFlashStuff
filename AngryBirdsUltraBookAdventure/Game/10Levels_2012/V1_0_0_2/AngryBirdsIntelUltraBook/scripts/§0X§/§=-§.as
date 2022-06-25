package §0X§
{
   public class §=-§
   {
       
      
      public function §=-§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §-A§(param1:String, param2:Boolean = false) : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §=-§))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().replace(/\-\-\[\[[\s\S]*\]\]/mg,""));
               loop1:
               while(true)
               {
                  param1 = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().replace(/\-\-.*/g,""));
                        loop4:
                        while(true)
                        {
                           param1 = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(param1);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop().replace(/\[\"(.*)\"\]/g,"$1"));
                                 loop7:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    addr235:
                                    while(_loc4_)
                                    {
                                       §§push(param1);
                                       while(!_loc3_)
                                       {
                                          §§push(§§pop().replace(/^\s*\}\s*$/mg,"},"));
                                          while(_loc4_)
                                          {
                                             param1 = §§pop();
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(!(_loc3_ && §=-§))
                                                {
                                                   §§push(§§pop().replace(/^(.*\=\s*[^,\{\[\s]+)$/mg,"$&,"));
                                                }
                                                continue loop0;
                                             }
                                          }
                                          continue loop7;
                                       }
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                                 addr91:
                                 if(_loc3_ && §=-§)
                                 {
                                    continue;
                                 }
                                 param1 = §§pop();
                                 loop19:
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(§"]§(param1,param2));
                                       if(_loc4_ || §=-§)
                                       {
                                          addr44:
                                          if(_loc4_ || param1)
                                          {
                                             addr52:
                                             §§push(§§pop());
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             loop18:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            break;
                                                            addr157:
                                                         }
                                                         §§push(§§pop().replace(/([ \t\{]*)([^\=\n ]*) ?\=/mg,"$1\"$2\":"));
                                                         while(_loc4_)
                                                         {
                                                            param1 = §§pop();
                                                            while(!(_loc3_ && §=-§))
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push("{");
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     §§push(§§pop() + param1);
                                                                     if(!(_loc3_ && param2))
                                                                     {
                                                                        §§push(§§pop() + "}");
                                                                     }
                                                                  }
                                                                  param1 = §§pop();
                                                                  do
                                                                  {
                                                                     §§push(param1);
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§§pop().replace(/,(\s*[\]\}$])/mg,"$1"));
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  while(_loc3_);
                                                                  
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     return JSON.parse(param1);
                                                                     addr70:
                                                                  }
                                                                  §§goto(addr214);
                                                                  continue;
                                                               }
                                                               continue loop2;
                                                            }
                                                            §§goto(addr235);
                                                            §§goto(addr44);
                                                         }
                                                         continue loop4;
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   continue loop1;
                                                   addr141:
                                                }
                                                if(!(_loc4_ || param1))
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr91);
                                             }
                                             continue loop6;
                                          }
                                          §§goto(addr157);
                                       }
                                       §§goto(addr52);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop19;
                                       }
                                       addr199:
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr211);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      private static function §"]§(param1:String, param2:Boolean) : String
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc15_:* = null;
         var _loc16_:* = false;
         var _loc17_:String = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         var _loc3_:String = "{";
         var _loc4_:String = "}";
         var _loc5_:String = "[";
         var _loc6_:String = "]";
         var _loc7_:String = ":";
         var _loc8_:Vector.<int> = new Vector.<int>();
         var _loc9_:Vector.<int> = new Vector.<int>();
         var _loc10_:Vector.<int> = new Vector.<int>();
         var _loc11_:*;
         §§push(_loc11_ = int(param1.indexOf(_loc3_)));
         if(_loc20_)
         {
            §§push(int(§§pop()));
         }
         var _loc12_:* = §§pop();
         var _loc13_:* = int(param1.indexOf(_loc4_));
         loop0:
         while(true)
         {
            §§push(_loc11_);
            if(!_loc21_)
            {
               §§push(0);
               if(_loc20_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc20_ || _loc3_)
                  {
                     if(_loc20_ || §=-§)
                     {
                        if(!_loc21_)
                        {
                           if(_loc20_)
                           {
                              §§push(§§pop());
                              if(!(_loc21_ && param2))
                              {
                                 if(_loc20_ || param2)
                                 {
                                    if(!(_loc21_ && param2))
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc21_)
                                          {
                                             §§pop();
                                             if(!_loc21_)
                                             {
                                                if(_loc20_ || §=-§)
                                                {
                                                   if(!(_loc21_ && _loc3_))
                                                   {
                                                      if(true)
                                                      {
                                                         §§push(_loc13_);
                                                         if(_loc20_ || param2)
                                                         {
                                                            loop1:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               addr618:
                                                               loop71:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() >= §§pop());
                                                                  addr619:
                                                                  loop70:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr601:
                                                                        §§push(_loc11_);
                                                                        loop34:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() >= §§pop());
                                                                              loop36:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 addr606:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr608:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc11_);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                §§push(_loc13_);
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   continue loop71;
                                                                                                }
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   continue loop36;
                                                                                                }
                                                                                                §§push(§§pop() < §§pop());
                                                                                             }
                                                                                             addr621:
                                                                                             var _loc14_:* = §§pop();
                                                                                             if(!(_loc21_ && param2))
                                                                                             {
                                                                                                addr630:
                                                                                                §§push(_loc14_);
                                                                                                if(_loc20_ || param1)
                                                                                                {
                                                                                                   if(§§pop() >= _loc9_.length)
                                                                                                   {
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         if(!(_loc21_ && param2))
                                                                                                         {
                                                                                                            §§push(param1);
                                                                                                            if(_loc20_ || §=-§)
                                                                                                            {
                                                                                                               if(!(_loc21_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     addr714:
                                                                                                                     §§push(_loc13_);
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        if(_loc20_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                           if(_loc20_ || param2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 addr737:
                                                                                                                                 _loc19_ = §§pop().substring(§§pop());
                                                                                                                                 addr738:
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc17_);
                                                                                                                                    if(_loc20_ || §=-§)
                                                                                                                                    {
                                                                                                                                       addr708:
                                                                                                                                       §§push(§§pop() + _loc5_ + _loc18_ + _loc6_ + _loc19_);
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          param1 = §§pop();
                                                                                                                                          _loc14_++;
                                                                                                                                          addr673:
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             if(_loc20_ || param2)
                                                                                                                                             {
                                                                                                                                                if(!(_loc21_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr689:
                                                                                                                                                   §§goto(addr630);
                                                                                                                                                }
                                                                                                                                                addr770:
                                                                                                                                                _loc17_ = param1.substring(0,_loc11_);
                                                                                                                                                addr768:
                                                                                                                                                addr766:
                                                                                                                                                if(_loc20_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(param1);
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc20_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc21_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr756:
                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                            §§push(1);
                                                                                                                                                            if(!_loc21_)
                                                                                                                                                            {
                                                                                                                                                               addr762:
                                                                                                                                                               _loc18_ = §§pop().substring(§§pop() + §§pop(),_loc13_);
                                                                                                                                                               §§goto(addr714);
                                                                                                                                                               §§push(param1);
                                                                                                                                                               addr763:
                                                                                                                                                               addr759:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr768);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr766);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr770);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr762);
                                                                                                                                                }
                                                                                                                                                addr802:
                                                                                                                                                §§push(int(_loc10_[_loc14_]));
                                                                                                                                                if(!(_loc21_ && §=-§))
                                                                                                                                                {
                                                                                                                                                   _loc13_ = §§pop();
                                                                                                                                                   §§goto(addr802);
                                                                                                                                                }
                                                                                                                                                addr809:
                                                                                                                                                _loc11_ = §§pop();
                                                                                                                                                addr810:
                                                                                                                                                §§goto(addr810);
                                                                                                                                                addr767:
                                                                                                                                             }
                                                                                                                                             §§goto(addr763);
                                                                                                                                          }
                                                                                                                                          §§goto(addr738);
                                                                                                                                          addr711:
                                                                                                                                       }
                                                                                                                                       §§goto(addr762);
                                                                                                                                    }
                                                                                                                                    §§goto(addr708);
                                                                                                                                 }
                                                                                                                                 §§goto(addr770);
                                                                                                                              }
                                                                                                                              §§goto(addr759);
                                                                                                                           }
                                                                                                                           §§goto(addr756);
                                                                                                                        }
                                                                                                                        §§goto(addr767);
                                                                                                                     }
                                                                                                                     §§goto(addr756);
                                                                                                                  }
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                               §§goto(addr737);
                                                                                                            }
                                                                                                            §§goto(addr708);
                                                                                                         }
                                                                                                         §§goto(addr711);
                                                                                                      }
                                                                                                      §§goto(addr673);
                                                                                                   }
                                                                                                   §§goto(addr809);
                                                                                                   §§push(int(_loc9_[_loc14_]));
                                                                                                }
                                                                                                §§goto(addr802);
                                                                                             }
                                                                                             §§goto(addr689);
                                                                                          }
                                                                                       }
                                                                                       addr607:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             §§push(int(_loc8_.pop()));
                                                                                             if(!(_loc20_ || _loc3_))
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             _loc11_ = §§pop();
                                                                                             loop48:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1);
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().substring(_loc11_,_loc13_ + 1));
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc15_ = §§pop();
                                                                                                      loop5:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(false);
                                                                                                         loop6:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc16_ = §§pop();
                                                                                                            loop7:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc20_ || param1))
                                                                                                               {
                                                                                                                  continue loop48;
                                                                                                               }
                                                                                                               §§push(_loc15_);
                                                                                                               loop54:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  loop50:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(1);
                                                                                                                     if(_loc20_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(§§pop().indexOf(§§pop(),§§pop()) >= 0)
                                                                                                                        {
                                                                                                                           addr457:
                                                                                                                           §§push(_loc15_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              loop30:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(1);
                                                                                                                                 loop31:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().indexOf(§§pop(),§§pop()) < 0);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          addr467:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc21_ && §=-§))
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      loop58:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc21_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc20_ || §=-§)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  loop32:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                     loop49:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop50;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(1);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           loop27:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(1);
                                                                                                                                                                              addr525:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop().indexOf(§§pop(),§§pop()) < 0)
                                                                                                                                                                                 {
                                                                                                                                                                                    loop8:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param2);
                                                                                                                                                                                       loop9:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                          loop10:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             addr531:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop12:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      addr533:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().search(/[a..z,A..Z,0..9]+/g) >= 0);
                                                                                                                                                                                                                  while(_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop12;
                                                                                                                                                                                                                  addr501:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop16;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop17;
                                                                                                                                                                                                            addr341:
                                                                                                                                                                                                            if(!(_loc20_ || _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc21_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                                                                               loop52:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(1);
                                                                                                                                                                                                                  loop41:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc21_ && §=-§))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop31;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop().indexOf(§§pop(),§§pop()) > 0);
                                                                                                                                                                                                                        loop42:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc21_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc20_ || _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop10;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(true);
                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop70;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc20_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                                                                                                                             loop33:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr291:
                                                                                                                                                                                                                                                loop23:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                                                                   addr293:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc20_ || _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop42;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop6;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc21_ && param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop9;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc20_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc21_ && §=-§)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop36;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop7;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr326:
                                                                                                                                                                                                                                                            _loc9_.push(_loc11_);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc10_.push(_loc13_);
                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc21_ && §=-§))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc20_ || param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop58;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr283:
                                                                                                                                                                                                                                                                     if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(param1);
                                                                                                                                                                                                                                                                           loop55:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                                                                                                                 loop53:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc21_ && _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop30;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                                                                                                                    loop40:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc21_ && param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                                                                                                                       loop39:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          loop38:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(int(§§pop().indexOf(§§pop(),§§pop())));
                                                                                                                                                                                                                                                                                             loop37:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                addr255:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc21_ && §=-§))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(param1);
                                                                                                                                                                                                                                                                                                         if(!(_loc20_ || param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop55;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc21_ && param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop54;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop53;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop52;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc21_ && §=-§)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop49;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop40;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(1);
                                                                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop39;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         if(_loc21_ && _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop38;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(int(§§pop().indexOf(§§pop(),§§pop())));
                                                                                                                                                                                                                                                                                                         if(!(_loc21_ && §=-§))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop37;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop34;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop33;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc20_ || param1))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop8;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop5;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr596:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc8_.push(_loc11_);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     loop24:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc20_ || param2))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop32;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop30;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr341);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr332:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr446:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                                                                                                                           continue loop24;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr447:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                     if(_loc21_ && §=-§)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop1;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr620:
                                                                                                                                                                                                                                                                                                                  §§goto(addr621);
                                                                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr620);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr620);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop0;
                                                                                                                                                                                                                                                                                                      addr144:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr608);
                                                                                                                                                                                                                                                                                                   §§goto(addr621);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr332);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr230:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(true);
                                                                                                                                                                                                                                                                           addr506:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc16_ = §§pop();
                                                                                                                                                                                                                                                                              addr507:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr455:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop23;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr283);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr505:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr324);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr620);
                                                                                                                                                                                                                                                               §§goto(addr326);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr324:
                                                                                                                                                                                                                                                            addr329:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr230);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr607);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr415:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr446);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr447);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr415);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr291);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr501);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr455);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr506);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().indexOf(§§pop(),§§pop()) > _loc15_.indexOf(_loc3_,1));
                                                                                                                                                                                                                           continue loop6;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr429:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop27;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr505);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr455);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr429);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr522:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr523);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr533);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr507);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr475:
                                                                                                                                                }
                                                                                                                                                §§goto(addr395);
                                                                                                                                             }
                                                                                                                                             §§goto(addr531);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr466:
                                                                                                                                    }
                                                                                                                                    §§goto(addr525);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr457);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr522);
                                                                                                                     }
                                                                                                                     §§goto(addr525);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop48;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr596);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr620);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr621);
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                   §§goto(addr329);
                                                }
                                                §§goto(addr255);
                                             }
                                             §§goto(addr620);
                                          }
                                       }
                                       §§goto(addr619);
                                    }
                                    §§goto(addr606);
                                 }
                                 §§goto(addr467);
                              }
                              §§goto(addr445);
                           }
                           §§goto(addr466);
                        }
                        §§goto(addr475);
                     }
                     §§goto(addr293);
                  }
                  §§goto(addr619);
               }
               §§goto(addr618);
            }
            §§goto(addr621);
         }
      }
   }
}
