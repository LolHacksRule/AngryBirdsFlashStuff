package §=!7§
{
   import §&!<§.§>!V§;
   import §6]§.§,"0§;
   import §@y§.§0"4§;
   import §@y§.§0=§;
   import com.rovio.assets.§69§;
   import flash.display.*;
   
   public class §6W§ extends §0"4§
   {
       
      
      public var §;C§:§>!V§;
      
      public var §[z§:Vector.<§0"4§>;
      
      public var §1<§:Boolean = false;
      
      public function §6W§(param1:XML, param2:§6W§, param3:§>!V§, param4:MovieClip = null)
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:XML = null;
         var _loc12_:Class = null;
         if(!(_loc15_ && param1))
         {
            this.mName = param1.@name;
            if(_loc16_ || param3)
            {
               if(param3)
               {
                  if(!(_loc15_ && param1))
                  {
                     addr68:
                     this.§;C§ = param3;
                     if(!(_loc15_ && this))
                     {
                        if(!param4)
                        {
                           if(_loc16_ || this)
                           {
                              addr87:
                              _loc12_ = §69§.§ 0§(mName);
                              if(_loc16_)
                              {
                                 mClip = new _loc12_();
                                 if(_loc15_)
                                 {
                                 }
                                 addr105:
                                 super(param1,param2,param4);
                                 if(!_loc15_)
                                 {
                                    addr112:
                                    this.§[z§ = new Vector.<§0"4§>();
                                    addr118:
                                    var _loc13_:* = 0;
                                    var _loc14_:* = param1.Container;
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc14_,_loc13_));
                                       if(!_loc15_)
                                       {
                                          if(§§pop())
                                          {
                                             _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                             if(_loc16_)
                                             {
                                                this.§[z§.push(new §6W§(_loc5_,this,null));
                                             }
                                             continue;
                                          }
                                          if(_loc16_ || this)
                                          {
                                             if(_loc16_ || param1)
                                             {
                                                if(_loc16_ || param1)
                                                {
                                                   §§push(0);
                                                   if(!(_loc15_ && param3))
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         _loc14_ = param1.Repeater;
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            if(!(_loc15_ && this))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                                  if(_loc16_)
                                                                  {
                                                                     this.§[z§.push(new §3!b§(_loc6_,this,null));
                                                                  }
                                                                  continue;
                                                               }
                                                               if(_loc16_ || param1)
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     if(!(_loc15_ && param2))
                                                                     {
                                                                        §§push(0);
                                                                        if(!(_loc15_ && param3))
                                                                        {
                                                                           _loc13_ = §§pop();
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              addr248:
                                                                              _loc14_ = param1.Button;
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc14_,_loc13_));
                                                                                 if(!(_loc15_ && this))
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 break loop1;
                                                                              }
                                                                              addr273:
                                                                           }
                                                                           addr369:
                                                                           _loc14_ = param1.MovieClip;
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc14_,_loc13_));
                                                                              if(_loc16_ || this)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          this.§[z§.push(new §@u§(_loc9_,this));
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          addr403:
                                                                                          if(_loc16_ || param2)
                                                                                          {
                                                                                             addr411:
                                                                                             §§push(0);
                                                                                             if(!(_loc15_ && param1))
                                                                                             {
                                                                                                addr419:
                                                                                                _loc13_ = §§pop();
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   _loc14_ = param1.Popup;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                      if(_loc16_ || param2)
                                                                                                      {
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      addr499:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                            if(_loc16_ || param1)
                                                                                                            {
                                                                                                               this.§[z§.push(new §8q§(_loc11_,this));
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!(_loc15_ && this))
                                                                                                         {
                                                                                                            this.readInitialVisibility(param1);
                                                                                                            loop4:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(param1.@MouseDown.toString() != "")
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §7"'§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                     addr607:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr554:
                                                                                                                     if(!(_loc15_ && param3))
                                                                                                                     {
                                                                                                                        addr510:
                                                                                                                        return;
                                                                                                                        addr561:
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               loop6:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(param1.@MouseUp.toString() != "")
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §7"'§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                        addr585:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr580:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(param1.@MouseOver.toString() != "")
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §7"'§(§2!-§,param1.@MouseOver);
                                                                                                                           addr573:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr543:
                                                                                                                           if(_loc15_ && param3)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              §§goto(addr554);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr580);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     loop12:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(param1.@MouseOut.toString() != "")
                                                                                                                        {
                                                                                                                           if(_loc16_ || param3)
                                                                                                                           {
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §7"'§(§6!;§,param1.@MouseOut);
                                                                                                                                    addr536:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc16_ || param2))
                                                                                                                                       {
                                                                                                                                          continue loop12;
                                                                                                                                       }
                                                                                                                                       §§goto(addr543);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr536);
                                                                                                                        }
                                                                                                                        §§goto(addr510);
                                                                                                                     }
                                                                                                                     §§goto(addr585);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr509:
                                                                                                         }
                                                                                                         §§goto(addr607);
                                                                                                      }
                                                                                                   }
                                                                                                   addr442:
                                                                                                }
                                                                                                addr461:
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   addr465:
                                                                                                   _loc13_ = 0;
                                                                                                   if(_loc16_ || param2)
                                                                                                   {
                                                                                                      _loc14_ = param1.Slider;
                                                                                                      §§goto(addr498);
                                                                                                   }
                                                                                                   §§goto(addr501);
                                                                                                }
                                                                                                §§goto(addr573);
                                                                                             }
                                                                                             §§goto(addr465);
                                                                                          }
                                                                                          §§goto(addr531);
                                                                                       }
                                                                                       §§goto(addr461);
                                                                                    }
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§goto(addr461);
                                                                                    }
                                                                                    §§goto(addr501);
                                                                                 }
                                                                                 addr397:
                                                                              }
                                                                              break loop1;
                                                                           }
                                                                        }
                                                                        addr366:
                                                                        _loc13_ = §§pop();
                                                                        if(_loc16_)
                                                                        {
                                                                           §§goto(addr369);
                                                                        }
                                                                        §§goto(addr403);
                                                                     }
                                                                     §§goto(addr531);
                                                                  }
                                                                  §§goto(addr248);
                                                               }
                                                               if(!_loc15_)
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        §§goto(addr366);
                                                                     }
                                                                     §§goto(addr419);
                                                                  }
                                                                  §§goto(addr411);
                                                               }
                                                               §§goto(addr369);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(!_loc15_)
                                                               {
                                                                  this.§[z§.push(new §>!;§(_loc10_,this));
                                                               }
                                                               continue;
                                                            }
                                                            if(_loc16_ || param3)
                                                            {
                                                               §§goto(addr458);
                                                            }
                                                            §§goto(addr501);
                                                         }
                                                         §§goto(addr499);
                                                         addr450:
                                                      }
                                                   }
                                                   §§goto(addr419);
                                                }
                                                §§goto(addr561);
                                             }
                                             addr316:
                                             _loc14_ = param1.TextField;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc14_,_loc13_));
                                                if(_loc16_ || this)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                      if(!_loc15_)
                                                      {
                                                         this.§[z§.push(new §!!]§(_loc8_,this));
                                                      }
                                                      continue;
                                                   }
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      §§goto(addr352);
                                                   }
                                                   §§goto(addr501);
                                                }
                                                break;
                                             }
                                             §§goto(addr397);
                                          }
                                          §§goto(addr501);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc16_)
                                          {
                                             if(_loc16_ || param2)
                                             {
                                                if(_loc16_)
                                                {
                                                   §§push(0);
                                                   if(!(_loc15_ && param2))
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(_loc16_)
                                                      {
                                                         §§goto(addr316);
                                                      }
                                                   }
                                                   §§goto(addr419);
                                                }
                                                §§goto(addr509);
                                             }
                                             §§goto(addr403);
                                          }
                                          §§goto(addr352);
                                       }
                                       else
                                       {
                                          _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                          if(_loc16_ || param3)
                                          {
                                             this.§[z§.push(new §9"8§(_loc7_,this));
                                          }
                                          §§goto(addr273);
                                       }
                                    }
                                 }
                                 §§goto(addr118);
                              }
                              this.§;C§.movieClip.addChild(mClip);
                              §§goto(addr105);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr87);
               }
               §§goto(addr105);
            }
            §§goto(addr87);
         }
         §§goto(addr68);
      }
      
      public function §`!§(param1:§0"4§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §2";§(param1:§0"4§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function §#i§(param1:§0"4§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§[z§.indexOf(param1) < 0)
            {
               while(true)
               {
                  this.§[z§.push(param1);
                  addr147:
                  loop1:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     loop2:
                     while(true)
                     {
                        param1.setActiveStatus(this.§3!+§);
                        while(_loc2_)
                        {
                           §§push(param1);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(Boolean(this.§'">§));
                              if(_loc2_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       §§pop();
                                       addr93:
                                       §§push(param1.§'">§);
                                       if(_loc2_ || _loc2_)
                                       {
                                       }
                                       addr103:
                                       §§pop().setVisibility(§§pop());
                                       continue loop2;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr93);
                           while(!(_loc3_ && _loc3_))
                           {
                              param1.viewHeight = viewHeight;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr39:
                                 if(_loc2_ || this)
                                 {
                                    §§goto(addr24);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr147);
      }
      
      public function removeComponent(param1:§0"4§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§[z§.indexOf(param1);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ >= 0)
            {
               loop0:
               do
               {
                  param1.mParentContainer = null;
                  while(true)
                  {
                     this.§[z§.splice(_loc2_,1);
                     while(_loc3_ || param1)
                     {
                        mClip.removeChild(param1.mClip);
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(_loc4_);
               
               addr81:
            }
            return;
         }
         §§goto(addr81);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!mClip)
            {
               if(!_loc4_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = param1.@visible;
         if(_loc3_ || param1)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr184:
                           loop13:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr142:
                              while(_loc3_)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 while(_loc3_ || this)
                                 {
                                 }
                                 continue loop13;
                              }
                              continue loop0;
                           }
                        }
                        addr183:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.setVisibility(true);
                           loop3:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(param1.@enabled);
                                    while(!(_loc4_ && param1))
                                    {
                                       _loc2_ = §§pop();
                                       loop6:
                                       for(; _loc3_; if(!(_loc3_ || _loc3_))
                                       {
                                          continue;
                                       },§§goto(addr35))
                                       {
                                          §§push(_loc2_);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc3_)
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  this.setEnabled(true);
                                                                  break;
                                                               }
                                                               addr159:
                                                               addr113:
                                                               while(!_loc4_)
                                                               {
                                                                  continue loop7;
                                                                  §§goto(addr112);
                                                               }
                                                               while(_loc3_ || _loc2_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                            break;
                                                         }
                                                         this.setEnabled(false);
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop6;
                                                      }
                                                      addr35:
                                                      return;
                                                      addr71:
                                                   }
                                                   addr112:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                   }
                                                   addr112:
                                                   §§goto(addr113);
                                                }
                                                break;
                                             }
                                             §§goto(addr112);
                                          }
                                          §§goto(addr147);
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr142);
                                 }
                              }
                              else
                              {
                                 addr156:
                                 while(true)
                                 {
                                    this.setVisibility(false);
                                 }
                                 addr156:
                              }
                              §§goto(addr159);
                           }
                        }
                        §§goto(addr156);
                     }
                  }
               }
               §§goto(addr183);
            }
         }
         §§goto(addr156);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(!mParentContainer)
            {
               §§push(this.§;C§);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && this))
                        {
                           if(_loc5_ || param3)
                           {
                              addr60:
                              this.§;C§.listenerEventOccured(param1,param2,param3);
                              addr20:
                              return;
                              addr74:
                              addr58:
                           }
                           else
                           {
                              addr77:
                              mParentContainer.containerEventOccured(param1,param2,param3);
                           }
                        }
                        §§goto(addr20);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr20);
               }
               §§goto(addr60);
            }
            §§goto(addr77);
         }
         §§goto(addr58);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§0"4§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§[z§)
         {
            if(_loc6_ || _loc2_)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(_loc6_ || _loc3_)
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(!(_loc3_ && _loc1_))
         {
            if(this.§[z§)
            {
               if(!_loc3_)
               {
                  _loc1_ = 0;
                  addr128:
                  loop7:
                  while(true)
                  {
                     if(_loc1_ >= this.§[z§.length)
                     {
                        while(true)
                        {
                           loop1:
                           while(true)
                           {
                              this.§[z§ = null;
                              while(_loc2_ || this)
                              {
                                 §§push(this.§;C§);
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc2_ || this))
                                          {
                                             continue loop1;
                                          }
                                          addr70:
                                          this.§;C§.movieClip.removeChild(mClip);
                                       }
                                       loop4:
                                       while(_loc2_ || _loc1_)
                                       {
                                          while(true)
                                          {
                                             super.clear();
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                return;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop7;
                                       }
                                       addr101:
                                    }
                                    §§goto(addr30);
                                 }
                                 §§goto(addr70);
                              }
                           }
                        }
                        addr87:
                     }
                     else
                     {
                        this.§[z§[_loc1_].clear();
                     }
                     while(true)
                     {
                        _loc1_++;
                        §§goto(addr101);
                        continue loop7;
                     }
                  }
                  addr128:
               }
               §§goto(addr128);
            }
            §§goto(addr87);
         }
         §§goto(addr128);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setVisibility(param1);
            do
            {
               this.onParentVisibilityChange(param1);
            }
            while(_loc2_);
            
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§0"4§ = null;
         if(!_loc5_)
         {
            super.onParentVisibilityChange(param1);
            if(!(_loc5_ && param1))
            {
               if(this.§[z§ != null)
               {
                  addr46:
                  for each(_loc2_ in this.§[z§)
                  {
                     if(_loc6_ || param1)
                     {
                        _loc2_.onParentVisibilityChange(param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr46);
      }
      
      public function §9"$§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(_loc4_ || _loc3_)
         {
            if(mName.toUpperCase() == param1)
            {
               if(!(_loc5_ && param1))
               {
                  addr37:
                  this.setVisibility(param2);
               }
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(!(_loc5_ && _loc3_))
               {
                  if(_loc3_ is §0"4§)
                  {
                     if(_loc4_ || this)
                     {
                        (_loc3_ as §0"4§).setVisibility(param2);
                        if(_loc4_ || _loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§,"0§);
                     §§push("WARNING: UIContainer(" + mName);
                     if(_loc4_)
                     {
                        §§push(§§pop() + ") setItemVisibility can not be done because item ");
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop() + param1);
                           if(_loc4_)
                           {
                              §§push(§§pop() + " does not exist");
                           }
                        }
                     }
                     §§pop().log(§§pop());
                  }
                  §§goto(addr119);
               }
            }
            addr119:
            return;
         }
         §§goto(addr37);
      }
      
      public function getItemByName(param1:String) : §0"4§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§0"4§ = null;
         var _loc3_:§0"4§ = null;
         if(!(_loc6_ && this))
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc7_)
            {
               addr38:
               if(mName.toUpperCase() == param1)
               {
                  if(!(_loc6_ && param1))
                  {
                     return this;
                  }
               }
            }
            var _loc4_:int = 0;
            var _loc5_:* = this.§[z§;
            while(true)
            {
               for each(_loc2_ in _loc5_)
               {
                  if(_loc7_)
                  {
                     if(_loc2_.mName.toUpperCase() == param1)
                     {
                        if(_loc7_)
                        {
                           return _loc2_;
                        }
                     }
                     else
                     {
                        addr87:
                        if(!(_loc2_ is §6W§))
                        {
                           continue;
                        }
                     }
                     _loc3_ = (_loc2_ as §6W§).getItemByName(param1);
                     if(!(_loc7_ || _loc3_))
                     {
                        break;
                     }
                     if(_loc3_ != null)
                     {
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr87);
               }
               return null;
            }
            return _loc3_;
         }
         §§goto(addr38);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §>!V§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§;C§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr62);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr62);
         }
         addr62:
         return this.§;C§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§0"4§ = null;
         if(_loc5_ || _loc2_)
         {
            super.viewWidth = param1;
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this.§[z§)
         {
            if(_loc5_ || _loc3_)
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§0"4§ = null;
         if(_loc5_ || _loc2_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§[z§)
         {
            if(_loc5_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
