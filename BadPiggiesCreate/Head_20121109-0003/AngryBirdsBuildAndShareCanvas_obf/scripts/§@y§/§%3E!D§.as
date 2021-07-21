package §@y§
{
   import §=!7§.§6W§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §>!D§ extends §0"4§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §;!M§:String = "Deactive";
      
      public static const §&!j§:String = "Disabled";
      
      public static const §3!"§:String = "Out";
      
      public static const §64§:String = "Over";
      
      public static const §<U§:String = "Up_Default";
      
      public static const §;H§:String = "Down";
      
      public static var §;@§:Class;
      
      public static var §@!7§:Boolean = true;
      
      public static const §&!y§:String = "Tooltip";
      
      public static var §7!U§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §>!D§))
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            loop0:
            while(true)
            {
               §;!M§ = "Deactive";
               loop1:
               while(true)
               {
                  §&!j§ = "Disabled";
                  while(true)
                  {
                     §3!"§ = "Out";
                     loop3:
                     while(_loc1_)
                     {
                        §64§ = "Over";
                        loop4:
                        while(_loc1_)
                        {
                           §<U§ = "Up_Default";
                           while(_loc1_)
                           {
                              §;H§ = "Down";
                              while(true)
                              {
                                 §@!7§ = true;
                                 addr70:
                                 while(!_loc2_)
                                 {
                                    if(_loc2_ && §>!D§)
                                    {
                                       continue loop3;
                                    }
                                    §&!y§ = "Tooltip";
                                    §§goto(addr48);
                                    continue loop3;
                                 }
                              }
                              loop8:
                              while(_loc1_ || _loc1_)
                              {
                                 while(true)
                                 {
                                    §7!U§ = true;
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop8;
                                    }
                                    if(_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr70);
                                 }
                                 return;
                              }
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public var §-!2§:String;
      
      public var §0@§:String;
      
      public var §`X§:String;
      
      public var §?N§:MovieClip;
      
      public var §3!R§:int = 6;
      
      private var §[!?§:Boolean = false;
      
      private var §`o§:String = "auto";
      
      public function §>!D§(param1:XML, param2:§6W§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param2,param3);
         }
         loop0:
         while(true)
         {
            this.§-!2§ = COMPONENT_STATE_ACTIVE_DEFAULT;
            while(true)
            {
               this.§0@§ = §<U§;
               loop2:
               while(_loc7_)
               {
                  if(_loc6_)
                  {
                     continue loop0;
                  }
                  this.§#!5§();
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        this.§%!4§(param1.@Tooltip);
                        while(param1.@Toggle.toString().toUpperCase() == "TRUE")
                        {
                           if(!(_loc6_ && param3))
                           {
                              if(!_loc6_)
                              {
                                 continue loop3;
                              }
                              continue;
                           }
                           addr48:
                           if(true)
                           {
                              break;
                           }
                           continue loop4;
                        }
                        var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
                        var _loc5_:String = param1.@cursor.toString().toLowerCase();
                        if(!_loc6_)
                        {
                           if(_loc4_.indexOf(_loc5_) > -1)
                           {
                              if(_loc7_ || param2)
                              {
                                 this.§`o§ = _loc5_;
                              }
                           }
                        }
                        return;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public static function §0T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §;@§ = §69§.§ 0§(§&!y§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setActiveStatus(param1);
            while(!param1)
            {
               if(!_loc3_)
               {
                  break;
               }
               addr59:
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               this.setComponentVisualState(§3!"§);
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function §%!4§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§`X§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§`X§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr211:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr214:
                           while(true)
                           {
                              §§push(this.§`X§);
                              addr186:
                              while(!_loc3_)
                              {
                                 §§push(§§pop().length == 0);
                              }
                              continue loop1;
                           }
                        }
                        addr213:
                     }
                     while(true)
                     {
                        addr192:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§`X§ = null;
                                 addr196:
                                 while(true)
                                 {
                                 }
                              }
                              addr193:
                           }
                           while(true)
                           {
                              §§push(this.§`X§);
                              if(!_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       loop17:
                                       while(true)
                                       {
                                          §@!7§ = false;
                                          while(true)
                                          {
                                             §0T§();
                                             addr122:
                                             while(_loc2_)
                                             {
                                                continue loop17;
                                             }
                                          }
                                       }
                                       addr179:
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr24);
                              }
                              break;
                           }
                           §§goto(addr186);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §8!Z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§?N§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!(_loc4_ && _loc1_))
         {
            _loc1_.name = "Text";
            if(!(_loc4_ && _loc2_))
            {
               this.§?N§.addChild(_loc1_);
               addr43:
            }
            var _loc2_:Shape = new Shape();
            if(_loc3_ || _loc2_)
            {
               _loc2_.name = "Base";
               while(true)
               {
                  this.§?N§.addChildAt(_loc2_,0);
                  while(!(_loc4_ && _loc1_))
                  {
                     this.§ !G§(this.§`X§);
                     if(_loc4_ && _loc1_)
                     {
                        continue;
                     }
                     return;
                     addr85:
                  }
               }
            }
            §§goto(addr85);
         }
         §§goto(addr43);
      }
      
      private function §]Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§?N§ = new §;@§();
         }
         do
         {
            this.§8&§(this.§`X§);
         }
         while(_loc1_ && this);
         
      }
      
      public function §8&§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`X§ = param1;
            do
            {
               if(!§;@§)
               {
                  this.§ !G§(param1);
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc3_))
                  {
                     addr20:
                     return;
                     addr54:
                  }
               }
               this.§?!@§(param1);
            }
            while(_loc2_);
            
            §§goto(addr20);
         }
         §§goto(addr54);
      }
      
      private function §?!@§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TextField = this.§?N§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§?N§.getChildByName("Base") as MovieClip;
         if(_loc7_)
         {
            _loc2_.text = this.§`X§;
            while(true)
            {
               loop1:
               while(true)
               {
                  _loc2_.multiline = false;
                  do
                  {
                     _loc2_.width = _loc2_.textWidth * 1.25;
                  }
                  while(!(_loc7_ || param1));
                  
                  if(!(_loc6_ && _loc3_))
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
                     if(!(_loc6_ && _loc3_))
                     {
                        _loc3_.scaleX = _loc4_ / _loc3_.width;
                        if(_loc7_ || _loc3_)
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
                              if(!_loc6_)
                              {
                                 _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                              }
                              else
                              {
                                 _loc5_++;
                                 continue;
                                 addr162:
                              }
                           }
                           if(!_loc6_)
                           {
                              break;
                           }
                           continue;
                        }
                        _loc3_.getChildAt(0).x = 0;
                        §§goto(addr162);
                     }
                     return;
                     addr57:
                  }
                  break;
               }
            }
         }
         §§goto(addr57);
      }
      
      private function § !G§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:TextField = this.§?N§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!_loc6_)
         {
            _loc3_.align = TextAlign.CENTER;
            loop0:
            while(true)
            {
               _loc3_.bold = true;
               addr138:
               while(true)
               {
                  _loc3_.size = 12;
                  loop2:
                  while(true)
                  {
                     _loc2_.defaultTextFormat = _loc3_;
                     loop3:
                     while(true)
                     {
                        _loc2_.border = false;
                        addr113:
                        while(true)
                        {
                           _loc2_.text = this.§`X§;
                           while(!_loc6_)
                           {
                              _loc2_.height = _loc2_.textHeight * 1.25;
                              while(_loc5_ || this)
                              {
                                 continue loop0;
                                 while(!(_loc6_ && this))
                                 {
                                    continue loop3;
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc2_.textColor = 0;
            while(!_loc6_)
            {
               if(!_loc6_)
               {
                  while(true)
                  {
                     _loc2_.selectable = false;
                     while(true)
                     {
                        if(_loc5_)
                        {
                           _loc2_.mouseEnabled = false;
                           if(_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr64);
                     }
                     if(!_loc5_)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     var _loc4_:Shape;
                     (_loc4_ = this.§?N§.getChildByName("Base") as Shape).graphics.clear();
                     if(_loc5_ || _loc2_)
                     {
                        _loc4_.graphics.lineStyle(1);
                        loop12:
                        while(true)
                        {
                           _loc4_.graphics.beginFill(0,1);
                           loop13:
                           while(true)
                           {
                              _loc4_.graphics.drawRect(-this.§3!R§,-this.§3!R§,_loc2_.width + 2 * this.§3!R§,_loc2_.height + 2 * this.§3!R§);
                              loop14:
                              while(true)
                              {
                                 _loc4_.graphics.beginFill(16777215,1);
                                 loop15:
                                 while(!_loc6_)
                                 {
                                    while(true)
                                    {
                                       _loc4_.graphics.drawRect(-this.§3!R§ / 2,-(this.§3!R§ / 2),_loc2_.width + 1 * this.§3!R§,_loc2_.height + 1 * this.§3!R§);
                                       if(_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop13;
                                          }
                                          continue loop14;
                                       }
                                       continue loop15;
                                    }
                                    return;
                                 }
                                 continue loop12;
                              }
                           }
                        }
                     }
                     §§goto(addr215);
                  }
                  continue;
               }
               §§goto(addr138);
            }
            §§goto(addr113);
         }
      }
      
      private function §4!<§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!_loc4_)
         {
            §§push(!this.§?N§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr122:
                        while(true)
                        {
                           §§push(this.§`X§);
                           addr105:
                           while(true)
                           {
                              §§push(§§pop() == null);
                           }
                        }
                     }
                     addr121:
                  }
                  while(true)
                  {
                     addr108:
                     loop6:
                     while(true)
                     {
                        §§push(§§pop());
                        addr109:
                        while(!_loc4_)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr113:
                                 while(_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§`X§);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop().length == 0);
                                    }
                                    §§goto(addr105);
                                 }
                                 §§goto(addr122);
                              }
                              addr112:
                           }
                           while(true)
                           {
                              addr90:
                              addr127:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       return;
                                    }
                                 }
                                 §§push(param1);
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr126:
                              if(§§pop())
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr135:
                                    _loc2_ = mClip.getRect(getParentView());
                                    if(_loc5_)
                                    {
                                       this.§?N§.y = _loc2_.y - this.§?N§.height - this.§3!R§;
                                       if(_loc5_ || param1)
                                       {
                                          this.§?N§.x = _loc2_.x + mClip.width / 2 - this.§?N§.width / 2;
                                          addr162:
                                       }
                                       _loc3_ = this.§?N§.getRect(mClip.stage);
                                       if(_loc5_ || param1)
                                       {
                                          if(_loc3_.right > mClip.stage.stageWidth - this.§3!R§)
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                this.§?N§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§3!R§));
                                             }
                                             while(true)
                                             {
                                                loop19:
                                                for(; _loc5_ || _loc3_; if(!(_loc5_ || _loc3_))
                                                {
                                                   continue;
                                                },addr252:,if(!(_loc4_ && this))
                                                {
                                                   §§goto(addr203);
                                                },while(true)
                                                {
                                                   this.§?N§.x += 1 + (this.§3!R§ - _loc3_.left);
                                                   §§goto(addr318);
                                                   §§goto(addr252);
                                                },addr304:)
                                                {
                                                   this.§?N§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§3!R§));
                                                   while(!_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr219);
                                                      }
                                                   }
                                                   loop17:
                                                   while(true)
                                                   {
                                                      addr260:
                                                      while(true)
                                                      {
                                                         if(_loc3_.bottom > mClip.stage.stageHeight - this.§3!R§)
                                                         {
                                                            continue loop19;
                                                         }
                                                         addr219:
                                                         addr369:
                                                         do
                                                         {
                                                            if(_loc3_.top >= this.§3!R§)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§?N§.visible = true;
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!(_loc4_ && param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr225:
                                                                     while(true)
                                                                     {
                                                                        this.§?N§.y += mClip.height + this.§?N§.height + this.§3!R§ * 2;
                                                                     }
                                                                  }
                                                                  while(_loc5_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  continue loop20;
                                                               }
                                                               continue;
                                                               addr203:
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         while(false);
                                                         
                                                         return;
                                                         continue loop17;
                                                      }
                                                   }
                                                }
                                             }
                                             addr363:
                                          }
                                          while(true)
                                          {
                                             if(_loc3_.left < this.§3!R§)
                                             {
                                                §§goto(addr304);
                                             }
                                             §§goto(addr260);
                                             §§goto(addr363);
                                          }
                                       }
                                       §§goto(addr297);
                                    }
                                    §§goto(addr162);
                                 }
                              }
                              else
                              {
                                 this.§?N§.visible = false;
                              }
                              §§goto(addr369);
                           }
                           continue loop6;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§?N§)
            {
               if(_loc1_ || _loc1_)
               {
                  this.§`X§ = null;
                  addr120:
                  while(true)
                  {
                     if(this.§?N§.numChildren <= 0)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc1_)
                           {
                              continue;
                           }
                           if(this.§?N§.parent)
                           {
                              if(!(_loc2_ && this))
                              {
                                 this.§?N§.parent.removeChild(this.§?N§);
                                 break;
                              }
                              break;
                           }
                           while(true)
                           {
                              this.§?N§ = null;
                              while(true)
                              {
                                 §§goto(addr28);
                              }
                           }
                        }
                        break;
                     }
                     this.§?N§.removeChildAt(0);
                  }
                  while(true)
                  {
                     §§goto(addr46);
                  }
                  addr120:
               }
               §§goto(addr120);
            }
            addr28:
            while(true)
            {
               super.clear();
               if(_loc1_ || _loc2_)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     break;
                  }
                  break loop1;
               }
               continue loop4;
            }
            return;
         }
         §§goto(addr120);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§-!2§ = param1;
         }
         do
         {
            this.§#!5§();
         }
         while(!(_loc3_ || this));
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§0@§ = param1;
         }
         do
         {
            this.§#!5§();
         }
         while(!(_loc2_ || this));
         
      }
      
      public function §#!5§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc1_)
         {
            if(mClip.totalFrames < 2)
            {
               if(!(_loc5_ && _loc1_))
               {
                  §§goto(addr34);
               }
            }
            var _loc1_:Array = new Array(this.§-!2§ + "_" + this.§0@§,this.§-!2§ + "_" + §<U§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§0@§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §<U§);
            var _loc2_:int = 0;
            while(_loc2_ < _loc1_.length)
            {
               try
               {
                  mClip.gotoAndStop(_loc1_[_loc2_] as String);
                  if(!_loc5_)
                  {
                     if(mClip.numChildren > 0)
                     {
                        if(!(_loc5_ && this))
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
               }
               _loc2_++;
               if(!_loc4_)
               {
                  break;
               }
            }
            return;
         }
         addr34:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§-!2§ != §&!j§)
            {
               loop0:
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  loop1:
                  while(true)
                  {
                     §§push(this.§[!?§);
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc3_ || param2)
                        {
                           if(§§pop())
                           {
                              loop23:
                              while(true)
                              {
                                 §§pop();
                                 addr201:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr176:
                                    while(true)
                                    {
                                       §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    continue loop23;
                                 }
                              }
                              addr200:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    this.§@o§();
                                    addr186:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr184:
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                    {
                                       loop8:
                                       while(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             this.setComponentVisualState(§;H§);
                                             while(true)
                                             {
                                                loop16:
                                                while(_loc3_ || this)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      return;
                                                   }
                                                   addr222:
                                                   this.setComponentVisualState(§3!"§);
                                                   loop17:
                                                   while(!(_loc4_ && _loc3_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(_loc4_ && param2)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(_loc4_ && this)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            if(§§pop() != §2!-§)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§4!<§(param1 == §2!-§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     loop22:
                                                                     while(_loc4_ && param1)
                                                                     {
                                                                        while(!_loc4_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 Mouse.cursor = this.§`o§;
                                                                              }
                                                                              addr79:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 Mouse.cursor = MouseCursor.AUTO;
                                                                                 continue loop16;
                                                                              }
                                                                              addr126:
                                                                           }
                                                                           continue loop22;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr184);
                                                                     addr45:
                                                                  }
                                                                  while(!_loc4_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  continue loop16;
                                                               }
                                                               addr33:
                                                               if(_loc3_ || param1)
                                                               {
                                                                  return;
                                                               }
                                                               addr161:
                                                               while(true)
                                                               {
                                                                  addr115:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     continue loop7;
                                                                  }
                                                                  §§goto(addr33);
                                                               }
                                                            }
                                                            §§goto(addr75);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr176);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                                         {
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  continue loop8;
                                                               }
                                                               this.setComponentVisualState(§64§);
                                                            }
                                                            §§goto(addr161);
                                                         }
                                                         §§goto(addr115);
                                                         §§goto(addr64);
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr201);
                                          }
                                       }
                                       §§goto(addr186);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr142);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr200);
                     }
                  }
               }
            }
            §§goto(addr222);
         }
         §§goto(addr79);
      }
      
      public function §@o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§-!2§);
            loop0:
            while(true)
            {
               §§push(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
               while(§§pop() != §§pop())
               {
                  §§push(this.§-!2§);
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
                  §§push(§>!D§.§;!M§);
                  if(_loc1_)
                  {
                     continue;
                  }
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           this.setComponentState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           addr54:
                           if(!(_loc1_ && this))
                           {
                              §§goto(addr20);
                           }
                           break;
                        }
                        addr20:
                        return;
                        addr81:
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr20);
               }
            }
         }
         this.setComponentState(§>!D§.§;!M§);
         §§goto(addr81);
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
         if(!(_loc5_ && _loc2_))
         {
            super.changeMovieClip(param1);
         }
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(_loc6_ || this)
         {
            if(this.mParentContainer)
            {
               if(!(_loc5_ && _loc3_))
               {
                  addr146:
                  mParentContainer.mClip.removeChild(mClip);
               }
               while(true)
               {
               }
               addr150:
            }
            while(true)
            {
               mClip = null;
               loop2:
               while(!_loc5_)
               {
                  mClip = param1;
                  loop3:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        if(this.mParentContainer)
                        {
                           if(!(_loc6_ || _loc3_))
                           {
                              while(true)
                              {
                                 break loop3;
                              }
                           }
                           else
                           {
                              addr111:
                              addr77:
                           }
                           continue;
                           return;
                        }
                        break;
                     }
                     continue loop2;
                  }
                  while(true)
                  {
                     mClip.x = _loc2_;
                     do
                     {
                        mClip.y = _loc3_;
                        do
                        {
                           this.§#!5§();
                        }
                        while(!_loc6_);
                        
                     }
                     while(_loc5_);
                     
                     if(_loc5_ && this)
                     {
                        §§goto(addr111);
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr150);
            }
         }
         §§goto(addr146);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setVisibility(param1);
            while(!mClip.visible)
            {
               if(_loc2_)
               {
                  this.§4!<§(false);
               }
               if(_loc2_ || _loc3_)
               {
                  addr59:
                  break;
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.onParentVisibilityChange(param1);
            while(!param1)
            {
               if(_loc3_ && _loc2_)
               {
                  break;
               }
               addr63:
               if(!_loc2_)
               {
                  continue;
               }
               addr60:
               this.§4!<§(false);
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr60);
      }
   }
}
