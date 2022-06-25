package §<z§
{
   import §6!M§.§7!m§;
   import com.angrybirds.friendsbar.OverallIntelScorePlateGFX;
   import flash.text.TextFieldAutoSize;
   
   public class §%!c§ extends §1S§
   {
       
      
      private var §"v§:OverallIntelScorePlateGFX;
      
      public function §%!c§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               this.init();
            }
            while(_loc1_ && this);
            
         }
      }
      
      private static function §2+§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
            if(!(_loc14_ && param3))
            {
               §§push(int(§§pop().length));
               if(_loc13_ || param1)
               {
               }
               addr76:
               §§push(int(§§pop()));
            }
            else
            {
               addr66:
               §§push(int(§§pop().indexOf(".")));
               if(_loc13_ || param2)
               {
                  §§goto(addr76);
               }
            }
            var _loc9_:* = §§pop();
            if(!(_loc14_ && §%!c§))
            {
               §§push(_loc8_);
               if(!_loc14_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc14_)
                  {
                     addr91:
                     if(§§pop())
                     {
                        if(!(_loc14_ && param3))
                        {
                           §§pop();
                           if(!_loc14_)
                           {
                              §§push(param3);
                              if(!(_loc14_ && §%!c§))
                              {
                                 addr111:
                                 §§push(!§§pop());
                                 if(_loc13_ || param1)
                                 {
                                    addr119:
                                    if(§§pop())
                                    {
                                       if(_loc13_)
                                       {
                                          addr141:
                                          var _loc10_:* = (_loc13_ || param2 ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                          §§push("");
                                          if(!(_loc14_ && param1))
                                          {
                                             if(param3)
                                             {
                                                if(_loc13_ || param3)
                                                {
                                                   _loc11_ = 0;
                                                   addr203:
                                                   loop1:
                                                   while(true)
                                                   {
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(_loc11_);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(param2);
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                               {
                                                                  if(!(_loc14_ && §%!c§))
                                                                  {
                                                                     addr286:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        break loop2;
                                                                     }
                                                                     addr286:
                                                                  }
                                                                  addr322:
                                                                  §§push(_loc7_);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(_loc13_ || param3)
                                                                  {
                                                                     §§push(§§pop() + "0");
                                                                     if(_loc13_)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        if(_loc13_)
                                                                        {
                                                                           _loc11_++;
                                                                           if(!_loc14_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              continue;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(".");
                                                                           if(!(_loc14_ && param3))
                                                                           {
                                                                              §§push(§§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                                 if(!(_loc14_ && param3))
                                                                                 {
                                                                                    _loc10_ = §§pop();
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§goto(addr286);
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr323:
                                                                              return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                                              addr258:
                                                                           }
                                                                        }
                                                                        addr246:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr258);
                                                                     }
                                                                     addr257:
                                                                  }
                                                               }
                                                               §§goto(addr323);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc13_ || param1)
                                                               {
                                                                  if(_loc7_.substr(0,1) == "-")
                                                                  {
                                                                     addr313:
                                                                     if(_loc9_ < (!!_loc13_ ? §§pop() - 1 : §§pop()))
                                                                     {
                                                                        if(param4)
                                                                        {
                                                                           if(!(_loc14_ && param3))
                                                                           {
                                                                              §§goto(addr246);
                                                                           }
                                                                           §§goto(addr286);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(",");
                                                                        }
                                                                        §§goto(addr257);
                                                                     }
                                                                     §§goto(addr322);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc9_);
                                                                  }
                                                                  §§goto(addr320);
                                                               }
                                                               §§goto(addr313);
                                                            }
                                                            addr288:
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr288);
                                                         §§goto(addr286);
                                                      }
                                                   }
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr286);
                                          }
                                          §§goto(addr203);
                                       }
                                       else
                                       {
                                          addr134:
                                          §§push(",");
                                          if(!_loc14_)
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
                                       §§push(param4);
                                    }
                                    §§goto(addr134);
                                 }
                              }
                              if(§§pop())
                              {
                                 §§goto(addr134);
                              }
                              else
                              {
                                 §§push(".");
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr134);
                        }
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr111);
               }
               §§goto(addr91);
            }
            §§goto(addr134);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr66);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            addChild(this.§"v§ = new OverallIntelScorePlateGFX());
            if(_loc3_)
            {
               this.§"v§.§#!V§.autoSize = TextFieldAutoSize.LEFT;
            }
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(data)
            {
               loop0:
               while(true)
               {
                  §§push(this.§"v§);
                  loop1:
                  while(true)
                  {
                     if(!§@!E§)
                     {
                        §§push(1);
                        while(true)
                        {
                           §§push(§§pop());
                           addr126:
                           while(true)
                           {
                              §§pop().gotoAndStop(§§pop());
                              loop4:
                              while(!_loc2_)
                              {
                                 §3W§();
                                 loop5:
                                 while(!_loc2_)
                                 {
                                    §§push(this.§"v§);
                                    while(_loc1_)
                                    {
                                       §§pop().§'!a§.text = this.§[A§.userName || "";
                                       loop7:
                                       while(_loc1_)
                                       {
                                          §§push(this.§"v§);
                                          loop8:
                                          while(true)
                                          {
                                             §§pop().§"!L§.text = this.§[A§.§=_§.toString() || "0";
                                             while(!_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop8;
                                                }
                                                continue loop5;
                                                §§pop().§#!V§.text = this.§[A§.§7m§.toString() || "0";
                                                if(_loc1_)
                                                {
                                                   return;
                                                   addr50:
                                                }
                                             }
                                             continue loop7;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    continue loop1;
                                 }
                                 return;
                              }
                              continue loop0;
                           }
                        }
                        addr125:
                     }
                     while(true)
                     {
                        §§push(2);
                        if(_loc1_)
                        {
                           §§push(§§pop());
                        }
                        else
                        {
                           §§goto(addr125);
                        }
                        §§goto(addr126);
                     }
                  }
               }
            }
            §§goto(addr132);
         }
         §§goto(addr79);
      }
      
      public function get §[A§() : §7!m§
      {
         return §7!m§(data);
      }
   }
}
