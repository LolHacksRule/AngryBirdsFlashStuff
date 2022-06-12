package §-!+§
{
   import §,"2§.§;6§;
   import §]!>§.§0!!§;
   import §]!>§.§2!W§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §'@§ extends §=G§ implements §1C§
   {
       
      
      private var §,@§:LevelScorePlateAsset;
      
      private var § else§:Sprite;
      
      public function §'@§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.init();
         }
         while(!(_loc1_ || _loc1_));
         
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
               if(_loc13_)
               {
               }
               addr67:
               §§push(int(§§pop()));
            }
            else
            {
               addr57:
               §§push(int(§§pop().indexOf(".")));
               if(_loc14_ || param3)
               {
                  §§goto(addr67);
               }
            }
            var _loc9_:* = §§pop();
            if(!(_loc13_ && param1))
            {
               §§push(_loc8_);
               if(_loc14_)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc13_ && param1))
                  {
                     addr87:
                     if(§§pop())
                     {
                        if(!(_loc13_ && §'@§))
                        {
                           §§pop();
                           if(_loc14_ || param2)
                           {
                              addr104:
                              §§push(param3);
                              if(!_loc13_)
                              {
                                 addr107:
                                 §§push(!§§pop());
                                 if(!(_loc13_ && §'@§))
                                 {
                                    addr115:
                                    if(§§pop())
                                    {
                                       if(!(_loc13_ && §'@§))
                                       {
                                          addr123:
                                          §§push("");
                                          §§push(!(_loc13_ && param1) ? §§pop() : §§pop());
                                       }
                                       else
                                       {
                                          addr135:
                                          §§push(",");
                                          if(!(_loc13_ && param3))
                                          {
                                             §§goto(addr153);
                                          }
                                          else
                                          {
                                             addr156:
                                             §§push(§§pop());
                                          }
                                       }
                                       var _loc10_:* = §§pop() + _loc7_.substr(_loc9_ + 1);
                                       if(_loc14_ || param3)
                                       {
                                          if(param3)
                                          {
                                             if(!_loc13_)
                                             {
                                                addr197:
                                                _loc11_ = 0;
                                             }
                                             loop0:
                                             while(true)
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(_loc11_);
                                                   if(_loc14_ || param1)
                                                   {
                                                      §§push(param2);
                                                      if(_loc14_ || param3)
                                                      {
                                                         if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                         {
                                                            addr242:
                                                            if(!_loc13_)
                                                            {
                                                               addr231:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  break loop1;
                                                               }
                                                               addr272:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(".");
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(§§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                     if(!_loc13_)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        if(_loc14_)
                                                                        {
                                                                           §§goto(addr272);
                                                                        }
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                                  addr247:
                                                                  §§push(",");
                                                                  addr249:
                                                               }
                                                               addr248:
                                                               while(true)
                                                               {
                                                                  §§goto(addr249);
                                                               }
                                                            }
                                                            addr242:
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc10_);
                                                            if(_loc14_)
                                                            {
                                                               §§push(§§pop() + "0");
                                                               if(!_loc13_)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  if(!_loc13_)
                                                                  {
                                                                     _loc11_++;
                                                                     if(_loc14_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§goto(addr242);
                                                               }
                                                               §§goto(addr248);
                                                            }
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc13_)
                                                         {
                                                            if(_loc7_.substr(0,1) == "-")
                                                            {
                                                               §§goto(addr294);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc9_);
                                                            }
                                                            §§goto(addr306);
                                                         }
                                                         addr294:
                                                         if(_loc9_ < (_loc14_ || param3 ? §§pop() - 1 : §§pop()))
                                                         {
                                                            if(param4)
                                                            {
                                                               if(_loc14_ || §'@§)
                                                               {
                                                                  §§goto(addr242);
                                                               }
                                                               §§goto(addr309);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr247);
                                                            }
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                      addr274:
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr274);
                                                }
                                                addr309:
                                                return _loc7_.substr(0,_loc9_ - _loc5_) + _loc10_;
                                             }
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr197);
                                    }
                                    else
                                    {
                                       addr134:
                                       if(param4)
                                       {
                                          §§goto(addr135);
                                       }
                                       else
                                       {
                                          §§push(".");
                                       }
                                       §§goto(addr156);
                                    }
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr123);
                        }
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr107);
               }
               §§goto(addr87);
            }
            §§goto(addr104);
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
         if(_loc2_ || _loc1_)
         {
            addChild(this.§,@§ = new LevelScorePlateAsset());
            if(!(_loc3_ && _loc1_))
            {
               §§push(this.§,@§);
               loop0:
               while(true)
               {
                  §§pop().§1!6§.stop();
                  addr119:
                  while(true)
                  {
                     this.§<"E§();
                     do
                     {
                        §§push(this.§,@§);
                        continue loop0;
                     }
                     while(!(_loc2_ || _loc2_));
                     
                  }
               }
               addr40:
            }
            return;
         }
         §§goto(addr40);
      }
      
      override public function update() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§`!K§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§,@§);
                     loop1:
                     while(true)
                     {
                        if(!§,!]§)
                        {
                           §§push(1);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop());
                              loop3:
                              while(true)
                              {
                                 §§pop().gotoAndStop(§§pop());
                                 loop4:
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    §§push(this.§,@§);
                                    loop5:
                                    while(!(_loc2_ && _loc3_))
                                    {
                                       §§pop().§`4§.visible = this.§`!K§.§7!X§ == true && §0!!§.§;"§.§@!u§(this.§`!K§.userId);
                                       while(true)
                                       {
                                          §8""§();
                                          loop7:
                                          for(; !(_loc2_ && _loc2_); if(_loc2_ && _loc3_)
                                          {
                                             continue;
                                          },while(true)
                                          {
                                             §§push(this.§,@§);
                                             if(_loc3_)
                                             {
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§pop().§^k§.visible = !this.§`!K§.§'<§;
                                                   if(_loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(false)
                                                      {
                                                         §§goto(addr44);
                                                      }
                                                      else
                                                      {
                                                         addr169:
                                                         if(this.§`!K§.§'<§)
                                                         {
                                                            §§goto(addr171);
                                                         }
                                                         else
                                                         {
                                                            §§push(0);
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                   }
                                                   §§goto(addr171);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(2);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop());
                                                         continue loop3;
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr139:
                                                }
                                             }
                                             §§goto(addr47);
                                          })
                                          {
                                             if(!_loc3_)
                                             {
                                                §§goto(addr165);
                                             }
                                             §§push(this.§,@§);
                                             loop8:
                                             while(true)
                                             {
                                                §§pop().§'J§.text = this.§`!K§.userName || "";
                                                if(_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§,@§);
                                                      addr47:
                                                      while(_loc3_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§pop().§1!6§.gotoAndStop(!!this.§`!K§.§'<§ ? 2 : 1);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            continue loop7;
                                                         }
                                                      }
                                                      continue loop8;
                                                   }
                                                   addr44:
                                                }
                                                addr171:
                                                §§push(26);
                                                if(_loc3_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc2_)
                                                   {
                                                      addr182:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                else
                                                {
                                                   addr179:
                                                   §§push(Number(§§pop()));
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr182);
                                                   }
                                                }
                                                var _loc1_:* = §§pop();
                                                if(_loc3_)
                                                {
                                                   §§push(this.§,@§);
                                                   while(true)
                                                   {
                                                      §§pop().mcStar1.x = 61 + _loc1_;
                                                      while(true)
                                                      {
                                                         §§push(this.§,@§);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§pop().mcStar2.x = 75 + _loc1_;
                                                            addr561:
                                                            while(true)
                                                            {
                                                               §§push(this.§,@§);
                                                               continue loop14;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr389);
                                             }
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr139);
                     }
                  }
               }
               addr165:
               return;
            }
            §§goto(addr169);
         }
         §§goto(addr76);
      }
      
      private function §4w§(param1:int) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr92:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     continue loop0;
                  }
                  if(!_loc2_)
                  {
                     §§goto(addr96);
                  }
                  else
                  {
                     addr97:
                  }
                  while(true)
                  {
                     continue loop0;
                     addr73:
                     if(_loc3_ || this)
                     {
                        §§push(0.125);
                        if(!(_loc2_ && _loc2_))
                        {
                           return §§pop();
                        }
                        addr96:
                     }
                     continue;
                     return 0;
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §6m§.setCanSendGift(param1,param2);
         }
      }
      
      private function § "#§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§,@§.§`4§.visible = false;
            while(true)
            {
               dispatchEvent(new §;6§(§;6§.§4! §,this.§`!K§,true));
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            this.§`!K§.§7!X§ = false;
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §<"E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§ else§ = new Sprite();
         }
         while(true)
         {
            this.§ else§.x = this.§,@§.§^k§.x;
            while(true)
            {
               this.§ else§.y = this.§,@§.§^k§.y;
               loop2:
               while(true)
               {
                  this.§ else§.graphics.beginFill(0);
                  while(true)
                  {
                     this.§ else§.graphics.drawRect(0,0,this.§,@§.§^k§.width,this.§,@§.§^k§.height);
                     addr92:
                     while(!_loc1_)
                     {
                        continue loop2;
                     }
                  }
               }
            }
            if(!(_loc2_ || _loc1_))
            {
               continue;
            }
            §§goto(addr68);
         }
      }
      
      public function get §`!K§() : §2!W§
      {
         return data as §2!W§;
      }
   }
}
