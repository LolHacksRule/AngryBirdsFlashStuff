package §0!#§
{
   import §%4§.§4!=§;
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §0K§ extends §'!,§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §use§:String = "Deactive";
      
      public static const §]x§:String = "Disabled";
      
      public static const §4m§:String = "Out";
      
      public static const §?'§:String = "Over";
      
      public static const §=!4§:String = "Up_Default";
      
      public static const §-5§:String = "Down";
      
      public static var §-+§:Class;
      
      public static var §%!D§:Boolean = true;
      
      public static const §[!3§:String = "Tooltip";
      
      public static var §'m§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            if(_loc1_)
            {
               §use§ = "Deactive";
               if(_loc1_ || §0K§)
               {
                  §]x§ = "Disabled";
                  if(!(_loc2_ && _loc1_))
                  {
                     §4m§ = "Out";
                     §?'§ = "Over";
                  }
                  §=!4§ = "Up_Default";
                  if(_loc1_)
                  {
                     addr74:
                     §-5§ = "Down";
                     addr77:
                     §%!D§ = true;
                     if(!(_loc2_ && _loc2_))
                     {
                        §[!3§ = "Tooltip";
                        if(!_loc2_)
                        {
                           §'m§ = true;
                        }
                     }
                  }
                  §§goto(addr77);
               }
               return;
            }
            §§goto(addr77);
         }
         §§goto(addr74);
      }
      
      public var §0!5§:String;
      
      public var §%s§:String;
      
      public var §+p§:String;
      
      public var §@x§:MovieClip;
      
      public var §37§:int = 6;
      
      private var §4P§:Boolean = false;
      
      private var §!!H§:String = "auto";
      
      public function §0K§(param1:XML, param2:§4!=§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super(param1,param2,param3);
         if(_loc6_)
         {
            this.§0!5§ = COMPONENT_STATE_ACTIVE_DEFAULT;
            this.§%s§ = §=!4§;
            this.§-!9§();
            if(!(_loc7_ && param1))
            {
               this.§<N§(param1.@Tooltip);
               if(_loc6_)
               {
                  addr54:
                  if(param1.@Toggle.toString().toUpperCase() == "TRUE")
                  {
                     if(!_loc6_)
                     {
                     }
                     var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
                     var _loc5_:String = param1.@cursor.toString().toLowerCase();
                  }
                  §§goto(addr65);
               }
               this.§4P§ = true;
            }
            addr65:
            if(!_loc7_)
            {
               if(_loc4_.indexOf(_loc5_) > -1)
               {
                  if(_loc6_ || this)
                  {
                     this.§!!H§ = _loc5_;
                  }
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public static function §,!2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §0K§))
         {
            §-+§ = §]!>§.§8!@§(§[!3§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setActiveStatus(param1);
            if(_loc3_)
            {
               addr24:
               if(!param1)
               {
                  if(_loc3_)
                  {
                     this.setComponentVisualState(§4m§);
                  }
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §<N§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§+p§ = param1;
         §§push(this.§+p§);
         if(_loc3_)
         {
            §§push(Boolean(§§pop()));
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     §§push(this.§+p§);
                     if(!_loc2_)
                     {
                        addr36:
                        §§push(§§pop().length == 0);
                        if(_loc3_)
                        {
                           addr41:
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 this.§+p§ = null;
                                 if(!_loc2_)
                                 {
                                    addr59:
                                    if(this.§+p§)
                                    {
                                       addr63:
                                       if(§%!D§)
                                       {
                                          if(_loc3_)
                                          {
                                             §%!D§ = false;
                                             §,!2§();
                                          }
                                          §§goto(addr105);
                                       }
                                       this.§@x§ = new MovieClip();
                                       if(§-+§)
                                       {
                                          this.§9!J§();
                                          addr99:
                                          this.§@x§.mouseEnabled = false;
                                          if(!_loc2_)
                                          {
                                             §§goto(addr105);
                                          }
                                       }
                                       else
                                       {
                                          this.§"g§();
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§goto(addr99);
                                          }
                                       }
                                       §§goto(addr115);
                                    }
                                 }
                                 §§goto(addr115);
                              }
                              addr105:
                              this.§@x§.mouseChildren = false;
                              if(_loc3_)
                              {
                                 this.§@x§.visible = false;
                                 addr115:
                                 getParentView().addChild(this.§@x§);
                                 §§goto(addr120);
                              }
                              addr120:
                              return;
                           }
                           §§goto(addr59);
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr59);
                  }
               }
               §§goto(addr41);
            }
            §§goto(addr63);
         }
         §§goto(addr36);
      }
      
      private function §"g§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§@x§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.name = "Text";
            if(!(_loc3_ && this))
            {
               this.§@x§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(!_loc3_)
         {
            _loc2_.name = "Base";
            if(_loc4_)
            {
               this.§@x§.addChildAt(_loc2_,0);
               if(_loc4_)
               {
                  addr91:
                  this.§`p§(this.§+p§);
               }
               return;
            }
         }
         §§goto(addr91);
      }
      
      private function §9!J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§@x§ = new §-+§();
            if(_loc1_)
            {
               this.§<&§(this.§+p§);
            }
         }
      }
      
      public function §<&§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§+p§ = param1;
            if(!_loc2_)
            {
               if(§-+§)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§ 0§(param1);
                     if(_loc3_)
                     {
                        addr53:
                     }
                  }
               }
               else
               {
                  this.§`p§(param1);
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      private function § 0§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§@x§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§@x§.getChildByName("Base") as MovieClip;
         if(_loc6_ || _loc2_)
         {
            _loc2_.text = this.§+p§;
            if(!(_loc7_ && param1))
            {
               _loc2_.multiline = false;
               if(!(_loc7_ && this))
               {
                  _loc2_.width = _loc2_.textWidth * 1.25;
                  addr60:
               }
            }
            var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
            if(_loc6_ || this)
            {
               _loc3_.scaleX = _loc4_ / _loc3_.width;
               if(_loc6_ || param1)
               {
                  _loc3_.x = 0;
               }
            }
            var _loc5_:int = 0;
            while(true)
            {
               if(_loc5_ >= _loc3_.numChildren)
               {
                  if(!_loc7_)
                  {
                     addr151:
                     _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                     break;
                  }
                  break;
               }
               _loc3_.getChildAt(0).x = 0;
               if(!(_loc6_ || param1))
               {
                  break;
               }
               _loc5_++;
               if(!(_loc7_ && this))
               {
                  continue;
               }
               §§goto(addr151);
            }
            return;
         }
         §§goto(addr60);
      }
      
      private function §`p§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§@x§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         if(!_loc5_)
         {
            _loc3_.bold = true;
            if(!_loc5_)
            {
               _loc3_.size = 12;
               _loc2_.defaultTextFormat = _loc3_;
               if(!_loc5_)
               {
                  _loc2_.border = false;
                  _loc2_.text = this.§+p§;
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc2_.height = _loc2_.textHeight * 1.25;
                     _loc2_.width = _loc2_.textWidth * 1.25;
                  }
                  _loc2_.textColor = 0;
                  if(_loc6_ || param1)
                  {
                     addr84:
                     _loc2_.selectable = false;
                     if(_loc6_ || param1)
                     {
                        addr104:
                        _loc2_.mouseEnabled = false;
                     }
                  }
                  var _loc4_:Shape;
                  (_loc4_ = this.§@x§.getChildByName("Base") as Shape).graphics.clear();
                  if(_loc6_)
                  {
                     _loc4_.graphics.lineStyle(1);
                     if(_loc6_)
                     {
                        _loc4_.graphics.beginFill(0,1);
                        if(!_loc5_)
                        {
                           addr133:
                           _loc4_.graphics.drawRect(-this.§37§,-this.§37§,_loc2_.width + 2 * this.§37§,_loc2_.height + 2 * this.§37§);
                           if(_loc6_ || this)
                           {
                              addr163:
                              _loc4_.graphics.beginFill(16777215,1);
                              if(!_loc5_)
                              {
                                 _loc4_.graphics.drawRect(-this.§37§ / 2,-(this.§37§ / 2),_loc2_.width + 1 * this.§37§,_loc2_.height + 1 * this.§37§);
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr133);
               }
               §§goto(addr84);
            }
         }
         §§goto(addr104);
      }
      
      private function §1g§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(_loc5_)
         {
            §§push(!this.§@x§);
            §§push(!this.§@x§);
            if(_loc5_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     §§push(this.§+p§);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() == null);
                        if(_loc5_)
                        {
                           §§goto(addr53);
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr67);
               }
               addr53:
               §§push(§§pop());
               if(!_loc4_)
               {
                  addr56:
                  if(!§§pop())
                  {
                     §§pop();
                     addr60:
                     §§push(this.§+p§.length == 0);
                  }
                  if(§§pop())
                  {
                     return;
                  }
                  addr67:
                  §§push(Boolean(param1));
                  §§push(Boolean(param1));
               }
               if(§§pop())
               {
                  if(_loc5_ || this)
                  {
                     §§pop();
                     addr77:
                     §§push(§'m§);
                     if(_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
               if(§§pop())
               {
                  _loc2_ = mClip.getRect(getParentView());
                  if(!(_loc4_ && _loc2_))
                  {
                     this.§@x§.y = _loc2_.y - this.§@x§.height - this.§37§;
                     if(_loc5_ || this)
                     {
                        this.§@x§.x = _loc2_.x + mClip.width / 2 - this.§@x§.width / 2;
                     }
                  }
                  _loc3_ = this.§@x§.getRect(mClip.stage);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(_loc3_.right > mClip.stage.stageWidth - this.§37§)
                     {
                        this.§@x§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§37§));
                     }
                     if(_loc3_.left < this.§37§)
                     {
                        this.§@x§.x += 1 + (this.§37§ - _loc3_.left);
                     }
                  }
                  if(_loc3_.bottom > mClip.stage.stageHeight - this.§37§)
                  {
                     this.§@x§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§37§));
                  }
                  if(_loc3_.top < this.§37§)
                  {
                     if(!(_loc4_ && this))
                     {
                        this.§@x§.y += mClip.height + this.§@x§.height + this.§37§ * 2;
                        if(!(_loc4_ && param1))
                        {
                           addr274:
                           this.§@x§.visible = true;
                        }
                     }
                     §§goto(addr283);
                  }
                  §§goto(addr274);
               }
               else
               {
                  this.§@x§.visible = false;
               }
               addr283:
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr77);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§@x§)
            {
               if(!_loc1_)
               {
                  this.§+p§ = null;
               }
               §§goto(addr32);
            }
            §§goto(addr88);
         }
         addr32:
         do
         {
            if(this.§@x§.numChildren > 0)
            {
               continue;
            }
            if(!(_loc1_ && _loc1_))
            {
               if(this.§@x§.parent)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr88:
                     this.§@x§.parent.removeChild(this.§@x§);
                     if(_loc2_)
                     {
                        break;
                     }
                     super.clear();
                  }
                  §§goto(addr108);
               }
               break;
            }
            §§goto(addr88);
         }
         while(this.§@x§.removeChildAt(0), !(_loc1_ && _loc2_));
         
         this.§@x§ = null;
         if(_loc2_ || this)
         {
            §§goto(addr88);
         }
         addr108:
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§0!5§ = param1;
            if(_loc3_ || _loc3_)
            {
               addr44:
               this.§-!9§();
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%s§ = param1;
            if(_loc2_ || param1)
            {
               this.§-!9§();
            }
         }
      }
      
      public function §-!9§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc1_))
         {
            if(mClip.totalFrames < 2)
            {
               if(!_loc5_)
               {
                  §§goto(addr29);
               }
            }
            var _loc1_:Array = new Array(this.§0!5§ + "_" + this.§%s§,this.§0!5§ + "_" + §=!4§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§%s§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §=!4§);
            var _loc2_:int = 0;
            while(_loc2_ < _loc1_.length)
            {
               try
               {
                  mClip.gotoAndStop(_loc1_[_loc2_] as String);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(mClip.numChildren > 0)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           return;
                        }
                        continue;
                     }
                  }
                  break;
               }
               catch(e:Error)
               {
                  var _loc3_:* = e;
               }
               _loc2_++;
               if(!_loc4_)
               {
                  break;
               }
            }
            return;
         }
         addr29:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§0!5§ == §]x§)
            {
               return;
            }
            super.listenerEventOccured(param1,param2);
            §§push(this.§4P§);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || this)
                     {
                        addr44:
                        §§pop();
                        §§push(param1);
                        if(_loc4_)
                        {
                           addr50:
                           if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                           {
                              if(_loc4_ || param2)
                              {
                                 this.§+,§();
                                 addr60:
                                 §§push(param1);
                                 if(_loc4_ || param1)
                                 {
                                    if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          this.setComponentVisualState(§-5§);
                                          addr90:
                                          §§push(param1);
                                          if(!(_loc3_ && this))
                                          {
                                             addr98:
                                             if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                             {
                                                if(!_loc3_)
                                                {
                                                   this.setComponentVisualState(§?'§);
                                                   addr105:
                                                   §§push(param1);
                                                   if(_loc4_)
                                                   {
                                                      if(§§pop() == §@^§)
                                                      {
                                                         if(!(_loc3_ && param2))
                                                         {
                                                            §§goto(addr117);
                                                         }
                                                         §§goto(addr128);
                                                      }
                                                      §§goto(addr131);
                                                   }
                                                }
                                             }
                                             §§goto(addr105);
                                          }
                                          §§goto(addr132);
                                       }
                                       addr117:
                                       Mouse.cursor = MouseCursor.AUTO;
                                       if(_loc4_ || param2)
                                       {
                                          addr128:
                                          this.setComponentVisualState(§4m§);
                                          addr131:
                                          addr132:
                                          if(param1 == §[F§)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                Mouse.cursor = this.§!!H§;
                                                if(_loc4_ || param1)
                                                {
                                                   this.setComponentVisualState(§?'§);
                                                   if(_loc3_ && param1)
                                                   {
                                                   }
                                                   §§goto(addr177);
                                                }
                                             }
                                             §§goto(addr177);
                                          }
                                          this.§1g§(param1 == §[F§);
                                       }
                                       addr177:
                                       return;
                                    }
                                    §§goto(addr90);
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr60);
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr50);
               }
            }
            §§goto(addr44);
         }
         §§goto(addr105);
      }
      
      public function §+,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§0!5§);
            if(!_loc1_)
            {
               §§push(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_)
                     {
                        this.setComponentState(§0K§.§use§);
                        if(!_loc1_)
                        {
                           addr46:
                        }
                     }
                     §§goto(addr46);
                  }
                  else
                  {
                     addr51:
                     if(this.§0!5§ == §0K§.§use§)
                     {
                        if(_loc2_)
                        {
                           this.setComponentState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr51);
         }
         §§goto(addr46);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.setEnabled(param1);
         }
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            super.changeMovieClip(param1);
         }
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(_loc6_ || param1)
         {
            if(this.mParentContainer)
            {
               mParentContainer.mClip.removeChild(mClip);
            }
            mClip = null;
            mClip = param1;
         }
         if(this.mParentContainer)
         {
            if(_loc6_)
            {
               mParentContainer.mClip.addChildAt(mClip,_loc4_);
               if(!_loc5_)
               {
                  addr93:
                  mClip.x = _loc2_;
                  if(_loc6_ || this)
                  {
                     §§goto(addr103);
                  }
                  §§goto(addr113);
               }
            }
            addr103:
            mClip.y = _loc3_;
            if(!(_loc5_ && _loc2_))
            {
               addr113:
               this.§-!9§();
            }
            return;
         }
         §§goto(addr93);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.setVisibility(param1);
            if(!_loc3_)
            {
               if(!mClip.visible)
               {
                  if(_loc2_)
                  {
                     addr43:
                     this.§1g§(false);
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.onParentVisibilityChange(param1);
            if(_loc2_ || param1)
            {
               if(!param1)
               {
                  if(_loc2_)
                  {
                     addr47:
                     this.§1g§(false);
                  }
               }
            }
            return;
         }
         §§goto(addr47);
      }
   }
}
