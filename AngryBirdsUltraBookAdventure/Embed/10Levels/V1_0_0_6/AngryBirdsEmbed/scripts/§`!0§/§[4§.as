package §`!0§
{
   import §4C§.§1!=§;
   import com.rovio.assets.§!Q§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §[4§ extends §4Y§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §7X§:String = "Deactive";
      
      public static const §?[§:String = "Disabled";
      
      public static const §@!,§:String = "Out";
      
      public static const §4b§:String = "Over";
      
      public static const §`§:String = "Up_Default";
      
      public static const §4H§:String = "Down";
      
      public static var §^O§:Class;
      
      public static var §=S§:Boolean = true;
      
      public static const §?!?§:String = "Tooltip";
      
      public static var §48§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7X§ = "Deactive";
            if(!(_loc2_ && _loc2_))
            {
               §?[§ = "Disabled";
            }
            §@!,§ = "Out";
            if(!(_loc2_ && _loc1_))
            {
               §4b§ = "Over";
               if(!(_loc2_ && §[4§))
               {
                  §`§ = "Up_Default";
                  if(_loc1_ || §[4§)
                  {
                     addr84:
                     §4H§ = "Down";
                     §=S§ = true;
                     if(_loc1_ || §[4§)
                     {
                     }
                     §§goto(addr103);
                  }
                  §?!?§ = "Tooltip";
                  §48§ = true;
                  §§goto(addr103);
               }
               addr103:
               return;
            }
         }
         §§goto(addr84);
      }
      
      public var §>+§:String;
      
      public var §5H§:String;
      
      public var §;W§:String;
      
      public var §=!F§:MovieClip;
      
      public var §^!?§:int = 6;
      
      private var §#!4§:Boolean = false;
      
      private var §0L§:String = "auto";
      
      public function §[4§(param1:XML, param2:§1!=§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super(param1,param2,param3);
         this.§>+§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§5H§ = §`§;
         this.§#o§();
         this.§78§(param1.@Tooltip);
         if(_loc6_)
         {
            if(param1.@Toggle.toString().toUpperCase() == "TRUE")
            {
               if(!_loc7_)
               {
                  this.§#!4§ = true;
               }
            }
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc6_)
         {
            if(_loc4_.indexOf(_loc5_) > -1)
            {
               if(!_loc7_)
               {
                  this.§0L§ = _loc5_;
               }
            }
         }
      }
      
      public static function §!6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^O§ = §!Q§.§^!H§(§?!?§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setActiveStatus(param1);
            if(_loc3_ || _loc2_)
            {
               §§goto(addr39);
            }
            §§goto(addr48);
         }
         addr39:
         if(!param1)
         {
            if(!(_loc2_ && this))
            {
               addr48:
               this.setComponentVisualState(§@!,§);
            }
         }
      }
      
      public function §78§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;W§ = param1;
            §§push(this.§;W§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        §§pop();
                        §§push(this.§;W§);
                        if(_loc2_ || this)
                        {
                           §§push(§§pop().length == 0);
                           if(!(_loc3_ && param1))
                           {
                              addr77:
                              if(§§pop())
                              {
                                 this.§;W§ = null;
                                 if(!_loc2_)
                                 {
                                 }
                                 addr106:
                                 if(§^O§)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       this.§>z§();
                                       this.§=!F§.mouseEnabled = false;
                                       addr120:
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          this.§=!F§.mouseChildren = false;
                                       }
                                       this.§=!F§.visible = false;
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          getParentView().addChild(this.§=!F§);
                                       }
                                       addr117:
                                    }
                                    §§goto(addr161);
                                 }
                                 else
                                 {
                                    this.§]!H§();
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr85);
                           }
                        }
                        addr85:
                        if(this.§;W§)
                        {
                           if(_loc2_ || param1)
                           {
                              addr94:
                              if(§=S§)
                              {
                                 §=S§ = false;
                                 §!6§();
                              }
                              this.§=!F§ = new MovieClip();
                              if(_loc2_)
                              {
                                 §§goto(addr106);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr106);
                        }
                        addr161:
                        return;
                     }
                     §§goto(addr94);
                  }
               }
            }
            §§goto(addr77);
         }
         §§goto(addr106);
      }
      
      private function §]!H§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§=!F§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!_loc4_)
         {
            _loc1_.name = "Text";
            if(_loc3_)
            {
               this.§=!F§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(!_loc4_)
         {
            _loc2_.name = "Base";
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr78);
            }
            §§goto(addr85);
         }
         addr78:
         this.§=!F§.addChildAt(_loc2_,0);
         if(_loc3_)
         {
            addr85:
            this.§63§(this.§;W§);
         }
      }
      
      private function §>z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§=!F§ = new §^O§();
            if(_loc1_ || _loc1_)
            {
               this.§#D§(this.§;W§);
            }
         }
      }
      
      public function §#D§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§;W§ = param1;
            if(!_loc3_)
            {
               if(§^O§)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr47:
                     this.§?!0§(param1);
                     if(!_loc2_)
                     {
                     }
                  }
               }
               else
               {
                  this.§63§(param1);
               }
               §§goto(addr56);
            }
         }
         §§goto(addr47);
      }
      
      private function §?!0§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TextField = this.§=!F§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§=!F§.getChildByName("Base") as MovieClip;
         if(!(_loc6_ && param1))
         {
            _loc2_.text = this.§;W§;
            if(!(_loc6_ && _loc3_))
            {
               _loc2_.multiline = false;
               if(_loc7_)
               {
                  _loc2_.width = _loc2_.textWidth * 1.25;
                  addr56:
               }
            }
            var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
            if(_loc7_ || _loc3_)
            {
               _loc3_.scaleX = _loc4_ / _loc3_.width;
               if(!_loc6_)
               {
                  _loc3_.x = 0;
               }
            }
            var _loc5_:int = 0;
            while(true)
            {
               if(_loc5_ >= _loc3_.numChildren)
               {
                  if(_loc7_)
                  {
                     break;
                  }
                  §§goto(addr146);
               }
               _loc3_.getChildAt(0).x = 0;
               if(_loc6_)
               {
                  break;
               }
               _loc5_++;
               if(_loc7_ || _loc2_)
               {
                  continue;
               }
               §§goto(addr146);
            }
            _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
            addr146:
            return;
         }
         §§goto(addr56);
      }
      
      private function §63§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§=!F§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!_loc5_)
         {
            _loc3_.align = TextAlign.CENTER;
            _loc3_.bold = true;
            _loc3_.size = 12;
            if(_loc6_ || _loc2_)
            {
               _loc2_.defaultTextFormat = _loc3_;
               _loc2_.border = false;
               _loc2_.text = this.§;W§;
            }
            _loc2_.height = _loc2_.textHeight * 1.25;
            if(_loc6_ || param1)
            {
               _loc2_.width = _loc2_.textWidth * 1.25;
               if(_loc6_)
               {
                  addr79:
                  _loc2_.textColor = 0;
                  if(!_loc6_)
                  {
                  }
                  addr100:
                  var _loc4_:Shape;
                  (_loc4_ = this.§=!F§.getChildByName("Base") as Shape).graphics.clear();
                  if(!(_loc5_ && this))
                  {
                     _loc4_.graphics.lineStyle(1);
                     if(_loc6_ || _loc2_)
                     {
                        _loc4_.graphics.beginFill(0,1);
                        if(!_loc5_)
                        {
                           addr136:
                           _loc4_.graphics.drawRect(-this.§^!?§,-this.§^!?§,_loc2_.width + 2 * this.§^!?§,_loc2_.height + 2 * this.§^!?§);
                           if(!_loc5_)
                           {
                              _loc4_.graphics.beginFill(16777215,1);
                              if(_loc6_ || _loc2_)
                              {
                                 addr183:
                                 _loc4_.graphics.drawRect(-this.§^!?§ / 2,-(this.§^!?§ / 2),_loc2_.width + 1 * this.§^!?§,_loc2_.height + 1 * this.§^!?§);
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr136);
               }
               _loc2_.selectable = false;
               _loc2_.mouseEnabled = false;
               §§goto(addr100);
            }
         }
         §§goto(addr79);
      }
      
      private function §%d§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!(_loc4_ && _loc2_))
         {
            §§push(!this.§=!F§);
            §§push(!this.§=!F§);
            if(!(_loc4_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§pop();
                     §§push(this.§;W§);
                     if(_loc5_ || this)
                     {
                        §§push(§§pop() == null);
                        if(!_loc4_)
                        {
                           addr58:
                           §§push(§§pop());
                           if(_loc5_ || this)
                           {
                              addr66:
                              if(!§§pop())
                              {
                                 if(_loc5_ || this)
                                 {
                                    §§pop();
                                    §§goto(addr80);
                                 }
                                 §§goto(addr86);
                              }
                              §§goto(addr80);
                           }
                           §§goto(addr86);
                        }
                        addr80:
                        §§goto(addr77);
                     }
                     addr77:
                     if(this.§;W§.length == 0)
                     {
                        if(!_loc4_)
                        {
                           return;
                        }
                        addr96:
                        §§push(§48§);
                        if(_loc5_ || param1)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                     else
                     {
                        addr86:
                        §§push(Boolean(param1));
                        if(Boolean(param1))
                        {
                           if(_loc5_ || _loc2_)
                           {
                              §§pop();
                              §§goto(addr96);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        _loc2_ = mClip.getRect(getParentView());
                        if(_loc5_)
                        {
                           this.§=!F§.y = _loc2_.y - this.§=!F§.height - this.§^!?§;
                           if(!_loc4_)
                           {
                              this.§=!F§.x = _loc2_.x + mClip.width / 2 - this.§=!F§.width / 2;
                              addr128:
                           }
                           _loc3_ = this.§=!F§.getRect(mClip.stage);
                           if(!_loc4_)
                           {
                              if(_loc3_.right > mClip.stage.stageWidth - this.§^!?§)
                              {
                                 addr172:
                                 this.§=!F§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§^!?§));
                                 if(!(_loc4_ && param1))
                                 {
                                    addr197:
                                    if(_loc3_.left < this.§^!?§)
                                    {
                                       if(!_loc4_)
                                       {
                                          addr204:
                                          this.§=!F§.x += 1 + (this.§^!?§ - _loc3_.left);
                                          if(_loc5_)
                                          {
                                             addr220:
                                             if(_loc3_.bottom > mClip.stage.stageHeight - this.§^!?§)
                                             {
                                                this.§=!F§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§^!?§));
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr254:
                                                   if(_loc3_.top < this.§^!?§)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         addr271:
                                                         this.§=!F§.y += mClip.height + this.§=!F§.height + this.§^!?§ * 2;
                                                         addr289:
                                                         this.§=!F§.visible = true;
                                                      }
                                                   }
                                                   §§goto(addr289);
                                                }
                                                §§goto(addr298);
                                             }
                                             §§goto(addr254);
                                          }
                                       }
                                       §§goto(addr271);
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr128);
                     }
                     else
                     {
                        this.§=!F§.visible = false;
                     }
                     addr298:
                     return;
                  }
               }
               §§goto(addr58);
            }
            §§goto(addr66);
         }
         §§goto(addr96);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§=!F§)
            {
               if(!(_loc1_ && this))
               {
                  addr34:
                  this.§;W§ = null;
               }
               do
               {
                  if(this.§=!F§.numChildren <= 0)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr96);
                  }
                  this.§=!F§.removeChildAt(0);
               }
               while(!(_loc1_ && _loc2_));
               
               if(this.§=!F§.parent)
               {
                  if(_loc2_)
                  {
                     this.§=!F§.parent.removeChild(this.§=!F§);
                     if(_loc1_ && _loc2_)
                     {
                     }
                  }
                  §§goto(addr106);
               }
               addr96:
               this.§=!F§ = null;
               if(_loc2_ || _loc2_)
               {
                  addr106:
                  super.clear();
               }
               return;
            }
            §§goto(addr106);
         }
         §§goto(addr34);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>+§ = param1;
            if(_loc3_)
            {
               addr24:
               this.§#o§();
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5H§ = param1;
            if(!_loc3_)
            {
               this.§#o§();
            }
         }
      }
      
      public function §#o§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc1_))
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc5_)
               {
                  return;
               }
            }
         }
         var _loc1_:Array = new Array(this.§>+§ + "_" + this.§5H§,this.§>+§ + "_" + §`§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§5H§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §`§);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            try
            {
               mClip.gotoAndStop(_loc1_[_loc2_] as String);
               if(_loc4_)
               {
                  continue;
               }
               if(mClip.numChildren > 0)
               {
                  if(!_loc4_)
                  {
                     return;
                  }
                  continue;
               }
            }
            catch(e:Error)
            {
            }
            _loc2_++;
            if(!(_loc5_ || _loc2_))
            {
               break;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(this.§>+§ == §?[§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         §§push(this.§#!4§);
         if(!(_loc3_ && param1))
         {
            §§push(Boolean(§§pop()));
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_ || param1)
                  {
                  }
                  addr55:
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr58:
                        this.§13§();
                        if(_loc4_)
                        {
                           addr62:
                           §§push(param1);
                           if(!_loc3_)
                           {
                              if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                              {
                                 if(!(_loc3_ && param2))
                                 {
                                    addr84:
                                    this.setComponentVisualState(§4H§);
                                    addr87:
                                    §§push(param1);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                       {
                                          this.setComponentVisualState(§4b§);
                                          if(_loc4_)
                                          {
                                             addr102:
                                             §§push(param1);
                                             if(_loc4_ || param2)
                                             {
                                                addr110:
                                                if(§§pop() == §#x§)
                                                {
                                                   if(!(_loc3_ && param2))
                                                   {
                                                      Mouse.cursor = MouseCursor.AUTO;
                                                      addr133:
                                                      this.setComponentVisualState(§@!,§);
                                                      if(!_loc3_)
                                                      {
                                                         addr138:
                                                         addr139:
                                                         if(param1 == §;!4§)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               addr143:
                                                               Mouse.cursor = this.§0L§;
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr154:
                                                                  this.setComponentVisualState(§4b§);
                                                               }
                                                               §§goto(addr162);
                                                            }
                                                         }
                                                         this.§%d§(param1 == §;!4§);
                                                      }
                                                   }
                                                   addr162:
                                                   return;
                                                }
                                                §§goto(addr138);
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr154);
                                       }
                                       §§goto(addr102);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr62);
               }
               §§goto(addr55);
            }
            §§pop();
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§goto(addr55);
                  §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
               }
               §§goto(addr138);
            }
            §§goto(addr58);
         }
         §§goto(addr55);
      }
      
      public function §13§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§>+§);
            if(!_loc2_)
            {
               §§push(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(!(_loc2_ && this))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        this.setComponentState(§[4§.§7X§);
                        if(!_loc1_)
                        {
                           addr78:
                           this.setComponentState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        }
                        else
                        {
                           addr65:
                        }
                     }
                     §§goto(addr65);
                  }
                  else
                  {
                     addr70:
                     if(this.§>+§ == §[4§.§7X§)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr78);
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr70);
         }
         §§goto(addr65);
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super.changeMovieClip(param1);
         }
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(!(_loc5_ && _loc3_))
         {
            if(this.mParentContainer)
            {
               mParentContainer.mClip.removeChild(mClip);
            }
            mClip = null;
            mClip = param1;
            if(this.mParentContainer)
            {
               mParentContainer.mClip.addChildAt(mClip,_loc4_);
            }
         }
         mClip.x = _loc2_;
         if(_loc6_)
         {
            mClip.y = _loc3_;
            this.§#o§();
         }
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.setVisibility(param1);
            if(!(_loc2_ && param1))
            {
               if(!mClip.visible)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr54:
                     this.§%d§(false);
                  }
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.onParentVisibilityChange(param1);
            if(!(_loc2_ && param1))
            {
               if(!param1)
               {
                  if(!_loc2_)
                  {
                     addr48:
                     this.§%d§(false);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
   }
}
