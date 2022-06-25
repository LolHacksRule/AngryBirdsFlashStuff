package §+!B§
{
   import flash.utils.getQualifiedClassName;
   
   public class §7!1§
   {
       
      
      public function §7!1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §?4§(param1:String, param2:Boolean = false, param3:Boolean = false) : Object
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc7_)
         {
            §§push(null);
            if(_loc6_)
            {
               §§push(§§pop());
               if(_loc6_)
               {
                  §§pop().§§slot[4] = §§pop();
                  if(_loc6_ || §7!1§)
                  {
                     §§push(§§newactivation());
                     if(!_loc7_)
                     {
                        addr41:
                        §§pop().§§slot[5] = null;
                        if(_loc6_ || param3)
                        {
                           addr50:
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              §§push(param1);
                              if(_loc6_ || param2)
                              {
                                 addr61:
                                 §§pop().§§slot[1] = §§pop();
                                 if(!_loc7_)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_ || param1)
                                    {
                                       §§push(param2);
                                       if(!(_loc7_ && §7!1§))
                                       {
                                          §§pop().§§slot[2] = §§pop();
                                          if(!_loc7_)
                                          {
                                             addr101:
                                             §§push(§§newactivation());
                                             if(!_loc7_)
                                             {
                                                addr96:
                                                §§push(param3);
                                             }
                                             §§push(native(luaString,emptyObjectAsArray));
                                             if(_loc6_ || param2)
                                             {
                                                addr115:
                                                §§pop().§§slot[4] = §§pop();
                                                try
                                                {
                                                   addr116:
                                                   §§push(§§newactivation());
                                                   if(!_loc7_)
                                                   {
                                                      §§pop().§§slot[5] = JSON.parse(jsonString);
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc6_ || param3)
                                                         {
                                                            addr171:
                                                            if(§§pop().§§slot[3])
                                                            {
                                                               if(!(_loc7_ && §7!1§))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§pop().§§slot[5].debug = luaString;
                                                                     addr187:
                                                                     §§push(§§newactivation());
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         return §§pop().§§slot[5];
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                }
                                                catch(e:Error)
                                                {
                                                   throw new Error("Error parsing JSON string.\n" + jsonString);
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr115);
                                          }
                                          addr100:
                                          §§goto(addr101);
                                          §§push(§§newactivation());
                                       }
                                       §§pop().§§slot[3] = §§pop();
                                       if(!_loc7_)
                                       {
                                          §§goto(addr100);
                                       }
                                       §§goto(addr116);
                                    }
                                    §§goto(addr96);
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr50);
               }
               §§goto(addr61);
            }
         }
         §§goto(addr41);
      }
      
      public static function §;#§(param1:String, param2:Boolean = false) : Object
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[3] = null;
            if(_loc6_ || _loc3_)
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  §§goto(addr37);
               }
            }
            §§goto(addr57);
         }
         addr37:
         §§pop().§§slot[1] = param1;
         if(!(_loc5_ && §7!1§))
         {
            addr57:
            var addJSONDebugString:Boolean = param2;
         }
         try
         {
            §§push(§§newactivation());
            if(!_loc5_)
            {
               §§pop().§§slot[3] = JSON.parse(normalizedLua);
               if(!_loc5_)
               {
                  §§push(§§newactivation());
                  if(_loc6_)
                  {
                     if(§§pop().§§slot[2])
                     {
                        if(!_loc5_)
                        {
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              §§pop().§§slot[3].debug = normalizedLua;
                           }
                           §§goto(addr116);
                        }
                     }
                  }
                  §§goto(addr116);
               }
               §§push(§§newactivation());
            }
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON string.\n" + normalizedLua);
         }
         addr116:
         return §§pop().§§slot[3];
      }
      
      public static function native(param1:String, param2:Boolean = false) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.replace(/\-\-\[\[[\s\S]*?\]\]/mg,""));
         if(!_loc4_)
         {
            param1 = §§pop();
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop().replace(/\-\-.*/g,""));
               }
               param1 = §§pop();
               §§push(param1.replace(/\[\"(.*)\"\]/g,"$1"));
               if(_loc3_)
               {
                  param1 = §§pop();
                  if(_loc3_ || §7!1§)
                  {
                     param1 = param1.replace(/\}\s*$/mg,"},");
                     if(_loc3_)
                     {
                        §§push(param1);
                        if(!_loc4_)
                        {
                           param1 = §§pop().replace(/^(.*\=\s*[^,\{\[\s]+)$/mg,"$&,");
                           if(_loc3_ || _loc3_)
                           {
                              §§push(param1);
                              if(_loc3_)
                              {
                                 param1 = §§pop().replace(/([^{,\=\s]*)\s*?\=/mg,"\"$1\":");
                                 if(!(_loc4_ && §7!1§))
                                 {
                                    §§push("{");
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(§§pop() + param1);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() + "}");
                                       }
                                    }
                                    param1 = §§pop();
                                    addr135:
                                    §§push(param1.replace(/,(\s*[\]\}$])/mg,"$1"));
                                    if(_loc3_)
                                    {
                                       addr155:
                                       param1 = §§pop();
                                       if(!(_loc4_ && param2))
                                       {
                                          addr163:
                                          §§push(§#t§(param1,param2));
                                          if(_loc4_ && param2)
                                          {
                                          }
                                          §§goto(addr177);
                                       }
                                       addr176:
                                       addr177:
                                       return §§pop();
                                       §§push(param1);
                                    }
                                    param1 = §§pop();
                                    §§goto(addr176);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr163);
                        }
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr135);
               }
            }
            §§goto(addr163);
         }
         §§goto(addr135);
      }
      
      private static function §#t§(param1:String, param2:Boolean) : String
      {
         var _loc31_:Boolean = false;
         var _loc32_:Boolean = true;
         var _loc18_:String = null;
         var _loc19_:* = false;
         var _loc20_:Array = null;
         var _loc21_:* = false;
         var _loc22_:* = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:* = 0;
         var _loc26_:* = null;
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
         if(_loc32_)
         {
            §§push(int(§§pop()));
         }
         var _loc16_:* = §§pop();
         var _loc17_:* = int(param1.indexOf(_loc4_));
         loop0:
         while(true)
         {
            §§push(_loc15_);
            §§push(0);
            loop1:
            while(true)
            {
               §§push(§§pop() >= §§pop());
               loop2:
               while(true)
               {
                  §§push(§§pop());
                  loop3:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(_loc32_ || §7!1§)
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc17_);
                                 §§push(0);
                                 if(!(_loc31_ && param1))
                                 {
                                    §§push(§§pop() >= §§pop());
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc31_)
                                          {
                                             §§push(0);
                                             if(!(_loc31_ && _loc3_))
                                             {
                                                _loc14_ = §§pop();
                                                if(_loc32_)
                                                {
                                                   addr711:
                                                   §§push(_loc14_);
                                                   if(_loc32_ || §7!1§)
                                                   {
                                                      addr719:
                                                      if(§§pop() < _loc10_.length)
                                                      {
                                                         §§push(int(_loc10_[_loc14_]));
                                                         if(!(_loc31_ && _loc3_))
                                                         {
                                                            addr610:
                                                            _loc15_ = §§pop();
                                                            if(!(_loc31_ && §7!1§))
                                                            {
                                                               _loc17_ = int(_loc11_[_loc14_]);
                                                               if(!(_loc31_ && param2))
                                                               {
                                                                  §§push(param1);
                                                                  §§push(0);
                                                                  if(_loc32_)
                                                                  {
                                                                     §§push(_loc15_);
                                                                     if(_loc32_ || param1)
                                                                     {
                                                                        §§push(§§pop().substring(§§pop(),§§pop()));
                                                                        if(_loc32_ || §7!1§)
                                                                        {
                                                                           addr651:
                                                                           _loc26_ = §§pop();
                                                                           if(_loc32_)
                                                                           {
                                                                              §§push(param1);
                                                                              if(!_loc31_)
                                                                              {
                                                                                 §§push(_loc15_);
                                                                                 if(_loc32_)
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(_loc32_)
                                                                                    {
                                                                                       addr663:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc31_)
                                                                                       {
                                                                                          §§push(§§pop().substring(§§pop(),_loc17_));
                                                                                          if(!_loc31_)
                                                                                          {
                                                                                             addr671:
                                                                                             _loc27_ = §§pop();
                                                                                             §§push(param1);
                                                                                             §§push(_loc17_);
                                                                                             §§push(1);
                                                                                             if(_loc32_ || param2)
                                                                                             {
                                                                                                addr683:
                                                                                                §§push(§§pop().substring(§§pop() + §§pop()));
                                                                                                if(!(_loc31_ && param2))
                                                                                                {
                                                                                                   _loc28_ = §§pop();
                                                                                                   if(_loc32_)
                                                                                                   {
                                                                                                      §§push(_loc26_);
                                                                                                      if(_loc32_)
                                                                                                      {
                                                                                                         addr707:
                                                                                                         param1 = §§pop() + _loc5_ + _loc27_ + _loc6_ + _loc28_;
                                                                                                         if(!_loc31_)
                                                                                                         {
                                                                                                            addr710:
                                                                                                            _loc14_++;
                                                                                                            §§goto(addr711);
                                                                                                         }
                                                                                                         §§goto(addr851);
                                                                                                      }
                                                                                                      §§goto(addr890);
                                                                                                   }
                                                                                                   addr838:
                                                                                                   §§push(param1);
                                                                                                   if(_loc32_ || _loc3_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr850);
                                                                                                }
                                                                                                §§goto(addr707);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr850);
                                                                                       }
                                                                                       §§goto(addr683);
                                                                                    }
                                                                                    §§goto(addr850);
                                                                                 }
                                                                                 §§goto(addr800);
                                                                              }
                                                                              addr786:
                                                                              _loc29_ = §§pop();
                                                                              if(_loc32_ || param1)
                                                                              {
                                                                                 addr794:
                                                                                 §§push(param1);
                                                                                 if(_loc32_)
                                                                                 {
                                                                                    §§push(_loc17_);
                                                                                    if(!_loc31_)
                                                                                    {
                                                                                       addr800:
                                                                                       §§push(§§pop().substring(§§pop()));
                                                                                       if(_loc32_ || param1)
                                                                                       {
                                                                                          _loc30_ = §§pop();
                                                                                          if(_loc32_ || param1)
                                                                                          {
                                                                                             addr817:
                                                                                             §§push(_loc29_);
                                                                                             if(!(_loc31_ && param1))
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(!(_loc31_ && §7!1§))
                                                                                                {
                                                                                                   addr833:
                                                                                                   param1 = §§pop() + §§pop() + _loc30_;
                                                                                                   §§goto(addr838);
                                                                                                }
                                                                                                §§goto(addr707);
                                                                                             }
                                                                                             §§goto(addr854);
                                                                                          }
                                                                                          §§goto(addr707);
                                                                                       }
                                                                                       §§goto(addr850);
                                                                                    }
                                                                                    §§goto(addr854);
                                                                                 }
                                                                                 §§goto(addr890);
                                                                              }
                                                                              §§goto(addr817);
                                                                           }
                                                                           §§goto(addr908);
                                                                        }
                                                                        §§goto(addr671);
                                                                     }
                                                                     §§goto(addr850);
                                                                  }
                                                               }
                                                               §§goto(addr671);
                                                            }
                                                            §§goto(addr707);
                                                         }
                                                         addr740:
                                                         _loc17_ = §§pop();
                                                         if(!(_loc31_ && param1))
                                                         {
                                                            §§push(int(_loc12_[_loc14_]));
                                                            if(!(_loc31_ && _loc3_))
                                                            {
                                                               _loc15_ = §§pop();
                                                               if(!(_loc31_ && param2))
                                                               {
                                                                  §§push(param1);
                                                                  if(!(_loc31_ && _loc3_))
                                                                  {
                                                                     §§push(0);
                                                                     §§push(_loc17_);
                                                                     if(_loc32_ || param2)
                                                                     {
                                                                        §§goto(addr786);
                                                                        §§push(§§pop().substring(§§pop(),§§pop()));
                                                                     }
                                                                     addr850:
                                                                     _loc29_ = §§pop().substring(0,_loc15_);
                                                                     addr851:
                                                                     §§push(param1);
                                                                     if(_loc32_)
                                                                     {
                                                                        addr854:
                                                                        §§push(§§pop().substring(_loc15_));
                                                                        if(!(_loc31_ && §7!1§))
                                                                        {
                                                                           _loc30_ = §§pop();
                                                                           addr908:
                                                                           if(!(_loc31_ && param2))
                                                                           {
                                                                              §§push(_loc29_);
                                                                           }
                                                                           §§push(_loc14_);
                                                                           break loop5;
                                                                        }
                                                                     }
                                                                     §§push(§§pop() + _loc3_ + _loc30_);
                                                                     if(_loc32_)
                                                                     {
                                                                        addr890:
                                                                        param1 = §§pop();
                                                                        addr900:
                                                                        addr891:
                                                                        §§push(_loc14_);
                                                                        if(!(_loc31_ && param2))
                                                                        {
                                                                           addr899:
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc14_ = §§pop();
                                                                        if(!(_loc31_ && §7!1§))
                                                                        {
                                                                           §§goto(addr908);
                                                                        }
                                                                        §§push(param1);
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr707);
                                                               }
                                                               §§goto(addr817);
                                                            }
                                                            §§goto(addr900);
                                                         }
                                                         §§goto(addr838);
                                                      }
                                                      addr722:
                                                      §§push(int(_loc13_.length - 1));
                                                      if(!(_loc31_ && param1))
                                                      {
                                                         _loc14_ = §§pop();
                                                         addr734:
                                                         §§goto(addr908);
                                                      }
                                                      §§goto(addr890);
                                                   }
                                                   §§goto(addr899);
                                                }
                                                §§goto(addr794);
                                             }
                                             §§goto(addr610);
                                          }
                                          §§goto(addr891);
                                       }
                                       else
                                       {
                                          §§push(_loc15_);
                                          if(!_loc31_)
                                          {
                                             §§push(0);
                                             if(!(_loc31_ && §7!1§))
                                             {
                                                §§push(§§pop() >= §§pop());
                                                §§push(§§pop() >= §§pop());
                                                if(!(_loc31_ && _loc3_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      §§push(_loc15_);
                                                      if(!_loc31_)
                                                      {
                                                         §§push(_loc17_);
                                                         if(_loc31_ && param2)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(§§pop() < §§pop());
                                                         if(_loc32_ || param2)
                                                         {
                                                            addr152:
                                                            if(§§pop())
                                                            {
                                                               _loc9_.push(_loc15_);
                                                               _loc16_ = int(_loc15_);
                                                               if(!_loc31_)
                                                               {
                                                                  addr550:
                                                                  §§push(param1);
                                                                  §§push(_loc3_);
                                                                  if(_loc32_)
                                                                  {
                                                                     addr554:
                                                                     §§push(_loc16_);
                                                                     break;
                                                                  }
                                                                  §§goto(addr833);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr710);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               _loc15_ = int(_loc9_.pop());
                                                               §§push(param1);
                                                               §§push(_loc15_);
                                                               §§push(_loc17_);
                                                               if(_loc32_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc32_ || §7!1§)
                                                                  {
                                                                     _loc18_ = §§pop().substring(§§pop(),§§pop());
                                                                     §§push(false);
                                                                     if(!(_loc32_ || §7!1§))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     _loc19_ = §§pop();
                                                                     §§push(_loc18_);
                                                                     if(_loc32_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!(_loc31_ && param2))
                                                                        {
                                                                           §§push(1);
                                                                           if(_loc32_ || _loc3_)
                                                                           {
                                                                              if(§§pop().indexOf(§§pop(),§§pop()) < 0)
                                                                              {
                                                                                 if(_loc32_)
                                                                                 {
                                                                                    §§push(_loc18_);
                                                                                    if(!_loc31_)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(_loc32_)
                                                                                       {
                                                                                          §§push(1);
                                                                                          if(!(_loc31_ && _loc3_))
                                                                                          {
                                                                                             if(§§pop().indexOf(§§pop(),§§pop()) < 0)
                                                                                             {
                                                                                                §§push(Boolean(param2));
                                                                                                if(!(_loc31_ && param2))
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc32_)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!_loc31_)
                                                                                                      {
                                                                                                         addr257:
                                                                                                         if(_loc18_.search(/[a-zA-Z0-9]+/g) >= 0)
                                                                                                         {
                                                                                                            if(_loc31_ && _loc3_)
                                                                                                            {
                                                                                                               addr455:
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            §§push(true);
                                                                                                            if(!(_loc31_ && _loc3_))
                                                                                                            {
                                                                                                               _loc19_ = §§pop();
                                                                                                               if(_loc32_)
                                                                                                               {
                                                                                                                  addr420:
                                                                                                                  continue loop4;
                                                                                                                  addr276:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr734);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr515:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  _loc10_.push(_loc15_);
                                                                                                                  _loc11_.push(_loc17_);
                                                                                                                  addr522:
                                                                                                                  §§push(param1);
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(!(_loc31_ && param2))
                                                                                                                  {
                                                                                                                     addr531:
                                                                                                                     §§push(_loc17_);
                                                                                                                     if(!_loc31_)
                                                                                                                     {
                                                                                                                        §§push(1);
                                                                                                                        if(!(_loc31_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc31_)
                                                                                                                           {
                                                                                                                              _loc17_ = int(§§pop().indexOf(§§pop(),§§pop()));
                                                                                                                              if(!_loc32_)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              §§goto(addr550);
                                                                                                                           }
                                                                                                                           addr557:
                                                                                                                           §§push(int(§§pop().indexOf(§§pop(),§§pop())));
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        addr556:
                                                                                                                        §§goto(addr557);
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr833);
                                                                                                               }
                                                                                                               §§goto(addr522);
                                                                                                            }
                                                                                                            §§goto(addr908);
                                                                                                         }
                                                                                                         §§goto(addr276);
                                                                                                      }
                                                                                                      §§goto(addr890);
                                                                                                   }
                                                                                                   §§goto(addr257);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr490:
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc32_)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   addr493:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc31_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      addr496:
                                                                                                      §§pop();
                                                                                                      if(_loc31_)
                                                                                                      {
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      addr501:
                                                                                                      §§push(_loc24_ > _loc25_);
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   _loc19_ = true;
                                                                                                   if(_loc32_)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr522);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr283:
                                                                                                _loc20_ = _loc18_.substr(1,_loc18_.length - 2).split(_loc8_);
                                                                                                §§push(false);
                                                                                                if(_loc32_)
                                                                                                {
                                                                                                   _loc21_ = §§pop();
                                                                                                   §§push(0);
                                                                                                   if(_loc32_)
                                                                                                   {
                                                                                                      _loc14_ = §§pop();
                                                                                                      if(_loc32_)
                                                                                                      {
                                                                                                         loop7:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc14_);
                                                                                                            if(!(_loc31_ && param2))
                                                                                                            {
                                                                                                               if(§§pop() >= _loc20_.length)
                                                                                                               {
                                                                                                                  if(_loc32_ || §7!1§)
                                                                                                                  {
                                                                                                                     addr342:
                                                                                                                     §§push(_loc21_);
                                                                                                                     if(_loc32_)
                                                                                                                     {
                                                                                                                        addr345:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc31_)
                                                                                                                           {
                                                                                                                              addr349:
                                                                                                                              _loc19_ = true;
                                                                                                                              if(!(_loc31_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(_loc32_)
                                                                                                                                 {
                                                                                                                                    _loc14_ = §§pop();
                                                                                                                                    if(_loc32_ || §7!1§)
                                                                                                                                    {
                                                                                                                                       addr416:
                                                                                                                                       loop10:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          addr417:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() < _loc20_.length)
                                                                                                                                             {
                                                                                                                                                if(_loc20_[_loc14_].indexOf(_loc7_) > 0)
                                                                                                                                                {
                                                                                                                                                   break loop10;
                                                                                                                                                }
                                                                                                                                                continue loop10;
                                                                                                                                             }
                                                                                                                                             §§goto(addr420);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_);
                                                                                                                                          if(_loc32_)
                                                                                                                                          {
                                                                                                                                             §§push(int(§§pop() + _loc18_.indexOf(_loc20_[_loc14_])));
                                                                                                                                             break loop7;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr416:
                                                                                                                                       addr377:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc12_.push(_loc22_);
                                                                                                                                       if(!_loc31_)
                                                                                                                                       {
                                                                                                                                          _loc13_.push(_loc23_);
                                                                                                                                          if(!(_loc31_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr415);
                                                                                                                                          }
                                                                                                                                          §§goto(addr416);
                                                                                                                                       }
                                                                                                                                       §§goto(addr420);
                                                                                                                                    }
                                                                                                                                    addr400:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc23_ = §§pop() + _loc20_[_loc14_].length;
                                                                                                                                    if(!_loc32_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    §§goto(addr420);
                                                                                                                                 }
                                                                                                                                 addr391:
                                                                                                                              }
                                                                                                                              §§goto(addr416);
                                                                                                                           }
                                                                                                                           §§goto(addr400);
                                                                                                                        }
                                                                                                                        §§goto(addr420);
                                                                                                                     }
                                                                                                                     §§goto(addr349);
                                                                                                                  }
                                                                                                                  §§goto(addr416);
                                                                                                               }
                                                                                                               else if(_loc20_[_loc14_].indexOf(_loc7_) < 0)
                                                                                                               {
                                                                                                                  if(!_loc31_)
                                                                                                                  {
                                                                                                                     addr309:
                                                                                                                     §§push(true);
                                                                                                                     if(_loc32_)
                                                                                                                     {
                                                                                                                        addr312:
                                                                                                                        _loc21_ = §§pop();
                                                                                                                        if(_loc32_ || §7!1§)
                                                                                                                        {
                                                                                                                           §§goto(addr342);
                                                                                                                        }
                                                                                                                        §§goto(addr415);
                                                                                                                     }
                                                                                                                     §§goto(addr345);
                                                                                                                  }
                                                                                                                  §§goto(addr349);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc14_++;
                                                                                                                  if(!_loc31_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr377);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc22_ = §§pop());
                                                                                                            if(_loc32_)
                                                                                                            {
                                                                                                               §§goto(addr391);
                                                                                                            }
                                                                                                            §§goto(addr417);
                                                                                                         }
                                                                                                         addr387:
                                                                                                      }
                                                                                                      §§goto(addr309);
                                                                                                   }
                                                                                                   §§goto(addr387);
                                                                                                }
                                                                                                §§goto(addr312);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr435:
                                                                                             if((_loc24_ = §§pop().indexOf(§§pop(),§§pop())) < 0)
                                                                                             {
                                                                                                if(_loc32_)
                                                                                                {
                                                                                                   addr454:
                                                                                                   _loc19_ = true;
                                                                                                   §§goto(addr455);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr710);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc18_);
                                                                                                §§push(_loc3_);
                                                                                                if(_loc32_)
                                                                                                {
                                                                                                   addr460:
                                                                                                   §§push(1);
                                                                                                   if(!(_loc31_ && param1))
                                                                                                   {
                                                                                                      §§push(int(§§pop().indexOf(§§pop(),§§pop())));
                                                                                                      if(_loc31_ && §7!1§)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§push(_loc25_ = §§pop());
                                                                                                      if(!_loc31_)
                                                                                                      {
                                                                                                         §§push(§§pop() > 0);
                                                                                                         if(_loc32_ || _loc3_)
                                                                                                         {
                                                                                                            §§goto(addr490);
                                                                                                         }
                                                                                                         §§goto(addr496);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr610);
                                                                                                      }
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr554);
                                                                                             }
                                                                                             §§goto(addr610);
                                                                                          }
                                                                                          §§goto(addr554);
                                                                                       }
                                                                                       §§goto(addr460);
                                                                                    }
                                                                                    §§goto(addr707);
                                                                                 }
                                                                                 §§goto(addr722);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc18_);
                                                                                 if(!(_loc31_ && param1))
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(!_loc31_)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(!_loc31_)
                                                                                       {
                                                                                          §§goto(addr435);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr531);
                                                                                 }
                                                                              }
                                                                              §§goto(addr651);
                                                                           }
                                                                           §§goto(addr435);
                                                                        }
                                                                        §§goto(addr707);
                                                                     }
                                                                     §§goto(addr671);
                                                                  }
                                                                  §§goto(addr283);
                                                               }
                                                            }
                                                            §§goto(addr663);
                                                         }
                                                         §§goto(addr454);
                                                      }
                                                      §§goto(addr719);
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr493);
                                             }
                                             §§goto(addr501);
                                          }
                                       }
                                       §§goto(addr719);
                                    }
                                    §§goto(addr556);
                                    §§push(1);
                                    addr583:
                                 }
                                 break;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 §§goto(addr740);
                                 §§push(int(_loc13_[_loc14_]));
                              }
                              §§goto(addr890);
                           }
                        }
                     }
                     §§goto(addr583);
                  }
               }
            }
         }
      }
      
      public static function §>7§(param1:Object) : String
      {
         return §=v§(param1,0);
      }
      
      private static function §=v§(param1:Object, param2:int) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         if(_loc8_)
         {
            param2++;
         }
         var _loc3_:* = "";
         var _loc6_:int = 0;
         var _loc7_:* = param1;
         loop0:
         while(§§hasnext(_loc7_,_loc6_))
         {
            §§push(§§nextname(_loc6_,_loc7_));
            if(!_loc9_)
            {
               _loc4_ = §§pop();
               §§push(0);
               if(!(_loc9_ && param1))
               {
                  _loc5_ = §§pop();
                  if(!(_loc9_ && §7!1§))
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc8_)
                        {
                           while(true)
                           {
                              §§push(param2);
                              if(_loc8_ || _loc3_)
                              {
                                 if(§§pop() >= §§pop() - 1)
                                 {
                                    if(_loc9_ && param2)
                                    {
                                       continue loop0;
                                    }
                                    §§push(_loc3_);
                                    if(!_loc9_)
                                    {
                                       §§push(_loc4_ + " = ");
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() + §@+§(param1[_loc4_],param2));
                                          if(_loc8_ || param2)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                addr173:
                                                §§push(§§pop());
                                                if(!(_loc9_ && param1))
                                                {
                                                   _loc3_ = §§pop();
                                                   addr202:
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      §§push(param2);
                                                      break loop1;
                                                   }
                                                   §§push(_loc3_ + "\n");
                                                }
                                                §§push(",");
                                                if(_loc8_)
                                                {
                                                   addr176:
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(!(_loc8_ || param2))
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   addr205:
                                                   _loc3_ = §§pop();
                                                   continue loop0;
                                                }
                                                §§goto(addr202);
                                             }
                                             §§goto(addr205);
                                          }
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr173);
                                 }
                                 else
                                 {
                                    §§push(_loc3_);
                                    if(_loc8_ || _loc3_)
                                    {
                                       §§push("\t");
                                       if(!(_loc9_ && §7!1§))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc8_ || param2)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr173);
                                       }
                                    }
                                    §§goto(addr202);
                                 }
                              }
                              break;
                           }
                           addr162:
                           if(§§pop() > §§pop())
                           {
                              if(!_loc9_)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc9_ && §7!1§))
                                 {
                                    §§goto(addr173);
                                 }
                              }
                           }
                           §§goto(addr202);
                           addr87:
                        }
                        break;
                     }
                     §§goto(addr162);
                     §§push(1);
                  }
                  §§goto(addr202);
               }
               §§goto(addr87);
            }
            §§goto(addr202);
         }
         if(!(_loc9_ && _loc3_))
         {
            §§push(param2);
            if(!(_loc9_ && _loc3_))
            {
               §§push(§§pop() - 1);
            }
            param2 = §§pop();
         }
         return _loc3_;
      }
      
      private static function §@+§(param1:*, param2:int) : String
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:* = undefined;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc3_:* = "";
         if(_loc10_)
         {
            if(getQualifiedClassName(param1).indexOf("__AS3__.vec::Vector") == 0)
            {
               addr37:
               _loc4_ = [];
               for each(_loc5_ in param1)
               {
                  if(_loc10_ || param2)
                  {
                     _loc4_.push(_loc5_);
                  }
               }
               param1 = _loc4_;
            }
            §§push(param1 is Boolean);
            if(!(_loc11_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc11_)
                  {
                     if(param1)
                     {
                        if(_loc10_ || §7!1§)
                        {
                           §§push("true");
                           if(!_loc10_)
                           {
                           }
                        }
                        else
                        {
                           loop3:
                           while(true)
                           {
                              _loc6_++;
                              addr224:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(!(_loc11_ && param2))
                                 {
                                    if(§§pop() >= param1.length)
                                    {
                                       if(!(_loc11_ && param1))
                                       {
                                          addr242:
                                          §§push(_loc3_);
                                          §§push("}");
                                          if(_loc10_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc10_ || param1)
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc10_)
                                                {
                                                   return _loc3_;
                                                }
                                                addr341:
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   addr342:
                                                   addr346:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= param2 - 1)
                                                      {
                                                         §§push(_loc3_);
                                                         break;
                                                      }
                                                      §§push(_loc3_);
                                                      if(!(_loc10_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      §§push("\t");
                                                      if(_loc10_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc10_ || param1))
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               if(_loc11_)
                                                               {
                                                                  return _loc3_;
                                                               }
                                                               addr349:
                                                               addr349:
                                                               addr349:
                                                               continue loop0;
                                                            }
                                                         }
                                                         addr322:
                                                      }
                                                      else
                                                      {
                                                         addr347:
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      _loc3_ = §§pop();
                                                      §§goto(addr349);
                                                      continue loop0;
                                                   }
                                                   §§goto(addr347);
                                                }
                                             }
                                             §§goto(addr330);
                                          }
                                          §§goto(addr322);
                                       }
                                       else
                                       {
                                          addr266:
                                          §§push("{\n");
                                          if(!(_loc11_ && param2))
                                          {
                                             §§push(§§pop() + §=v§(param1,param2));
                                          }
                                          §§push(§§pop());
                                          if(_loc10_ || param1)
                                          {
                                             _loc3_ = §§pop();
                                             §§push(0);
                                             if(!_loc11_)
                                             {
                                                break loop3;
                                             }
                                             §§goto(addr342);
                                          }
                                       }
                                       §§goto(addr346);
                                    }
                                    else
                                    {
                                       §§push(_loc3_);
                                       if(§@+§(param1[_loc6_],param2) + (_loc6_ < param1.length - 1))
                                       {
                                          §§push("," + (!(_loc11_ && §7!1§) ? §§pop() : §§pop()));
                                          if(_loc10_ || param1)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc10_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr333);
                                          }
                                          §§goto(addr346);
                                       }
                                       else
                                       {
                                          §§push("");
                                          if(!(_loc11_ && §7!1§))
                                          {
                                             §§goto(addr210);
                                          }
                                       }
                                    }
                                    §§goto(addr347);
                                 }
                                 break loop3;
                              }
                           }
                           _loc7_ = §§pop();
                           if(_loc10_ || §7!1§)
                           {
                              §§goto(addr341);
                           }
                           §§goto(addr333);
                        }
                        §§goto(addr349);
                     }
                     else
                     {
                        §§push("false");
                     }
                     §§push(§§pop());
                     if(!_loc11_)
                     {
                        _loc3_ = §§pop();
                     }
                     else
                     {
                        addr110:
                        _loc3_ = §§pop();
                     }
                     §§goto(addr349);
                  }
                  §§goto(addr242);
               }
               else
               {
                  §§push(param1 is Number);
                  if(!_loc11_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr110);
                        §§push(param1.toString());
                     }
                     else
                     {
                        §§push(param1 is String);
                        if(_loc10_ || param2)
                        {
                        }
                        addr143:
                        if(§§pop())
                        {
                           if(!_loc11_)
                           {
                              §§push("{\n");
                              if(!(_loc11_ && param1))
                              {
                                 _loc3_ = §§pop();
                                 if(!_loc11_)
                                 {
                                    addr157:
                                    §§push(0);
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       _loc6_ = §§pop();
                                       §§goto(addr224);
                                    }
                                    §§goto(addr342);
                                 }
                                 §§goto(addr266);
                              }
                              §§goto(addr348);
                           }
                           §§goto(addr157);
                        }
                        else
                        {
                           addr263:
                           if(param1 is Object)
                           {
                              if(!_loc11_)
                              {
                                 §§goto(addr266);
                              }
                              §§goto(addr333);
                           }
                           §§goto(addr349);
                        }
                     }
                     §§goto(addr349);
                  }
                  if(§§pop())
                  {
                     §§push("\"" + param1);
                     if(!(_loc11_ && param1))
                     {
                        §§push(§§pop() + "\"");
                        if(!_loc11_)
                        {
                           return §§pop();
                        }
                        §§goto(addr266);
                     }
                     §§goto(addr348);
                  }
                  else
                  {
                     §§push(param1 is Array);
                     if(_loc10_)
                     {
                        §§goto(addr143);
                     }
                     §§goto(addr263);
                  }
               }
               §§goto(addr349);
            }
            §§goto(addr143);
         }
         §§goto(addr37);
      }
   }
}
