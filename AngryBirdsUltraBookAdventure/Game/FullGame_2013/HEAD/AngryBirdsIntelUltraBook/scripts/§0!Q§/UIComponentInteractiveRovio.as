package §0!Q§
{
   import §6a§.UIContainerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class UIComponentInteractiveRovio extends UIComponentRovio
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §3B§:String = "Deactive";
      
      public static const §#!K§:String = "Disabled";
      
      public static const § e§:String = "Out";
      
      public static const §@=§:String = "Over";
      
      public static const §!!-§:String = "Up_Default";
      
      public static const §,r§:String = "Down";
      
      public static var §%P§:Class;
      
      public static var §^!,§:Boolean = true;
      
      public static const §#!b§:String = "Tooltip";
      
      public static var §6m§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            loop0:
            while(true)
            {
               §3B§ = "Deactive";
               addr115:
               while(true)
               {
                  §#!K§ = "Disabled";
                  while(true)
                  {
                     § e§ = "Out";
                     loop3:
                     while(_loc1_)
                     {
                        §@=§ = "Over";
                        loop4:
                        while(true)
                        {
                           §!!-§ = "Up_Default";
                           loop5:
                           while(true)
                           {
                              §,r§ = "Down";
                              loop6:
                              while(true)
                              {
                                 §^!,§ = true;
                                 while(_loc1_)
                                 {
                                    continue loop4;
                                    if(_loc1_ || UIComponentInteractiveRovio)
                                    {
                                       if(_loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                return;
                                                addr42:
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §#!b§ = "Tooltip";
            while(!_loc2_)
            {
               §6m§ = true;
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr29);
            }
            §§goto(addr115);
         }
         §§goto(addr42);
      }
      
      public var §0a§:String;
      
      public var §3[§:String;
      
      public var §,!-§:String;
      
      public var §9w§:MovieClip;
      
      public var §^3§:int = 6;
      
      private var §0!>§:Boolean = false;
      
      private var §7!K§:String = "auto";
      
      public function UIComponentInteractiveRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            super(param1,param2,param3);
            while(true)
            {
               this.§0a§ = COMPONENT_STATE_ACTIVE_DEFAULT;
               loop1:
               while(_loc6_)
               {
                  this.§3[§ = §!!-§;
                  loop2:
                  while(true)
                  {
                     this.§2v§();
                     while(_loc6_)
                     {
                        loop4:
                        while(true)
                        {
                           this.§=!2§(param1.@Tooltip);
                           loop5:
                           while(param1.@Toggle.toString().toUpperCase() == "TRUE")
                           {
                              if(!(_loc7_ && this))
                              {
                                 if(!_loc7_)
                                 {
                                    if(!_loc6_)
                                    {
                                       break loop4;
                                    }
                                    continue loop2;
                                 }
                                 continue;
                              }
                              addr52:
                              while(true)
                              {
                                 if(true)
                                 {
                                    break loop5;
                                 }
                                 continue loop4;
                              }
                           }
                           var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
                           var _loc5_:String = param1.@cursor.toString().toLowerCase();
                           if(!_loc7_)
                           {
                              if(_loc4_.indexOf(_loc5_) > -1)
                              {
                                 if(_loc6_)
                                 {
                                    this.§7!K§ = _loc5_;
                                 }
                              }
                           }
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§0!>§ = true;
            §§goto(addr52);
         }
      }
      
      public static function §7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §%P§ = AssetCache.§%p§(§#!b§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.setActiveStatus(param1);
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  this.setComponentVisualState(§ e§);
               }
               break;
            }
            break;
         }
      }
      
      public function §=!2§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§,!-§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§,!-§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc2_ || _loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§,!-§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().length == 0);
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr199:
                                    while(_loc2_)
                                    {
                                    }
                                    continue loop3;
                                    addr166:
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop())
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          §^!,§ = false;
                                          loop15:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                §7§();
                                                loop16:
                                                while(!_loc3_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§9w§ = new MovieClip();
                                                      while(!_loc3_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break loop15;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop15;
                                                         loop23:
                                                         while(_loc2_ || param1)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            addr89:
                                                            loop20:
                                                            while(true)
                                                            {
                                                               this.§9w§.mouseEnabled = false;
                                                               addr66:
                                                               addr112:
                                                               while(_loc2_ || this)
                                                               {
                                                                  this.§9w§.mouseChildren = false;
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        this.§9w§.visible = false;
                                                                        continue;
                                                                     }
                                                                     continue loop23;
                                                                  }
                                                                  continue loop23;
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop20;
                                                                  §§goto(addr66);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop16;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§^!,§);
                                                   addr159:
                                                   while(!(_loc3_ && _loc2_))
                                                   {
                                                      §§goto(addr166);
                                                   }
                                                   §§goto(addr199);
                                                }
                                                addr157:
                                             }
                                             addr203:
                                             while(true)
                                             {
                                                this.§,!-§ = null;
                                                break loop15;
                                             }
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             addr141:
                                             while(true)
                                             {
                                                §§push(this.§,!-§);
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                if(!_loc2_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(Boolean(§§pop()));
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr157);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr24);
                                                   }
                                                }
                                                §§goto(addr159);
                                                continue loop10;
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                    §§goto(addr113);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr203);
                        }
                        §§goto(addr141);
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §7!'§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§9w§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(_loc3_)
         {
            _loc1_.name = "Text";
            if(!(_loc4_ && _loc3_))
            {
               this.§9w§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(_loc3_ || this)
         {
            _loc2_.name = "Base";
            while(true)
            {
               this.§9w§.addChildAt(_loc2_,0);
               §§goto(addr107);
            }
         }
         addr107:
         while(true)
         {
            this.§&0§(this.§,!-§);
            if(!(_loc4_ && _loc3_))
            {
               if(!(_loc4_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §#J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9w§ = new §%P§();
         }
         do
         {
            this.§;!f§(this.§,!-§);
         }
         while(!_loc1_);
         
      }
      
      public function §;!f§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§,!-§ = param1;
            do
            {
               if(!§%P§)
               {
                  this.§&0§(param1);
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     §§goto(addr35);
                  }
               }
               this.§'!8§(param1);
            }
            while(!_loc3_);
            
         }
         addr35:
      }
      
      private function §'!8§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§9w§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§9w§.getChildByName("Base") as MovieClip;
         if(_loc6_)
         {
            _loc2_.text = this.§,!-§;
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
                  while(!_loc6_);
                  
                  if(_loc6_ || param1)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
                     if(!(_loc7_ && _loc2_))
                     {
                        _loc3_.scaleX = _loc4_ / _loc3_.width;
                        if(!(_loc7_ && param1))
                        {
                           _loc3_.x = 0;
                        }
                     }
                     §§push(0);
                     if(!(_loc7_ && _loc2_))
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc6_ || this)
                        {
                           if(§§pop() >= _loc3_.numChildren)
                           {
                              if(_loc6_ || param1)
                              {
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 if(_loc6_ || this)
                                 {
                                    _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                                    break;
                                 }
                                 §§push(_loc5_);
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(§§pop() + 1);
                                    if(!_loc7_)
                                    {
                                       addr187:
                                       _loc5_ = int(§§pop());
                                       continue;
                                    }
                                 }
                                 §§goto(addr187);
                                 addr196:
                              }
                              break;
                           }
                           _loc3_.getChildAt(0).x = 0;
                           §§goto(addr196);
                        }
                        §§goto(addr187);
                     }
                     return;
                     addr53:
                  }
                  break;
               }
            }
         }
         §§goto(addr53);
      }
      
      private function §&0§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§9w§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!(_loc5_ && this))
         {
            _loc3_.align = TextAlign.CENTER;
            loop0:
            while(true)
            {
               _loc3_.bold = true;
               while(true)
               {
                  _loc3_.size = 12;
                  addr130:
                  while(true)
                  {
                     _loc2_.defaultTextFormat = _loc3_;
                  }
                  loop10:
                  while(!(_loc5_ && param1))
                  {
                     _loc2_.mouseEnabled = false;
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     addr49:
                     if(_loc6_ || this)
                     {
                        addr56:
                        if(_loc6_)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 _loc2_.selectable = false;
                                 continue loop10;
                                 §§goto(addr56);
                              }
                              loop7:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    _loc2_.textColor = 0;
                                    loop8:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr60);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                _loc2_.height = _loc2_.textHeight * 1.25;
                                                break loop8;
                                             }
                                             addr106:
                                          }
                                       }
                                       break;
                                       §§goto(addr49);
                                    }
                                    while(true)
                                    {
                                       _loc2_.width = _loc2_.textWidth * 1.25;
                                       continue loop7;
                                    }
                                 }
                              }
                              addr60:
                              §§goto(addr130);
                              addr88:
                           }
                           else
                           {
                              var _loc4_:Shape = this.§9w§.getChildByName("Base") as Shape;
                              if(_loc6_ || _loc2_)
                              {
                                 _loc4_.graphics.clear();
                              }
                              _loc4_.graphics.lineStyle(1);
                              _loc4_.graphics.beginFill(0,1);
                              _loc4_.graphics.drawRect(-this.§^3§,-this.§^3§,_loc2_.width + 2 * this.§^3§,_loc2_.height + 2 * this.§^3§);
                              addr291:
                              addr286:
                              if(_loc6_ || param1)
                              {
                                 if(_loc6_ || this)
                                 {
                                    _loc4_.graphics.beginFill(16777215,1);
                                    addr214:
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       _loc4_.graphics.drawRect(-this.§^3§ / 2,-(this.§^3§ / 2),_loc2_.width + 1 * this.§^3§,_loc2_.height + 1 * this.§^3§);
                                       if(_loc6_)
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr291);
                                          }
                                          return;
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr291);
                                 }
                                 §§goto(addr286);
                              }
                              addr279:
                              §§goto(addr279);
                           }
                        }
                        else
                        {
                           §§goto(addr88);
                        }
                        loop4:
                        while(true)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              _loc2_.text = this.§,!-§;
                              §§goto(addr106);
                           }
                           addr125:
                           while(true)
                           {
                              _loc2_.border = false;
                              continue loop4;
                           }
                        }
                     }
                     §§goto(addr76);
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      private function §==§(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(_loc4_)
         {
            §§push(!this.§9w§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              if(_loc4_ || this)
                              {
                                 while(true)
                                 {
                                    §§push(this.§,!-§);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(§§pop() == null);
                                       addr120:
                                       addr135:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc5_ && param1)
                                          {
                                             addr195:
                                             if(§§pop())
                                             {
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   _loc2_ = mClip.getRect(getParentView());
                                                   if(_loc4_ || this)
                                                   {
                                                      this.§9w§.y = _loc2_.y - this.§9w§.height - this.§^3§;
                                                      if(!(_loc5_ && this))
                                                      {
                                                         addr246:
                                                         this.§9w§.x = _loc2_.x + mClip.width / 2 - this.§9w§.width / 2;
                                                      }
                                                      _loc3_ = this.§9w§.getRect(mClip.stage);
                                                      if(_loc4_ || this)
                                                      {
                                                         if(_loc3_.right > mClip.stage.stageWidth - this.§^3§)
                                                         {
                                                            addr415:
                                                            this.§9w§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§^3§));
                                                            addr434:
                                                         }
                                                         if(_loc3_.left < this.§^3§)
                                                         {
                                                            addr376:
                                                            if(_loc4_)
                                                            {
                                                               this.§9w§.x += 1 + (this.§^3§ - _loc3_.left);
                                                               addr392:
                                                               if(!_loc5_)
                                                               {
                                                                  addr339:
                                                                  if(_loc3_.bottom > mClip.stage.stageHeight - this.§^3§)
                                                                  {
                                                                     addr350:
                                                                     this.§9w§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§^3§));
                                                                  }
                                                                  addr313:
                                                                  if(_loc3_.top < this.§^3§)
                                                                  {
                                                                     addr319:
                                                                     this.§9w§.y += mClip.height + this.§9w§.height + this.§^3§ * 2;
                                                                  }
                                                                  this.§9w§.visible = true;
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    addr311:
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr313);
                                                                                    }
                                                                                    break loop4;
                                                                                 }
                                                                                 §§goto(addr376);
                                                                              }
                                                                              §§goto(addr392);
                                                                           }
                                                                        }
                                                                        §§goto(addr350);
                                                                     }
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               §§goto(addr434);
                                                            }
                                                            §§goto(addr415);
                                                         }
                                                         §§goto(addr339);
                                                      }
                                                      §§goto(addr311);
                                                   }
                                                   §§goto(addr246);
                                                }
                                                break loop4;
                                             }
                                             this.§9w§.visible = false;
                                          }
                                          if(!(_loc5_ && param1))
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             if(_loc5_ && param1)
                                             {
                                                break;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          loop6:
                                          while(_loc4_ || param1)
                                          {
                                             if(§§pop())
                                             {
                                                while(!§§pop())
                                                {
                                                   §§push(param1);
                                                   if(_loc4_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §§pop();
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§,!-§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              §§push(§§pop().length == 0);
                                                                           }
                                                                           continue loop12;
                                                                           addr77:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(§6m§);
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              addr194:
                                                                              §§goto(addr195);
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           §§goto(addr195);
                                                                        }
                                                                        §§goto(addr195);
                                                                     }
                                                                     break loop4;
                                                                  }
                                                                  §§goto(addr120);
                                                                  §§goto(addr195);
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                         loop9:
                                                         while(true)
                                                         {
                                                            if(_loc4_ || this)
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr160:
                                                            while(_loc4_ || this)
                                                            {
                                                               §§pop();
                                                               §§goto(addr77);
                                                               continue loop9;
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   §§goto(addr194);
                                                }
                                                return;
                                                addr102:
                                             }
                                             §§goto(addr160);
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 addr184:
                              }
                              break;
                           }
                           return;
                        }
                        §§goto(addr135);
                     }
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§9w§)
            {
               if(_loc2_ || this)
               {
                  addr113:
                  this.§,!-§ = null;
               }
               loop0:
               while(true)
               {
                  if(this.§9w§.numChildren > 0)
                  {
                     this.§9w§.removeChildAt(0);
                     continue;
                  }
                  loop1:
                  while(true)
                  {
                     if(this.§9w§.parent)
                     {
                        while(true)
                        {
                           this.§9w§.parent.removeChild(this.§9w§);
                           addr90:
                           while(_loc2_)
                           {
                           }
                           continue loop0;
                        }
                        addr73:
                     }
                     while(true)
                     {
                        this.§9w§ = null;
                        loop5:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              super.clear();
                              if(_loc1_)
                              {
                                 continue loop5;
                              }
                              if(_loc2_ || _loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr73);
                           }
                           return;
                        }
                        §§goto(addr90);
                     }
                  }
               }
            }
            §§goto(addr29);
         }
         §§goto(addr113);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0a§ = param1;
         }
         do
         {
            this.§2v§();
         }
         while(_loc3_);
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§3[§ = param1;
         }
         do
         {
            this.§2v§();
         }
         while(!(_loc3_ || this));
         
      }
      
      public function §2v§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(mClip.totalFrames < 2)
            {
               if(!_loc5_)
               {
                  §§goto(addr25);
               }
            }
            var _loc1_:Array = new Array(this.§0a§ + "_" + this.§3[§,this.§0a§ + "_" + §!!-§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§3[§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §!!-§);
            §§push(0);
            if(_loc4_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc2_);
               while(§§pop() < _loc1_.length)
               {
                  try
                  {
                     mClip.gotoAndStop(_loc1_[_loc2_] as String);
                     if(_loc5_ && _loc1_)
                     {
                        break;
                     }
                     if(mClip.numChildren > 0)
                     {
                        if(!(_loc5_ && _loc1_))
                        {
                           return;
                        }
                     }
                  }
                  catch(e:Error)
                  {
                     var _loc3_:* = e;
                  }
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(int(§§pop()));
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               addr160:
               return;
            }
         }
         addr25:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(this.§0a§ == §#!K§)
            {
               if(!_loc3_)
               {
                  return;
               }
               while(true)
               {
                  addr192:
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  this.setComponentVisualState(§,r§);
                  loop9:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        §§push(param1);
                        loop11:
                        while(true)
                        {
                           if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                           {
                              loop12:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    if(_loc4_ || param2)
                                    {
                                       this.setComponentVisualState(§@=§);
                                       loop13:
                                       while(true)
                                       {
                                          addr137:
                                          while(true)
                                          {
                                             §§push(param1);
                                             while(_loc4_)
                                             {
                                                if(§§pop() != §!!Q§)
                                                {
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         if(§§pop() != §9O§)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§==§(param1 == §9O§);
                                                               if(!_loc4_)
                                                               {
                                                                  do
                                                                  {
                                                                     if(!(_loc4_ || param1))
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  while(_loc3_ && param1);
                                                                  
                                                                  continue;
                                                                  addr55:
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_ || param2)
                                                                  {
                                                                     return;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               addr144:
                                                               while(true)
                                                               {
                                                                  Mouse.cursor = MouseCursor.AUTO;
                                                                  continue loop13;
                                                               }
                                                            }
                                                         }
                                                         while(_loc4_ || param2)
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               Mouse.cursor = this.§7!K§;
                                                               continue loop9;
                                                            }
                                                            addr222:
                                                            while(true)
                                                            {
                                                               this.§7!]§();
                                                               addr225:
                                                               while(true)
                                                               {
                                                                  addr178:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr62);
                                                         }
                                                         while(!(_loc3_ && param2))
                                                         {
                                                            continue loop19;
                                                            §§goto(addr79);
                                                         }
                                                         addr79:
                                                         continue loop13;
                                                         addr119:
                                                      }
                                                      while(_loc4_)
                                                      {
                                                         if(§§pop() != LISTENER_EVENT_MOUSE_DOWN)
                                                         {
                                                            continue loop10;
                                                         }
                                                         while(!(_loc3_ && param2))
                                                         {
                                                            §§goto(addr192);
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                      loop26:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr222);
                                                            }
                                                            §§goto(addr178);
                                                            continue loop26;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         break loop12;
                                                         §§goto(addr207);
                                                      }
                                                      addr207:
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr144);
                                             }
                                             continue loop11;
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr185);
                              }
                              while(true)
                              {
                                 §§goto(addr207);
                                 §§goto(addr259);
                              }
                           }
                           §§goto(addr137);
                        }
                     }
                  }
               }
               addr276:
            }
            while(true)
            {
               super.listenerEventOccured(param1,param2);
               §§goto(addr267);
               §§goto(addr276);
            }
         }
         §§goto(addr112);
      }
      
      public function §7!]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§0a§);
            loop0:
            while(true)
            {
               §§push(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr88:
               addr20:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_)
                     {
                        this.setComponentState(UIComponentInteractiveRovio.§3B§);
                     }
                     break;
                     addr97:
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr76);
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
         if(!(_loc6_ && _loc3_))
         {
            super.changeMovieClip(param1);
         }
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(!_loc6_)
         {
            §§push(Boolean(this.mParentContainer));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     mParentContainer.mClip.removeChild(mClip);
                     addr172:
                     while(true)
                     {
                     }
                  }
                  addr165:
               }
               while(true)
               {
                  mClip = null;
                  addr160:
                  while(true)
                  {
                     addr151:
                     mClip = param1;
                     continue loop0;
                  }
               }
               addr103:
               return;
            }
         }
         §§goto(addr130);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.setVisibility(param1);
            while(!mClip.visible)
            {
               if(_loc2_)
               {
                  this.§==§(false);
               }
               if(!_loc3_)
               {
                  addr52:
                  break;
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.onParentVisibilityChange(param1);
            while(true)
            {
               §§push(param1);
               if(_loc2_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               if(!(_loc2_ || _loc2_))
               {
                  break;
               }
               addr67:
               if(!(_loc2_ || this))
               {
                  continue;
               }
               addr63:
               this.§==§(false);
               §§goto(addr67);
            }
            return;
         }
         §§goto(addr63);
      }
   }
}
