package §_-F1§
{
   import §_-0S§.§_-z1§;
   import §_-6r§.§_-7P§;
   import §_-6r§.§_-Tk§;
   import §_-Ur§.§_-ru§;
   import §_-e3§.§_-54§;
   import flash.display.MovieClip;
   
   public class §_-k4§ extends §_-Tk§
   {
       
      
      public var §_-N2§:§_-ru§;
      
      public var §_-yZ§:Array;
      
      public var §_-Q4§:Boolean = false;
      
      public function §_-k4§(param1:XML, param2:§_-k4§, param3:§_-ru§, param4:MovieClip = null)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:Class = null;
         if(_loc14_ || param3)
         {
            this.mName = param1.@name;
            if(_loc14_ || this)
            {
               if(param3)
               {
                  if(_loc14_)
                  {
                     this.§_-N2§ = param3;
                     if(_loc14_)
                     {
                        addr61:
                        _loc11_ = §_-z1§.§_-tn§(mName);
                        if(_loc14_ || param2)
                        {
                           mClip = new _loc11_();
                           if(_loc14_ || this)
                           {
                              this.§_-N2§.mMovieClip.addChild(mClip);
                           }
                        }
                     }
                     addr105:
                     var _loc12_:* = 0;
                     var _loc13_:* = param1.Container;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc13_,_loc12_));
                        if(!_loc15_)
                        {
                           if(§§pop())
                           {
                              _loc5_ = §§nextvalue(_loc12_,_loc13_);
                              if(_loc14_)
                              {
                                 this.§_-yZ§[this.§_-yZ§.length] = new §_-k4§(_loc5_,this,null);
                              }
                              continue;
                           }
                           if(_loc14_ || param3)
                           {
                              §§push(0);
                              if(_loc14_ || param3)
                              {
                                 _loc12_ = §§pop();
                                 if(!_loc15_)
                                 {
                                    _loc13_ = param1.Repeater;
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc13_,_loc12_));
                                       if(_loc14_)
                                       {
                                          if(§§pop())
                                          {
                                             _loc6_ = §§nextvalue(_loc12_,_loc13_);
                                             if(_loc14_ || this)
                                             {
                                                this.§_-yZ§[this.§_-yZ§.length] = new §_-mr§(_loc6_,this,null);
                                             }
                                             continue;
                                          }
                                          if(!_loc15_)
                                          {
                                             addr190:
                                             if(_loc14_)
                                             {
                                                §§push(0);
                                                if(_loc14_ || param1)
                                                {
                                                   addr202:
                                                   _loc12_ = §§pop();
                                                   _loc13_ = param1.Button;
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc13_,_loc12_));
                                                      if(_loc14_)
                                                      {
                                                         break loop1;
                                                      }
                                                      break loop0;
                                                   }
                                                   addr238:
                                                }
                                                addr311:
                                                _loc12_ = §§pop();
                                             }
                                             _loc13_ = param1.MovieClip;
                                             loop5:
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc13_,_loc12_));
                                                if(!(_loc15_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc9_ = §§nextvalue(_loc12_,_loc13_);
                                                         if(!(_loc15_ && param1))
                                                         {
                                                            this.§_-yZ§[this.§_-yZ§.length] = new §_-lq§(_loc9_,this);
                                                         }
                                                         continue loop5;
                                                      }
                                                      if(!_loc15_)
                                                      {
                                                         addr352:
                                                         if(_loc14_ || param3)
                                                         {
                                                            addr361:
                                                            _loc12_ = 0;
                                                            if(_loc14_)
                                                            {
                                                               addr364:
                                                               _loc13_ = param1.Popup;
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc13_,_loc12_));
                                                                  break loop0;
                                                               }
                                                               addr387:
                                                            }
                                                            addr390:
                                                            if(!_loc15_)
                                                            {
                                                               this.readInitialVisibility(param1);
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  if(param1.@MouseDown.toString() != "")
                                                                  {
                                                                     §_-q3§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                     if(_loc15_)
                                                                     {
                                                                     }
                                                                     §§goto(addr432);
                                                                  }
                                                                  if(param1.@MouseUp.toString() != "")
                                                                  {
                                                                     if(!(_loc15_ && param3))
                                                                     {
                                                                        §_-q3§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                        §§goto(addr432);
                                                                     }
                                                                  }
                                                                  addr432:
                                                                  if(param1.@MouseOver.toString() != "")
                                                                  {
                                                                     addr437:
                                                                     §_-q3§(§_-Ek§,param1.@MouseOver);
                                                                  }
                                                                  if(param1.@MouseOut.toString() != "")
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        §_-q3§(§_-6q§,param1.@MouseOut);
                                                                     }
                                                                  }
                                                                  §§goto(addr461);
                                                               }
                                                               addr461:
                                                               return;
                                                            }
                                                            §§goto(addr437);
                                                         }
                                                         §§goto(addr432);
                                                      }
                                                      §§goto(addr390);
                                                      continue loop5;
                                                   }
                                                   addr348:
                                                }
                                                break loop0;
                                             }
                                          }
                                          if(_loc14_ || param3)
                                          {
                                             §§push(0);
                                             if(_loc14_ || param2)
                                             {
                                                _loc12_ = §§pop();
                                                _loc13_ = param1.TextField;
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc13_,_loc12_));
                                                   if(_loc14_ || this)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc8_ = §§nextvalue(_loc12_,_loc13_);
                                                         if(!_loc15_)
                                                         {
                                                            this.§_-yZ§[this.§_-yZ§.length] = new §_-V1§(_loc8_,this);
                                                         }
                                                         continue;
                                                      }
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         §§push(0);
                                                         if(!(_loc15_ && param3))
                                                         {
                                                            §§goto(addr311);
                                                         }
                                                         §§goto(addr361);
                                                      }
                                                      §§goto(addr389);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr348);
                                             }
                                             §§goto(addr311);
                                          }
                                          §§goto(addr364);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc15_)
                                          {
                                             §§goto(addr244);
                                          }
                                          §§goto(addr389);
                                       }
                                       else
                                       {
                                          _loc7_ = §§nextvalue(_loc12_,_loc13_);
                                          if(!(_loc15_ && param3))
                                          {
                                             this.§_-yZ§[this.§_-yZ§.length] = new §_-qp§(_loc7_,this);
                                          }
                                          §§goto(addr238);
                                       }
                                    }
                                 }
                                 §§goto(addr352);
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr190);
                        }
                        break;
                     }
                     while(§§pop())
                     {
                        _loc10_ = §§nextvalue(_loc12_,_loc13_);
                        if(_loc14_)
                        {
                           this.§_-yZ§[this.§_-yZ§.length] = new §_-Nk§(_loc10_,this);
                        }
                        §§goto(addr387);
                     }
                     §§goto(addr389);
                  }
                  §§goto(addr61);
               }
               super(param1,param2,param4);
               if(!(_loc15_ && param3))
               {
                  this.§_-yZ§ = new Array();
               }
            }
            §§goto(addr105);
         }
         §§goto(addr61);
      }
      
      public function §_-gu§(param1:§_-Tk§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function setObjectToFront(param1:§_-Tk§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:§_-Tk§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§_-yZ§);
            if(_loc3_)
            {
               if(§§pop().indexOf(param1) < 0)
               {
                  if(!(_loc2_ && param1))
                  {
                     addr38:
                     this.§_-yZ§[this.§_-yZ§.length] = param1;
                     if(!_loc2_)
                     {
                        param1.setActiveStatus(this.§_-ZW§);
                        if(!_loc2_)
                        {
                           addr58:
                           §§push(param1);
                           if(!(_loc2_ && this))
                           {
                              §§push(Boolean(this.§_-DE§));
                              if(_loc3_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop();
                                       addr86:
                                       §§push(param1.§_-DE§);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                              }
                              §§pop().setVisibility(§§pop());
                              §§goto(addr104);
                           }
                           §§goto(addr86);
                        }
                     }
                  }
               }
               addr104:
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr58);
      }
      
      public function removeComponent(param1:§_-Tk§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§_-yZ§.indexOf(param1);
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ >= 0)
            {
               if(_loc4_ || _loc2_)
               {
                  this.§_-yZ§.splice(_loc2_,1);
               }
            }
         }
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            if(!mClip)
            {
               if(_loc4_)
               {
                  §§goto(addr25);
               }
            }
            var _loc2_:* = param1.@visible;
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§pop();
                           if(!_loc3_)
                           {
                              §§push(_loc2_);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 if(_loc4_)
                                 {
                                    addr75:
                                    if(§§pop())
                                    {
                                       this.setVisibility(false);
                                       addr90:
                                       §§push(param1.@enabled);
                                       if(!_loc3_)
                                       {
                                          addr95:
                                          _loc2_ = §§pop();
                                          if(_loc4_ || param1)
                                          {
                                             §§push(_loc2_);
                                             if(_loc4_ || this)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc4_)
                                                {
                                                   addr114:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         addr123:
                                                         §§pop();
                                                         addr125:
                                                         §§push(_loc2_.toUpperCase() == "TRUE");
                                                      }
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   addr129:
                                                   this.setEnabled(true);
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   this.setEnabled(false);
                                                }
                                                return;
                                             }
                                             §§goto(addr125);
                                          }
                                       }
                                       §§goto(addr125);
                                       addr79:
                                    }
                                    else
                                    {
                                       this.setVisibility(true);
                                       if(_loc4_ || param1)
                                       {
                                          §§goto(addr90);
                                       }
                                    }
                                    §§goto(addr129);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr114);
            }
            §§goto(addr123);
         }
         addr25:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            if(mParentContainer)
            {
               if(_loc5_)
               {
                  mParentContainer.containerEventOccured(param1,param2,param3);
                  if(_loc4_)
                  {
                     addr61:
                     this.§_-N2§.listenerEventOccured(param1,param2,param3);
                     addr65:
                     return;
                     addr59:
                  }
               }
               §§goto(addr65);
            }
            else
            {
               §§push(this.§_-N2§);
               if(_loc5_ || param3)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§goto(addr59);
                     }
                  }
                  §§goto(addr65);
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§_-yZ§.length)
            {
               if(!_loc3_)
               {
                  addr75:
                  super.setActiveStatus(param1);
                  break;
               }
               break;
            }
            §§push(this.§_-yZ§);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  if(§§pop()[§§pop()] is §_-Tk§)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr46:
                        (this.§_-yZ§[_loc2_] as §_-Tk§).setActiveStatus(param1);
                        if(_loc4_)
                        {
                           addr53:
                           _loc2_++;
                           if(!(_loc3_ && this))
                           {
                              continue;
                           }
                           §§goto(addr75);
                        }
                        break;
                     }
                     continue;
                  }
                  §§goto(addr53);
               }
            }
            §§goto(addr46);
            §§goto(addr75);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(_loc2_)
         {
            if(this.§_-yZ§)
            {
               if(_loc2_)
               {
                  _loc1_ = 0;
                  addr24:
                  for(; _loc1_ < this.§_-yZ§.length; _loc1_++)
                  {
                     §§push(this.§_-yZ§);
                     if(!_loc3_)
                     {
                        §§push(_loc1_);
                        if(_loc2_ || _loc1_)
                        {
                           if(!(§§pop()[§§pop()] is §_-Tk§))
                           {
                              continue;
                           }
                           addr51:
                           §§push(this.§_-yZ§);
                           §§push(_loc1_);
                        }
                        (§§pop()[§§pop()] as §_-Tk§).clear();
                        continue;
                     }
                     §§goto(addr51);
                  }
                  if(!_loc3_)
                  {
                     addr64:
                     this.§_-yZ§ = null;
                     if(_loc2_)
                     {
                        §§push(this.§_-N2§);
                        if(!(_loc3_ && this))
                        {
                           if(§§pop())
                           {
                              addr88:
                              this.§_-N2§.mMovieClip.removeChild(mClip);
                           }
                           super.clear();
                           return;
                        }
                        §§goto(addr88);
                     }
                  }
                  §§goto(addr88);
               }
               §§goto(addr24);
            }
            §§goto(addr64);
         }
         §§goto(addr24);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setVisibility(param1);
            if(!(_loc2_ && _loc2_))
            {
               addr33:
               this.onParentVisibilityChange(param1);
            }
            return;
         }
         §§goto(addr33);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_)
         {
            super.onParentVisibilityChange(param1);
            if(!_loc4_)
            {
               §§goto(addr22);
            }
            §§goto(addr30);
         }
         addr22:
         if(this.§_-yZ§ != null)
         {
            if(_loc3_)
            {
               _loc2_ = 0;
               addr30:
               for(; _loc2_ < this.§_-yZ§.length; _loc2_++,if(_loc4_ && this)
               {
                  break;
               })
               {
                  §§push(this.§_-yZ§);
                  if(_loc3_ || this)
                  {
                     §§push(_loc2_);
                     if(_loc3_)
                     {
                        if(!(§§pop()[§§pop()] is §_-Tk§))
                        {
                           continue;
                        }
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        addr64:
                        §§push(this.§_-yZ§);
                        §§push(_loc2_);
                     }
                     (§§pop()[§§pop()] as §_-Tk§).onParentVisibilityChange(param1);
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr64);
               }
            }
            §§goto(addr30);
         }
      }
      
      public function §_-hr§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(!_loc4_)
         {
            if(mName.toUpperCase() == param1)
            {
               if(_loc5_ || param1)
               {
                  this.setVisibility(param2);
                  addr33:
               }
               §§goto(addr33);
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc5_)
               {
                  if(_loc3_ is §_-Tk§)
                  {
                     if(!_loc4_)
                     {
                        addr54:
                        (_loc3_ as §_-Tk§).setVisibility(param2);
                        if(_loc5_ || this)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§_-54§);
                     §§push("WARNING: UIContainer(" + mName);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + ") setItemVisibility can not be done because item ");
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop() + param1);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(§§pop() + " does not exist");
                           }
                        }
                     }
                     §§pop().log(§§pop());
                  }
                  §§goto(addr106);
               }
               §§goto(addr54);
            }
         }
         §§goto(addr33);
      }
      
      public function getItemByName(param1:String) : §_-Tk§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-Tk§ = null;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc4_)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(_loc4_ || param1)
                  {
                     return this;
                  }
               }
            }
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < this.§_-yZ§.length)
            {
               §§push(this.§_-yZ§);
               if(_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop()[§§pop()] is §_-Tk§);
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && this))
                           {
                              §§push(this.§_-yZ§);
                              if(_loc4_)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_)
                                 {
                                    if((§§pop()[§§pop()] as §_-Tk§).mName.toUpperCase() == param1)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(this.§_-yZ§);
                                          if(!_loc5_)
                                          {
                                             §§push(_loc2_);
                                             if(_loc4_)
                                             {
                                                §§goto(addr93);
                                             }
                                             §§goto(addr121);
                                          }
                                          else
                                          {
                                             addr113:
                                             §§push(_loc2_);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§goto(addr121);
                                             }
                                          }
                                          _loc3_ = (§§pop()[§§pop()] as §_-k4§).getItemByName(param1);
                                          if(!_loc5_)
                                          {
                                             if(_loc3_ != null)
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§goto(addr121);
                                          }
                                          break;
                                       }
                                       continue;
                                    }
                                    §§push(this.§_-yZ§);
                                    if(_loc4_ || param1)
                                    {
                                       §§goto(addr113);
                                    }
                                    §§goto(addr129);
                                    §§goto(addr129);
                                 }
                                 addr121:
                                 addr124:
                                 if(§§pop()[§§pop()] is §_-k4§)
                                 {
                                    §§goto(addr166);
                                 }
                                 _loc2_++;
                                 if(_loc4_ || this)
                                 {
                                    continue;
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr124);
                  }
                  addr93:
                  return §§pop()[§§pop()] as §_-Tk§;
               }
               §§goto(addr113);
            }
            addr166:
            if(_loc4_)
            {
               addr129:
               §§push(this.§_-yZ§);
               §§push(_loc2_);
            }
            return null;
         }
         return _loc3_;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §_-ru§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§_-N2§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§goto(addr49);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr49);
         }
         addr49:
         return this.§_-N2§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.viewWidth = param1;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-yZ§.length)
         {
            §§push(this.§_-yZ§);
            if(_loc4_ || this)
            {
               §§push(_loc2_);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop()[§§pop()] is §_-Tk§)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        addr66:
                        (this.§_-yZ§[_loc2_] as §_-Tk§).viewWidth = param1;
                        if(_loc3_)
                        {
                           continue;
                        }
                     }
                  }
                  _loc2_++;
                  if(_loc3_ && _loc2_)
                  {
                     break;
                  }
                  continue;
               }
            }
            §§goto(addr66);
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.viewHeight = param1;
         }
         var _loc2_:int = 0;
         for(; _loc2_ < this.§_-yZ§.length; _loc2_++,if(_loc4_)
         {
            break;
         })
         {
            §§push(this.§_-yZ§);
            if(_loc3_ || param1)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(§§pop()[§§pop()] is §_-Tk§)
                  {
                     if(!_loc4_)
                     {
                        addr54:
                        §§push(this.§_-yZ§);
                        §§push(_loc2_);
                     }
                     break;
                  }
                  continue;
               }
               (§§pop()[§§pop()] as §_-Tk§).viewHeight = param1;
               if(!_loc3_)
               {
                  break;
               }
               continue;
            }
            §§goto(addr54);
         }
      }
   }
}
