package §=^§
{
   import §0!<§.§#y§;
   import §1;§.§!!1§;
   import §@s§.§'!0§;
   import §@s§.§3!?§;
   import com.rovio.assets.§,u§;
   import flash.display.*;
   
   public class §`f§ extends §3!?§
   {
       
      
      public var §5`§:§!!1§;
      
      public var §2x§:Vector.<§3!?§>;
      
      public var §%!I§:Boolean = false;
      
      public function §`f§(param1:XML, param2:§`f§, param3:§!!1§, param4:MovieClip = null)
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:XML = null;
         var _loc12_:Class = null;
         this.mName = param1.@name;
         if(!_loc16_)
         {
            if(param3)
            {
               this.§5`§ = param3;
               if(_loc15_)
               {
                  addr53:
                  if(!param4)
                  {
                     _loc12_ = §,u§.§'[§(mName);
                     if(!_loc16_)
                     {
                        mClip = new _loc12_();
                        if(!(_loc16_ && param1))
                        {
                           this.§5`§.movieClip.addChild(mClip);
                           addr78:
                           super(param1,param2,param4);
                        }
                     }
                  }
                  §§goto(addr78);
               }
               this.§2x§ = new Vector.<§3!?§>();
               var _loc13_:* = 0;
               var _loc14_:* = param1.Container;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc14_,_loc13_));
                  if(_loc15_)
                  {
                     if(§§pop())
                     {
                        _loc5_ = §§nextvalue(_loc13_,_loc14_);
                        if(!_loc16_)
                        {
                           this.§2x§.push(new §`f§(_loc5_,this,null));
                        }
                        continue;
                     }
                     if(!(_loc16_ && param2))
                     {
                        if(!(_loc16_ && param1))
                        {
                           if(!_loc16_)
                           {
                              §§push(0);
                              if(_loc15_ || param2)
                              {
                                 _loc13_ = §§pop();
                                 if(!(_loc16_ && param2))
                                 {
                                    for each(_loc6_ in param1.Repeater)
                                    {
                                       if(_loc15_)
                                       {
                                          this.§2x§.push(new §"M§(_loc6_,this,null));
                                       }
                                    }
                                    if(_loc15_ || param1)
                                    {
                                       if(_loc15_ || this)
                                       {
                                          if(!(_loc16_ && param2))
                                          {
                                             §§push(0);
                                             if(_loc15_ || param1)
                                             {
                                                _loc13_ = §§pop();
                                                _loc14_ = param1.Button;
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                   if(_loc15_ || param3)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                         if(_loc15_)
                                                         {
                                                            this.§2x§.push(new §]P§(_loc7_,this));
                                                         }
                                                         continue;
                                                      }
                                                      if(!_loc16_)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            §§push(0);
                                                            if(!_loc16_)
                                                            {
                                                               addr253:
                                                               _loc13_ = §§pop();
                                                               if(_loc15_ || this)
                                                               {
                                                                  addr261:
                                                                  _loc14_ = param1.TextField;
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc14_,_loc13_));
                                                                     if(_loc15_ || param3)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     break;
                                                                  }
                                                                  loop5:
                                                                  while(§§pop())
                                                                  {
                                                                     _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                     if(!_loc16_)
                                                                     {
                                                                        this.§2x§.push(new §<,§(_loc11_,this));
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                                  this.readInitialVisibility(param1);
                                                                  if(param1.@MouseDown.toString() != "")
                                                                  {
                                                                     § [§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                     addr445:
                                                                     if(param1.@MouseUp.toString() != "")
                                                                     {
                                                                        if(_loc15_ || param3)
                                                                        {
                                                                           § [§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                           addr472:
                                                                           if(param1.@MouseOver.toString() != "")
                                                                           {
                                                                              § [§(§3]§,param1.@MouseOver);
                                                                              if(!(_loc16_ && param2))
                                                                              {
                                                                                 addr489:
                                                                                 if(param1.@MouseOut.toString() != "")
                                                                                 {
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       addr496:
                                                                                       § [§(§#H§,param1.@MouseOut);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                        }
                                                                        §§goto(addr489);
                                                                     }
                                                                     §§goto(addr472);
                                                                  }
                                                                  §§goto(addr445);
                                                                  addr429:
                                                                  addr431:
                                                                  addr430:
                                                                  addr286:
                                                               }
                                                               addr403:
                                                               if(_loc15_)
                                                               {
                                                                  addr407:
                                                                  _loc13_ = 0;
                                                                  _loc14_ = param1.Slider;
                                                                  §§goto(addr428);
                                                               }
                                                               §§goto(addr472);
                                                            }
                                                            addr319:
                                                            _loc13_ = §§pop();
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               addr327:
                                                               _loc14_ = param1.MovieClip;
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc14_,_loc13_));
                                                                  if(!_loc16_)
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  §§goto(addr429);
                                                               }
                                                               addr347:
                                                            }
                                                            §§goto(addr431);
                                                         }
                                                         §§goto(addr445);
                                                      }
                                                      §§goto(addr261);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc15_ || param3)
                                                      {
                                                         addr358:
                                                         §§push(0);
                                                         if(_loc15_)
                                                         {
                                                            addr363:
                                                            _loc13_ = §§pop();
                                                            if(_loc15_ || this)
                                                            {
                                                               _loc14_ = param1.Popup;
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc14_,_loc13_));
                                                                  if(!_loc16_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                        if(!_loc16_)
                                                                        {
                                                                           this.§2x§.push(new §;%§(_loc10_,this));
                                                                        }
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§goto(addr261);
                                                               }
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         §§goto(addr407);
                                                      }
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         §§goto(addr403);
                                                      }
                                                      §§goto(addr261);
                                                   }
                                                   else
                                                   {
                                                      _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                      if(!_loc16_)
                                                      {
                                                         this.§2x§.push(new §[!B§(_loc9_,this));
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                }
                                             }
                                             §§goto(addr253);
                                          }
                                          §§goto(addr496);
                                       }
                                       §§goto(addr253);
                                    }
                                    §§goto(addr430);
                                 }
                                 §§goto(addr327);
                              }
                              §§goto(addr407);
                           }
                        }
                        §§goto(addr261);
                     }
                     §§goto(addr358);
                  }
                  break;
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!(_loc16_ && param2))
                     {
                        if(!(_loc16_ && this))
                        {
                           §§push(0);
                           if(!(_loc16_ && param3))
                           {
                              §§goto(addr319);
                           }
                           §§goto(addr363);
                        }
                        §§goto(addr445);
                     }
                     §§goto(addr407);
                  }
                  else
                  {
                     _loc8_ = §§nextvalue(_loc13_,_loc14_);
                     if(!(_loc16_ && param1))
                     {
                        this.§2x§.push(new § p§(_loc8_,this));
                     }
                     §§goto(addr286);
                  }
               }
            }
            §§goto(addr78);
         }
         §§goto(addr53);
      }
      
      public function §>B§(param1:§3!?§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §4H§(param1:§3!?§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function §?b§(param1:§3!?§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.§2x§.indexOf(param1) < 0)
         {
            if(!(_loc2_ && _loc3_))
            {
               this.§2x§.push(param1);
               param1.mParentContainer = this;
               param1.setActiveStatus(this.§9l§);
               if(!(_loc2_ && this))
               {
                  addr58:
                  §§push(param1);
                  if(!(_loc2_ && this))
                  {
                     §§push(Boolean(this.§const§));
                     if(_loc3_ || param1)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              addr91:
                              §§push(param1.§const§);
                              if(!_loc2_)
                              {
                                 addr95:
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        §§pop().setVisibility(§§pop());
                        param1.viewWidth = viewWidth;
                        if(_loc3_)
                        {
                           addr102:
                           param1.viewHeight = viewHeight;
                           §§goto(addr105);
                        }
                        addr105:
                        return;
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr91);
               }
               §§goto(addr102);
            }
            §§goto(addr58);
         }
         §§goto(addr102);
      }
      
      public function § '§(param1:§3!?§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§2x§.indexOf(param1);
         if(!_loc4_)
         {
            if(_loc2_ >= 0)
            {
               if(_loc3_)
               {
                  param1.mParentContainer = null;
                  if(!_loc4_)
                  {
                     this.§2x§.splice(_loc2_,1);
                     if(_loc4_ && _loc2_)
                     {
                     }
                  }
                  §§goto(addr70);
               }
               mClip.removeChild(param1.mClip);
            }
         }
         addr70:
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!mClip)
            {
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = param1.@visible;
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && this))
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || param1)
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              addr59:
                              §§push(_loc2_);
                              if(_loc3_)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr82:
                                    if(§§pop())
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr90:
                                          this.setVisibility(false);
                                          if(_loc3_)
                                          {
                                             addr101:
                                             §§push(param1.@enabled);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr111:
                                                _loc2_ = §§pop();
                                                if(_loc3_)
                                                {
                                                   addr114:
                                                   §§push(_loc2_);
                                                   if(_loc3_)
                                                   {
                                                      addr117:
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc4_)
                                                      {
                                                         addr121:
                                                         if(§§pop())
                                                         {
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               addr139:
                                                               §§pop();
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  addr151:
                                                                  if(_loc2_.toUpperCase() == "TRUE")
                                                                  {
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        this.setEnabled(true);
                                                                        if(!_loc3_)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     this.setEnabled(false);
                                                                  }
                                                               }
                                                               §§goto(addr168);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr151);
                                             }
                                             §§goto(addr117);
                                          }
                                       }
                                       addr168:
                                       return;
                                    }
                                    this.setVisibility(true);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr101);
                                    }
                                    §§goto(addr114);
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr121);
               }
               §§goto(addr139);
            }
            §§goto(addr111);
         }
         §§goto(addr59);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§'!0§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(mParentContainer)
            {
               if(!_loc4_)
               {
                  addr48:
                  mParentContainer.containerEventOccured(param1,param2,param3);
                  if(_loc4_)
                  {
                     addr70:
                     this.§5`§.listenerEventOccured(param1,param2,param3);
                     addr68:
                  }
               }
               §§goto(addr74);
            }
            else
            {
               §§push(this.§5`§);
               if(!(_loc4_ && this))
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§goto(addr68);
                     }
                  }
                  addr74:
                  return;
               }
            }
            §§goto(addr70);
         }
         §§goto(addr48);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3!?§ = null;
         for each(_loc2_ in this.§2x§)
         {
            if(!_loc6_)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(_loc5_ || this)
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(_loc2_ || _loc2_)
         {
            if(this.§2x§)
            {
               if(!(_loc3_ && _loc1_))
               {
                  addr45:
                  _loc1_ = 0;
               }
               while(true)
               {
                  if(_loc1_ < this.§2x§.length)
                  {
                     continue;
                  }
               }
               §§goto(addr96);
            }
            this.§2x§ = null;
            if(!_loc3_)
            {
               §§push(this.§5`§);
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     §§goto(addr89);
                  }
                  §§goto(addr94);
               }
               §§goto(addr89);
            }
            addr89:
            this.§5`§.movieClip.removeChild(mClip);
            if(!_loc3_)
            {
               addr94:
               super.clear();
            }
            addr96:
            return;
         }
         §§goto(addr45);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setVisibility(param1);
            if(!(_loc3_ && param1))
            {
               this.onParentVisibilityChange(param1);
            }
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§3!?§ = null;
         if(_loc6_)
         {
            super.onParentVisibilityChange(param1);
            if(_loc6_)
            {
               if(this.§2x§ != null)
               {
                  addr51:
                  for each(_loc2_ in this.§2x§)
                  {
                     if(!(_loc5_ && this))
                     {
                        _loc2_.onParentVisibilityChange(param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr51);
      }
      
      public function §`Y§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(_loc5_ || param1)
         {
            if(mName.toUpperCase() == param1)
            {
               if(!(_loc4_ && this))
               {
                  this.setVisibility(param2);
                  addr41:
               }
               §§goto(addr41);
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc5_ || _loc3_)
               {
                  if(_loc3_ is §3!?§)
                  {
                     if(_loc5_ || param2)
                     {
                        (_loc3_ as §3!?§).setVisibility(param2);
                        if(_loc4_)
                        {
                        }
                        §§goto(addr134);
                     }
                  }
                  else
                  {
                     §§push(§#y§);
                     §§push("WARNING: UIContainer(");
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop() + mName);
                        if(_loc5_)
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(!(_loc4_ && param2))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc5_ || _loc3_)
                              {
                              }
                              §§goto(addr133);
                           }
                           addr133:
                           §§push(§§pop() + param1);
                           if(!(_loc4_ && param2))
                           {
                              addr131:
                              §§push(" does not exist");
                           }
                           §§pop().log(§§pop());
                           addr134:
                           return;
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr134);
               }
            }
            §§goto(addr134);
         }
         §§goto(addr41);
      }
      
      public function getItemByName(param1:String) : §3!?§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§3!?§ = null;
         var _loc3_:§3!?§ = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc7_ || _loc3_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc7_)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(_loc6_ && param1)
                  {
                     §§goto(addr61);
                  }
               }
               §§goto(addr61);
            }
            return this;
         }
         addr61:
         var _loc4_:int = 0;
         var _loc5_:* = this.§2x§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(!_loc6_)
               {
                  if(_loc2_.mName.toUpperCase() == param1)
                  {
                     if(!(_loc6_ && param1))
                     {
                        return _loc2_;
                     }
                  }
                  if(!(_loc2_ is §`f§))
                  {
                     continue;
                  }
               }
               _loc3_ = (_loc2_ as §`f§).getItemByName(param1);
               if(!_loc7_)
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
            }
            return null;
         }
         return _loc3_;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §!!1§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§5`§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr52);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr52);
         }
         addr52:
         return this.§5`§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3!?§ = null;
         if(!_loc6_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§2x§)
         {
            if(_loc5_ || _loc2_)
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3!?§ = null;
         if(_loc5_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§2x§)
         {
            if(!(_loc6_ && param1))
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
