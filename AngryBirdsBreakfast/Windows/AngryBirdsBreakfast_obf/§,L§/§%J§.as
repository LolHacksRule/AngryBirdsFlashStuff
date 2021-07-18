package §,L§
{
   import §-!;§.§>!B§;
   import §0"$§.§"!a§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.rovio.assets.§<V§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §%J§ extends §;[§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §2!r§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §%!N§:String = "Out";
      
      public static const §;!t§:String = "Over";
      
      public static const §6!y§:String = "Up_Default";
      
      public static const §%!$§:String = "Down";
      
      public static var §=!I§:Class;
      
      public static var §-K§:Boolean = true;
      
      public static const §]n§:String = "Tooltip";
      
      public static var §+;§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            loop0:
            while(true)
            {
               §2!r§ = "Deactive";
               loop1:
               while(true)
               {
                  COMPONENT_STATE_DISABLED = "Disabled";
                  loop2:
                  while(true)
                  {
                     §%!N§ = "Out";
                     addr110:
                     while(true)
                     {
                        §;!t§ = "Over";
                     }
                     addr55:
                     if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     }
                     §+;§ = true;
                     addr72:
                     if(!(_loc2_ && _loc2_))
                     {
                        addr39:
                        if(_loc2_ && _loc1_)
                        {
                           loop5:
                           for(; _loc1_; §§goto(addr39))
                           {
                              §%!$§ = "Down";
                              loop6:
                              while(true)
                              {
                                 if(_loc1_ || §%J§)
                                 {
                                    §-K§ = true;
                                    loop7:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             §]n§ = "Tooltip";
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr55);
                                                §§goto(addr72);
                                             }
                                             continue loop2;
                                             addr53:
                                          }
                                          continue loop0;
                                       }
                                       continue loop6;
                                    }
                                    continue loop1;
                                 }
                                 addr105:
                                 while(true)
                                 {
                                    §6!y§ = "Up_Default";
                                    continue loop5;
                                 }
                              }
                           }
                           §§goto(addr110);
                        }
                        if(!_loc2_)
                        {
                           return;
                        }
                        continue loop1;
                     }
                     §§goto(addr53);
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      public var §<6§:String;
      
      public var §%N§:String;
      
      public var §>G§:String;
      
      public var §42§:MovieClip;
      
      public var §>B§:int = 6;
      
      private var §0v§:Boolean = false;
      
      private var §3V§:String = "auto";
      
      private var §4!+§:§0]§;
      
      public function §%J§(param1:XML, param2:§"!a§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:Array = null;
         if(_loc6_ || param1)
         {
            super(param1,param2,param3);
            while(true)
            {
               this.§<6§ = COMPONENT_STATE_ACTIVE_DEFAULT;
            }
            addr101:
         }
         while(true)
         {
            this.§%N§ = §6!y§;
            while(_loc6_ || this)
            {
               this.§^!%§();
               loop3:
               for(; !_loc7_; while(true)
               {
                  if(_loc7_ && this)
                  {
                     continue loop3;
                  }
                  if(_loc6_)
                  {
                     if(param1.@Toggle.toString().toUpperCase() == "TRUE")
                     {
                        if(_loc6_ || param2)
                        {
                           this.§0v§ = true;
                        }
                        if(_loc7_)
                        {
                           continue;
                        }
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr48);
                     }
                     break;
                  }
                  §§goto(addr101);
               },var _loc4_:String,if(_loc4_ = param1.@cursor.toString().toLowerCase())
               {
                  if(_loc6_ || param1)
                  {
                     if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
                     {
                        if(!(_loc7_ && param2))
                        {
                           this.§3V§ = _loc4_;
                           addr145:
                           §9E§(§,!y§,param1.@MouseOver);
                           if(!(_loc7_ && param1))
                           {
                              §9E§(§-g§,param1.@MouseOut);
                           }
                        }
                     }
                     §§goto(addr145);
                  }
                  return;
               },§§goto(addr145))
               {
                  while(true)
                  {
                     this.§&!+§(param1.@Tooltip);
                     continue loop3;
                  }
               }
            }
         }
      }
      
      public static function §3!J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §=!I§ = §<V§.§"!,§(§]n§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setActiveStatus(param1);
         }
         while(!param1)
         {
            if(!_loc2_)
            {
               this.setComponentVisualState(§%!N§);
            }
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function §&!+§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§>G§ = param1;
            while(true)
            {
               §§push(this.§>G§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr220:
                           while(true)
                           {
                              §§push(this.§>G§);
                              addr190:
                              while(true)
                              {
                                 §§push(§§pop().length == 0);
                                 addr193:
                                 while(_loc3_)
                                 {
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        addr219:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              this.§>G§ = null;
                              addr202:
                              while(true)
                              {
                              }
                              addr202:
                           }
                           §§goto(addr202);
                        }
                        loop8:
                        while(true)
                        {
                           §§push(this.§>G§);
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§-K§);
                                       if(!(_loc2_ && param1))
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                loop10:
                                                for(; _loc3_ || this; while(true)
                                                {
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      continue loop10;
                                                   }
                                                   this.§=l§();
                                                   §§goto(addr134);
                                                })
                                                {
                                                   §-K§ = false;
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §3!J§();
                                                      addr151:
                                                      loop12:
                                                      while(true)
                                                      {
                                                         addr134:
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(_loc2_ && _loc2_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            loop16:
                                                            while(true)
                                                            {
                                                               this.§42§.mouseEnabled = false;
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  this.§42§.mouseChildren = false;
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     continue loop21;
                                                                     addr52:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc3_ || _loc2_))
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        addr61:
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        addr147:
                                                                        addr75:
                                                                        while(true)
                                                                        {
                                                                           if(§=!I§)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           this.§'" §();
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc2_ && param1))
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              continue loop10;
                                                                              addr37:
                                                                              if(!(_loc3_ || _loc2_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§goto(addr25);
                                                                              }
                                                                              §§goto(addr220);
                                                                           }
                                                                           §§goto(addr61);
                                                                        }
                                                                        getParentView().addChild(this.§42§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr37);
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                            addr141:
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop8;
                                             }
                                             while(true)
                                             {
                                                this.§42§ = new MovieClip();
                                                §§goto(addr147);
                                                §§goto(addr151);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr219);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr193);
                                 }
                                 addr25:
                              }
                              continue loop1;
                              return;
                           }
                           break;
                        }
                        §§goto(addr190);
                     }
                  }
               }
            }
         }
         §§goto(addr202);
      }
      
      private function §'" §() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            this.§42§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!_loc3_)
         {
            _loc1_.name = "Text";
            if(!_loc3_)
            {
               addr49:
               this.§42§.addChild(_loc1_);
            }
            var _loc2_:Shape = new Shape();
            if(!_loc3_)
            {
               _loc2_.name = "Base";
               while(true)
               {
                  this.§42§.addChildAt(_loc2_,0);
                  while(_loc4_)
                  {
                     this.§0!W§(this.§>G§);
                     if(!(_loc3_ && _loc1_))
                     {
                        return;
                        addr76:
                     }
                  }
               }
            }
            §§goto(addr76);
         }
         §§goto(addr49);
      }
      
      private function §=l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§42§ = new §=!I§();
         }
         do
         {
            this.§1!X§(this.§>G§);
         }
         while(!_loc1_);
         
      }
      
      public function §1!X§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>G§ = param1;
         }
         do
         {
            if(!§=!I§)
            {
               this.§0!W§(param1);
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               if(!(_loc2_ && this))
               {
                  §§goto(addr20);
               }
            }
            this.§>!U§(param1);
         }
         while(!_loc3_);
         
         addr20:
      }
      
      private function §>!U§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TextField = this.§42§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§42§.getChildByName("Base") as MovieClip;
         if(_loc7_ || this)
         {
            _loc2_.text = this.§>G§;
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
                  while(!_loc7_);
                  
                  if(!(_loc7_ || param1))
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
                  if(_loc7_ || this)
                  {
                     _loc3_.scaleX = _loc4_ / _loc3_.width;
                     if(_loc7_)
                     {
                        addr106:
                        _loc3_.x = 0;
                     }
                     var _loc5_:int = 0;
                     while(true)
                     {
                        if(_loc5_ >= _loc3_.numChildren)
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           if(_loc7_)
                           {
                              _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                              break;
                           }
                           loop5:
                           while(_loc6_ && _loc2_)
                           {
                              while(true)
                              {
                                 _loc5_++;
                                 continue loop5;
                              }
                           }
                           continue;
                        }
                        _loc3_.getChildAt(0).x = 0;
                        §§goto(addr162);
                     }
                     return;
                  }
                  §§goto(addr106);
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §0!W§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:TextField = this.§42§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!_loc6_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            while(true)
            {
               _loc3_.bold = true;
               loop1:
               while(true)
               {
                  _loc3_.size = 12;
                  loop2:
                  while(true)
                  {
                     _loc2_.defaultTextFormat = _loc3_;
                     while(true)
                     {
                        _loc2_.border = false;
                        while(!_loc6_)
                        {
                           _loc2_.text = this.§>G§;
                           loop5:
                           while(true)
                           {
                              _loc2_.height = _loc2_.textHeight * 1.25;
                              while(true)
                              {
                                 _loc2_.width = _loc2_.textWidth * 1.25;
                                 addr85:
                                 while(_loc5_ || _loc2_)
                                 {
                                    _loc2_.textColor = 0;
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        continue loop2;
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           continue loop1;
                        }
                        while(false)
                        {
                           §§goto(addr59);
                        }
                        var _loc4_:Shape;
                        (_loc4_ = this.§42§.getChildByName("Base") as Shape).graphics.clear();
                        if(_loc5_)
                        {
                           _loc4_.graphics.lineStyle(1);
                        }
                        loop12:
                        while(true)
                        {
                           _loc4_.graphics.beginFill(0,1);
                           loop13:
                           do
                           {
                              _loc4_.graphics.drawRect(-this.§>B§,-this.§>B§,_loc2_.width + 2 * this.§>B§,_loc2_.height + 2 * this.§>B§);
                              while(true)
                              {
                                 _loc4_.graphics.beginFill(16777215,1);
                                 while(_loc5_ || this)
                                 {
                                    continue loop12;
                                    _loc4_.graphics.drawRect(-this.§>B§ / 2,-(this.§>B§ / 2),_loc2_.width + 1 * this.§>B§,_loc2_.height + 1 * this.§>B§);
                                    if(_loc5_ || _loc3_)
                                    {
                                       continue loop13;
                                    }
                                 }
                              }
                           }
                           while(_loc6_ && _loc2_);
                           
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §2" §(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!_loc4_)
         {
            §§push(!this.§42§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        §§push(this.§>G§);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop() == null);
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop9:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       addr95:
                                       if(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr98:
                                             while(true)
                                             {
                                                addr57:
                                                while(true)
                                                {
                                                   §§push(this.§>G§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop().length == 0);
                                                      while(_loc5_)
                                                      {
                                                      }
                                                      continue loop0;
                                                      addr65:
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr95);
                                          }
                                          addr97:
                                       }
                                       addr112:
                                       if(§§pop())
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             _loc2_ = mClip.getRect(getParentView());
                                             if(_loc5_ || param1)
                                             {
                                                this.§42§.y = _loc2_.y - this.§42§.height - this.§>B§;
                                                if(_loc5_ || _loc3_)
                                                {
                                                   this.§42§.x = _loc2_.x + mClip.width / 2 - this.§42§.width / 2;
                                                   addr152:
                                                }
                                                _loc3_ = this.§42§.getRect(mClip.stage);
                                                if(_loc5_ || param1)
                                                {
                                                   if(_loc3_.right > mClip.stage.stageWidth - this.§>B§)
                                                   {
                                                      this.§42§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§>B§));
                                                      addr333:
                                                      addr305:
                                                   }
                                                   if(_loc3_.left < this.§>B§)
                                                   {
                                                      addr281:
                                                      this.§42§.x += 1 + (this.§>B§ - _loc3_.left);
                                                   }
                                                   if(_loc3_.bottom > mClip.stage.stageHeight - this.§>B§)
                                                   {
                                                      addr249:
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         this.§42§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§>B§));
                                                         addr212:
                                                         addr274:
                                                         if(_loc3_.top < this.§>B§)
                                                         {
                                                            addr218:
                                                            this.§42§.y += mClip.height + this.§42§.height + this.§>B§ * 2;
                                                            if(!_loc4_)
                                                            {
                                                               addr193:
                                                               this.§42§.visible = true;
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr212);
                                                                                 }
                                                                                 §§goto(addr339);
                                                                              }
                                                                              §§goto(addr333);
                                                                           }
                                                                        }
                                                                        §§goto(addr281);
                                                                     }
                                                                     §§goto(addr249);
                                                                  }
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr305);
                                                   }
                                                   §§goto(addr212);
                                                }
                                                §§goto(addr218);
                                             }
                                             §§goto(addr152);
                                          }
                                       }
                                       else
                                       {
                                          this.§42§.visible = false;
                                       }
                                       §§goto(addr339);
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(param1);
                                          if(_loc5_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc5_)
                                             {
                                             }
                                             break;
                                          }
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§pop();
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr69);
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               if(true)
                                                               {
                                                                  §§push(§+;§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr98);
                                                            }
                                                            §§goto(addr57);
                                                         }
                                                         addr339:
                                                         return;
                                                      }
                                                      break;
                                                   }
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr65);
                                       }
                                       §§goto(addr69);
                                    }
                                    §§goto(addr112);
                                 }
                              }
                              addr92:
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr92);
               }
            }
         }
         addr69:
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<6§ = COMPONENT_STATE_DISABLED;
         }
         loop0:
         while(this.§42§)
         {
            if(_loc1_ || this)
            {
               this.§>G§ = null;
            }
            if(!_loc2_)
            {
               while(true)
               {
                  if(this.§42§.numChildren > 0)
                  {
                     this.§42§.removeChildAt(0);
                     continue;
                  }
                  if(_loc1_ || _loc2_)
                  {
                     if(this.§42§.parent)
                     {
                        while(true)
                        {
                           this.§42§.parent.removeChild(this.§42§);
                           addr88:
                           while(true)
                           {
                           }
                        }
                        addr82:
                     }
                     while(true)
                     {
                        this.§42§ = null;
                        addr47:
                        while(true)
                        {
                           if(_loc1_ || this)
                           {
                              break loop0;
                           }
                        }
                        §§goto(addr88);
                     }
                     addr40:
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr82);
               }
               return;
            }
         }
         while(true)
         {
            super.clear();
            if(!(_loc2_ && this))
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr40);
               }
               §§goto(addr88);
            }
            §§goto(addr47);
         }
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§<6§ = param1;
         }
         do
         {
            this.§^!%§();
         }
         while(_loc3_);
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(Boolean(§^!D§));
            if(!(_loc2_ && param1))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop23:
                     while(true)
                     {
                        addr210:
                        §§push(Boolean(§+!>§));
                        if(_loc2_)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(param1);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§;!t§);
                                    loop3:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(param1);
                                       if(_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(§%!N§);
                                       if(!(_loc3_ || this))
                                       {
                                          continue;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(this.§4!+§);
                                                if(!_loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§push(null);
                                                         if(!(_loc2_ && this))
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               if(!(_loc2_ && param1))
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(_loc2_ && this)
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                        §§push(this.§4!+§);
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              §§pop().stop();
                                                                              while(true)
                                                                              {
                                                                                 addr89:
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§4!+§ = §'^§.§2Z§.§!!f§(mClip,{
                                                                                       "scaleX":§+!>§.scaleX,
                                                                                       "scaleY":§+!>§.scaleY
                                                                                    },null,0.1);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§4!+§);
                                                                                       if(!(_loc2_ && param1))
                                                                                       {
                                                                                          §§pop().play();
                                                                                          while(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr56);
                                                                                             }
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr183:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop().play();
                                                                                 addr188:
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr56);
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              addr187:
                                                                           }
                                                                           §§goto(addr56);
                                                                        }
                                                                        addr175:
                                                                     }
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        addr189:
                                                                        addr233:
                                                                        while(true)
                                                                        {
                                                                           this.§4!+§ = §'^§.§2Z§.§!!f§(mClip,{
                                                                              "scaleX":§+!>§.scaleX + 0.1,
                                                                              "scaleY":§+!>§.scaleY + 0.1
                                                                           },null,0.1);
                                                                        }
                                                                        addr233:
                                                                        while(true)
                                                                        {
                                                                           §§pop().stop();
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr187);
                                                                  }
                                                               }
                                                               §§goto(addr183);
                                                            }
                                                            §§goto(addr89);
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr233);
                                                               }
                                                               addr231:
                                                            }
                                                            §§goto(addr189);
                                                         }
                                                         addr230:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr230);
                                                      }
                                                      addr229:
                                                   }
                                                   §§goto(addr233);
                                                }
                                                §§goto(addr175);
                                             }
                                             §§goto(addr188);
                                          }
                                          continue loop23;
                                       }
                                       §§goto(addr56);
                                    }
                                    while(true)
                                    {
                                       if(_loc2_ && _loc3_)
                                       {
                                          continue loop23;
                                       }
                                       §§goto(addr229);
                                       §§push(this.§4!+§);
                                    }
                                    §§goto(addr210);
                                 }
                              }
                           }
                           addr56:
                           addr55:
                           while(true)
                           {
                              this.§%N§ = param1;
                              while(!_loc2_)
                              {
                                 continue loop10;
                                 this.§^!%§();
                                 if(_loc3_)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop11;
                           }
                           return;
                           continue loop23;
                        }
                     }
                  }
                  addr256:
               }
               §§goto(addr215);
            }
            §§goto(addr256);
         }
         §§goto(addr88);
      }
      
      public function §^!%§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(mClip == null);
            if(_loc3_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || this)
                  {
                     addr37:
                     §§pop();
                     addr58:
                     if(!(_loc4_ && _loc1_))
                     {
                        §§push(mClip.totalFrames < 2);
                     }
                     §§push(this.§<6§ + "_");
                     if(_loc3_ || _loc3_)
                     {
                        §§push(this.§%N§);
                        if(!_loc4_)
                        {
                           addr74:
                           §§push(§§pop() + §§pop());
                           §§push(this.§<6§);
                        }
                        §§push(§§pop() + "_");
                        if(_loc3_ || this)
                        {
                           §§push(§§pop() + §6!y§);
                        }
                        var _loc1_:Array = null;
                        if(_loc3_)
                        {
                           if(this.§<6§ != COMPONENT_STATE_ACTIVE_DEFAULT)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§%N§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §6!y§);
                              }
                           }
                        }
                        var _loc2_:int = 0;
                        while(true)
                        {
                           if(_loc2_ >= _loc1_.length)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 addr146:
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 addr174:
                              }
                              return;
                           }
                           if(this.§1!]§(_loc1_[_loc2_]))
                           {
                              break;
                           }
                           _loc2_++;
                           §§goto(addr146);
                        }
                        mClip.gotoAndStop(String(_loc1_[_loc2_]));
                        §§goto(addr174);
                     }
                     §§goto(addr74);
                  }
               }
               if(§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     return;
                  }
                  §§goto(addr58);
               }
               §§goto(addr58);
            }
         }
         §§goto(addr37);
      }
      
      private function §1!]§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:FrameLabel = null;
         var _loc3_:int = 0;
         var _loc4_:* = mClip.currentLabels;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(_loc5_ || _loc2_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §>!B§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(this.§<6§ != COMPONENT_STATE_DISABLED)
            {
               loop0:
               while(true)
               {
                  §§push(this.§0v§);
                  if(!(_loc4_ && param2))
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc3_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           loop23:
                           while(true)
                           {
                              §§pop();
                              addr218:
                              while(true)
                              {
                                 addr176:
                                 §§push(param1 == LISTENER_EVENT_MOUSE_UP);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop23;
                              }
                           }
                           addr217:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop2:
                              while(true)
                              {
                                 this.§^!$§();
                                 loop3:
                                 while(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop6:
                                       while(!(_loc4_ && param2))
                                       {
                                          if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                          {
                                             loop7:
                                             while(!(_loc4_ && this))
                                             {
                                                this.setComponentVisualState(§%!$§);
                                                loop8:
                                                while(!(_loc4_ && _loc3_))
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         this.setComponentVisualState(§%!N§);
                                                         loop17:
                                                         while(_loc3_)
                                                         {
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               if(_loc3_)
                                                               {
                                                                  if(§§pop() == §,!y§)
                                                                  {
                                                                     loop19:
                                                                     for(; !_loc4_; if(!(_loc4_ && this))
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           return super.listenerUIEventOccured(param1,param2);
                                                                        }
                                                                        continue loop17;
                                                                     })
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!(_loc3_ || _loc3_))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           Mouse.cursor = this.§3V§;
                                                                           while(true)
                                                                           {
                                                                              this.setComponentVisualState(§;!t§);
                                                                              addr61:
                                                                              while(!_loc4_)
                                                                              {
                                                                              }
                                                                              continue loop3;
                                                                              addr40:
                                                                              if(!(_loc4_ && param2))
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr99:
                                                                           while(_loc3_ || param2)
                                                                           {
                                                                              Mouse.cursor = MouseCursor.AUTO;
                                                                              break loop19;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              addr93:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 break loop18;
                                                                              }
                                                                              §§goto(addr99);
                                                                           }
                                                                           addr99:
                                                                           addr144:
                                                                        }
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§2" §(param1 == §,!y§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr40);
                                                                     }
                                                                     §§goto(addr61);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            while(!_loc4_)
                                                            {
                                                               if(§§pop() != §-g§)
                                                               {
                                                                  §§goto(addr64);
                                                               }
                                                               §§goto(addr99);
                                                            }
                                                            addr64:
                                                            while(!_loc4_)
                                                            {
                                                               if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                                               {
                                                                  break loop17;
                                                               }
                                                               §§goto(addr93);
                                                            }
                                                            continue loop6;
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            this.setComponentVisualState(§;!t§);
                                                            §§goto(addr144);
                                                         }
                                                         §§goto(addr166);
                                                         continue loop7;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                                return null;
                                             }
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr130);
                                          }
                                       }
                                       §§goto(addr176);
                                    }
                                 }
                                 §§goto(addr218);
                              }
                           }
                           §§goto(addr145);
                        }
                     }
                  }
                  §§goto(addr217);
               }
            }
         }
         §§goto(addr223);
      }
      
      public function §^!$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§<6§);
            loop0:
            while(true)
            {
               §§push(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr78:
               addr24:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     continue loop0;
                  }
                  if(_loc1_ || this)
                  {
                     this.setComponentState(§%J§.§2!r§);
                  }
               }
               return;
            }
         }
         §§goto(addr100);
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.setEnabled(param1,param2);
         }
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc2_))
         {
            super.changeMovieClip(param1);
         }
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(!(_loc6_ && _loc2_))
         {
            if(this.mParentContainer)
            {
               if(_loc5_)
               {
                  mParentContainer.mClip.removeChild(mClip);
                  addr149:
                  while(true)
                  {
                  }
                  addr149:
               }
               §§goto(addr149);
            }
            loop0:
            while(true)
            {
               mClip = null;
               loop1:
               while(true)
               {
                  mClip = param1;
                  loop2:
                  while(true)
                  {
                     if(this.mParentContainer)
                     {
                        continue;
                     }
                     loop5:
                     while(true)
                     {
                        mClip.x = _loc2_;
                        addr86:
                        addr110:
                        while(_loc5_ || this)
                        {
                           mClip.y = _loc3_;
                           while(_loc5_)
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 this.§^!%§();
                                 if(!_loc6_)
                                 {
                                    return;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop2;
                           }
                        }
                        while(_loc5_ || param1)
                        {
                           if(!_loc6_)
                           {
                              continue loop5;
                           }
                           continue loop0;
                           §§goto(addr86);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr149);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.setVisibility(param1);
         }
         while(!mClip.visible)
         {
            if(_loc2_ || param1)
            {
               this.§2" §(false);
            }
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.onParentVisibilityChange(param1);
            while(!param1)
            {
               if(!(_loc2_ && this))
               {
                  this.§2" §(false);
               }
               if(!(_loc2_ && param1))
               {
                  addr64:
                  break;
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§4!+§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     addr70:
                     this.§4!+§.stop();
                  }
                  while(true)
                  {
                     §§goto(addr24);
                  }
               }
               addr24:
               while(true)
               {
                  super.viewWidth = param1;
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§4!+§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr70:
                     this.§4!+§.stop();
                  }
                  while(true)
                  {
                     §§goto(addr24);
                  }
               }
               addr24:
               §§goto(addr45);
            }
            §§goto(addr70);
         }
         addr45:
         while(true)
         {
            super.viewHeight = param1;
            if(!(_loc2_ && param1))
            {
               break;
            }
            continue loop0;
         }
      }
   }
}
