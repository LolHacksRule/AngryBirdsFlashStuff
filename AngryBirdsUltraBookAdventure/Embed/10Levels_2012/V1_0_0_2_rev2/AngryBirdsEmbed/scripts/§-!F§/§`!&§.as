package §-!F§
{
   import §class§.§3C§;
   import com.rovio.assets.§'!H§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §`!&§ extends §&!A§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §3?§:String = "Deactive";
      
      public static const §9I§:String = "Disabled";
      
      public static const §#@§:String = "Out";
      
      public static const §[!;§:String = "Over";
      
      public static const §"7§:String = "Up_Default";
      
      public static const §@&§:String = "Down";
      
      public static var §[!'§:Class;
      
      public static var §5Q§:Boolean = true;
      
      public static const §`h§:String = "Tooltip";
      
      public static var §;!=§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §9I§ = "Disabled";
            §#@§ = "Out";
            §[!;§ = "Over";
            §"7§ = "Up_Default";
            if(!_loc2_)
            {
               §@&§ = "Down";
               §5Q§ = true;
               §`h§ = "Tooltip";
               if(_loc1_)
               {
                  addr74:
                  §;!=§ = true;
               }
               return;
            }
         }
         §§goto(addr74);
      }
      
      public var §;e§:String;
      
      public var §]0§:String;
      
      public var §&b§:String;
      
      public var §#b§:MovieClip;
      
      public var §4y§:int = 6;
      
      private var §#l§:Boolean = false;
      
      private var §<!'§:String = "auto";
      
      public function §`!&§(param1:XML, param2:§3C§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            super(param1,param2,param3);
            this.§;e§ = COMPONENT_STATE_ACTIVE_DEFAULT;
            if(!(_loc6_ && param3))
            {
               addr39:
               this.§]0§ = §"7§;
               if(_loc7_)
               {
                  this.§4&§();
                  if(!_loc6_)
                  {
                     addr58:
                     this.§4!<§(param1.@Tooltip);
                     if(!_loc6_)
                     {
                        if(param1.@Toggle.toString().toUpperCase() == "TRUE")
                        {
                           if(_loc7_ || this)
                           {
                           }
                           var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
                           var _loc5_:String = param1.@cursor.toString().toLowerCase();
                        }
                     }
                     §§goto(addr80);
                  }
                  this.§#l§ = true;
                  §§goto(addr80);
               }
               §§goto(addr58);
            }
            addr80:
            if(!_loc6_)
            {
               if(_loc4_.indexOf(_loc5_) > -1)
               {
                  if(!_loc6_)
                  {
                     this.§<!'§ = _loc5_;
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public static function §"!=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[!'§ = §'!H§.§&!G§(§`h§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.setActiveStatus(param1);
            if(!(_loc3_ && this))
            {
               if(!param1)
               {
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr50);
            }
            this.setComponentVisualState(§#@§);
         }
         addr50:
      }
      
      public function §4!<§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§&b§ = param1;
         §§push(this.§&b§);
         if(!_loc2_)
         {
            §§push(Boolean(§§pop()));
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§pop();
                     §§push(this.§&b§);
                     if(!_loc2_)
                     {
                        addr41:
                        §§push(§§pop().length == 0);
                        if(!_loc2_)
                        {
                           addr46:
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 this.§&b§ = null;
                                 if(_loc3_)
                                 {
                                    §§goto(addr54);
                                 }
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr54);
                        }
                        §§goto(addr70);
                     }
                     addr54:
                     if(this.§&b§)
                     {
                        if(!_loc2_)
                        {
                           addr70:
                           if(§5Q§)
                           {
                              §5Q§ = false;
                              if(!(_loc2_ && this))
                              {
                                 §"!=§();
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr90:
                                    this.§#b§ = new MovieClip();
                                    if(§[!'§)
                                    {
                                       if(_loc3_)
                                       {
                                          addr98:
                                          this.final();
                                          if(_loc2_)
                                          {
                                          }
                                          addr125:
                                          this.§#b§.visible = false;
                                          if(!(_loc2_ && param1))
                                          {
                                             getParentView().addChild(this.§#b§);
                                          }
                                          §§goto(addr141);
                                       }
                                       addr115:
                                       this.§#b§.mouseEnabled = false;
                                    }
                                    else
                                    {
                                       this.§"!§();
                                       §§goto(addr115);
                                    }
                                    §§goto(addr115);
                                 }
                                 this.§#b§.mouseChildren = false;
                                 if(_loc2_)
                                 {
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr115);
                     }
                     addr141:
                     return;
                  }
                  §§goto(addr70);
               }
               §§goto(addr46);
            }
            §§goto(addr70);
         }
         §§goto(addr41);
      }
      
      private function §"!§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§#b§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!(_loc4_ && _loc2_))
         {
            _loc1_.name = "Text";
            if(!(_loc4_ && _loc2_))
            {
               addr58:
               this.§#b§.addChild(_loc1_);
            }
            var _loc2_:Shape = new Shape();
            if(_loc3_ || this)
            {
               _loc2_.name = "Base";
               if(_loc3_ || _loc3_)
               {
                  addr93:
                  this.§#b§.addChildAt(_loc2_,0);
                  if(_loc3_ || _loc3_)
                  {
                     this.§2c§(this.§&b§);
                  }
               }
               return;
            }
            §§goto(addr93);
         }
         §§goto(addr58);
      }
      
      private function final() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#b§ = new §[!'§();
            if(!(_loc2_ && this))
            {
               this.§]e§(this.§&b§);
            }
         }
      }
      
      public function §]e§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&b§ = param1;
            if(!_loc2_)
            {
               if(§[!'§)
               {
                  if(_loc3_)
                  {
                     addr38:
                     this.§&t§(param1);
                     if(_loc3_ || _loc3_)
                     {
                     }
                  }
               }
               else
               {
                  this.§2c§(param1);
               }
               §§goto(addr52);
            }
         }
         §§goto(addr38);
      }
      
      private function §&t§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TextField = this.§#b§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§#b§.getChildByName("Base") as MovieClip;
         if(_loc7_)
         {
            _loc2_.text = this.§&b§;
            if(!_loc6_)
            {
               _loc2_.multiline = false;
               if(!(_loc6_ && _loc2_))
               {
                  addr51:
                  _loc2_.width = _loc2_.textWidth * 1.25;
               }
            }
            var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
            if(_loc7_ || _loc3_)
            {
               _loc3_.scaleX = _loc4_ / _loc3_.width;
               if(_loc7_)
               {
                  addr94:
                  _loc3_.x = 0;
               }
               var _loc5_:int = 0;
               do
               {
                  if(_loc5_ >= _loc3_.numChildren)
                  {
                     if(_loc7_ || _loc2_)
                     {
                        _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                        break;
                     }
                     break;
                  }
                  _loc3_.getChildAt(0).x = 0;
                  if(!_loc7_)
                  {
                     break;
                  }
                  _loc5_++;
               }
               while(!(_loc6_ && _loc2_));
               
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr51);
      }
      
      private function §2c§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§#b§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.align = TextAlign.CENTER;
            if(!_loc5_)
            {
               _loc3_.bold = true;
               _loc3_.size = 12;
               _loc2_.defaultTextFormat = _loc3_;
               _loc2_.border = false;
               _loc2_.text = this.§&b§;
               if(_loc6_)
               {
                  _loc2_.height = _loc2_.textHeight * 1.25;
                  if(_loc6_ || _loc2_)
                  {
                     addr73:
                     _loc2_.width = _loc2_.textWidth * 1.25;
                     if(!(_loc5_ && _loc2_))
                     {
                        addr86:
                        _loc2_.textColor = 0;
                        if(!_loc5_)
                        {
                           addr101:
                           _loc2_.selectable = false;
                        }
                     }
                     _loc2_.mouseEnabled = false;
                  }
                  var _loc4_:Shape;
                  (_loc4_ = this.§#b§.getChildByName("Base") as Shape).graphics.clear();
                  if(!_loc5_)
                  {
                     _loc4_.graphics.lineStyle(1);
                     if(!_loc5_)
                     {
                        _loc4_.graphics.beginFill(0,1);
                        if(!(_loc5_ && param1))
                        {
                           _loc4_.graphics.drawRect(-this.§4y§,-this.§4y§,_loc2_.width + 2 * this.§4y§,_loc2_.height + 2 * this.§4y§);
                           if(_loc6_)
                           {
                              _loc4_.graphics.beginFill(16777215,1);
                              if(_loc6_)
                              {
                                 addr180:
                                 _loc4_.graphics.drawRect(-this.§4y§ / 2,-(this.§4y§ / 2),_loc2_.width + 1 * this.§4y§,_loc2_.height + 1 * this.§4y§);
                              }
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr180);
               }
               §§goto(addr73);
            }
            §§goto(addr101);
         }
         §§goto(addr86);
      }
      
      private function §;X§(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!_loc5_)
         {
            §§push(!this.§#b§);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop());
               if(_loc4_ || this)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     §§push(this.§&b§);
                     if(!(_loc5_ && _loc2_))
                     {
                        addr55:
                        §§push(§§pop() == null);
                        §§push(§§pop() == null);
                        if(_loc4_ || _loc3_)
                        {
                           if(!§§pop())
                           {
                              if(_loc4_)
                              {
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    addr74:
                                    if(this.§&b§.length == 0)
                                    {
                                       if(_loc4_ || _loc2_)
                                       {
                                          return;
                                       }
                                    }
                                    else
                                    {
                                       addr88:
                                       §§push(Boolean(param1));
                                       if(Boolean(param1))
                                       {
                                          §§pop();
                                          addr90:
                                          §§push(§;!=§);
                                          if(!_loc5_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             _loc2_ = mClip.getRect(getParentView());
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                this.§#b§.y = _loc2_.y - this.§#b§.height - this.§4y§;
                                                if(_loc4_)
                                                {
                                                   this.§#b§.x = _loc2_.x + mClip.width / 2 - this.§#b§.width / 2;
                                                   addr129:
                                                }
                                                _loc3_ = this.§#b§.getRect(mClip.stage);
                                                if(_loc4_ || this)
                                                {
                                                   if(_loc3_.right > mClip.stage.stageWidth - this.§4y§)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         this.§#b§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§4y§));
                                                         addr198:
                                                         if(_loc3_.left < this.§4y§)
                                                         {
                                                            this.§#b§.x += 1 + (this.§4y§ - _loc3_.left);
                                                            if(!_loc5_)
                                                            {
                                                               addr219:
                                                               if(_loc3_.bottom > mClip.stage.stageHeight - this.§4y§)
                                                               {
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     addr235:
                                                                     this.§#b§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§4y§));
                                                                     addr253:
                                                                     if(_loc3_.top < this.§4y§)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           addr270:
                                                                           this.§#b§.y += mClip.height + this.§#b§.height + this.§4y§ * 2;
                                                                        }
                                                                     }
                                                                     this.§#b§.visible = true;
                                                                     return;
                                                                     addr292:
                                                                  }
                                                                  §§goto(addr270);
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                            §§goto(addr292);
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr129);
                                          }
                                       }
                                       else
                                       {
                                          this.§#b§.visible = false;
                                       }
                                    }
                                 }
                                 §§goto(addr235);
                              }
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr55);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr90);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§#b§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr34:
                  this.§&b§ = null;
               }
               do
               {
                  if(this.§#b§.numChildren > 0)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     if(this.§#b§.parent)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           this.§#b§.parent.removeChild(this.§#b§);
                           if(_loc2_)
                           {
                              addr91:
                              this.§#b§ = null;
                              if(_loc2_ || _loc1_)
                              {
                                 addr101:
                                 super.clear();
                                 break;
                              }
                              break;
                           }
                           §§goto(addr101);
                        }
                        break;
                     }
                     §§goto(addr91);
                  }
               }
               while(this.§#b§.removeChildAt(0), !_loc1_);
               
               return;
            }
            §§goto(addr101);
         }
         §§goto(addr34);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§;e§ = param1;
            if(_loc2_ || _loc2_)
            {
               addr43:
               this.§4&§();
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]0§ = param1;
            if(_loc3_ || param1)
            {
               addr29:
               this.§4&§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §4&§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc5_ || this)
               {
                  return;
               }
            }
         }
         var _loc1_:Array = new Array(this.§;e§ + "_" + this.§]0§,this.§;e§ + "_" + §"7§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§]0§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §"7§);
         var _loc2_:int = 0;
         for(; _loc2_ < _loc1_.length; _loc2_++,if(_loc4_)
         {
            break;
         })
         {
            try
            {
               mClip.gotoAndStop(_loc1_[_loc2_] as String);
               if(!_loc4_)
               {
                  if(mClip.numChildren > 0)
                  {
                     if(_loc5_)
                     {
                        return;
                     }
                     break;
                  }
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(this.§;e§ == §9I§)
         {
            if(_loc3_ || param1)
            {
               return;
            }
            addr122:
            Mouse.cursor = MouseCursor.AUTO;
            addr126:
            this.setComponentVisualState(§#@§);
            §§push(param1);
         }
         else
         {
            super.listenerEventOccured(param1,param2);
            §§push(this.§#l§);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ && param2)
                     {
                     }
                     addr71:
                     if(§§pop())
                     {
                        this.§ P§();
                        if(!(_loc4_ && this))
                        {
                           addr81:
                           §§push(param1);
                           if(!_loc4_)
                           {
                              if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                              {
                                 this.setComponentVisualState(§@&§);
                              }
                              §§push(param1);
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                 {
                                    this.setComponentVisualState(§[!;§);
                                 }
                                 §§push(param1);
                                 if(_loc3_ || param1)
                                 {
                                 }
                                 addr130:
                                 if(§§pop() == §null§)
                                 {
                                    Mouse.cursor = this.§<!'§;
                                    this.setComponentVisualState(§[!;§);
                                    if(!_loc4_)
                                    {
                                       addr141:
                                       this.§;X§(param1 == §null§);
                                    }
                                    return;
                                 }
                                 §§goto(addr141);
                              }
                              if(§§pop() == §@!'§)
                              {
                                 §§goto(addr122);
                              }
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr71);
               }
               §§pop();
               if(_loc3_)
               {
                  §§push(param1);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr71);
                     §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                  }
                  §§goto(addr130);
               }
               §§goto(addr126);
            }
            §§goto(addr71);
         }
         §§goto(addr130);
      }
      
      public function § P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;e§);
            if(!_loc1_)
            {
               §§push(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        this.setComponentState(§`!&§.§3?§);
                        if(_loc1_ && _loc1_)
                        {
                        }
                     }
                     §§goto(addr83);
                  }
                  else
                  {
                     addr69:
                     §§push(this.§;e§);
                     §§push(§`!&§.§3?§);
                  }
                  §§goto(addr83);
               }
               if(§§pop() == §§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     this.setComponentState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr69);
         }
         addr83:
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
               if(_loc6_ || param1)
               {
                  mParentContainer.mClip.removeChild(mClip);
                  if(_loc6_)
                  {
                     addr79:
                     mClip = null;
                     mClip = param1;
                     if(this.mParentContainer)
                     {
                        mParentContainer.mClip.addChildAt(mClip,_loc4_);
                        if(_loc6_)
                        {
                           addr95:
                           mClip.x = _loc2_;
                           if(_loc5_)
                           {
                           }
                           §§goto(addr105);
                        }
                        mClip.y = _loc3_;
                        if(_loc6_)
                        {
                           §§goto(addr105);
                        }
                        addr105:
                        this.§4&§();
                        return;
                     }
                     §§goto(addr95);
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr79);
         }
         §§goto(addr95);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setVisibility(param1);
            if(_loc3_ || param1)
            {
               if(!mClip.visible)
               {
                  if(_loc3_ || _loc3_)
                  {
                  }
               }
               §§goto(addr52);
            }
            this.§;X§(false);
         }
         addr52:
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.onParentVisibilityChange(param1);
            if(!_loc2_)
            {
               addr24:
               if(!param1)
               {
                  if(!_loc2_)
                  {
                     this.§;X§(false);
                  }
               }
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
