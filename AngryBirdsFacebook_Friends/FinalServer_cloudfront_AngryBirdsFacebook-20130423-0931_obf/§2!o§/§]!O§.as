package §2!o§
{
   import §,l§.§4"7§;
   import §,l§.§<"W§;
   import §;!d§.§6"L§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §]!O§ extends §`2§ implements §0!o§
   {
       
      
      private var § ;§:LevelScorePlateAsset;
      
      private var §5n§:Sprite;
      
      public function §]!O§()
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
      
      private static function §<Y§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
            if(!(_loc13_ && §]!O§))
            {
               §§push(int(§§pop().length));
               if(_loc14_)
               {
                  addr67:
                  §§push(int(§§pop()));
               }
            }
            else
            {
               addr62:
               §§push(int(§§pop().indexOf(".")));
               if(_loc14_)
               {
                  §§goto(addr67);
               }
            }
            var _loc9_:* = §§pop();
            if(!_loc13_)
            {
               §§push(_loc8_);
               if(_loc14_ || param3)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc14_)
                  {
                     addr82:
                     if(§§pop())
                     {
                        if(!_loc13_)
                        {
                           §§pop();
                           if(_loc14_ || §]!O§)
                           {
                              addr94:
                              §§push(param3);
                              if(_loc14_ || param3)
                              {
                                 §§push(!§§pop());
                                 if(_loc14_ || param2)
                                 {
                                    addr110:
                                    if(§§pop())
                                    {
                                       if(_loc14_)
                                       {
                                          var _loc10_:* = (!_loc13_ ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                          addr132:
                                          §§push("");
                                          if(!_loc13_)
                                          {
                                             if(param3)
                                             {
                                                if(!_loc13_)
                                                {
                                                   addr187:
                                                   _loc11_ = 0;
                                                }
                                                loop0:
                                                while(true)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc11_);
                                                      if(!(_loc13_ && §]!O§))
                                                      {
                                                         §§push(param2);
                                                         if(_loc14_)
                                                         {
                                                            if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                            {
                                                               if(!(_loc13_ && param3))
                                                               {
                                                                  addr221:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     break loop1;
                                                                  }
                                                                  addr262:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(".");
                                                                  if(!_loc13_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        §§goto(addr234);
                                                                     }
                                                                     addr230:
                                                                  }
                                                                  addr233:
                                                                  while(true)
                                                                  {
                                                                     addr234:
                                                                     §§goto(addr294);
                                                                  }
                                                               }
                                                               addr227:
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc10_);
                                                               if(_loc14_ || param2)
                                                               {
                                                                  §§push(§§pop() + "0");
                                                                  if(!(_loc13_ && param1))
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
                                                                        §§goto(addr221);
                                                                     }
                                                                     §§goto(addr293);
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                            }
                                                            addr294:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                               if(_loc14_)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  if(_loc14_ || param2)
                                                                  {
                                                                     §§goto(addr262);
                                                                  }
                                                                  addr293:
                                                                  §§push(_loc7_);
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                            return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc14_)
                                                            {
                                                               if(_loc7_.substr(0,1) == "-")
                                                               {
                                                                  addr284:
                                                                  if(_loc9_ < (!!_loc14_ ? §§pop() - 1 : §§pop()))
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
                                                                     §§goto(addr233);
                                                                  }
                                                                  §§goto(addr293);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc9_);
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            §§goto(addr284);
                                                            break loop1;
                                                         }
                                                         addr274:
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr274);
                                                      §§goto(addr221);
                                                   }
                                                   §§goto(addr293);
                                                }
                                             }
                                             §§goto(addr221);
                                          }
                                          §§goto(addr187);
                                       }
                                       else
                                       {
                                          addr120:
                                          §§push(",");
                                          if(!(_loc13_ && param1))
                                          {
                                             §§goto(addr128);
                                          }
                                          else
                                          {
                                             addr131:
                                             §§push(§§pop());
                                          }
                                          §§goto(addr132);
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
                                       §§goto(addr131);
                                    }
                                    §§goto(addr120);
                                 }
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr119);
                     }
                  }
                  §§goto(addr110);
               }
               §§goto(addr82);
            }
            §§goto(addr94);
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
         if(_loc3_)
         {
            addChild(this.§ ;§ = new LevelScorePlateAsset());
            if(!_loc2_)
            {
               §§push(this.§ ;§);
               loop5:
               while(true)
               {
                  §§pop().§8"7§.stop();
                  loop4:
                  while(true)
                  {
                     this.§=j§();
                     loop2:
                     while(true)
                     {
                        if(!(_loc3_ || this))
                        {
                           continue loop4;
                        }
                        §§push(this.§ ;§);
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop5;
                           }
                           addr85:
                           §§pop().§8%§.stop();
                           while(_loc2_ && _loc3_)
                           {
                              continue loop2;
                              §§goto(addr85);
                           }
                        }
                     }
                  }
               }
               addr31:
            }
            while(true)
            {
               §§push(this.§ ;§);
               if(_loc3_ || _loc1_)
               {
                  §§pop().§%!n§.addEventListener(MouseEvent.CLICK,this.§,Z§);
                  if(_loc3_ || _loc1_)
                  {
                     break;
                  }
                  continue;
               }
               §§goto(addr83);
            }
            return;
         }
         §§goto(addr31);
      }
      
      override public function update() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!this.§#7§)
            {
               if(_loc4_)
               {
                  §§goto(addr24);
               }
            }
            var _loc1_:* = 1;
            if(_loc4_)
            {
               if(!§]F§)
               {
                  if(§4"L§)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(3);
                        if(_loc4_ || this)
                        {
                           if(!_loc3_)
                           {
                              _loc1_ = §§pop();
                              loop1:
                              while(true)
                              {
                                 addr163:
                                 loop47:
                                 while(true)
                                 {
                                    §§push(this.§ ;§);
                                    while(true)
                                    {
                                       §§pop().gotoAndStop(_loc1_);
                                       loop49:
                                       while(true)
                                       {
                                          §§push(this.§ ;§);
                                          while(true)
                                          {
                                             §§pop().§%!n§.visible = this.§#7§.§0!m§ == true && §4"7§.§&"5§.§6u§(this.§#7§.userId) && !§4"L§;
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §2!l§();
                                                if(_loc4_)
                                                {
                                                   §§push(this.§ ;§);
                                                   loop51:
                                                   while(!_loc3_)
                                                   {
                                                      §§pop().§[m§.text = this.§#7§.userName || "";
                                                      if(_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            do
                                                            {
                                                               §§push(this.§ ;§);
                                                               while(_loc4_)
                                                               {
                                                                  §§pop().§8"7§.gotoAndStop(!!this.§#7§.§!!u§ ? 2 : 1);
                                                                  while(!(_loc3_ && _loc1_))
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  continue loop49;
                                                               }
                                                               continue loop51;
                                                            }
                                                            while(false);
                                                            
                                                            if(this.§#7§.§!!u§)
                                                            {
                                                               addr195:
                                                               §§push(26);
                                                               if(!_loc3_)
                                                               {
                                                                  break loop0;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(0);
                                                            }
                                                         }
                                                         addr123:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr195);
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         addr216:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc2_:* = §§pop();
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this.§ ;§);
                                                         while(true)
                                                         {
                                                            §§pop().mcStar1.x = 61 + _loc2_;
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(this.§ ;§);
                                                               while(true)
                                                               {
                                                                  §§pop().mcStar2.x = 75 + _loc2_;
                                                                  addr594:
                                                                  while(_loc4_ || _loc2_)
                                                                  {
                                                                  }
                                                                  continue loop5;
                                                                  addr289:
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§pop().mcStar2.visible = this.§#7§.stars >= 2;
                                                                  loop37:
                                                                  while(_loc4_ || _loc2_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        addr322:
                                                                        §§push(this.§ ;§);
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           addr258:
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§pop().mcStar3.visible = this.§#7§.stars >= 3;
                                                                              loop38:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §=!8§();
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop38;
                                                                                    }
                                                                                    continue loop37;
                                                                                 }
                                                                                 addr349:
                                                                                 while(!(_loc3_ && this))
                                                                                 {
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr280);
                                                                                       §§push(this.§ ;§);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§ ;§);
                                                                                       addr561:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§]l§.x = 55 + _loc2_;
                                                                                          addr566:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr551);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr471);
                                                                              }
                                                                              while(_loc4_ || this)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(this.§ ;§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr335:
                                                                                             if(_loc4_ || _loc1_)
                                                                                             {
                                                                                                §§pop().mcStar1.visible = this.§#7§.stars >= 1;
                                                                                                §§goto(addr349);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr580:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().mcStar3.x = 89 + _loc2_;
                                                                                                   §§goto(addr335);
                                                                                                }
                                                                                                addr580:
                                                                                             }
                                                                                             §§goto(addr585);
                                                                                          }
                                                                                          §§goto(addr561);
                                                                                       }
                                                                                       break;
                                                                                       §§goto(addr258);
                                                                                    }
                                                                                    §§goto(addr475);
                                                                                    addr326:
                                                                                 }
                                                                                 §§goto(addr566);
                                                                              }
                                                                              §§goto(addr478);
                                                                           }
                                                                           §§goto(addr326);
                                                                        }
                                                                        §§goto(addr280);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr594);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr393);
                                                                     §§goto(addr313);
                                                                  }
                                                                  addr313:
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr580);
                                                      }
                                                   }
                                                   continue;
                                                }
                                             }
                                             §§goto(addr195);
                                          }
                                       }
                                       addr35:
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§pop().§%"[§.visible = !this.§#7§.§!!u§;
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                §§goto(addr64);
                                             }
                                             else
                                             {
                                                loop52:
                                                while(true)
                                                {
                                                   §§push(2);
                                                   addr189:
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      addr190:
                                                      while(true)
                                                      {
                                                         continue loop47;
                                                      }
                                                      continue loop52;
                                                   }
                                                }
                                                addr188:
                                             }
                                          }
                                          §§goto(addr82);
                                       }
                                       §§goto(addr195);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr189);
                           }
                           §§goto(addr163);
                        }
                        break;
                        if(_loc3_ && _loc3_)
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           §§push(this.§ ;§);
                           if(_loc4_)
                           {
                              §§goto(addr35);
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr190);
                     }
                     §§push(Number(§§pop()));
                     if(_loc4_ || _loc1_)
                     {
                     }
                     §§goto(addr216);
                  }
                  §§goto(addr163);
               }
               §§goto(addr188);
            }
            §§goto(addr123);
         }
         addr24:
      }
      
      private function §^"G§(param1:int) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr89:
               addr90:
               while(§§pop() > §§pop())
               {
                  continue loop0;
               }
               addr90:
               return 0;
            }
         }
         §§goto(addr86);
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(§4"L§)
            {
               while(true)
               {
                  param1 = false;
                  while(true)
                  {
                  }
               }
               addr46:
            }
            do
            {
               §#"2§.setCanSendGift(param1,param2);
               if(_loc3_)
               {
                  continue;
               }
            }
            while(_loc3_);
            
            return;
         }
         §§goto(addr46);
      }
      
      private function §,Z§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§ ;§.§%!n§.visible = false;
         }
         while(true)
         {
            dispatchEvent(new §6"L§(§6"L§.§"!c§,this.§#7§,true));
            while(!_loc3_)
            {
               this.§#7§.§0!m§ = false;
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      private function §=j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5n§ = new Sprite();
            loop0:
            while(true)
            {
               this.§5n§.x = this.§ ;§.§%"[§.x;
               loop1:
               while(true)
               {
                  this.§5n§.y = this.§ ;§.§%"[§.y;
                  loop2:
                  while(true)
                  {
                     this.§5n§.graphics.beginFill(0);
                     while(_loc1_)
                     {
                        this.§5n§.graphics.drawRect(0,0,this.§ ;§.§%"[§.width,this.§ ;§.§%"[§.height);
                        while(!(_loc2_ && this))
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                     addr56:
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§push(this.§ ;§);
                     while(true)
                     {
                        §§pop().addChild(this.§5n§);
                        while(true)
                        {
                           §§push(this.§ ;§);
                           if(!(_loc1_ || _loc1_))
                           {
                              break;
                           }
                           §§pop().§%"[§.mask = this.§5n§;
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 return;
                                 addr41:
                              }
                              addr54:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr56);
                                 }
                                 else
                                 {
                                    §§goto(addr84);
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      public function get §#7§() : §<"W§
      {
         return data as §<"W§;
      }
   }
}
