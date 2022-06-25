package §-5§
{
   import §4H§.§4!k§;
   import com.angrybirds.friendsbar.OverallIntelScorePlateGFX;
   import flash.text.TextFieldAutoSize;
   
   public class §"!9§ extends § !<§
   {
       
      
      private var §=1§:OverallIntelScorePlateGFX;
      
      public function §"!9§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
         do
         {
            this.init();
         }
         while(_loc1_);
         
      }
      
      private static function §2>§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc8_:*;
         var _loc7_:String;
         if(_loc8_ = (_loc7_ = String(Math.round(_loc6_ * Number(param1)) / _loc6_)).indexOf(".") == -1)
         {
            §§push(_loc7_);
            if(_loc13_ || §"!9§)
            {
               §§push(int(§§pop().length));
               if(_loc14_)
               {
               }
               addr71:
               §§push(int(§§pop()));
            }
            else
            {
               addr61:
               §§push(int(§§pop().indexOf(".")));
               if(!(_loc14_ && §"!9§))
               {
                  §§goto(addr71);
               }
            }
            var _loc9_:* = §§pop();
            if(!_loc14_)
            {
               §§push(_loc8_);
               if(_loc13_)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc14_ && §"!9§))
                  {
                     addr86:
                     if(§§pop())
                     {
                        if(!(_loc14_ && §"!9§))
                        {
                           addr95:
                           §§pop();
                           if(!(_loc14_ && §"!9§))
                           {
                              addr103:
                              §§push(param3);
                              if(_loc13_ || §"!9§)
                              {
                                 §§push(!§§pop());
                                 if(!(_loc14_ && param3))
                                 {
                                    addr119:
                                    if(§§pop())
                                    {
                                       if(!(_loc14_ && §"!9§))
                                       {
                                          var _loc10_:* = (!(_loc14_ && param2) ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                          addr146:
                                          §§push("");
                                          if(!_loc14_)
                                          {
                                             if(param3)
                                             {
                                                if(_loc13_ || param1)
                                                {
                                                   _loc11_ = 0;
                                                   addr208:
                                                   loop1:
                                                   while(true)
                                                   {
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(_loc11_);
                                                         if(!(_loc14_ && §"!9§))
                                                         {
                                                            §§push(param2);
                                                            if(!(_loc14_ && §"!9§))
                                                            {
                                                               if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                               {
                                                                  if(!(_loc14_ && param1))
                                                                  {
                                                                     addr245:
                                                                  }
                                                                  do
                                                                  {
                                                                     §§push(_loc5_);
                                                                     break loop2;
                                                                     _loc10_ = §§pop();
                                                                  }
                                                                  while(!(_loc14_ && param2));
                                                                  
                                                                  addr317:
                                                                  §§push(_loc7_);
                                                                  addr286:
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(!(_loc14_ && param2))
                                                                  {
                                                                     addr257:
                                                                     §§push(§§pop() + "0");
                                                                     if(!(_loc14_ && param2))
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        if(_loc13_)
                                                                        {
                                                                           _loc11_++;
                                                                           if(_loc13_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr245);
                                                                        }
                                                                        §§goto(addr317);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr258:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§goto(addr278);
                                                                           }
                                                                           break;
                                                                        }
                                                                     }
                                                                     addr257:
                                                                  }
                                                               }
                                                               return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc14_)
                                                               {
                                                                  if(_loc7_.substr(0,1) == "-")
                                                                  {
                                                                     addr308:
                                                                     if(_loc9_ < (!_loc14_ ? §§pop() - 1 : §§pop()))
                                                                     {
                                                                        if(param4)
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              §§push(".");
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr257);
                                                                              }
                                                                              §§goto(addr258);
                                                                           }
                                                                           §§goto(addr317);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(",");
                                                                        }
                                                                        §§goto(addr257);
                                                                     }
                                                                     §§goto(addr317);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc9_);
                                                                  }
                                                                  §§goto(addr315);
                                                               }
                                                               §§goto(addr308);
                                                            }
                                                            addr298:
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr298);
                                                         §§goto(addr286);
                                                      }
                                                   }
                                                }
                                                §§goto(addr208);
                                             }
                                             §§goto(addr245);
                                          }
                                          §§goto(addr208);
                                       }
                                       else
                                       {
                                          addr139:
                                          §§push(",");
                                          if(!_loc14_)
                                          {
                                             §§goto(addr142);
                                          }
                                          else
                                          {
                                             addr145:
                                             §§push(§§pop());
                                          }
                                          §§goto(addr146);
                                       }
                                    }
                                    else
                                    {
                                       addr138:
                                       if(param4)
                                       {
                                          §§goto(addr139);
                                       }
                                       else
                                       {
                                          §§push(".");
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr146);
                        }
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr95);
               }
               §§goto(addr86);
            }
            §§goto(addr103);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr61);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            addChild(this.§=1§ = new OverallIntelScorePlateGFX());
            if(_loc3_)
            {
               this.§=1§.§!5§.autoSize = TextFieldAutoSize.LEFT;
            }
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(data)
            {
               while(true)
               {
                  §§push(this.§=1§);
                  while(true)
                  {
                     if(!§[!U§)
                     {
                        §§push(1);
                        while(true)
                        {
                           §§push(§§pop());
                           addr169:
                           while(true)
                           {
                              §§pop().gotoAndStop(§§pop());
                              §§goto(addr170);
                           }
                        }
                        addr168:
                     }
                     while(true)
                     {
                        §§push(2);
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(§§pop());
                        }
                        else
                        {
                           §§goto(addr168);
                        }
                        §§goto(addr169);
                     }
                  }
               }
            }
            §§goto(addr173);
         }
         addr170:
         loop5:
         do
         {
            §&!^§();
            loop6:
            while(true)
            {
               §§push(this.§=1§);
               loop7:
               while(!(_loc1_ && _loc1_))
               {
                  if(_loc2_ || this)
                  {
                     §§pop().§>!x§.text = this.§2v§.userName || "";
                     loop8:
                     for(; !(_loc1_ && _loc2_); while(true)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           continue loop6;
                        }
                        continue loop8;
                        §§goto(addr39);
                     },continue loop6)
                     {
                        §§push(this.§=1§);
                        while(_loc2_)
                        {
                           §§pop().§<!K§.text = this.§2v§.§#!a§.toString() || "0";
                           §§push(this.§=1§);
                           continue loop8;
                           if(_loc2_ || _loc1_)
                           {
                              §§pop().§!5§.text = this.§2v§.§^!?§.toString() || "0";
                              addr39:
                              if(!(_loc1_ && _loc2_))
                              {
                                 continue loop5;
                              }
                              continue loop8;
                           }
                        }
                        continue loop7;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               continue loop2;
               if(!(_loc1_ && this))
               {
                  if(_loc2_)
                  {
                     §§goto(addr102);
                  }
                  addr173:
                  return;
               }
            }
         }
         while(!_loc2_);
         
      }
      
      public function get §2v§() : §4!k§
      {
         return §4!k§(data);
      }
   }
}
