package § !Y§
{
   public class §9k§
   {
       
      
      public function §9k§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §9"@§(param1:String, param2:Boolean = false, param3:Boolean = false) : Object
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               addr112:
               while(true)
               {
                  §§pop().§§slot[4] = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     addr86:
                     while(true)
                     {
                        §§push(null);
                        if(!(_loc6_ || param2))
                        {
                           break;
                           addr106:
                        }
                        §§pop().§§slot[5] = §§pop();
                        while(_loc6_)
                        {
                           §§push(§§newactivation());
                           continue loop0;
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public static function §-^§(param1:String, param2:Boolean = false) : Object
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            addr55:
            while(true)
            {
               addr32:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
               try
               {
                  addr56:
                  §§push(§§newactivation());
                  if(!(_loc5_ && param1))
                  {
                     §§pop().§§slot[3] = JSON.parse(normalizedLua);
                     if(!(_loc5_ && §9k§))
                     {
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           if(§§pop().§§slot[2])
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(§§newactivation());
                                 if(_loc6_)
                                 {
                                    §§pop().§§slot[3].debug = normalizedLua;
                                 }
                                 §§goto(addr138);
                              }
                           }
                        }
                        §§goto(addr138);
                     }
                     §§push(§§newactivation());
                  }
               }
               catch(e:Error)
               {
                  addr88:
                  throw new Error("Error parsing JSON string.\n" + normalizedLua);
               }
               addr138:
               return §§pop().§§slot[3];
            }
         }
      }
      
      public static function §4l§(param1:String, param2:Boolean = false) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().replace(/\-\-\[\[[\s\S]*?\]\]/mg,""));
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
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop().replace(/\}\s*$/mg,"},"));
                                          addr209:
                                          while(true)
                                          {
                                             param1 = §§pop();
                                             addr210:
                                             while(!(_loc3_ && §9k§))
                                             {
                                                if(!(_loc4_ || _loc3_))
                                                {
                                                   continue loop2;
                                                }
                                                §§push(param1);
                                                while(true)
                                                {
                                                   §§push(§§pop().replace(/^(.*\=\s*[^,\{\[\s]+)$/mg,"$&,"));
                                                   continue loop3;
                                                }
                                             }
                                             continue loop5;
                                          }
                                          addr54:
                                          if(_loc3_ && param1)
                                          {
                                             continue;
                                          }
                                          §§push(§§pop());
                                          loop23:
                                          for(; _loc4_; while(true)
                                          {
                                             §§push(param1);
                                             if(!_loc4_)
                                             {
                                                continue loop23;
                                             }
                                             if(_loc4_)
                                             {
                                                addr26:
                                                if(!(_loc3_ && param2))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop3;
                                                }
                                                addr105:
                                                while(true)
                                                {
                                                   param1 = §§pop();
                                                   §§goto(addr106);
                                                   §§goto(addr26);
                                                }
                                             }
                                             §§goto(addr45);
                                          },return §§pop())
                                          {
                                             param1 = §§pop();
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr72:
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   break loop23;
                                                   §§goto(addr72);
                                                }
                                                addr133:
                                             }
                                             loop21:
                                             while(_loc4_ || param2)
                                             {
                                                §§push(§#!"§(param1,param2));
                                                while(true)
                                                {
                                                   if(_loc4_ || §9k§)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr54);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr184);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         param1 = §§pop();
                                                         break loop21;
                                                      }
                                                      addr159:
                                                   }
                                                }
                                                continue loop9;
                                             }
                                             loop17:
                                             while(true)
                                             {
                                                if(_loc4_ || §9k§)
                                                {
                                                   if(_loc4_ || §9k§)
                                                   {
                                                      if(!(_loc4_ || §9k§))
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§push("{" + param1);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() + "}");
                                                      }
                                                      param1 = §§pop();
                                                      §§goto(addr133);
                                                   }
                                                   break;
                                                }
                                                addr199:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   addr136:
                                                   while(_loc4_ || param2)
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§goto(addr159);
                                                      }
                                                      continue loop7;
                                                      §§push(§§pop().replace(/([^{,\=\s]*)\s*?\=/mg,"\"$1\":"));
                                                      break loop23;
                                                   }
                                                   §§goto(addr209);
                                                   continue loop17;
                                                }
                                             }
                                             §§goto(addr210);
                                          }
                                          while(_loc4_ || _loc3_)
                                          {
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                continue loop4;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr105);
                                             §§push(§§pop().replace(/,(\s*[\]\}$])/mg,"$1"));
                                          }
                                          §§goto(addr136);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private static function §#!"§(param1:String, param2:Boolean) : String
      {
         var _loc31_:Boolean = false;
         var _loc32_:Boolean = true;
         var _loc18_:* = null;
         var _loc19_:* = false;
         var _loc20_:Array = null;
         var _loc21_:* = false;
         var _loc22_:* = 0;
         var _loc23_:* = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:String = null;
         var _loc27_:* = null;
         var _loc28_:* = null;
         var _loc29_:* = null;
         var _loc30_:* = null;
         var _loc3_:String = "{";
         var _loc4_:String = "}";
         var _loc5_:String = "[";
         var _loc6_:String = "]";
         var _loc7_:String = ":";
         var _loc8_:String = ",";
         var _loc9_:Vector.<int> = new Vector.<int>();
         var _loc10_:Vector.<int> = new Vector.<int>();
         var _loc11_:Vector.<int> = new Vector.<int>();
         var _loc12_:Vector.<int> = new Vector.<int>();
         var _loc13_:Vector.<int> = new Vector.<int>();
         var _loc14_:* = 0;
         var _loc15_:*;
         §§push(_loc15_ = int(param1.indexOf(_loc3_)));
         if(_loc32_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc16_:* = §§pop();
         var _loc17_:* = int(param1.indexOf(_loc4_));
         loop0:
         while(true)
         {
            §§push(_loc15_);
            loop1:
            while(true)
            {
               §§push(0);
               loop2:
               while(_loc32_)
               {
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() >= §§pop());
                     if(_loc32_ || param1)
                     {
                        if(_loc32_)
                        {
                           if(!(_loc31_ && param2))
                           {
                              §§push(§§pop());
                              if(!(_loc31_ && §9k§))
                              {
                                 loop4:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop76:
                                       while(true)
                                       {
                                          if(!_loc31_)
                                          {
                                             loop52:
                                             while(true)
                                             {
                                                §§pop();
                                                addr1283:
                                                §§push(_loc17_);
                                                §§push(0);
                                                if(!_loc32_)
                                                {
                                                   break;
                                                }
                                                if(_loc32_)
                                                {
                                                   loop75:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                      if(!(_loc32_ || _loc3_))
                                                      {
                                                         continue loop76;
                                                      }
                                                      if(!_loc31_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§push(_loc15_);
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc32_ || param2))
                                                                  {
                                                                     continue loop75;
                                                                  }
                                                                  §§push(§§pop() >= §§pop());
                                                                  if(!(_loc31_ && param1))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc31_ && _loc3_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc32_ || _loc3_)
                                                                        {
                                                                           §§pop();
                                                                           if(!(_loc31_ && param2))
                                                                           {
                                                                              §§push(_loc15_);
                                                                              if(!(_loc31_ && _loc3_))
                                                                              {
                                                                                 §§push(_loc17_);
                                                                                 if(!_loc32_)
                                                                                 {
                                                                                    continue loop75;
                                                                                 }
                                                                                 addr347:
                                                                                 §§push(§§pop() < §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc32_)
                                                                                       {
                                                                                          _loc9_.push(_loc15_);
                                                                                          §§push(_loc15_);
                                                                                          if(!_loc31_)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             if(_loc32_ || param1)
                                                                                             {
                                                                                                _loc16_ = §§pop();
                                                                                                if(!_loc31_)
                                                                                                {
                                                                                                   §§goto(addr1303);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr694:
                                                                                                   §§push(true);
                                                                                                   if(_loc31_)
                                                                                                   {
                                                                                                      continue loop52;
                                                                                                   }
                                                                                                   _loc19_ = §§pop();
                                                                                                   if(!(_loc32_ || param2))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1318);
                                                                                             }
                                                                                             §§goto(addr1247);
                                                                                          }
                                                                                          §§goto(addr1212);
                                                                                          addr354:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§push(int(_loc9_.pop()));
                                                                                    if(!(_loc31_ && param1))
                                                                                    {
                                                                                       if(!_loc31_)
                                                                                       {
                                                                                          _loc15_ = §§pop();
                                                                                          if(_loc32_)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(!(_loc31_ && param2))
                                                                                             {
                                                                                                §§push(_loc15_);
                                                                                                if(_loc32_ || param1)
                                                                                                {
                                                                                                   §§push(_loc17_);
                                                                                                   if(_loc32_ || §9k§)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                      if(_loc32_)
                                                                                                      {
                                                                                                         §§push(§§pop().substring(§§pop(),§§pop()));
                                                                                                         if(_loc32_)
                                                                                                         {
                                                                                                            _loc18_ = §§pop();
                                                                                                            if(!_loc31_)
                                                                                                            {
                                                                                                               §§push(false);
                                                                                                               if(_loc32_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr1358);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr1099);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr974);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr420:
                                                                                                         _loc20_ = §§pop().substr(§§pop(),§§pop()).split(_loc8_);
                                                                                                         if(!(_loc31_ && param2))
                                                                                                         {
                                                                                                            addr641:
                                                                                                            _loc21_ = false;
                                                                                                            addr642:
                                                                                                            §§push(0);
                                                                                                            if(!_loc31_)
                                                                                                            {
                                                                                                               _loc14_ = §§pop();
                                                                                                               addr639:
                                                                                                               if(_loc14_ >= _loc20_.length)
                                                                                                               {
                                                                                                                  addr595:
                                                                                                                  §§push(_loc21_);
                                                                                                                  if(_loc32_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr600:
                                                                                                                        §§push(true);
                                                                                                                        if(!_loc31_)
                                                                                                                        {
                                                                                                                           _loc19_ = §§pop();
                                                                                                                           addr604:
                                                                                                                           §§push(0);
                                                                                                                           if(!(_loc31_ && _loc3_))
                                                                                                                           {
                                                                                                                              _loc14_ = §§pop();
                                                                                                                              addr587:
                                                                                                                              if(_loc32_)
                                                                                                                              {
                                                                                                                                 addr644:
                                                                                                                                 if(_loc14_ < _loc20_.length)
                                                                                                                                 {
                                                                                                                                    if(_loc20_[_loc14_].indexOf(_loc7_) > 0)
                                                                                                                                    {
                                                                                                                                       if(_loc32_ || param2)
                                                                                                                                       {
                                                                                                                                          if(!(_loc31_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             if(!(_loc31_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop() + _loc18_.indexOf(_loc20_[_loc14_])));
                                                                                                                                                if(!(_loc31_ && §9k§))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc22_ = §§pop());
                                                                                                                                                   if(_loc32_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr644);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§push(int(§§pop() + _loc20_[_loc14_].length));
                                                                                                                                             if(!_loc31_)
                                                                                                                                             {
                                                                                                                                                if(_loc32_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   _loc23_ = §§pop();
                                                                                                                                                   addr569:
                                                                                                                                                   if(!(_loc31_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      _loc12_.push(_loc22_);
                                                                                                                                                      addr490:
                                                                                                                                                      if(!(_loc31_ && param1))
                                                                                                                                                      {
                                                                                                                                                         addr465:
                                                                                                                                                         _loc13_.push(_loc23_);
                                                                                                                                                         if(_loc32_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc31_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc32_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr433:
                                                                                                                                                                  _loc14_++;
                                                                                                                                                                  if(_loc32_ || §9k§)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc31_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc32_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc32_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr465);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr644);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr569);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr490);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr465);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1342);
                                                                                                                                                               }
                                                                                                                                                               addr631:
                                                                                                                                                               if(!_loc31_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr595);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr639);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr595);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr600);
                                                                                                                                                      }
                                                                                                                                                      addr609:
                                                                                                                                                      if(!_loc31_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr639);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr642);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr604);
                                                                                                                                             }
                                                                                                                                             §§goto(addr644);
                                                                                                                                          }
                                                                                                                                          §§goto(addr587);
                                                                                                                                       }
                                                                                                                                       §§goto(addr569);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr433);
                                                                                                                              }
                                                                                                                              addr623:
                                                                                                                              §§push(true);
                                                                                                                              if(!(_loc31_ && param1))
                                                                                                                              {
                                                                                                                                 _loc21_ = §§pop();
                                                                                                                                 §§goto(addr631);
                                                                                                                              }
                                                                                                                              §§goto(addr641);
                                                                                                                           }
                                                                                                                           §§goto(addr639);
                                                                                                                        }
                                                                                                                        §§goto(addr623);
                                                                                                                     }
                                                                                                                     §§goto(addr433);
                                                                                                                  }
                                                                                                                  §§goto(addr600);
                                                                                                               }
                                                                                                               if(_loc20_[_loc14_].indexOf(_loc7_) < 0)
                                                                                                               {
                                                                                                                  §§goto(addr623);
                                                                                                               }
                                                                                                               _loc14_++;
                                                                                                               §§goto(addr609);
                                                                                                            }
                                                                                                            §§goto(addr644);
                                                                                                         }
                                                                                                         §§goto(addr623);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1148);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr416:
                                                                                                   §§push(_loc18_.length - 2);
                                                                                                }
                                                                                                §§goto(addr420);
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop1;
                                                                                    §§goto(addr1121);
                                                                                 }
                                                                                 §§goto(addr741);
                                                                              }
                                                                              §§goto(addr1361);
                                                                           }
                                                                           §§goto(addr812);
                                                                        }
                                                                        §§goto(addr1336);
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                                  §§goto(addr697);
                                                               }
                                                               continue loop75;
                                                            }
                                                            if(_loc32_)
                                                            {
                                                               if(!_loc32_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               if(_loc32_ || _loc3_)
                                                               {
                                                                  §§push(0);
                                                                  loop53:
                                                                  while(true)
                                                                  {
                                                                     _loc14_ = §§pop();
                                                                     addr1248:
                                                                     loop54:
                                                                     while(true)
                                                                     {
                                                                        loop49:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc14_);
                                                                           loop50:
                                                                           while(true)
                                                                           {
                                                                              if(_loc32_ || §9k§)
                                                                              {
                                                                                 if(§§pop() >= _loc10_.length)
                                                                                 {
                                                                                    if(!_loc31_)
                                                                                    {
                                                                                       §§push(int(_loc13_.length - 1));
                                                                                       loop51:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc31_ && param2)
                                                                                          {
                                                                                             addr1210:
                                                                                             if(_loc32_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc15_ = §§pop();
                                                                                                   §§goto(addr1213);
                                                                                                }
                                                                                                addr1212:
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          if(!(_loc31_ && _loc3_))
                                                                                          {
                                                                                             if(_loc32_ || param1)
                                                                                             {
                                                                                                _loc14_ = §§pop();
                                                                                                addr1099:
                                                                                                loop8:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop9:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc14_);
                                                                                                      if(_loc32_)
                                                                                                      {
                                                                                                         if(!_loc31_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(!_loc31_)
                                                                                                            {
                                                                                                               if(_loc32_)
                                                                                                               {
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     if(_loc32_ || param1)
                                                                                                                     {
                                                                                                                        if(_loc32_ || param1)
                                                                                                                        {
                                                                                                                           if(_loc32_ || §9k§)
                                                                                                                           {
                                                                                                                              if(!_loc31_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param1);
                                                                                                                                    if(_loc32_ || param2)
                                                                                                                                    {
                                                                                                                                       if(_loc32_)
                                                                                                                                       {
                                                                                                                                          if(!_loc31_)
                                                                                                                                          {
                                                                                                                                             if(_loc32_ || §9k§)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             loop40:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc17_);
                                                                                                                                                addr1147:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(1);
                                                                                                                                                   addr1148:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!(_loc31_ && §9k§))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().substring(§§pop()));
                                                                                                                                                         loop43:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc28_ = §§pop();
                                                                                                                                                            addr1159:
                                                                                                                                                            addr1328:
                                                                                                                                                            addr1311:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc31_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc32_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc32_ || param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc24_);
                                                                                                                                                                        §§push(_loc25_);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr1361:
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc26_);
                                                                                                                                                                     continue loop43;
                                                                                                                                                                     break loop2;
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop40;
                                                                                                                                                            }
                                                                                                                                                            addr1328:
                                                                                                                                                            addr1303:
                                                                                                                                                            addr1287:
                                                                                                                                                            _loc11_.push(_loc17_);
                                                                                                                                                            addr1341:
                                                                                                                                                            _loc17_ = int(param1.indexOf(_loc4_,_loc17_ + 1));
                                                                                                                                                            addr1341:
                                                                                                                                                            §§push(param1);
                                                                                                                                                            addr1341:
                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                            if(_loc32_ || §9k§)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                               if(!_loc32_)
                                                                                                                                                               {
                                                                                                                                                                  addr1342:
                                                                                                                                                                  addr1354:
                                                                                                                                                                  addr1356:
                                                                                                                                                                  addr1355:
                                                                                                                                                                  addr1357:
                                                                                                                                                                  addr1358:
                                                                                                                                                                  addr1359:
                                                                                                                                                                  §§push((_loc25_ = §§pop().indexOf(§§pop(),§§pop())) > 0);
                                                                                                                                                                  if((_loc25_ = §§pop().indexOf(§§pop(),§§pop())) > 0)
                                                                                                                                                                  {
                                                                                                                                                                     addr1360:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     §§goto(addr1361);
                                                                                                                                                                  }
                                                                                                                                                                  addr1334:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr1336:
                                                                                                                                                                     _loc19_ = true;
                                                                                                                                                                     addr1337:
                                                                                                                                                                     addr1335:
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                  if(_loc32_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1322:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr1323:
                                                                                                                                                                        if(_loc32_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc10_.push(_loc15_);
                                                                                                                                                                           §§goto(addr1328);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1337);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1303);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1360);
                                                                                                                                                                  addr1318:
                                                                                                                                                                  addr1333:
                                                                                                                                                               }
                                                                                                                                                               addr1297:
                                                                                                                                                               §§push(int(§§pop().indexOf(§§pop(),§§pop() + 1)));
                                                                                                                                                               break loop51;
                                                                                                                                                            }
                                                                                                                                                            addr1341:
                                                                                                                                                            §§goto(addr1342);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().substring(§§pop(),_loc17_));
                                                                                                                                                      addr1184:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc27_ = §§pop();
                                                                                                                                                         continue loop40;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop40;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             loop10:
                                                                                                                                             for(; _loc32_; while(true)
                                                                                                                                             {
                                                                                                                                                continue loop10;
                                                                                                                                             })
                                                                                                                                             {
                                                                                                                                                if(!_loc31_)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   loop11:
                                                                                                                                                   while(!_loc31_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                         loop12:
                                                                                                                                                         for(; _loc32_ || param1; §§push(_loc15_),if(!(_loc32_ || §9k§))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         },if(_loc32_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr925);
                                                                                                                                                            §§push(§§pop().substring(§§pop(),§§pop()));
                                                                                                                                                         },§§goto(addr1148))
                                                                                                                                                         {
                                                                                                                                                            if(_loc32_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().substring(§§pop(),§§pop()));
                                                                                                                                                               loop13:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc29_ = §§pop();
                                                                                                                                                                  loop14:
                                                                                                                                                                  while(!_loc31_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1);
                                                                                                                                                                     if(_loc32_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                           addr975:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().substring(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr974:
                                                                                                                                                                     }
                                                                                                                                                                     loop16:
                                                                                                                                                                     while(_loc32_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        _loc30_ = §§pop();
                                                                                                                                                                        loop17:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc31_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc32_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc29_);
                                                                                                                                                                                    loop18:
                                                                                                                                                                                    for(; !(_loc31_ && §9k§); if(!(_loc31_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop13;
                                                                                                                                                                                    })
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc32_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc4_);
                                                                                                                                                                                          if(!(_loc31_ && §9k§))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop() + _loc30_);
                                                                                                                                                                                             loop19:
                                                                                                                                                                                             for(; _loc32_; while(!(_loc32_ || §9k§))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                             },_loc30_ = §§pop(),§§goto(addr884))
                                                                                                                                                                                             {
                                                                                                                                                                                                param1 = §§pop();
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc31_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc32_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(param1);
                                                                                                                                                                                                         if(!(_loc31_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                               addr895:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc32_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc31_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc32_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc32_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop12;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1189);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop11;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr975);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1179);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr894:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr925:
                                                                                                                                                                                                            while(_loc32_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc29_ = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                                  addr869:
                                                                                                                                                                                                                  while(!_loc31_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                     if(!_loc31_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().substring(§§pop()));
                                                                                                                                                                                                                        continue loop19;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr895);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1178);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1188);
                                                                                                                                                                                                            addr925:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1189);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop10;
                                                                                                                                                                                                   addr850:
                                                                                                                                                                                                   loop26:
                                                                                                                                                                                                   while(!(_loc31_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc32_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc31_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc31_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc32_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc31_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc31_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop50;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc31_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc32_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc31_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop26;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc32_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop17;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr884:
                                                                                                                                                                                                                                    addr884:
                                                                                                                                                                                                                                    loop33:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc29_);
                                                                                                                                                                                                                                       addr815:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc31_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop19;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc32_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc31_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc3_);
                                                                                                                                                                                                                                                if(_loc32_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop() + _loc30_);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc32_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop18;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr869);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr828:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr925);
                                                                                                                                                                                                                                          §§goto(addr1189);
                                                                                                                                                                                                                                          continue loop33;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1287);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop9;
                                                                                                                                                                                                                                 addr794:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop1;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1201);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc17_ = §§pop();
                                                                                                                                                                                                                              addr1051:
                                                                                                                                                                                                                              while(_loc32_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(int(_loc12_[_loc14_]));
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc31_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop51;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc32_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc31_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                                                                                                                             continue loop10;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1041:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1354);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1356);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop51;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1283);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1050:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1355);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop50;
                                                                                                                                                                                                                     addr775:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop53;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1035);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop49;
                                                                                                                                                                                                            addr765:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1287);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1122);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1102);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1105);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1303);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1192);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1184);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr999:
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop14;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1195);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1287);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1159);
                                                                                                                                                                  if(_loc31_ && param2)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  param1 = §§pop();
                                                                                                                                                                  §§goto(addr850);
                                                                                                                                                               }
                                                                                                                                                               addr1026:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1190);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1180);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1147);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1328);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1121);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1328);
                                                                                                                                       }
                                                                                                                                       §§goto(addr815);
                                                                                                                                    }
                                                                                                                                    §§goto(addr828);
                                                                                                                                 }
                                                                                                                                 return §§pop();
                                                                                                                                 addr741:
                                                                                                                              }
                                                                                                                              continue loop54;
                                                                                                                           }
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                        §§goto(addr933);
                                                                                                                     }
                                                                                                                     §§goto(addr794);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(int(_loc13_[_loc14_]));
                                                                                                                  }
                                                                                                                  §§goto(addr1050);
                                                                                                               }
                                                                                                               §§goto(addr1357);
                                                                                                            }
                                                                                                            §§goto(addr1283);
                                                                                                         }
                                                                                                         §§goto(addr765);
                                                                                                      }
                                                                                                      §§goto(addr775);
                                                                                                   }
                                                                                                }
                                                                                                addr1099:
                                                                                             }
                                                                                             §§goto(addr1328);
                                                                                          }
                                                                                          §§goto(addr1283);
                                                                                          §§goto(addr1213);
                                                                                       }
                                                                                       _loc15_ = §§pop();
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr1099);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(int(_loc10_[_loc14_]));
                                                                                 }
                                                                                 §§goto(addr1210);
                                                                              }
                                                                              §§goto(addr1361);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr1247:
                                                               }
                                                               §§goto(addr1328);
                                                            }
                                                            §§goto(addr1248);
                                                            §§goto(addr741);
                                                         }
                                                         continue loop3;
                                                         addr1233:
                                                      }
                                                      §§goto(addr1342);
                                                   }
                                                }
                                                §§goto(addr1342);
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr1342);
                                       }
                                       addr1280:
                                    }
                                    §§goto(addr1233);
                                 }
                              }
                              §§goto(addr1359);
                           }
                           §§goto(addr1336);
                        }
                        §§goto(addr1342);
                     }
                     §§goto(addr1280);
                  }
               }
               §§goto(addr1333);
            }
         }
      }
   }
}
