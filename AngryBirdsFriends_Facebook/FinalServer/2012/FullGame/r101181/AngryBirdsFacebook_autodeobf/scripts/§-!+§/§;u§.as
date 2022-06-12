package §-!+§
{
   import §]!>§.§[Q§;
   import com.AngryBirds.friendsbar.TournamentScorePlateAsset;
   
   public class §;u§ extends §=G§ implements §1C§
   {
       
      
      private var §,@§:TournamentScorePlateAsset;
      
      public function §;u§()
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
            while(!_loc2_);
            
         }
      }
      
      private static function §"!V§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc8_:*;
         var _loc7_:String;
         if(_loc8_ = (_loc7_ = String(Math.round(_loc6_ * Number(param1)) / _loc6_)).indexOf(".") == -1)
         {
            §§push(_loc7_);
            if(!_loc13_)
            {
               §§push(int(§§pop().length));
               if(_loc14_)
               {
                  addr62:
                  §§push(int(§§pop()));
               }
            }
            else
            {
               addr57:
               §§push(int(§§pop().indexOf(".")));
               if(!_loc13_)
               {
                  §§goto(addr62);
               }
            }
            var _loc9_:* = §§pop();
            if(_loc14_)
            {
               §§push(_loc8_);
               if(_loc14_ || param3)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc13_)
                  {
                     addr77:
                     if(§§pop())
                     {
                        if(!(_loc13_ && param3))
                        {
                           addr86:
                           §§pop();
                           if(_loc14_)
                           {
                              §§push(param3);
                              if(_loc14_ || param1)
                              {
                              }
                              addr105:
                              if(§§pop())
                              {
                                 if(!_loc13_)
                                 {
                                    addr127:
                                    var _loc10_:* = (!(_loc13_ && param2) ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                    §§push("");
                                    if(_loc14_)
                                    {
                                       if(param3)
                                       {
                                          if(!(_loc13_ && §;u§))
                                          {
                                             _loc11_ = 0;
                                             addr189:
                                             loop1:
                                             while(true)
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(_loc11_);
                                                   if(!(_loc13_ && param3))
                                                   {
                                                      §§push(param2);
                                                      if(_loc14_ || §;u§)
                                                      {
                                                         if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                         {
                                                            addr227:
                                                            if(!_loc13_)
                                                            {
                                                               addr221:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  break loop2;
                                                               }
                                                               addr299:
                                                               return _loc7_.substr(0,_loc9_ - _loc5_) + _loc10_;
                                                               addr267:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(".");
                                                               if(!(_loc13_ && param3))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr239:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                        if(_loc14_ || §;u§)
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           if(_loc13_)
                                                                           {
                                                                           }
                                                                           §§goto(addr267);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr299);
                                                                  }
                                                                  addr235:
                                                               }
                                                               addr238:
                                                               while(true)
                                                               {
                                                                  §§goto(addr239);
                                                               }
                                                            }
                                                            addr227:
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc10_);
                                                            if(!(_loc13_ && §;u§))
                                                            {
                                                               §§push(§§pop() + "0");
                                                               if(!_loc13_)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  if(!_loc13_)
                                                                  {
                                                                     _loc11_++;
                                                                     if(!(_loc13_ && param2))
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr227);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr221);
                                                                  }
                                                               }
                                                               §§goto(addr235);
                                                            }
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc13_)
                                                         {
                                                            if(_loc7_.substr(0,1) == "-")
                                                            {
                                                               addr289:
                                                               if(_loc9_ < (!_loc13_ ? §§pop() - 1 : §§pop()))
                                                               {
                                                                  if(param4)
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§goto(addr227);
                                                                     }
                                                                     §§goto(addr221);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(",");
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               §§goto(addr221);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc9_);
                                                            }
                                                            §§goto(addr296);
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                      addr279:
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr279);
                                                }
                                             }
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr221);
                                    }
                                    §§goto(addr189);
                                 }
                                 else
                                 {
                                    addr120:
                                    §§push(",");
                                    if(!_loc13_)
                                    {
                                       §§goto(addr123);
                                    }
                                    else
                                    {
                                       addr126:
                                       §§push(§§pop());
                                    }
                                    §§goto(addr127);
                                 }
                              }
                              else
                              {
                                 addr119:
                                 if(param4)
                                 {
                                    §§goto(addr120);
                                 }
                                 else
                                 {
                                    §§push(".");
                                 }
                                 §§goto(addr126);
                              }
                           }
                           §§goto(addr120);
                        }
                        §§push(!§§pop());
                        if(_loc14_ || §;u§)
                        {
                           §§goto(addr105);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr86);
               }
               §§goto(addr77);
            }
            §§goto(addr120);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr57);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            addChild(this.§,@§ = new TournamentScorePlateAsset());
            if(!_loc3_)
            {
               this.§,@§.§9"9§.stop();
            }
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§^!4§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§,@§);
                     loop2:
                     while(true)
                     {
                        if(§,!]§)
                        {
                           loop29:
                           while(true)
                           {
                              §§push(2);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(§§pop());
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    continue loop29;
                                 }
                                 addr327:
                              }
                              while(true)
                              {
                                 §§pop().gotoAndStop(§§pop());
                                 while(true)
                                 {
                                    §8""§();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§,@§);
                                       loop7:
                                       while(true)
                                       {
                                          §§pop().§'J§.text = this.§^!4§.userName || "";
                                          loop8:
                                          while(_loc1_)
                                          {
                                             §§push(this.§^!4§);
                                             continue loop0;
                                             addr81:
                                             if(_loc2_ && _loc1_)
                                             {
                                                continue;
                                             }
                                             §`!§();
                                             addr88:
                                             if(_loc1_ || _loc2_)
                                             {
                                                if(_loc1_ || _loc2_)
                                                {
                                                   return;
                                                }
                                                loop22:
                                                for(; _loc1_; while(true)
                                                {
                                                   §§pop().§9"9§.visible = true;
                                                   continue loop22;
                                                })
                                                {
                                                   §§push(this.§,@§);
                                                   loop26:
                                                   while(true)
                                                   {
                                                      §§pop().§%!Z§.visible = false;
                                                      loop23:
                                                      while(true)
                                                      {
                                                         §§push(this.§,@§);
                                                         loop27:
                                                         while(true)
                                                         {
                                                            §§pop().§9"9§.gotoAndStop(this.§^!4§.§9!Y§);
                                                            loop25:
                                                            while(true)
                                                            {
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§,@§);
                                                                     if(_loc1_ || this)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              §§pop().§=!W§.text = §"!V§(this.§^!4§.§@I§) || "0";
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc2_ && this))
                                                                                 {
                                                                                    if(_loc2_ && _loc1_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§goto(addr81);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr162:
                                                                                    while(_loc1_ || _loc1_)
                                                                                    {
                                                                                       if(_loc1_ || this)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       continue loop23;
                                                                                    }
                                                                                    loop17:
                                                                                    while(_loc1_ || this)
                                                                                    {
                                                                                       if(_loc1_ || this)
                                                                                       {
                                                                                          §§push(this.§,@§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc1_ || _loc2_)
                                                                                             {
                                                                                                if(_loc1_ || _loc1_)
                                                                                                {
                                                                                                   if(!(_loc1_ || _loc1_))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§pop().§%!Z§.text = this.§^!4§.§9!Y§.toString() || "";
                                                                                                   §§goto(addr124);
                                                                                                   continue loop17;
                                                                                                }
                                                                                                continue loop29;
                                                                                             }
                                                                                             continue loop22;
                                                                                          }
                                                                                          continue loop2;
                                                                                          addr92:
                                                                                       }
                                                                                       continue loop25;
                                                                                    }
                                                                                    addr124:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§,@§);
                                                                                       §§goto(addr162);
                                                                                    }
                                                                                    addr162:
                                                                                    addr194:
                                                                                 }
                                                                                 §§goto(addr88);
                                                                              }
                                                                              continue loop8;
                                                                              addr67:
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        while(!(_loc2_ && _loc2_))
                                                                        {
                                                                           §§pop().§%!Z§.visible = true;
                                                                           §§goto(addr162);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc1_ || this))
                                                                           {
                                                                              continue loop27;
                                                                           }
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           §§pop().§9"9§.visible = false;
                                                                           §§goto(addr194);
                                                                           §§goto(addr142);
                                                                        }
                                                                        addr142:
                                                                        addr182:
                                                                     }
                                                                     §§goto(addr92);
                                                                  }
                                                                  addr210:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§,@§);
                                                                     continue loop22;
                                                                  }
                                                                  addr242:
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop1;
                                                addr40:
                                             }
                                             §§goto(addr67);
                                          }
                                          §§goto(addr333);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§push(1);
                        }
                        §§goto(addr327);
                     }
                  }
               }
               addr333:
               return;
            }
         }
         §§goto(addr40);
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §6m§.setCanSendGift(param1,param2);
         }
      }
      
      public function get §^!4§() : §[Q§
      {
         return data as §[Q§;
      }
   }
}
