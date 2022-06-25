package §#!"§
{
   import §#&§.§9!o§;
   import §7@§.§4C§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class §;V§ extends §+M§
   {
       
      
      private var §0!p§:LevelScorePlateAsset;
      
      public function §;V§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            do
            {
               this.init();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      private static function §4!w§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
            if(!(_loc13_ && param1))
            {
               §§push(int(§§pop().length));
               if(!_loc13_)
               {
                  addr72:
                  §§push(int(§§pop()));
               }
            }
            else
            {
               addr62:
               §§push(int(§§pop().indexOf(".")));
               if(_loc14_ || param1)
               {
                  §§goto(addr72);
               }
            }
            var _loc9_:* = §§pop();
            if(_loc14_ || §;V§)
            {
               §§push(_loc8_);
               if(_loc14_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc14_ || param3)
                  {
                     if(§§pop())
                     {
                        if(_loc14_)
                        {
                           addr96:
                           §§pop();
                           if(!(_loc13_ && §;V§))
                           {
                              §§push(param3);
                              if(!(_loc13_ && param2))
                              {
                                 §§push(!§§pop());
                                 if(_loc14_ || §;V§)
                                 {
                                 }
                                 addr134:
                                 if(§§pop())
                                 {
                                    addr142:
                                    var _loc10_:* = (!_loc13_ ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                    addr135:
                                    §§push(",");
                                    if(_loc14_)
                                    {
                                       if(param3)
                                       {
                                          if(_loc14_)
                                          {
                                             _loc11_ = 0;
                                             addr204:
                                             loop1:
                                             while(true)
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(_loc11_);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(param2);
                                                      if(_loc14_ || param3)
                                                      {
                                                         if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                         {
                                                            if(!(_loc13_ && param3))
                                                            {
                                                               addr236:
                                                            }
                                                            do
                                                            {
                                                               §§push(_loc5_);
                                                               break loop2;
                                                               _loc10_ = §§pop();
                                                            }
                                                            while(_loc14_ || param3);
                                                            
                                                            addr292:
                                                            §§push(_loc7_);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc10_);
                                                            if(_loc14_ || param3)
                                                            {
                                                               §§push(§§pop() + "0");
                                                               if(!(_loc13_ && param1))
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     _loc11_++;
                                                                     if(!(_loc14_ || param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc14_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  §§goto(addr292);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  addr259:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                     if(_loc14_ || §;V§)
                                                                     {
                                                                        §§goto(addr284);
                                                                     }
                                                                     break;
                                                                  }
                                                               }
                                                               addr255:
                                                            }
                                                         }
                                                         return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc13_)
                                                         {
                                                            if(_loc7_.substr(0,1) == "-")
                                                            {
                                                               addr314:
                                                               if(_loc9_ < (!!_loc14_ ? §§pop() - 1 : §§pop()))
                                                               {
                                                                  if(param4)
                                                                  {
                                                                     if(!(_loc13_ && param3))
                                                                     {
                                                                        §§push(".");
                                                                        if(!(_loc13_ && param2))
                                                                        {
                                                                           §§goto(addr255);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr258:
                                                                           §§push(§§pop());
                                                                        }
                                                                        §§goto(addr259);
                                                                     }
                                                                     §§goto(addr292);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(",");
                                                                  }
                                                                  §§goto(addr258);
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc9_);
                                                            }
                                                            §§goto(addr321);
                                                         }
                                                         §§goto(addr314);
                                                      }
                                                      addr304:
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr304);
                                                }
                                             }
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr204);
                                 }
                                 else
                                 {
                                    §§push(".");
                                 }
                                 §§goto(addr141);
                              }
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr134);
                     }
                     if(§§pop())
                     {
                        if(!(_loc13_ && param3))
                        {
                           §§push("");
                           if(_loc14_)
                           {
                              §§push(§§pop());
                           }
                           else
                           {
                              §§goto(addr141);
                           }
                        }
                        §§goto(addr142);
                     }
                     else
                     {
                        §§push(param4);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr134);
               }
               §§goto(addr96);
            }
            §§goto(addr142);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr62);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            addChild(this.§0!p§ = new LevelScorePlateAsset());
            if(_loc3_)
            {
               addr41:
               this.§0!p§.§?!"§.stop();
            }
            return;
         }
         §§goto(addr41);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§75§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§0!p§);
                     if(_loc1_)
                     {
                        if(!§8B§)
                        {
                           §§push(1);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop());
                              addr369:
                              while(true)
                              {
                                 §§pop().gotoAndStop(§§pop());
                                 loop4:
                                 while(!_loc2_)
                                 {
                                    §!R§();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§0!p§);
                                       loop6:
                                       while(true)
                                       {
                                          §§pop().§ F§.text = this.§75§.userName || "";
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§75§);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop().§&d§ <= 3);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(this.§75§);
                                                               loop13:
                                                               for(; !_loc2_; while(true)
                                                               {
                                                                  §§push(this.§75§);
                                                                  if(_loc2_ && _loc2_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(!_loc1_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(§§pop().§-s§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc1_ || this)
                                                                     {
                                                                        §§push(§§pop() > §§pop());
                                                                        if(_loc1_ || this)
                                                                        {
                                                                           if(!(_loc1_ || this))
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           if(!_loc1_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr277);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr303);
                                                                     }
                                                                     §§goto(addr310);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr302);
                                                                  }
                                                               },continue loop9)
                                                               {
                                                                  §§push(§§pop().§#!6§);
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr303:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() > §§pop());
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              addr277:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§push(this.§0!p§);
                                                                                    continue loop6;
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push(this.§0!p§);
                                                                                       while(!(_loc2_ && _loc1_))
                                                                                       {
                                                                                          §§pop().§?!"§.visible = true;
                                                                                          loop23:
                                                                                          for(; !(_loc2_ && _loc1_); while(true)
                                                                                          {
                                                                                             if(!(_loc1_ || _loc1_))
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             §§pop().§0h§.text = this.§75§.§&d§.toString() || "";
                                                                                             §§goto(addr165);
                                                                                          })
                                                                                          {
                                                                                             §§pop().§?!"§.gotoAndStop(this.§75§.§&d§);
                                                                                             loop24:
                                                                                             while(_loc1_ || _loc1_)
                                                                                             {
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§0!p§);
                                                                                                   loop26:
                                                                                                   while(!_loc2_)
                                                                                                   {
                                                                                                      §§pop().§3!c§.text = §4!w§(this.§75§.§#!6§) || "0";
                                                                                                      loop27:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc2_ && _loc2_))
                                                                                                         {
                                                                                                            if(_loc2_ && this)
                                                                                                            {
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            §§push(this.§0!p§);
                                                                                                            loop28:
                                                                                                            for(; _loc1_; loop30:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc2_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc2_ && _loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc1_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§pop().mcStar2.visible = this.§75§.stars >= 2;
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               continue loop28;
                                                                                                               addr98:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§0!p§);
                                                                                                                  if(_loc2_ && this)
                                                                                                                  {
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     continue loop26;
                                                                                                                  }
                                                                                                                  §§pop().mcStar3.visible = this.§75§.stars >= 3;
                                                                                                                  if(!_loc1_)
                                                                                                                  {
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                                  §§goto(addr44);
                                                                                                               }
                                                                                                               §§goto(addr55);
                                                                                                            },§§goto(addr185))
                                                                                                            {
                                                                                                               §§pop().mcStar1.visible = this.§75§.stars >= 1;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§0!p§);
                                                                                                                  continue loop28;
                                                                                                                  addr44:
                                                                                                                  if(_loc2_ && _loc1_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     if(_loc1_)
                                                                                                                     {
                                                                                                                        return;
                                                                                                                        addr55:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr206:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§0!p§);
                                                                                                                        addr185:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().§0h§.visible = true;
                                                                                                                           break loop27;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           if(_loc1_)
                                                                                                                           {
                                                                                                                              continue loop25;
                                                                                                                           }
                                                                                                                           addr295:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§0!p§);
                                                                                                                              break loop28;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           break loop25;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr165:
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().§0h§.visible = false;
                                                                                                               §§goto(addr236);
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_ && _loc1_)
                                                                                                            {
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr98);
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      while(_loc1_)
                                                                                                      {
                                                                                                         §§push(this.§0!p§);
                                                                                                         break loop26;
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   continue loop23;
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 §§goto(addr295);
                                                                              }
                                                                              addr277:
                                                                           }
                                                                        }
                                                                        addr310:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr277);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr376);
                              }
                           }
                           addr368:
                        }
                     }
                     while(true)
                     {
                        §§push(2);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§§pop());
                        }
                        else
                        {
                           §§goto(addr368);
                        }
                        §§goto(addr369);
                     }
                  }
               }
               addr376:
               return;
            }
         }
         §§goto(addr98);
      }
      
      private function §%!%§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            dispatchEvent(new §4C§(§4C§.§5!h§,this.§75§,true));
         }
         do
         {
            this.§75§.§+!Z§ = false;
         }
         while(!(_loc2_ || param1));
         
      }
      
      public function get §75§() : §9!o§
      {
         return data as §9!o§;
      }
   }
}
