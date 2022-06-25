package §@s§
{
   import §=^§.§`f§;
   import com.rovio.assets.§,u§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §9$§ extends §3!?§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §?J§:String = "Deactive";
      
      public static const §^8§:String = "Disabled";
      
      public static const §%e§:String = "Out";
      
      public static const §!!C§:String = "Over";
      
      public static const §1j§:String = "Up_Default";
      
      public static const §']§:String = "Down";
      
      public static var §8!!§:Class;
      
      public static var §<Y§:Boolean = true;
      
      public static const §]&§:String = "Tooltip";
      
      public static var §6V§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §<Y§ = true;
            §]&§ = "Tooltip";
         }
      }
      
      public var § var§:String;
      
      public var §%!5§:String;
      
      public var §0G§:String;
      
      public var §-!,§:MovieClip;
      
      public var §4!E§:int = 6;
      
      private var §[!§:Boolean = false;
      
      private var §3u§:String = "auto";
      
      public function §9$§(param1:XML, param2:§`f§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super(param1,param2,param3);
         if(_loc6_)
         {
            this.§ var§ = COMPONENT_STATE_ACTIVE_DEFAULT;
            if(!_loc7_)
            {
               this.§%!5§ = §1j§;
               this.§%D§();
               if(_loc6_ || param3)
               {
                  this.§6R§(param1.@Tooltip);
                  addr40:
                  if(param1.@Toggle.toString().toUpperCase() == "TRUE")
                  {
                     if(_loc6_ || param3)
                     {
                        this.§[!§ = true;
                     }
                  }
               }
               var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
               var _loc5_:String = param1.@cursor.toString().toLowerCase();
               if(!_loc7_)
               {
                  if(_loc4_.indexOf(_loc5_) > -1)
                  {
                     if(!(_loc7_ && param3))
                     {
                        addr113:
                        this.§3u§ = _loc5_;
                     }
                  }
                  return;
               }
               §§goto(addr113);
            }
         }
         §§goto(addr40);
      }
      
      public static function §]$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §8!!§ = §,u§.§'[§(§]&§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.setActiveStatus(param1);
            if(!(_loc3_ && _loc3_))
            {
               if(!param1)
               {
                  if(!(_loc3_ && param1))
                  {
                     addr52:
                     this.setComponentVisualState(§%e§);
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function §6R§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§0G§ = param1;
         §§push(this.§0G§);
         if(_loc3_ || _loc2_)
         {
            §§push(Boolean(§§pop()));
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     if(!(_loc2_ && param1))
                     {
                        §§push(this.§0G§);
                        if(!(_loc2_ && this))
                        {
                           §§goto(addr81);
                        }
                        if(§§pop())
                        {
                           addr81:
                           §§push(§§pop().length == 0);
                           if(_loc3_ || _loc2_)
                           {
                              addr73:
                              if(§§pop())
                              {
                                 this.§0G§ = null;
                              }
                              §§push(this.§0G§);
                           }
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §<Y§ = false;
                                 §]$§();
                                 §§goto(addr89);
                              }
                              §§goto(addr120);
                           }
                           addr89:
                           this.§-!,§ = new MovieClip();
                           if(§8!!§)
                           {
                              addr95:
                              this.§&!8§();
                              if(!_loc2_)
                              {
                                 addr114:
                                 this.§-!,§.mouseEnabled = false;
                                 if(!_loc2_)
                                 {
                                    addr120:
                                    this.§-!,§.mouseChildren = false;
                                    this.§-!,§.visible = false;
                                    if(!(_loc2_ && this))
                                    {
                                       getParentView().addChild(this.§-!,§);
                                    }
                                 }
                              }
                              §§goto(addr120);
                           }
                           else
                           {
                              this.§[>§();
                              if(_loc3_)
                              {
                                 §§goto(addr114);
                              }
                           }
                           return;
                           §§push(§<Y§);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr95);
                  }
               }
               §§goto(addr73);
            }
         }
         §§goto(addr81);
      }
      
      private function §[>§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§-!,§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.name = "Text";
            if(_loc4_ || this)
            {
               this.§-!,§.addChild(_loc1_);
               addr59:
            }
            var _loc2_:Shape = new Shape();
            if(_loc4_)
            {
               _loc2_.name = "Base";
               if(!(_loc3_ && this))
               {
                  this.§-!,§.addChildAt(_loc2_,0);
                  if(!_loc3_)
                  {
                     this.§5f§(this.§0G§);
                  }
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      private function §&!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§-!,§ = new §8!!§();
            if(!(_loc2_ && _loc1_))
            {
               this.§#2§(this.§0G§);
            }
         }
      }
      
      public function §#2§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§0G§ = param1;
            if(_loc2_)
            {
               if(§8!!§)
               {
                  if(_loc2_ || _loc3_)
                  {
                  }
               }
               else
               {
                  this.§5f§(param1);
               }
               §§goto(addr71);
            }
            this.§-!A§(param1);
            if(_loc2_ || _loc3_)
            {
            }
         }
         addr71:
      }
      
      private function §-!A§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§-!,§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§-!,§.getChildByName("Base") as MovieClip;
         if(_loc6_)
         {
            _loc2_.text = this.§0G§;
            if(!(_loc7_ && _loc3_))
            {
               _loc2_.multiline = false;
               if(_loc6_ || param1)
               {
               }
               addr71:
               var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
               if(_loc6_)
               {
                  _loc3_.scaleX = _loc4_ / _loc3_.width;
                  if(!_loc7_)
                  {
                     addr93:
                     _loc3_.x = 0;
                  }
                  var _loc5_:int = 0;
                  while(true)
                  {
                     if(_loc5_ >= _loc3_.numChildren)
                     {
                        if(!(_loc7_ && param1))
                        {
                           break;
                        }
                        §§goto(addr145);
                     }
                     _loc3_.getChildAt(0).x = 0;
                     if(_loc7_ && _loc3_)
                     {
                        break;
                     }
                     _loc5_++;
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                  addr145:
                  return;
               }
               §§goto(addr93);
            }
            _loc2_.width = _loc2_.textWidth * 1.25;
         }
         §§goto(addr71);
      }
      
      private function §5f§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§-!,§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!_loc5_)
         {
            _loc3_.align = TextAlign.CENTER;
         }
         _loc3_.bold = true;
         if(!_loc5_)
         {
            _loc3_.size = 12;
            if(_loc6_)
            {
               _loc2_.defaultTextFormat = _loc3_;
               if(_loc5_ && param1)
               {
               }
               _loc2_.mouseEnabled = false;
               addr109:
               var _loc4_:Shape;
               (_loc4_ = this.§-!,§.getChildByName("Base") as Shape).graphics.clear();
               if(!(_loc5_ && param1))
               {
                  _loc4_.graphics.lineStyle(1);
                  if(_loc6_ || _loc2_)
                  {
                     _loc4_.graphics.beginFill(0,1);
                     if(!(_loc5_ && this))
                     {
                        addr150:
                        _loc4_.graphics.drawRect(-this.§4!E§,-this.§4!E§,_loc2_.width + 2 * this.§4!E§,_loc2_.height + 2 * this.§4!E§);
                        if(!(_loc5_ && _loc3_))
                        {
                           _loc4_.graphics.beginFill(16777215,1);
                           if(_loc6_)
                           {
                              _loc4_.graphics.drawRect(-this.§4!E§ / 2,-(this.§4!E§ / 2),_loc2_.width + 1 * this.§4!E§,_loc2_.height + 1 * this.§4!E§);
                           }
                        }
                     }
                     return;
                  }
               }
               §§goto(addr150);
               addr96:
            }
            _loc2_.border = false;
            if(!(_loc5_ && param1))
            {
               _loc2_.text = this.§0G§;
               _loc2_.height = _loc2_.textHeight * 1.25;
               if(!_loc5_)
               {
                  _loc2_.width = _loc2_.textWidth * 1.25;
                  _loc2_.textColor = 0;
                  if(_loc6_ || _loc3_)
                  {
                     _loc2_.selectable = false;
                     §§goto(addr96);
                  }
               }
               §§goto(addr109);
            }
         }
         §§goto(addr109);
      }
      
      private function §+!G§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(_loc5_ || this)
         {
            §§push(!this.§-!,§);
            if(_loc5_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        addr46:
                        §§pop();
                        §§push(this.§0G§);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() == null);
                           if(_loc5_)
                           {
                              addr60:
                              §§push(§§pop());
                              if(!_loc4_)
                              {
                                 if(!§§pop())
                                 {
                                    addr64:
                                    §§pop();
                                    §§push(this.§0G§.length == 0);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§goto(addr77);
                                    }
                                    §§goto(addr96);
                                 }
                                 addr77:
                                 if(§§pop())
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       return;
                                    }
                                 }
                                 §§push(param1);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr96:
                                    §§push(Boolean(§§pop()));
                                    if(Boolean(§§pop()))
                                    {
                                       §§goto(addr99);
                                    }
                                    §§goto(addr106);
                                 }
                                 addr99:
                                 §§pop();
                                 if(_loc5_)
                                 {
                                    §§push(§6V§);
                                    if(!_loc4_)
                                    {
                                       addr106:
                                       if(§§pop())
                                       {
                                          addr107:
                                          _loc2_ = mClip.getRect(getParentView());
                                          if(!(_loc4_ && this))
                                          {
                                             this.§-!,§.y = _loc2_.y - this.§-!,§.height - this.§4!E§;
                                             if(!_loc4_)
                                             {
                                                this.§-!,§.x = _loc2_.x + mClip.width / 2 - this.§-!,§.width / 2;
                                                addr134:
                                             }
                                             _loc3_ = this.§-!,§.getRect(mClip.stage);
                                             if(_loc3_.right > mClip.stage.stageWidth - this.§4!E§)
                                             {
                                                this.§-!,§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§4!E§));
                                             }
                                             if(_loc3_.left < this.§4!E§)
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   this.§-!,§.x += 1 + (this.§4!E§ - _loc3_.left);
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr227:
                                                      if(_loc3_.bottom > mClip.stage.stageHeight - this.§4!E§)
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            this.§-!,§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§4!E§));
                                                            if(!_loc4_)
                                                            {
                                                               addr263:
                                                               if(_loc3_.top < this.§4!E§)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr280);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr300);
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                }
                                                §§goto(addr280);
                                             }
                                             §§goto(addr227);
                                          }
                                          §§goto(addr134);
                                       }
                                       else
                                       {
                                          this.§-!,§.visible = false;
                                       }
                                    }
                                    §§goto(addr106);
                                 }
                                 addr280:
                                 this.§-!,§.y += mClip.height + this.§-!,§.height + this.§4!E§ * 2;
                                 if(_loc5_)
                                 {
                                    addr300:
                                    this.§-!,§.visible = true;
                                 }
                                 return;
                              }
                              §§goto(addr96);
                           }
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr60);
               }
               §§goto(addr96);
            }
            §§goto(addr46);
         }
         §§goto(addr107);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§-!,§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§0G§ = null;
               }
               §§goto(addr31);
            }
            §§goto(addr95);
         }
         addr31:
         do
         {
            if(this.§-!,§.numChildren > 0)
            {
               continue;
            }
            if(_loc1_ || _loc1_)
            {
               if(this.§-!,§.parent)
               {
                  if(_loc1_)
                  {
                     this.§-!,§.parent.removeChild(this.§-!,§);
                     if(!_loc2_)
                     {
                        addr85:
                        this.§-!,§ = null;
                        if(_loc1_ || _loc2_)
                        {
                           addr95:
                           super.clear();
                           break;
                        }
                        break;
                     }
                     break;
                  }
                  §§goto(addr95);
               }
               §§goto(addr85);
            }
         }
         while(this.§-!,§.removeChildAt(0), !_loc2_);
         
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ var§ = param1;
            if(!(_loc3_ && param1))
            {
               addr28:
               this.§%D§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%!5§ = param1;
            if(!(_loc2_ && _loc2_))
            {
               this.§%D§();
            }
         }
      }
      
      public function §%D§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc5_ || _loc1_)
               {
                  §§goto(addr30);
               }
            }
            var _loc1_:Array = new Array(this.§ var§ + "_" + this.§%!5§,this.§ var§ + "_" + §1j§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§%!5§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §1j§);
            var _loc2_:int = 0;
            for(; _loc2_ < _loc1_.length; _loc2_++,if(!_loc5_)
            {
               break;
            })
            {
               try
               {
                  mClip.gotoAndStop(_loc1_[_loc2_] as String);
                  if(!(_loc4_ && _loc1_))
                  {
                     if(mClip.numChildren <= 0)
                     {
                        addr111:
                        continue;
                     }
                     if(!(_loc5_ || this))
                     {
                        break;
                     }
                  }
                  return;
               }
               catch(e:Error)
               {
               }
               continue;
               §§goto(addr111);
            }
            return;
         }
         addr30:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§ var§ == §^8§)
            {
               return;
            }
            super.listenerEventOccured(param1,param2);
            §§push(this.§[!§);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                     }
                     addr51:
                     if(§§pop())
                     {
                        this.§-L§();
                     }
                     §§push(param1);
                     if(!(_loc4_ && param2))
                     {
                        if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                        {
                           if(_loc3_)
                           {
                              this.setComponentVisualState(§']§);
                              §§goto(addr79);
                           }
                           §§goto(addr109);
                        }
                        addr79:
                        §§push(param1);
                        if(!(_loc4_ && _loc3_))
                        {
                           addr87:
                           if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                           {
                              if(!(_loc4_ && this))
                              {
                                 this.setComponentVisualState(§!!C§);
                                 §§goto(addr109);
                              }
                              §§goto(addr124);
                           }
                           addr109:
                           §§push(param1);
                           if(!_loc4_)
                           {
                              if(§§pop() == §#H§)
                              {
                                 addr114:
                                 Mouse.cursor = MouseCursor.AUTO;
                                 this.setComponentVisualState(§%e§);
                              }
                           }
                           §§goto(addr122);
                        }
                        addr122:
                        if(param1 == §3]§)
                        {
                           addr124:
                           Mouse.cursor = this.§3u§;
                           this.setComponentVisualState(§!!C§);
                        }
                        this.§+!G§(param1 == §3]§);
                        return;
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr51);
               }
               §§pop();
               if(_loc3_ || param1)
               {
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§goto(addr51);
                     §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                  }
                  §§goto(addr87);
               }
               §§goto(addr114);
            }
            §§goto(addr51);
         }
         §§goto(addr114);
      }
      
      public function §-L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§ var§);
            if(_loc1_ || _loc1_)
            {
               §§push(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(_loc1_ || _loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc1_)
                     {
                        this.setComponentState(§9$§.§?J§);
                        if(_loc1_ || this)
                        {
                        }
                     }
                     else
                     {
                        addr88:
                        this.setComponentState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                     §§goto(addr92);
                  }
                  else
                  {
                     addr78:
                     §§push(this.§ var§);
                     §§push(§9$§.§?J§);
                  }
                  §§goto(addr92);
               }
               if(§§pop() == §§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr88);
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr78);
         }
         addr92:
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setEnabled(param1);
         }
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super.changeMovieClip(param1);
         }
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(this.mParentContainer)
         {
            mParentContainer.mClip.removeChild(mClip);
         }
         mClip = null;
         mClip = param1;
         if(this.mParentContainer)
         {
            if(_loc5_ || _loc3_)
            {
               mParentContainer.mClip.addChildAt(mClip,_loc4_);
               if(!(_loc6_ && param1))
               {
                  addr95:
                  mClip.x = _loc2_;
                  if(!_loc6_)
                  {
                     mClip.y = _loc3_;
                  }
               }
            }
            this.§%D§();
            return;
         }
         §§goto(addr95);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setVisibility(param1);
            if(_loc3_ || _loc3_)
            {
               if(!mClip.visible)
               {
                  if(_loc3_)
                  {
                     addr44:
                     this.§+!G§(false);
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.onParentVisibilityChange(param1);
            if(_loc2_)
            {
               §§goto(addr38);
            }
            §§goto(addr42);
         }
         addr38:
         if(!param1)
         {
            if(!_loc3_)
            {
               addr42:
               this.§+!G§(false);
            }
         }
      }
   }
}
