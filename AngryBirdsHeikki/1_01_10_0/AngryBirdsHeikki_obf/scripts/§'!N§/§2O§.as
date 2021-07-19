package §'!N§
{
   import §8P§.§&-§;
   import §8P§.§1A§;
   import §<u§.§]!Q§;
   import §@R§.§4,§;
   import §]!6§.§false§;
   import flash.display.*;
   
   public class §2O§ extends §&-§
   {
       
      
      public var §-p§:§]!Q§;
      
      public var §],§:Vector.<§&-§>;
      
      public var §3!_§:Boolean = false;
      
      public function §2O§(param1:XML, param2:§2O§, param3:§]!Q§, param4:MovieClip = null)
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
         if(!_loc15_)
         {
            this.mName = param1.@name;
            if(!_loc15_)
            {
               if(param3)
               {
                  if(_loc16_ || this)
                  {
                     addr58:
                     this.§-p§ = param3;
                     if(_loc16_ || param3)
                     {
                        addr68:
                        if(!param4)
                        {
                           if(_loc16_ || param3)
                           {
                              _loc12_ = §false§.§5#§(mName);
                              if(!(_loc15_ && param1))
                              {
                                 mClip = new _loc12_();
                                 if(!_loc15_)
                                 {
                                    this.§-p§.movieClip.addChild(mClip);
                                    addr100:
                                    super(param1,param2,param4);
                                    if(!(_loc15_ && param1))
                                    {
                                       addr112:
                                       this.§],§ = new Vector.<§&-§>();
                                    }
                                 }
                              }
                              §§goto(addr100);
                           }
                           var _loc13_:* = 0;
                           var _loc14_:* = param1.Container;
                           loop0:
                           while(true)
                           {
                              §§push(§§hasnext(_loc14_,_loc13_));
                              if(_loc16_ || this)
                              {
                                 if(§§pop())
                                 {
                                    _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                    if(_loc16_ || param3)
                                    {
                                       this.§],§.push(new §2O§(_loc5_,this,null));
                                    }
                                    continue;
                                 }
                                 if(!_loc15_)
                                 {
                                    if(!(_loc15_ && param3))
                                    {
                                       if(!(_loc15_ && this))
                                       {
                                          §§push(0);
                                          if(!_loc15_)
                                          {
                                             _loc13_ = §§pop();
                                             if(!_loc15_)
                                             {
                                                _loc14_ = param1.Repeater;
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                   if(_loc16_ || this)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                         if(_loc16_ || param1)
                                                         {
                                                            this.§],§.push(new §,2§(_loc6_,this,null));
                                                         }
                                                         continue;
                                                      }
                                                      if(!_loc15_)
                                                      {
                                                         if(_loc16_)
                                                         {
                                                            if(!(_loc15_ && param1))
                                                            {
                                                               §§push(0);
                                                               if(_loc16_)
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  if(_loc16_ || this)
                                                                  {
                                                                     _loc14_ = param1.Button;
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc14_,_loc13_));
                                                                        if(!(_loc15_ && param1))
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        break;
                                                                     }
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr385:
                                                                              if(_loc16_ || param1)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    addr396:
                                                                                    §§push(0);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       addr399:
                                                                                       _loc13_ = §§pop();
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          addr402:
                                                                                          _loc14_ = param1.Popup;
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc14_,_loc13_));
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      this.§],§.push(new §#!V§(_loc10_,this));
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   addr428:
                                                                                                   if(_loc16_ || param1)
                                                                                                   {
                                                                                                      addr436:
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         addr440:
                                                                                                         _loc13_ = 0;
                                                                                                         addr439:
                                                                                                         if(_loc16_ || param1)
                                                                                                         {
                                                                                                         }
                                                                                                         addr476:
                                                                                                         if(!(_loc15_ && param2))
                                                                                                         {
                                                                                                            this.readInitialVisibility(param1);
                                                                                                            loop8:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(param1.@MouseDown.toString() != "")
                                                                                                               {
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     §[!O§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr582:
                                                                                                               }
                                                                                                               loop10:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(param1.@MouseUp.toString() != "")
                                                                                                                  {
                                                                                                                     if(!(_loc15_ && param2))
                                                                                                                     {
                                                                                                                        §[!O§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                        addr558:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr558:
                                                                                                                     }
                                                                                                                     §§goto(addr558);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(param1.@MouseOver.toString() != "")
                                                                                                                     {
                                                                                                                        while(!_loc15_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §[!O§(§3"§,param1.@MouseOver);
                                                                                                                              addr539:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                        addr532:
                                                                                                                     }
                                                                                                                     for(; param1.@MouseOut.toString() != ""; §§goto(addr539))
                                                                                                                     {
                                                                                                                        if(!(_loc16_ || this))
                                                                                                                        {
                                                                                                                           addr525:
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(_loc16_ || param2)
                                                                                                                        {
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                        §§goto(addr532);
                                                                                                                     }
                                                                                                                     return;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr484:
                                                                                                         }
                                                                                                         §§goto(addr534);
                                                                                                      }
                                                                                                      §§goto(addr539);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr476);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                if(!(_loc15_ && param2))
                                                                                                {
                                                                                                   this.§],§.push(new §%!-§(_loc11_,this));
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr475);
                                                                                          }
                                                                                          addr474:
                                                                                       }
                                                                                       _loc14_ = param1.Slider;
                                                                                       §§goto(addr473);
                                                                                    }
                                                                                    §§goto(addr440);
                                                                                 }
                                                                                 §§goto(addr484);
                                                                              }
                                                                              §§goto(addr436);
                                                                           }
                                                                           §§goto(addr475);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                           if(!_loc15_)
                                                                           {
                                                                              this.§],§.push(new §25§(_loc9_,this));
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc14_,_loc13_));
                                                                              if(_loc16_ || param2)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                           addr374:
                                                                        }
                                                                        §§goto(addr474);
                                                                     }
                                                                     addr258:
                                                                     addr382:
                                                                  }
                                                                  §§goto(addr440);
                                                               }
                                                               addr351:
                                                               _loc13_ = §§pop();
                                                               if(!_loc15_)
                                                               {
                                                                  addr354:
                                                                  _loc14_ = param1.MovieClip;
                                                                  §§goto(addr374);
                                                               }
                                                               §§goto(addr402);
                                                            }
                                                            §§goto(addr539);
                                                         }
                                                         addr306:
                                                         _loc14_ = param1.TextField;
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            if(_loc16_)
                                                            {
                                                               break loop0;
                                                            }
                                                            §§goto(addr402);
                                                         }
                                                         addr331:
                                                      }
                                                      §§goto(addr385);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         if(_loc16_ || param1)
                                                         {
                                                            if(_loc16_ || param1)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc15_ && param3))
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§goto(addr306);
                                                                  }
                                                                  §§goto(addr354);
                                                               }
                                                               §§goto(addr440);
                                                            }
                                                            §§goto(addr396);
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                      §§goto(addr385);
                                                   }
                                                   else
                                                   {
                                                      _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                      if(!_loc15_)
                                                      {
                                                         this.§],§.push(new §<i§(_loc7_,this));
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                }
                                             }
                                             §§goto(addr306);
                                          }
                                          §§goto(addr351);
                                       }
                                       §§goto(addr558);
                                    }
                                    §§goto(addr306);
                                 }
                                 §§goto(addr385);
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
                                       if(!_loc15_)
                                       {
                                          §§push(0);
                                          if(_loc16_ || this)
                                          {
                                             §§goto(addr351);
                                          }
                                          §§goto(addr399);
                                       }
                                       §§goto(addr439);
                                    }
                                    §§goto(addr399);
                                 }
                                 §§goto(addr428);
                              }
                              else
                              {
                                 _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                 if(!(_loc15_ && param1))
                                 {
                                    this.§],§.push(new §[!%§(_loc8_,this));
                                 }
                                 §§goto(addr331);
                              }
                           }
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr68);
               }
               §§goto(addr100);
            }
         }
         §§goto(addr58);
      }
      
      public function §3B§(param1:§&-§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function setObjectToFront(param1:§&-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:§&-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§],§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§],§.push(param1);
                  addr138:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     loop2:
                     while(true)
                     {
                        param1.setActiveStatus(this.§ <§);
                        while(true)
                        {
                           §§push(param1);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(Boolean(this.§ !9§));
                              if(!(_loc2_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       addr92:
                                       §§pop();
                                       §§push(param1.§ !9§);
                                       if(_loc3_ || param1)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                                 §§pop().setVisibility(§§pop());
                                 loop4:
                                 while(!_loc2_)
                                 {
                                    param1.viewWidth = viewWidth;
                                    while(true)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       continue loop4;
                                    }
                                    continue loop2;
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr92);
                        }
                     }
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr138);
      }
      
      public function removeComponent(param1:§&-§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§],§.indexOf(param1);
         if(_loc3_ || _loc2_)
         {
            if(_loc2_ >= 0)
            {
               if(!(_loc4_ && _loc2_))
               {
                  param1.mParentContainer = null;
               }
               loop0:
               while(true)
               {
                  this.§],§.splice(_loc2_,1);
                  do
                  {
                     if(!(_loc4_ && param1))
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  while(mClip.removeChild(param1.mClip), _loc4_);
                  
                  §§goto(addr30);
               }
            }
            §§goto(addr30);
         }
         addr30:
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(!mClip)
            {
               if(!_loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = param1.@visible;
         if(_loc4_)
         {
            §§push(_loc2_);
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
                        while(true)
                        {
                           §§pop();
                           addr185:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr157:
                              while(true)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                              }
                           }
                        }
                        addr184:
                     }
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    this.setVisibility(false);
                                    loop8:
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(param1.@enabled);
                                          while(_loc4_)
                                          {
                                             _loc2_ = §§pop();
                                             loop11:
                                             do
                                             {
                                                §§push(_loc2_);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc3_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop());
                                                      if(!_loc4_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc4_ || param1))
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc4_ || this)
                                                               {
                                                                  this.setEnabled(true);
                                                                  break;
                                                               }
                                                               continue loop12;
                                                            }
                                                            this.setEnabled(false);
                                                            if(!(_loc4_ || this))
                                                            {
                                                               break;
                                                            }
                                                            continue loop11;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            break loop9;
                                                         }
                                                         addr152:
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            continue loop8;
                                                         }
                                                         addr79:
                                                      }
                                                   }
                                                   addr127:
                                                   while(!_loc3_)
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         addr136:
                                                         §§pop();
                                                         continue loop12;
                                                      }
                                                      §§goto(addr184);
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop1;
                                             }
                                             while(_loc3_ && this);
                                             
                                             return;
                                          }
                                          §§goto(addr157);
                                       }
                                       addr110:
                                       §§goto(addr36);
                                    }
                                    addr179:
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr179);
                           }
                           else
                           {
                              this.setVisibility(true);
                           }
                           §§goto(addr152);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            if(mParentContainer)
            {
               if(!_loc5_)
               {
                  mParentContainer.containerEventOccured(param1,param2,param3);
               }
            }
            else
            {
               §§push(this.§-p§);
               if(!(_loc5_ && this))
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr55:
                        this.§-p§.listenerEventOccured(param1,param2,param3);
                     }
                     if(_loc5_)
                     {
                        addr81:
                     }
                  }
                  return;
               }
               §§goto(addr55);
            }
            §§goto(addr81);
         }
         §§goto(addr55);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&-§ = null;
         for each(_loc2_ in this.§],§)
         {
            if(_loc6_ || param1)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(!_loc5_)
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(_loc3_ || _loc3_)
         {
            if(this.§],§)
            {
               if(!_loc2_)
               {
                  addr127:
                  _loc1_ = 0;
               }
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§],§.length)
                  {
                     if(_loc3_)
                     {
                        while(true)
                        {
                           this.§],§ = null;
                        }
                        addr95:
                     }
                     loop1:
                     while(true)
                     {
                        §§push(this.§-p§);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(_loc2_ && this)
                                 {
                                    _loc1_++;
                                    break;
                                    addr121:
                                 }
                                 §§push(this.§-p§);
                                 while(true)
                                 {
                                    §§pop().movieClip.removeChild(mClip);
                                    addr86:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr36:
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc3_ || _loc1_)
                                       {
                                          return;
                                       }
                                       break;
                                    }
                                    continue loop1;
                                 }
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              super.clear();
                              if(_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr36);
                           }
                        }
                        §§goto(addr83);
                     }
                  }
                  else
                  {
                     this.§],§[_loc1_].clear();
                  }
                  §§goto(addr121);
               }
            }
            §§goto(addr95);
         }
         §§goto(addr127);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.setVisibility(param1);
         }
         do
         {
            this.onParentVisibilityChange(param1);
         }
         while(_loc2_ && param1);
         
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&-§ = null;
         if(_loc6_)
         {
            super.onParentVisibilityChange(param1);
            if(_loc6_)
            {
               §§goto(addr37);
            }
            §§goto(addr41);
         }
         addr37:
         if(this.§],§ != null)
         {
            addr41:
            for each(_loc2_ in this.§],§)
            {
               if(!_loc5_)
               {
                  _loc2_.onParentVisibilityChange(param1);
               }
            }
         }
      }
      
      public function §`x§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(!(_loc5_ && param2))
         {
            if(mName.toUpperCase() == param1)
            {
               if(!(_loc5_ && _loc3_))
               {
                  addr37:
                  this.setVisibility(param2);
               }
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc4_ || _loc3_)
               {
                  if(_loc3_ is §&-§)
                  {
                     if(_loc4_ || this)
                     {
                        (_loc3_ as §&-§).setVisibility(param2);
                        if(!_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§4,§);
                     §§push("WARNING: UIContainer(" + mName);
                     if(_loc4_)
                     {
                        §§push(§§pop() + ") setItemVisibility can not be done because item ");
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(§§pop() + param1);
                           if(!(_loc5_ && param2))
                           {
                              §§push(§§pop() + " does not exist");
                           }
                        }
                     }
                     §§pop().log(§§pop());
                  }
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function getItemByName(param1:String) : §&-§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§&-§ = null;
         var _loc3_:§&-§ = null;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(!(_loc7_ && _loc2_))
            {
               if(mName.toUpperCase() == param1)
               {
                  if(_loc7_)
                  {
                     §§goto(addr45);
                  }
               }
               §§goto(addr45);
            }
            return this;
         }
         addr45:
         var _loc4_:int = 0;
         var _loc5_:* = this.§],§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.mName.toUpperCase() == param1)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
               if(_loc2_ is §2O§)
               {
                  _loc3_ = (_loc2_ as §2O§).getItemByName(param1);
                  if(!(_loc7_ && _loc3_))
                  {
                     if(_loc3_ != null)
                     {
                        if(!_loc7_)
                        {
                           return _loc3_;
                        }
                     }
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §]!Q§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§-p§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr52);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr52);
         }
         addr52:
         return this.§-p§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§&-§ = null;
         if(!(_loc6_ && param1))
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§],§)
         {
            if(_loc5_)
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&-§ = null;
         if(_loc6_ || _loc2_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§],§)
         {
            if(!_loc5_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
