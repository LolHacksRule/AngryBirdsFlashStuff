package §>M§
{
   import §'!D§.§08§;
   import §'!D§.§?!h§;
   import §7'§.§!y§;
   import §>P§.§5!§;
   import §>^§.§!6§;
   import flash.display.*;
   
   public class §<6§ extends §?!h§
   {
       
      
      public var §#i§:§5!§;
      
      public var §[!L§:Vector.<§?!h§>;
      
      public var §6P§:Boolean = false;
      
      public function §<6§(param1:XML, param2:§<6§, param3:§5!§, param4:MovieClip = null)
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
         if(_loc16_)
         {
            this.mName = param1.@name;
            if(!(_loc15_ && param2))
            {
               if(param3)
               {
                  if(!_loc15_)
                  {
                     addr58:
                     this.§#i§ = param3;
                     if(!_loc15_)
                     {
                        if(!param4)
                        {
                           if(_loc16_ || param2)
                           {
                              _loc12_ = §!y§.§%!C§(mName);
                              if(!_loc15_)
                              {
                                 mClip = new _loc12_();
                                 if(_loc16_)
                                 {
                                    this.§#i§.movieClip.addChild(mClip);
                                    addr90:
                                    super(param1,param2,param4);
                                    if(_loc16_ || param3)
                                    {
                                       addr102:
                                       this.§[!L§ = new Vector.<§?!h§>();
                                    }
                                 }
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr90);
                     }
                     var _loc13_:* = 0;
                     var _loc14_:* = param1.Container;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc14_,_loc13_));
                        if(_loc16_)
                        {
                           if(§§pop())
                           {
                              _loc5_ = §§nextvalue(_loc13_,_loc14_);
                              if(_loc16_ || param2)
                              {
                                 this.§[!L§.push(new §<6§(_loc5_,this,null));
                              }
                              continue;
                           }
                           if(!_loc15_)
                           {
                              if(_loc16_)
                              {
                                 if(_loc16_)
                                 {
                                    §§push(0);
                                    if(!_loc15_)
                                    {
                                       _loc13_ = §§pop();
                                       if(!(_loc15_ && param3))
                                       {
                                          _loc14_ = param1.Repeater;
                                          loop1:
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc14_,_loc13_));
                                             if(!(_loc15_ && param1))
                                             {
                                                if(§§pop())
                                                {
                                                   _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                   if(_loc16_)
                                                   {
                                                      this.§[!L§.push(new §]w§(_loc6_,this,null));
                                                   }
                                                   continue;
                                                }
                                                if(!(_loc15_ && param1))
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         §§push(0);
                                                         if(_loc16_ || param1)
                                                         {
                                                            _loc13_ = §§pop();
                                                            if(!(_loc15_ && param1))
                                                            {
                                                               _loc14_ = param1.Button;
                                                               addr405:
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc14_,_loc13_));
                                                                  if(!_loc15_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                                        if(_loc16_)
                                                                        {
                                                                           this.§[!L§.push(new §^-§(_loc7_,this));
                                                                        }
                                                                        continue;
                                                                     }
                                                                     if(_loc16_)
                                                                     {
                                                                        addr244:
                                                                        if(_loc16_ || param2)
                                                                        {
                                                                           if(!_loc15_)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 addr258:
                                                                                 _loc13_ = §§pop();
                                                                                 if(!(_loc15_ && param3))
                                                                                 {
                                                                                    addr266:
                                                                                    _loc14_ = param1.TextField;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc14_,_loc13_));
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       break loop2;
                                                                                    }
                                                                                    addr296:
                                                                                 }
                                                                                 addr324:
                                                                                 _loc14_ = param1.MovieClip;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc14_,_loc13_));
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       break loop1;
                                                                                    }
                                                                                    break loop2;
                                                                                 }
                                                                                 addr344:
                                                                              }
                                                                              addr374:
                                                                              _loc13_ = §§pop();
                                                                              if(_loc16_)
                                                                              {
                                                                                 addr377:
                                                                                 _loc14_ = param1.Popup;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc14_,_loc13_));
                                                                                    if(!(_loc15_ && param3))
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    addr454:
                                                                                    addr456:
                                                                                    loop11:
                                                                                    while(§§pop())
                                                                                    {
                                                                                       _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          this.§[!L§.push(new §%J§(_loc11_,this));
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                    }
                                                                                    addr456:
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       this.readInitialVisibility(param1);
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          if(param1.@MouseDown.toString() != "")
                                                                                          {
                                                                                             addr547:
                                                                                             loop3:
                                                                                             while(true)
                                                                                             {
                                                                                                §8!h§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                while(true)
                                                                                                {
                                                                                                   loop8:
                                                                                                   for(; !(_loc15_ && param1); if(!(_loc16_ || this))
                                                                                                   {
                                                                                                      continue;
                                                                                                   },if(!(_loc15_ && param1))
                                                                                                   {
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §8!h§(§;=§,param1.@MouseOut);
                                                                                                      §§goto(addr493);
                                                                                                   },§§goto(addr533))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop9:
                                                                                                         while(param1.@MouseOut.toString() != "")
                                                                                                         {
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            addr493:
                                                                                                            if(_loc16_ || param3)
                                                                                                            {
                                                                                                               addr500:
                                                                                                               break;
                                                                                                            }
                                                                                                            addr533:
                                                                                                            loop7:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §8!h§(§&x§,param1.@MouseOver);
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  addr509:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr528:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §8!h§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                     break loop7;
                                                                                                                  }
                                                                                                                  addr528:
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc15_ && param2))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(param1.@MouseOver.toString() == "")
                                                                                                                     {
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     §§goto(addr507);
                                                                                                                  }
                                                                                                                  addr501:
                                                                                                               }
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            addr507:
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr547:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(param1.@MouseUp.toString() != "")
                                                                                             {
                                                                                                §§goto(addr528);
                                                                                             }
                                                                                             §§goto(addr501);
                                                                                          }
                                                                                          §§goto(addr547);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr528);
                                                                                 }
                                                                                 addr397:
                                                                              }
                                                                              addr433:
                                                                              _loc14_ = param1.Slider;
                                                                              §§goto(addr453);
                                                                           }
                                                                           §§goto(addr500);
                                                                        }
                                                                        §§goto(addr266);
                                                                     }
                                                                     if(!(_loc15_ && this))
                                                                     {
                                                                        if(!(_loc15_ && param3))
                                                                        {
                                                                           addr430:
                                                                           _loc13_ = 0;
                                                                           if(_loc16_)
                                                                           {
                                                                              §§goto(addr433);
                                                                           }
                                                                           §§goto(addr456);
                                                                        }
                                                                        §§goto(addr547);
                                                                     }
                                                                     §§goto(addr456);
                                                                  }
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                     if(_loc16_)
                                                                     {
                                                                        this.§[!L§.push(new §#!a§(_loc10_,this));
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     §§goto(addr413);
                                                                  }
                                                                  §§goto(addr456);
                                                               }
                                                               §§goto(addr454);
                                                               addr405:
                                                            }
                                                            §§goto(addr433);
                                                         }
                                                         addr316:
                                                         _loc13_ = §§pop();
                                                         if(_loc16_ || this)
                                                         {
                                                            §§goto(addr324);
                                                         }
                                                         §§goto(addr433);
                                                      }
                                                      §§goto(addr521);
                                                   }
                                                   §§goto(addr324);
                                                }
                                                §§goto(addr244);
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc15_ && this))
                                                {
                                                   addr355:
                                                   if(_loc16_ || param3)
                                                   {
                                                      if(_loc16_ || param1)
                                                      {
                                                         §§push(0);
                                                         if(_loc16_)
                                                         {
                                                            §§goto(addr374);
                                                         }
                                                      }
                                                      §§goto(addr430);
                                                   }
                                                   §§goto(addr377);
                                                }
                                                §§goto(addr413);
                                             }
                                             else
                                             {
                                                _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                if(!_loc15_)
                                                {
                                                   this.§[!L§.push(new §-!P§(_loc9_,this));
                                                }
                                                §§goto(addr344);
                                             }
                                          }
                                       }
                                       §§goto(addr266);
                                    }
                                    §§goto(addr258);
                                 }
                                 §§goto(addr528);
                              }
                           }
                           §§goto(addr456);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(_loc16_)
                           {
                              if(!_loc15_)
                              {
                                 if(_loc16_ || param1)
                                 {
                                    §§push(0);
                                    if(!_loc15_)
                                    {
                                       §§goto(addr316);
                                    }
                                    §§goto(addr430);
                                 }
                                 §§goto(addr509);
                              }
                              §§goto(addr377);
                           }
                           §§goto(addr355);
                        }
                        else
                        {
                           _loc8_ = §§nextvalue(_loc13_,_loc14_);
                           if(_loc16_)
                           {
                              this.§[!L§.push(new §'V§(_loc8_,this));
                           }
                           §§goto(addr296);
                        }
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr90);
            }
         }
         §§goto(addr58);
      }
      
      public function §0&§(param1:§?!h§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function setObjectToFront(param1:§?!h§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:§?!h§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§[!L§.indexOf(param1) < 0)
            {
               while(true)
               {
                  this.§[!L§.push(param1);
                  loop1:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     loop2:
                     while(true)
                     {
                        param1.setActiveStatus(this.§2A§);
                        loop3:
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              §§push(param1);
                              if(_loc3_ || this)
                              {
                                 §§push(Boolean(this.§^!V§));
                                 if(!(_loc2_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          addr87:
                                          §§pop();
                                          addr88:
                                          §§push(param1.§^!V§);
                                          if(_loc2_)
                                          {
                                          }
                                          addr93:
                                          §§pop().setVisibility(§§pop());
                                          loop5:
                                          while(true)
                                          {
                                             param1.viewWidth = viewWidth;
                                             while(!_loc2_)
                                             {
                                                continue loop2;
                                                param1.viewHeight = viewHeight;
                                                if(_loc3_)
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             continue loop3;
                                          }
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    §§goto(addr93);
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr88);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr102);
      }
      
      public function removeComponent(param1:§?!h§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§[!L§.indexOf(param1);
         if(!_loc3_)
         {
            if(_loc2_ >= 0)
            {
               if(_loc4_)
               {
                  addr72:
                  param1.mParentContainer = null;
               }
               while(true)
               {
                  this.§[!L§.splice(_loc2_,1);
                  while(_loc4_)
                  {
                     mClip.removeChild(param1.mClip);
                     if(_loc4_)
                     {
                        §§goto(addr26);
                     }
                  }
               }
            }
            addr26:
            return;
         }
         §§goto(addr72);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!mClip)
            {
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
         }
         var _loc2_:String = param1.@visible;
         if(_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_);
                              while(true)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 addr165:
                                 while(_loc4_)
                                 {
                                 }
                                 continue loop1;
                                 addr60:
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 §§push(§§pop().toUpperCase() == "TRUE");
                                 if(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       loop16:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                this.setEnabled(true);
                                             }
                                          }
                                          else
                                          {
                                             this.setEnabled(false);
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§goto(addr36);
                                             }
                                          }
                                          addr81:
                                          if(!(_loc3_ && param1))
                                          {
                                             break;
                                          }
                                          addr189:
                                          addr189:
                                          loop15:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   addr125:
                                                   §§push(_loc2_);
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr60);
                                                   }
                                                   else
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr102:
                                                         while(true)
                                                         {
                                                            if(_loc3_ && _loc2_)
                                                            {
                                                               break loop12;
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc3_ && _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               continue loop16;
                                                            }
                                                            while(_loc4_)
                                                            {
                                                               §§pop();
                                                               continue loop15;
                                                            }
                                                            §§goto(addr165);
                                                         }
                                                         continue loop2;
                                                         §§goto(addr125);
                                                      }
                                                      continue loop3;
                                                      addr101:
                                                   }
                                                   §§goto(addr102);
                                                }
                                                break;
                                             }
                                             addr138:
                                             addr152:
                                             while(!(_loc3_ && _loc2_))
                                             {
                                                §§goto(addr101);
                                                §§push(_loc2_);
                                             }
                                             addr138:
                                             while(!(_loc3_ && this))
                                             {
                                                while(true)
                                                {
                                                   §§push(param1.@enabled);
                                                   continue loop0;
                                                }
                                                §§goto(addr138);
                                             }
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr126);
                                          }
                                       }
                                       addr36:
                                       return;
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr118);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && param1))
                           {
                              this.setVisibility(false);
                           }
                           §§goto(addr189);
                        }
                        else
                        {
                           this.setVisibility(true);
                           §§goto(addr152);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr189);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§08§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            if(!mParentContainer)
            {
               §§push(this.§#i§);
               if(!(_loc4_ && param1))
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && param1))
                     {
                        addr61:
                        this.§#i§.listenerEventOccured(param1,param2,param3);
                     }
                     if(!(_loc4_ && param2))
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr25);
                        }
                        else
                        {
                           addr87:
                           mParentContainer.containerEventOccured(param1,param2,param3);
                        }
                        §§goto(addr25);
                     }
                  }
                  addr25:
                  return;
               }
               §§goto(addr61);
            }
         }
         §§goto(addr87);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§?!h§ = null;
         for each(_loc2_ in this.§[!L§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(!(_loc5_ && _loc2_))
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(_loc3_ || this)
         {
            if(this.§[!L§)
            {
               if(_loc3_ || _loc1_)
               {
                  addr137:
                  _loc1_ = 0;
               }
               while(true)
               {
                  if(_loc1_ >= this.§[!L§.length)
                  {
                     loop1:
                     while(!(_loc2_ && this))
                     {
                        while(true)
                        {
                           this.§[!L§ = null;
                           loop3:
                           while(true)
                           {
                              §§push(this.§#i§);
                              if(_loc3_ || _loc1_)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§#i§);
                                       addr57:
                                       while(true)
                                       {
                                          §§pop().movieClip.removeChild(mClip);
                                          addr70:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             if(!(_loc3_ || this))
                                             {
                                                continue loop1;
                                             }
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                _loc1_++;
                                                break loop1;
                                                addr116:
                                             }
                                             addr86:
                                          }
                                       }
                                       addr36:
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          return;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    super.clear();
                                    if(!_loc2_)
                                    {
                                       §§goto(addr36);
                                    }
                                    §§goto(addr70);
                                    §§goto(addr86);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr57);
                           }
                        }
                     }
                     continue;
                  }
                  this.§[!L§[_loc1_].clear();
                  §§goto(addr116);
               }
            }
            §§goto(addr100);
         }
         §§goto(addr137);
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
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§?!h§ = null;
         if(!_loc6_)
         {
            super.onParentVisibilityChange(param1);
            if(_loc5_)
            {
               §§goto(addr26);
            }
            §§goto(addr40);
         }
         addr26:
         if(this.§[!L§ != null)
         {
            addr40:
            for each(_loc2_ in this.§[!L§)
            {
               if(_loc5_)
               {
                  _loc2_.onParentVisibilityChange(param1);
               }
            }
         }
      }
      
      public function §]!g§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(_loc4_ || param2)
         {
            if(mName.toUpperCase() == param1)
            {
               if(_loc4_)
               {
                  addr32:
                  this.setVisibility(param2);
               }
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(!(_loc5_ && param2))
               {
                  if(_loc3_ is §?!h§)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        (_loc3_ as §?!h§).setVisibility(param2);
                        if(!_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§!6§);
                     §§push("WARNING: UIContainer(" + mName);
                     if(!(_loc5_ && param2))
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
                  §§goto(addr114);
               }
            }
            addr114:
            return;
         }
         §§goto(addr32);
      }
      
      public function getItemByName(param1:String) : §?!h§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§?!h§ = null;
         var _loc3_:§?!h§ = null;
         if(!(_loc7_ && _loc2_))
         {
            §§push(param1);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc6_)
            {
               §§goto(addr42);
            }
            §§goto(addr48);
         }
         addr42:
         if(mName.toUpperCase() == param1)
         {
            if(_loc6_)
            {
               addr48:
               return this;
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = this.§[!L§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(_loc6_ || _loc2_)
               {
                  if(_loc2_.mName.toUpperCase() == param1)
                  {
                     if(_loc6_)
                     {
                        return _loc2_;
                     }
                  }
                  else
                  {
                     addr96:
                     if(!(_loc2_ is §<6§))
                     {
                        continue;
                     }
                  }
                  _loc3_ = (_loc2_ as §<6§).getItemByName(param1);
                  if(_loc6_)
                  {
                     if(_loc3_ != null)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr96);
            }
            return null;
         }
         return _loc3_;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §5!§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§#i§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.§#i§);
                  }
                  else
                  {
                     §§goto(addr53);
                  }
               }
               §§goto(addr53);
            }
            return §§pop();
         }
         addr53:
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§?!h§ = null;
         if(_loc6_ || _loc3_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§[!L§)
         {
            if(!_loc5_)
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§?!h§ = null;
         if(_loc5_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§[!L§)
         {
            if(_loc5_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
