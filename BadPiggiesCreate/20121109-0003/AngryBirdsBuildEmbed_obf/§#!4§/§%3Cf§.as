package §#!4§
{
   import §"!E§.§[!s§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §<f§ extends §'^§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §`O§:String = "Deactive";
      
      public static const §!`§:String = "Disabled";
      
      public static const §@5§:String = "Out";
      
      public static const §8!U§:String = "Over";
      
      public static const §1-§:String = "Up_Default";
      
      public static const §5!?§:String = "Down";
      
      public static var §<!"§:Class;
      
      public static var §%$§:Boolean = true;
      
      public static const §2!J§:String = "Tooltip";
      
      public static var §0b§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`O§ = "Deactive";
            §!`§ = "Disabled";
            if(!(_loc1_ && _loc1_))
            {
               §@5§ = "Out";
               §§goto(addr48);
            }
            §§goto(addr83);
         }
         addr48:
         if(!_loc1_)
         {
            §1-§ = "Up_Default";
            if(!(_loc1_ && _loc2_))
            {
               §5!?§ = "Down";
               if(_loc2_ || _loc1_)
               {
                  addr83:
                  §%$§ = true;
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr93);
                  }
                  §§goto(addr98);
               }
            }
            §§goto(addr83);
         }
         addr93:
         if(_loc2_)
         {
            addr98:
            §0b§ = true;
         }
      }
      
      public var §-Y§:String;
      
      public var §-!5§:String;
      
      public var §5!#§:String;
      
      public var §"L§:MovieClip;
      
      public var §"!L§:int = 6;
      
      private var § !l§:Boolean = false;
      
      public function §<f§(param1:XML, param2:§[!s§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super(param1,param2,param3);
         if(_loc5_ || param1)
         {
            this.§-Y§ = COMPONENT_STATE_ACTIVE_DEFAULT;
            if(!(_loc4_ && param3))
            {
               this.§-!5§ = §1-§;
               this.§7@§();
               this.§#X§(param1.@Tooltip);
               if(!(_loc4_ && param3))
               {
                  addr75:
                  if(param1.@Toggle.toString().toUpperCase() == "TRUE")
                  {
                     addr81:
                     this.§ !l§ = true;
                  }
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr81);
      }
      
      public static function §3!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §<!"§ = §1F§.§"!_§(§2!J§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.setActiveStatus(param1);
            if(_loc3_)
            {
               if(!param1)
               {
                  if(!_loc2_)
                  {
                     addr43:
                     this.setComponentVisualState(§@5§);
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §#X§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§5!#§ = param1;
         §§push(this.§5!#§);
         if(_loc2_ || _loc2_)
         {
            §§push(Boolean(§§pop()));
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr35);
                  }
               }
               §§goto(addr60);
            }
            addr35:
            §§pop();
            §§push(this.§5!#§);
            if(!_loc3_)
            {
               §§push(§§pop().length == 0);
               if(_loc2_ || _loc2_)
               {
                  addr60:
                  if(§§pop())
                  {
                     if(!(_loc3_ && this))
                     {
                        this.§5!#§ = null;
                        §§goto(addr71);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr71);
               }
               §§goto(addr75);
            }
            §§goto(addr71);
         }
         addr71:
         if(this.§5!#§)
         {
            addr75:
            if(§%$§)
            {
               addr76:
               §%$§ = false;
               if(_loc2_)
               {
                  §3!,§();
                  this.§"L§ = new MovieClip();
                  §§goto(addr83);
               }
               §§goto(addr101);
            }
            §§goto(addr83);
         }
         addr83:
         if(!_loc3_)
         {
            if(§<!"§)
            {
               addr101:
               this.§9!g§();
            }
            else
            {
               this.§1!%§();
            }
            this.§"L§.mouseEnabled = false;
            this.§"L§.mouseChildren = false;
         }
         this.§"L§.visible = false;
         getParentView().addChild(this.§"L§);
      }
      
      private function §1!%§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            this.§"L§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!(_loc4_ && _loc2_))
         {
            _loc1_.name = "Text";
            if(_loc3_)
            {
               addr53:
               this.§"L§.addChild(_loc1_);
            }
            var _loc2_:Shape = new Shape();
            if(_loc3_ || this)
            {
               _loc2_.name = "Base";
               if(_loc3_ || _loc2_)
               {
                  this.§"L§.addChildAt(_loc2_,0);
                  if(!(_loc4_ && this))
                  {
                     this.§+o§(this.§5!#§);
                  }
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      private function §9!g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§"L§ = new §<!"§();
            if(!(_loc1_ && _loc2_))
            {
               this.§;!<§(this.§5!#§);
            }
         }
      }
      
      public function §;!<§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§5!#§ = param1;
            if(!(_loc2_ && _loc3_))
            {
               addr54:
               if(§<!"§)
               {
                  if(!_loc2_)
                  {
                     this.§#7§(param1);
                     if(_loc2_ && _loc2_)
                     {
                     }
                  }
               }
               else
               {
                  this.§+o§(param1);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      private function §#7§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§"L§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§"L§.getChildByName("Base") as MovieClip;
         if(_loc6_)
         {
            _loc2_.text = this.§5!#§;
            if(_loc6_ || this)
            {
               _loc2_.multiline = false;
               if(_loc6_ || _loc2_)
               {
                  _loc2_.width = _loc2_.textWidth * 1.25;
               }
            }
         }
         var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
         if(!(_loc7_ && this))
         {
            _loc3_.scaleX = _loc4_ / _loc3_.width;
            if(!_loc7_)
            {
               _loc3_.x = 0;
            }
         }
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_.numChildren)
            {
               if(_loc6_)
               {
                  addr136:
                  _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                  break;
               }
               break;
            }
            _loc3_.getChildAt(0).x = 0;
            if(!(_loc7_ && this))
            {
               _loc5_++;
               if(_loc6_)
               {
                  continue;
               }
               §§goto(addr136);
            }
            break;
         }
      }
      
      private function §+o§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§"L§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         if(_loc6_ || this)
         {
            _loc3_.bold = true;
            if(!_loc5_)
            {
               _loc3_.size = 12;
               _loc2_.defaultTextFormat = _loc3_;
               _loc2_.border = false;
               if(!_loc5_)
               {
                  _loc2_.text = this.§5!#§;
                  addr60:
                  _loc2_.height = _loc2_.textHeight * 1.25;
                  if(_loc6_ || _loc3_)
                  {
                  }
                  §§goto(addr105);
               }
               _loc2_.width = _loc2_.textWidth * 1.25;
               if(!(_loc5_ && this))
               {
                  _loc2_.textColor = 0;
                  _loc2_.selectable = false;
                  _loc2_.mouseEnabled = false;
               }
            }
            addr105:
            var _loc4_:Shape;
            (_loc4_ = this.§"L§.getChildByName("Base") as Shape).graphics.clear();
            if(_loc6_)
            {
               _loc4_.graphics.lineStyle(1);
               if(_loc6_)
               {
                  _loc4_.graphics.beginFill(0,1);
                  if(!_loc5_)
                  {
                     _loc4_.graphics.drawRect(-this.§"!L§,-this.§"!L§,_loc2_.width + 2 * this.§"!L§,_loc2_.height + 2 * this.§"!L§);
                     if(_loc6_)
                     {
                        _loc4_.graphics.beginFill(16777215,1);
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr200);
                  }
                  _loc4_.graphics.drawRect(-this.§"!L§ / 2,-(this.§"!L§ / 2),_loc2_.width + 1 * this.§"!L§,_loc2_.height + 1 * this.§"!L§);
               }
            }
            addr200:
            return;
         }
         §§goto(addr60);
      }
      
      private function §`8§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!_loc4_)
         {
            §§push(!this.§"L§);
            if(!_loc4_)
            {
               §§push(§§pop());
               if(_loc5_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        §§pop();
                        addr47:
                        §§push(this.§5!#§);
                        if(_loc5_)
                        {
                           §§push(§§pop() == null);
                           if(_loc5_ || param1)
                           {
                              addr60:
                              §§push(§§pop());
                              if(_loc5_)
                              {
                                 addr63:
                                 if(!§§pop())
                                 {
                                    §§goto(addr94);
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       return;
                                    }
                                 }
                                 addr94:
                                 if(!(_loc4_ && param1))
                                 {
                                    addr71:
                                    §§pop();
                                    §§push(this.§5!#§.length == 0);
                                 }
                                 if(§§pop() && §0b§)
                                 {
                                    if(!_loc4_)
                                    {
                                       _loc2_ = mClip.getRect(getParentView());
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          this.§"L§.y = _loc2_.y - this.§"L§.height + this.§"!L§;
                                          if(!_loc4_)
                                          {
                                             addr140:
                                             this.§"L§.x = _loc2_.x + mClip.width / 2 - this.§"L§.width / 2;
                                          }
                                          _loc3_ = this.§"L§.getRect(mClip.stage);
                                          if(_loc3_.right > mClip.stage.stageWidth - this.§"!L§)
                                          {
                                             if(!_loc4_)
                                             {
                                                this.§"L§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§"!L§));
                                                if(_loc5_)
                                                {
                                                   addr194:
                                                   if(_loc3_.left < this.§"!L§)
                                                   {
                                                      this.§"L§.x += 1 + (this.§"!L§ - _loc3_.left);
                                                   }
                                                   if(_loc3_.bottom > mClip.stage.stageHeight - this.§"!L§)
                                                   {
                                                      addr222:
                                                      this.§"L§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§"!L§));
                                                   }
                                                   if(_loc3_.top < this.§"!L§)
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         this.§"L§.y += mClip.height + this.§"L§.height;
                                                         addr275:
                                                         this.§"L§.visible = true;
                                                      }
                                                      §§goto(addr284);
                                                   }
                                                   §§goto(addr275);
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr275);
                                          }
                                          §§goto(addr194);
                                       }
                                       §§goto(addr140);
                                    }
                                 }
                                 else
                                 {
                                    this.§"L§.visible = false;
                                 }
                                 addr284:
                                 return;
                                 §§push(param1);
                              }
                              §§goto(addr94);
                           }
                        }
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr60);
               }
               §§goto(addr63);
            }
            §§goto(addr94);
         }
         §§goto(addr47);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§"L§)
            {
               if(!_loc2_)
               {
                  addr23:
                  this.§5!#§ = null;
               }
               do
               {
                  if(this.§"L§.numChildren <= 0)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     §§goto(addr72);
                  }
                  this.§"L§.removeChildAt(0);
               }
               while(_loc1_);
               
               if(this.§"L§.parent)
               {
                  if(!_loc2_)
                  {
                     addr72:
                     this.§"L§.parent.removeChild(this.§"L§);
                     if(_loc1_)
                     {
                        addr80:
                        this.§"L§ = null;
                        if(!_loc2_)
                        {
                           addr85:
                           super.clear();
                        }
                     }
                     return;
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr85);
         }
         §§goto(addr23);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§-Y§ = param1;
            if(!_loc3_)
            {
               this.§7@§();
            }
         }
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-!5§ = param1;
            if(_loc2_ || _loc2_)
            {
               addr28:
               this.§7@§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §7@§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc1_)
         {
            if(mClip.totalFrames < 2)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         var _loc1_:Array = new Array(this.§-Y§ + "_" + this.§-!5§,this.§-Y§ + "_" + §1-§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§-!5§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §1-§);
         var _loc2_:int = 0;
         for(; _loc2_ < _loc1_.length; _loc2_++,if(_loc5_)
         {
            break;
         })
         {
            try
            {
               mClip.gotoAndStop(_loc1_[_loc2_] as String);
               if(!_loc4_)
               {
                  break;
               }
               if(mClip.numChildren > 0)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     return;
                  }
               }
            }
            catch(e:Error)
            {
               var _loc3_:* = e;
               continue;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§-Y§);
         if(!_loc4_)
         {
            §§push(§!`§);
            if(!(_loc4_ && this))
            {
               if(§§pop() == §§pop())
               {
                  if(_loc3_)
                  {
                     return;
                  }
                  addr100:
                  this.setComponentVisualState(§5!?§);
                  §§push(param1);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                     {
                        this.setComponentVisualState(§8!U§);
                        if(_loc3_ || _loc3_)
                        {
                           addr123:
                           §§push(param1);
                           if(!(_loc4_ && _loc3_))
                           {
                              addr141:
                              if(§§pop() == §<H§)
                              {
                                 this.setComponentVisualState(§@5§);
                              }
                              addr147:
                              if(param1 == §`"§)
                              {
                                 if(_loc3_ || this)
                                 {
                                    this.setComponentVisualState(§8!U§);
                                    if(_loc3_)
                                    {
                                       addr161:
                                       this.§`8§(param1 == §`"§);
                                    }
                                 }
                                 return;
                              }
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr141);
               }
               else
               {
                  super.listenerEventOccured(param1,param2);
                  addr39:
                  §§push(this.§-Y§ == §!`§);
                  if(_loc3_ || param1)
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              addr57:
                              §§push(Boolean(this.§ !l§));
                              if(!(_loc4_ && param1))
                              {
                                 addr65:
                                 if(§§pop())
                                 {
                                    if(_loc3_ || param1)
                                    {
                                    }
                                    addr90:
                                    if(§§pop())
                                    {
                                       this.§ a§();
                                    }
                                    §§push(param1);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                       {
                                          if(_loc3_)
                                          {
                                             §§goto(addr100);
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr100);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr90);
                              }
                              §§pop();
                              §§push(param1);
                              if(_loc3_)
                              {
                                 §§goto(addr90);
                                 §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                              }
                              §§goto(addr141);
                           }
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr57);
               }
               §§goto(addr141);
            }
         }
         §§goto(addr39);
      }
      
      public function § a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§-Y§);
            if(!_loc1_)
            {
               §§push(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_)
                     {
                        this.setComponentState(§<f§.§`O§);
                        if(_loc1_)
                        {
                        }
                        §§goto(addr58);
                     }
                  }
                  else
                  {
                     addr51:
                     if(this.§-Y§ == §<f§.§`O§)
                     {
                        if(!_loc1_)
                        {
                           addr54:
                           this.setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        }
                     }
                  }
                  addr58:
                  return;
               }
            }
            §§goto(addr51);
         }
         §§goto(addr54);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setEnabled(param1);
         }
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc2_)
         {
            super.changeMovieClip(param1);
         }
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(this.mParentContainer)
         {
            mParentContainer.mClip.removeChild(mClip);
            if(_loc6_)
            {
               mClip = null;
               mClip = param1;
               addr60:
               if(this.mParentContainer)
               {
                  if(_loc6_)
                  {
                     mParentContainer.mClip.addChildAt(mClip,_loc4_);
                     if(_loc6_ || _loc3_)
                     {
                        addr93:
                        mClip.x = _loc2_;
                        addr96:
                        mClip.y = _loc3_;
                        this.§7@§();
                     }
                     return;
                  }
                  §§goto(addr96);
               }
            }
            §§goto(addr93);
         }
         §§goto(addr60);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.setVisibility(param1);
            if(!(_loc2_ && _loc3_))
            {
               if(!mClip.visible)
               {
                  if(_loc3_ || param1)
                  {
                     addr54:
                     this.§`8§(false);
                  }
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.onParentVisibilityChange(param1);
            if(!(_loc2_ && this))
            {
               if(!param1)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr48:
                     this.§`8§(false);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
   }
}
