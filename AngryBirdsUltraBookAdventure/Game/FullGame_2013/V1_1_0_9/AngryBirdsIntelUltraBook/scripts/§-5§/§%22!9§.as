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
         if(_loc2_)
         {
            super();
            do
            {
               this.init();
            }
            while(!(_loc2_ || this));
            
         }
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
            if(_loc13_ || param1)
            {
               §§push(int(§§pop().length));
               if(!_loc13_)
               {
               }
               addr66:
               §§push(int(§§pop()));
            }
            else
            {
               addr61:
               §§push(int(§§pop().indexOf(".")));
               if(_loc13_)
               {
                  §§goto(addr66);
               }
            }
            var _loc9_:* = §§pop();
            if(!(_loc14_ && §"!9§))
            {
               §§push(_loc8_);
               if(_loc13_ || param1)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc13_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc14_ && param2))
                        {
                           §§pop();
                           if(_loc13_ || §"!9§)
                           {
                              addr103:
                              §§push(param3);
                              if(_loc13_ || §"!9§)
                              {
                                 addr111:
                                 §§push(!§§pop());
                                 if(!_loc14_)
                                 {
                                    addr114:
                                    if(§§pop())
                                    {
                                       if(!_loc14_)
                                       {
                                          var _loc10_:* = (!(_loc14_ && §"!9§) ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                          addr141:
                                          §§push("");
                                          if(!_loc14_)
                                          {
                                             if(param3)
                                             {
                                                if(!(_loc14_ && param1))
                                                {
                                                   addr196:
                                                   _loc11_ = 0;
                                                }
                                                loop0:
                                                while(true)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc11_);
                                                      if(!(_loc14_ && §"!9§))
                                                      {
                                                         §§push(param2);
                                                         if(_loc13_)
                                                         {
                                                            if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                            {
                                                               if(!(_loc14_ && §"!9§))
                                                               {
                                                                  addr230:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     break loop1;
                                                                  }
                                                                  addr318:
                                                                  return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                                  addr276:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(".");
                                                                  if(!_loc14_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr243:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                           if(!(_loc14_ && param3))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 if(!(_loc14_ && §"!9§))
                                                                                 {
                                                                                    §§goto(addr276);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr317:
                                                                              §§push(_loc7_);
                                                                              addr268:
                                                                           }
                                                                           §§goto(addr318);
                                                                        }
                                                                     }
                                                                     addr239:
                                                                  }
                                                                  addr242:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr243);
                                                                  }
                                                               }
                                                               addr236:
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc10_);
                                                               if(_loc13_)
                                                               {
                                                                  §§push(§§pop() + "0");
                                                                  if(!_loc14_)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     if(_loc13_ || §"!9§)
                                                                     {
                                                                        _loc11_++;
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr230);
                                                                  }
                                                                  §§goto(addr239);
                                                               }
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc14_ && §"!9§))
                                                            {
                                                               if(_loc7_.substr(0,1) == "-")
                                                               {
                                                                  addr303:
                                                                  if(_loc9_ < (!(_loc14_ && §"!9§) ? §§pop() - 1 : §§pop()))
                                                                  {
                                                                     if(param4)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§goto(addr236);
                                                                        }
                                                                        §§goto(addr230);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(",");
                                                                     }
                                                                     §§goto(addr242);
                                                                  }
                                                                  §§goto(addr317);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc9_);
                                                               }
                                                               §§goto(addr315);
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                         addr278:
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr278);
                                                      §§goto(addr230);
                                                   }
                                                }
                                             }
                                             §§goto(addr230);
                                          }
                                          §§goto(addr196);
                                       }
                                       else
                                       {
                                          addr129:
                                          §§push(",");
                                          if(!(_loc14_ && param2))
                                          {
                                             §§goto(addr137);
                                          }
                                          else
                                          {
                                             addr140:
                                             §§push(§§pop());
                                          }
                                          §§goto(addr141);
                                       }
                                    }
                                    else
                                    {
                                       addr128:
                                       if(param4)
                                       {
                                          §§goto(addr129);
                                       }
                                       else
                                       {
                                          §§push(".");
                                       }
                                       §§goto(addr140);
                                    }
                                    §§goto(addr129);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr141);
                        }
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr111);
               }
               §§goto(addr114);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            addChild(this.§=1§ = new OverallIntelScorePlateGFX());
            if(_loc2_)
            {
               this.§=1§.§!5§.autoSize = TextFieldAutoSize.LEFT;
            }
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(data)
            {
               loop0:
               while(true)
               {
                  §§push(this.§=1§);
                  loop1:
                  while(true)
                  {
                     if(!§[!U§)
                     {
                        §§push(1);
                        while(true)
                        {
                           §§push(§§pop());
                           while(true)
                           {
                              §§pop().gotoAndStop(§§pop());
                              loop4:
                              while(!(_loc1_ && _loc1_))
                              {
                                 §&!^§();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§=1§);
                                    loop6:
                                    while(true)
                                    {
                                       §§pop().§>!x§.text = this.§2v§.userName || "";
                                       continue loop5;
                                       addr62:
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                break;
                                                addr97:
                                             }
                                             §§pop().§<!K§.text = this.§2v§.§#!a§.toString() || "0";
                                             while(_loc2_ || _loc2_)
                                             {
                                                continue loop8;
                                                §§pop().§!5§.text = this.§2v§.§^!?§.toString() || "0";
                                                if(!_loc1_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         return;
                                                         addr58:
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              §§goto(addr163);
                           }
                        }
                     }
                     §§goto(addr145);
                  }
               }
            }
            addr163:
            return;
         }
         §§goto(addr58);
      }
      
      public function get §2v§() : §4!k§
      {
         return §4!k§(data);
      }
   }
}
