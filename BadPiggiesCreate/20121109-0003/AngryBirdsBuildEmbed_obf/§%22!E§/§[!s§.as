package §"!E§
{
   import § !r§.§`![§;
   import §!y§.§2U§;
   import §#!4§.§'^§;
   import §#!4§.§+!S§;
   import com.rovio.assets.§1F§;
   import flash.display.*;
   
   public class §[!s§ extends §'^§
   {
       
      
      public var §^X§:§2U§;
      
      public var §?n§:Vector.<§'^§>;
      
      public var §8y§:Boolean = false;
      
      public function §[!s§(param1:XML, param2:§[!s§, param3:§2U§, param4:MovieClip = null)
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
         this.mName = param1.@name;
         if(param3)
         {
            if(_loc16_ || this)
            {
               this.§^X§ = param3;
            }
            if(!param4)
            {
               if(!_loc15_)
               {
                  _loc12_ = §1F§.§"!_§(mName);
                  if(!_loc15_)
                  {
                     mClip = new _loc12_();
                     if(!_loc16_)
                     {
                     }
                     addr79:
                     super(param1,param2,param4);
                     if(!_loc15_)
                     {
                        this.§?n§ = new Vector.<§'^§>();
                        addr92:
                        var _loc13_:* = 0;
                        for each(_loc5_ in param1.Container)
                        {
                           if(_loc16_ || this)
                           {
                              this.§?n§.push(new §[!s§(_loc5_,this,null));
                           }
                        }
                        if(!_loc15_)
                        {
                           if(!(_loc15_ && param1))
                           {
                              if(!_loc15_)
                              {
                                 §§push(0);
                                 if(!(_loc15_ && this))
                                 {
                                    _loc13_ = §§pop();
                                    if(_loc16_ || param3)
                                    {
                                       for each(_loc6_ in param1.Repeater)
                                       {
                                          if(!_loc15_)
                                          {
                                             this.§?n§.push(new §?j§(_loc6_,this,null));
                                          }
                                       }
                                       if(_loc16_ || param2)
                                       {
                                          §§push(0);
                                          if(_loc16_)
                                          {
                                             addr186:
                                             _loc13_ = §§pop();
                                             if(!_loc15_)
                                             {
                                                for each(_loc7_ in param1.Button)
                                                {
                                                   if(_loc16_ || this)
                                                   {
                                                      this.§?n§.push(new §#!'§(_loc7_,this));
                                                   }
                                                }
                                                if(!(_loc15_ && this))
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      §§push(0);
                                                      if(_loc16_ || param2)
                                                      {
                                                         _loc13_ = §§pop();
                                                         addr246:
                                                         var _loc14_:* = param1.TextField;
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            if(_loc16_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     this.§?n§.push(new §;!j§(_loc8_,this));
                                                                  }
                                                                  continue;
                                                               }
                                                               if(!(_loc15_ && param2))
                                                               {
                                                                  if(_loc16_)
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(0);
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           addr297:
                                                                           for each(_loc9_ in param1.MovieClip)
                                                                           {
                                                                              if(!(_loc15_ && param1))
                                                                              {
                                                                                 this.§?n§.push(new §%O§(_loc9_,this));
                                                                              }
                                                                           }
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr327:
                                                                              §§push(0);
                                                                              if(_loc16_ || param1)
                                                                              {
                                                                                 addr336:
                                                                                 _loc13_ = §§pop();
                                                                                 if(!(_loc15_ && this))
                                                                                 {
                                                                                    addr344:
                                                                                    _loc14_ = param1.Popup;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc14_,_loc13_));
                                                                                       break loop6;
                                                                                    }
                                                                                    addr374:
                                                                                    _loc13_ = 0;
                                                                                    addr372:
                                                                                    if(!(_loc15_ && param3))
                                                                                    {
                                                                                       addr382:
                                                                                       for each(_loc11_ in param1.Slider)
                                                                                       {
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             this.§?n§.push(new §0X§(_loc11_,this));
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    if(!(_loc15_ && param2))
                                                                                    {
                                                                                       this.readInitialVisibility(param1);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          addr418:
                                                                                          if(param1.@MouseDown.toString() != "")
                                                                                          {
                                                                                             if(!(_loc15_ && param3))
                                                                                             {
                                                                                                §<!k§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                if(_loc16_ || param1)
                                                                                                {
                                                                                                   addr442:
                                                                                                   if(param1.@MouseUp.toString() != "")
                                                                                                   {
                                                                                                      addr447:
                                                                                                      §<!k§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                      if(!(_loc15_ && this))
                                                                                                      {
                                                                                                         addr469:
                                                                                                         if(param1.@MouseOver.toString() != "")
                                                                                                         {
                                                                                                            §<!k§(§`"§,param1.@MouseOver);
                                                                                                            if(_loc16_ || param2)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr493);
                                                                                                         }
                                                                                                      }
                                                                                                      if(param1.@MouseOut.toString() != "")
                                                                                                      {
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr493);
                                                                                                   }
                                                                                                   §§goto(addr469);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr493);
                                                                                          }
                                                                                          §§goto(addr442);
                                                                                       }
                                                                                       addr493:
                                                                                       §<!k§(§<H§,param1.@MouseOut);
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr418);
                                                                                    addr371:
                                                                                    addr369:
                                                                                 }
                                                                                 §§goto(addr382);
                                                                              }
                                                                              §§goto(addr374);
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                        §§goto(addr336);
                                                                     }
                                                                     §§goto(addr447);
                                                                  }
                                                                  §§goto(addr344);
                                                               }
                                                               §§goto(addr382);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  this.§?n§.push(new §8!%§(_loc10_,this));
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr371);
                                                         }
                                                      }
                                                      §§goto(addr336);
                                                   }
                                                   §§goto(addr372);
                                                }
                                                §§goto(addr344);
                                             }
                                             §§goto(addr297);
                                          }
                                          §§goto(addr336);
                                       }
                                       §§goto(addr382);
                                    }
                                    §§goto(addr327);
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr418);
                           }
                           §§goto(addr246);
                        }
                        §§goto(addr344);
                     }
                     §§goto(addr92);
                  }
                  this.§^X§.movieClip.addChild(mClip);
                  §§goto(addr79);
               }
               §§goto(addr92);
            }
         }
         §§goto(addr79);
      }
      
      public function §?Q§(param1:§'^§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §8>§(param1:§'^§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function §9!k§(param1:§'^§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(this.§?n§.indexOf(param1) < 0)
         {
            if(_loc2_)
            {
               this.§?n§.push(param1);
               if(_loc2_)
               {
                  param1.mParentContainer = this;
                  param1.setActiveStatus(this.§8W§);
                  if(_loc2_ || this)
                  {
                     §§push(param1);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(Boolean(this.§6!4§));
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_ || param1)
                              {
                                 §§pop();
                                 addr87:
                                 §§push(param1.§6!4§);
                                 if(_loc2_ || _loc2_)
                                 {
                                 }
                                 addr97:
                                 §§pop().setVisibility(§§pop());
                                 if(_loc2_)
                                 {
                                    param1.viewWidth = viewWidth;
                                    if(_loc2_)
                                    {
                                       addr105:
                                       param1.viewHeight = viewHeight;
                                       §§goto(addr108);
                                    }
                                    addr108:
                                    return;
                                 }
                                 §§goto(addr105);
                              }
                              §§push(Boolean(§§pop()));
                           }
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr87);
                  }
               }
               §§goto(addr105);
            }
         }
         §§goto(addr105);
      }
      
      public function §@!t§(param1:§'^§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§?n§.indexOf(param1);
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ >= 0)
            {
               if(_loc4_)
               {
                  param1.mParentContainer = null;
                  if(!_loc3_)
                  {
                     addr60:
                     this.§?n§.splice(_loc2_,1);
                     if(!_loc4_)
                     {
                     }
                  }
                  §§goto(addr71);
               }
               mClip.removeChild(param1.mClip);
            }
            addr71:
            return;
         }
         §§goto(addr60);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(!mClip)
            {
               if(_loc4_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:* = param1.@visible;
            if(!(_loc3_ && param1))
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              addr52:
                              §§pop();
                              §§push(_loc2_);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 if(_loc4_)
                                 {
                                    addr61:
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          this.setVisibility(false);
                                          if(_loc4_ || this)
                                          {
                                             addr88:
                                             §§push(param1.@enabled);
                                             if(_loc4_ || param1)
                                             {
                                                _loc2_ = §§pop();
                                                §§push(_loc2_);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr107:
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§goto(addr125);
                                                   }
                                                   §§goto(addr134);
                                                }
                                                §§goto(addr143);
                                             }
                                             §§goto(addr107);
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr143);
                                    }
                                    else
                                    {
                                       this.setVisibility(true);
                                    }
                                    §§goto(addr88);
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr143);
                           }
                           addr125:
                           §§goto(addr126);
                        }
                        §§goto(addr61);
                     }
                     addr126:
                     if(§§pop())
                     {
                        if(!(_loc3_ && this))
                        {
                           addr134:
                           §§pop();
                           §§goto(addr154);
                        }
                     }
                     if(§§pop())
                     {
                        this.setEnabled(true);
                     }
                     else
                     {
                        this.setEnabled(false);
                     }
                     §§goto(addr154);
                     return;
                  }
                  §§goto(addr52);
               }
               §§goto(addr107);
            }
            §§goto(addr52);
         }
         addr28:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            if(mParentContainer)
            {
               if(!_loc4_)
               {
                  mParentContainer.containerEventOccured(param1,param2,param3);
                  if(!_loc5_)
                  {
                     addr75:
                     this.§^X§.listenerEventOccured(param1,param2,param3);
                     addr73:
                  }
                  else
                  {
                     addr55:
                  }
                  §§goto(addr79);
               }
               §§goto(addr55);
            }
            else
            {
               §§push(this.§^X§);
               if(!(_loc4_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc5_ || param2)
                     {
                        §§goto(addr73);
                     }
                  }
                  addr79:
                  return;
               }
            }
            §§goto(addr75);
         }
         §§goto(addr55);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§'^§ = null;
         for each(_loc2_ in this.§?n§)
         {
            if(!_loc5_)
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
            if(this.§?n§)
            {
               if(_loc3_)
               {
                  _loc1_ = 0;
                  addr33:
                  while(_loc1_ < this.§?n§.length)
                  {
                     this.§?n§[_loc1_].clear();
                     _loc1_++;
                  }
               }
               §§goto(addr33);
            }
            this.§?n§ = null;
            if(_loc3_)
            {
               §§push(this.§^X§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc1_)
                     {
                        addr85:
                        this.§^X§.movieClip.removeChild(mClip);
                        if(_loc2_ && _loc2_)
                        {
                        }
                     }
                     §§goto(addr97);
                  }
                  super.clear();
                  addr97:
                  return;
               }
            }
            §§goto(addr85);
         }
         §§goto(addr33);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.setVisibility(param1);
            if(!(_loc3_ && _loc3_))
            {
               addr43:
               this.onParentVisibilityChange(param1);
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§'^§ = null;
         if(!_loc5_)
         {
            super.onParentVisibilityChange(param1);
            if(_loc6_ || this)
            {
               if(this.§?n§ != null)
               {
                  addr56:
                  var _loc3_:int = 0;
                  for each(_loc2_ in this.§?n§)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        _loc2_.onParentVisibilityChange(param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      public function §1P§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(_loc5_ || param1)
         {
            if(mName.toUpperCase() == param1)
            {
               if(!_loc4_)
               {
                  addr33:
                  this.setVisibility(param2);
               }
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(!_loc4_)
               {
                  if(_loc3_ is §'^§)
                  {
                     if(_loc5_)
                     {
                        (_loc3_ as §'^§).setVisibility(param2);
                        if(_loc4_ && _loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§`![§);
                     §§push("WARNING: UIContainer(");
                     if(_loc5_ || param2)
                     {
                        §§push(§§pop() + mName);
                        if(_loc5_)
                        {
                           addr96:
                           §§push(") setItemVisibility can not be done because item ");
                           if(_loc5_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                              }
                              §§goto(addr113);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr96);
                  }
               }
            }
            addr113:
            §§push(§§pop() + param1);
            if(_loc5_ || param2)
            {
               §§push(" does not exist");
            }
            §§pop().log(§§pop());
            return;
         }
         §§goto(addr33);
      }
      
      public function getItemByName(param1:String) : §'^§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§'^§ = null;
         var _loc3_:§'^§ = null;
         if(_loc6_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc6_)
            {
               §§goto(addr42);
            }
            §§goto(addr63);
         }
         addr42:
         if(mName.toUpperCase() == param1)
         {
            if(_loc6_ || this)
            {
               addr63:
               return this;
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = this.§?n§;
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
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               else if(!(_loc2_ is §[!s§))
               {
                  continue;
               }
               _loc3_ = (_loc2_ as §[!s§).getItemByName(param1);
               if(_loc6_ || this)
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
            return null;
         }
         return _loc2_;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §2U§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§^X§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr42);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr42);
         }
         addr42:
         return this.§^X§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§'^§ = null;
         if(_loc5_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§?n§)
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
         var _loc2_:§'^§ = null;
         if(!(_loc5_ && this))
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§?n§)
         {
            if(_loc6_ || param1)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
