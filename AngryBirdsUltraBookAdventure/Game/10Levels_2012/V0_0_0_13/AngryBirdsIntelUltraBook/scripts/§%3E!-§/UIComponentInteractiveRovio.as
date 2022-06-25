package §>!-§
{
   import §]!6§.UIContainerRovio;
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
      
      public static const §!!c§:String = "Deactive";
      
      public static const §1!M§:String = "Disabled";
      
      public static const §5$§:String = "Out";
      
      public static const §#!A§:String = "Over";
      
      public static const §+!V§:String = "Up_Default";
      
      public static const §5!e§:String = "Down";
      
      public static var §+!0§:Class;
      
      public static var §"!Z§:Boolean = true;
      
      public static const §;y§:String = "Tooltip";
      
      public static var §=!+§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            while(true)
            {
               §!!c§ = "Deactive";
               loop1:
               while(true)
               {
                  §1!M§ = "Disabled";
                  addr125:
                  while(true)
                  {
                     §5$§ = "Out";
                     addr120:
                     while(true)
                     {
                        §#!A§ = "Over";
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public var §+!_§:String;
      
      public var §^!;§:String;
      
      public var §2y§:String;
      
      public var §1Z§:MovieClip;
      
      public var §]z§:int = 6;
      
      private var §2!^§:Boolean = false;
      
      private var §80§:String = "auto";
      
      public function UIComponentInteractiveRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,param2,param3);
            while(true)
            {
               this.§+!_§ = COMPONENT_STATE_ACTIVE_DEFAULT;
               addr41:
               if(!(_loc6_ && this))
               {
                  if(true)
                  {
                     var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
                     var _loc5_:String = param1.@cursor.toString().toLowerCase();
                     if(!_loc6_)
                     {
                        if(_loc4_.indexOf(_loc5_) > -1)
                        {
                           if(_loc7_)
                           {
                              this.§80§ = _loc5_;
                           }
                        }
                     }
                  }
                  loop4:
                  while(true)
                  {
                     this.§0!L§(param1.@Tooltip);
                     while(true)
                     {
                        if(_loc7_ || this)
                        {
                           if(param1.@Toggle.toString().toUpperCase() != "TRUE")
                           {
                              break;
                           }
                           if(!(_loc7_ || param2))
                           {
                              continue loop4;
                           }
                           if(!_loc7_)
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              this.§2!^§ = true;
                              continue loop4;
                           }
                           while(true)
                           {
                              this.§'!E§();
                           }
                           addr91:
                        }
                        loop3:
                        while(true)
                        {
                           if(_loc7_ || param3)
                           {
                              continue loop4;
                           }
                           addr97:
                           while(true)
                           {
                              this.§^!;§ = §+!V§;
                              §§goto(addr91);
                              continue loop3;
                           }
                        }
                     }
                  }
                  continue;
                  return;
               }
            }
         }
         §§goto(addr97);
      }
      
      public static function §2$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+!0§ = AssetCache.§-9§(§;y§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setActiveStatus(param1);
         }
         do
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               break;
            }
            if(_loc2_ || _loc3_)
            {
               this.setComponentVisualState(§5$§);
            }
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function §0!L§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§2y§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§2y§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc3_ && param1))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                        }
                        addr221:
                     }
                     else
                     {
                        while(true)
                        {
                           addr185:
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§2y§ = null;
                                    }
                                    addr203:
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    addr51:
                                    if(!(_loc2_ || param1))
                                    {
                                       continue;
                                    }
                                    getParentView().addChild(this.§1Z§);
                                    addr58:
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §§push(Boolean(§+!0§));
                                                         if(!_loc3_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               this.§6!I§();
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     this.§1Z§.mouseEnabled = false;
                                                                     loop18:
                                                                     while(_loc2_ || this)
                                                                     {
                                                                        this.§1Z§.mouseChildren = false;
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              while(!_loc3_)
                                                                              {
                                                                                 this.static();
                                                                                 break loop18;
                                                                              }
                                                                              break;
                                                                              addr113:
                                                                           }
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              this.§1Z§.visible = false;
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§goto(addr51);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§"!Z§);
                                                                                       break loop15;
                                                                                    }
                                                                                    addr159:
                                                                                 }
                                                                                 §§goto(addr58);
                                                                              }
                                                                              continue loop7;
                                                                              addr47:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §"!Z§ = false;
                                                                              addr165:
                                                                              while(true)
                                                                              {
                                                                                 §2$§();
                                                                                 break loop19;
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           addr119:
                                                                           while(true)
                                                                           {
                                                                              this.§1Z§ = new MovieClip();
                                                                              continue loop15;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr113);
                                                         }
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr222:
                                                   while(true)
                                                   {
                                                      §§push(this.§2y§);
                                                      continue loop1;
                                                   }
                                                }
                                                §§goto(addr165);
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr119);
                                             }
                                             addr161:
                                          }
                                          addr24:
                                          return;
                                       }
                                       §§goto(addr64);
                                    }
                                    §§goto(addr47);
                                 }
                              }
                              addr136:
                              while(true)
                              {
                                 §§push(this.§2y§);
                                 if(!(_loc2_ || _loc3_))
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(!_loc3_)
                                 {
                                    continue loop6;
                                 }
                                 §§goto(addr161);
                              }
                              continue loop1;
                           }
                        }
                        addr184:
                     }
                     §§goto(addr222);
                  }
               }
            }
         }
         §§goto(addr203);
      }
      
      private function §6!I§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§1Z§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!(_loc4_ && _loc2_))
         {
            _loc1_.name = "Text";
            if(!(_loc4_ && _loc1_))
            {
               this.§1Z§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(!(_loc4_ && this))
         {
            _loc2_.name = "Base";
         }
         do
         {
            this.§1Z§.addChildAt(_loc2_,0);
            do
            {
               this.§4r§(this.§2y§);
            }
            while(!(_loc3_ || _loc3_));
            
         }
         while(_loc4_ && _loc2_);
         
      }
      
      private function static() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1Z§ = new §+!0§();
         }
         do
         {
            this.§<![§(this.§2y§);
         }
         while(!_loc1_);
         
      }
      
      public function §<![§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2y§ = param1;
            do
            {
               if(!§+!0§)
               {
                  this.§4r§(param1);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(_loc3_ || this)
                  {
                     §§goto(addr35);
                  }
               }
               this.§%m§(param1);
            }
            while(!_loc3_);
            
         }
         addr35:
      }
      
      private function §%m§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TextField = this.§1Z§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§1Z§.getChildByName("Base") as MovieClip;
         if(!_loc6_)
         {
            _loc2_.text = this.§2y§;
         }
         while(true)
         {
            while(true)
            {
               _loc2_.multiline = false;
               do
               {
                  _loc2_.width = _loc2_.textWidth * 1.25;
               }
               while(_loc6_);
               
               if(_loc6_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
               if(_loc7_)
               {
                  _loc3_.scaleX = _loc4_ / _loc3_.width;
                  if(_loc7_)
                  {
                     addr94:
                     _loc3_.x = 0;
                  }
                  §§push(0);
                  if(_loc7_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  while(true)
                  {
                     §§push(_loc5_);
                     if(!(_loc6_ && this))
                     {
                        if(§§pop() >= _loc3_.numChildren)
                        {
                           if(!_loc6_)
                           {
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              if(!_loc6_)
                              {
                                 _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                                 break;
                              }
                              §§push(_loc5_);
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc7_ || _loc2_)
                                 {
                                 }
                                 addr163:
                                 _loc5_ = §§pop();
                                 continue;
                              }
                              §§goto(addr163);
                              §§push(int(§§pop()));
                              addr172:
                           }
                           break;
                        }
                        _loc3_.getChildAt(0).x = 0;
                        §§goto(addr172);
                     }
                     §§goto(addr163);
                  }
                  return;
               }
               §§goto(addr94);
            }
         }
      }
      
      private function §4r§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§1Z§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!(_loc5_ && _loc2_))
         {
            _loc3_.align = TextAlign.CENTER;
            while(true)
            {
               _loc3_.bold = true;
               loop1:
               while(_loc6_ || _loc3_)
               {
                  _loc3_.size = 12;
                  while(true)
                  {
                     _loc2_.defaultTextFormat = _loc3_;
                     loop3:
                     while(_loc6_)
                     {
                        _loc2_.border = false;
                        loop4:
                        while(true)
                        {
                           _loc2_.text = this.§2y§;
                           loop5:
                           while(!_loc5_)
                           {
                              _loc2_.height = _loc2_.textHeight * 1.25;
                              while(true)
                              {
                                 _loc2_.width = _loc2_.textWidth * 1.25;
                                 loop7:
                                 for(; _loc6_; if(_loc5_ && param1)
                                 {
                                    continue;
                                 },while(true)
                                 {
                                    _loc2_.mouseEnabled = false;
                                    if(!(_loc5_ && this))
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr64);
                                 },var _loc4_:Shape = this.§1Z§.getChildByName("Base") as Shape,if(!_loc5_)
                                 {
                                    _loc4_.graphics.clear();
                                    while(true)
                                    {
                                       _loc4_.graphics.lineStyle(1);
                                    }
                                    addr281:
                                 },loop13:
                                 while(true)
                                 {
                                    _loc4_.graphics.beginFill(0,1);
                                    while(!_loc5_)
                                    {
                                       _loc4_.graphics.drawRect(-this.§]z§,-this.§]z§,_loc2_.width + 2 * this.§]z§,_loc2_.height + 2 * this.§]z§);
                                       loop15:
                                       while(true)
                                       {
                                          _loc4_.graphics.beginFill(16777215,1);
                                          while(true)
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop15;
                                          }
                                          continue loop13;
                                       }
                                       if(!(_loc5_ && param1))
                                       {
                                          return;
                                       }
                                    }
                                    §§goto(addr281);
                                 })
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop5;
                                    }
                                    _loc2_.textColor = 0;
                                    loop8:
                                    while(true)
                                    {
                                       addr60:
                                       while(true)
                                       {
                                          _loc2_.selectable = false;
                                          addr64:
                                          while(_loc6_)
                                          {
                                             continue loop7;
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                        if(_loc5_ && param1)
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr60);
                        }
                        §§goto(addr152);
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §&9§(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(_loc4_)
         {
            §§push(!this.§1Z§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  addr181:
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
                              loop5:
                              while(true)
                              {
                                 §§push(this.§2y§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() == null);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr156:
                                             while(true)
                                             {
                                                if(_loc5_ && _loc2_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               return;
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                            addr140:
                                                         }
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            if(_loc4_ || param1)
                                                            {
                                                               addr79:
                                                               if(_loc5_ && this)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc4_ || param1)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr189:
                                                               addr189:
                                                               addr189:
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            addr190:
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§pop();
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc5_ && _loc2_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§push(§=!+§);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§goto(addr189);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr140);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            addr165:
                                                            while(_loc4_)
                                                            {
                                                               §§pop();
                                                               if(_loc5_ && _loc2_)
                                                               {
                                                                  break loop12;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop4;
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  _loc2_ = mClip.getRect(getParentView());
                                                                  if(!_loc5_)
                                                                  {
                                                                     this.§1Z§.y = _loc2_.y - this.§1Z§.height - this.§]z§;
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        addr236:
                                                                        this.§1Z§.x = _loc2_.x + mClip.width / 2 - this.§1Z§.width / 2;
                                                                     }
                                                                     _loc3_ = this.§1Z§.getRect(mClip.stage);
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc3_.right > mClip.stage.stageWidth - this.§]z§)
                                                                        {
                                                                           addr400:
                                                                           this.§1Z§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§]z§));
                                                                        }
                                                                        if(_loc3_.left < this.§]z§)
                                                                        {
                                                                           addr365:
                                                                           this.§1Z§.x += 1 + (this.§]z§ - _loc3_.left);
                                                                        }
                                                                        if(_loc3_.bottom > mClip.stage.stageHeight - this.§]z§)
                                                                        {
                                                                           addr321:
                                                                           if(!_loc5_)
                                                                           {
                                                                              this.§1Z§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§]z§));
                                                                              addr342:
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       addr277:
                                                                                       if(_loc3_.top < this.§]z§)
                                                                                       {
                                                                                          addr283:
                                                                                          this.§1Z§.y += mClip.height + this.§1Z§.height + this.§]z§ * 2;
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             addr264:
                                                                                             this.§1Z§.visible = true;
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr277);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr342);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                          }
                                                                                          §§goto(addr321);
                                                                                       }
                                                                                       §§goto(addr264);
                                                                                       addr358:
                                                                                    }
                                                                                    §§goto(addr400);
                                                                                 }
                                                                              }
                                                                              §§goto(addr365);
                                                                           }
                                                                           §§goto(addr400);
                                                                        }
                                                                        §§goto(addr277);
                                                                     }
                                                                     §§goto(addr358);
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                               break;
                                                            }
                                                            this.§1Z§.visible = false;
                                                            break;
                                                         }
                                                         §§goto(addr425);
                                                      }
                                                      continue loop3;
                                                      addr130:
                                                   }
                                                }
                                             }
                                          }
                                          addr154:
                                       }
                                       §§goto(addr165);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr154);
                     }
                  }
               }
            }
         }
         addr425:
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§1Z§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr112:
                  this.§2y§ = null;
               }
               while(true)
               {
                  if(this.§1Z§.numChildren > 0)
                  {
                     this.§1Z§.removeChildAt(0);
                     continue;
                  }
                  if(!(_loc2_ && this))
                  {
                     if(this.§1Z§.parent)
                     {
                        while(_loc1_)
                        {
                           this.§1Z§.parent.removeChild(this.§1Z§);
                           while(true)
                           {
                           }
                        }
                        continue;
                        addr72:
                     }
                     while(true)
                     {
                        this.§1Z§ = null;
                        loop3:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              while(true)
                              {
                                 super.clear();
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                              return;
                              addr28:
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr91);
                     }
                  }
                  §§goto(addr91);
               }
            }
            §§goto(addr28);
         }
         §§goto(addr112);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§+!_§ = param1;
         }
         do
         {
            this.§'!E§();
         }
         while(!_loc2_);
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!;§ = param1;
            do
            {
               this.§'!E§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §'!E§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc5_)
               {
                  §§goto(addr26);
               }
            }
            var _loc1_:Array = new Array(this.§+!_§ + "_" + this.§^!;§,this.§+!_§ + "_" + §+!V§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§^!;§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §+!V§);
            §§push(0);
            if(!_loc4_)
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
                     if(_loc5_ || _loc3_)
                     {
                        if(mClip.numChildren > 0)
                        {
                           if(!_loc4_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
                  catch(e:Error)
                  {
                     var _loc3_:* = e;
                  }
                  §§push(_loc2_);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc5_)
                     {
                        §§push(int(§§pop()));
                        if(_loc4_ && _loc1_)
                        {
                           continue;
                        }
                     }
                  }
                  _loc2_ = §§pop();
                  if(_loc4_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         addr26:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(this.§+!_§ != §1!M§)
            {
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  loop1:
                  while(!(_loc3_ && param2))
                  {
                     if(_loc4_)
                     {
                        §§push(this.§2!^§);
                        if(_loc4_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc4_ || param1)
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
                                    §§push(param1);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                                       if(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop3;
                                          }
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                          }
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                this.§"9§();
                                                addr208:
                                                while(!(_loc3_ && this))
                                                {
                                                }
                                                continue loop1;
                                                addr71:
                                                if(_loc3_ && this)
                                                {
                                                   continue;
                                                }
                                                loop22:
                                                while(true)
                                                {
                                                   this.§&9§(param1 == §,!k§);
                                                   if(_loc4_)
                                                   {
                                                      addr39:
                                                      loop19:
                                                      for(; !(_loc3_ && param2); §§goto(addr39))
                                                      {
                                                         Mouse.cursor = this.§80§;
                                                         loop20:
                                                         while(_loc4_)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               this.setComponentVisualState(§#!A§);
                                                               while(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr71);
                                                                  }
                                                                  else
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           if(_loc4_ || param2)
                                                                           {
                                                                              Mouse.cursor = MouseCursor.AUTO;
                                                                              break loop20;
                                                                           }
                                                                           §§goto(addr208);
                                                                        }
                                                                        addr167:
                                                                        while(true)
                                                                        {
                                                                           this.setComponentVisualState(§#!A§);
                                                                           break loop15;
                                                                        }
                                                                     }
                                                                     addr139:
                                                                  }
                                                               }
                                                               continue;
                                                               addr67:
                                                            }
                                                            while(true)
                                                            {
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  loop14:
                                                                  while(!_loc3_)
                                                                  {
                                                                     addr119:
                                                                     if(!(_loc3_ && param2))
                                                                     {
                                                                        if(§§pop() == §@8§)
                                                                        {
                                                                           §§goto(addr139);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           if(_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop() == §,!k§)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           continue loop22;
                                                                        }
                                                                        continue;
                                                                        addr79:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                                                        {
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              this.setComponentVisualState(§5!e§);
                                                                              break loop19;
                                                                           }
                                                                           break loop19;
                                                                        }
                                                                        addr160:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           break loop14;
                                                                        }
                                                                        §§goto(addr119);
                                                                     }
                                                                  }
                                                                  while(!_loc3_)
                                                                  {
                                                                     if(§§pop() != LISTENER_EVENT_MOUSE_UP)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     §§goto(addr167);
                                                                  }
                                                                  continue loop5;
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.setComponentVisualState(§5$§);
                                                            break loop22;
                                                         }
                                                      }
                                                      if(_loc4_ || param2)
                                                      {
                                                         addr46:
                                                         if(_loc3_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc3_ && param2))
                                                         {
                                                            return;
                                                         }
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr160);
                                                         §§goto(addr86);
                                                      }
                                                      addr86:
                                                   }
                                                   §§goto(addr67);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr79);
                                                   §§goto(addr46);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr175);
                                          }
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           §§goto(addr203);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr167);
      }
      
      public function §"9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§+!_§);
            loop0:
            while(true)
            {
               §§push(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr94:
               addr95:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               this.setComponentState(UIComponentInteractiveRovio.§!!c§);
            }
         }
         §§goto(addr101);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
         if(!_loc5_)
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
                     addr153:
                     while(true)
                     {
                     }
                  }
                  addr146:
               }
               while(true)
               {
                  mClip = null;
                  while(true)
                  {
                     mClip = param1;
                     continue loop0;
                     addr73:
                     if(!(_loc6_ || _loc3_))
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        return;
                     }
                     §§goto(addr146);
                  }
               }
            }
         }
         §§goto(addr131);
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
               if(_loc3_)
               {
                  break;
               }
               addr52:
               if(_loc3_ && param1)
               {
                  continue;
               }
               addr48:
               this.§&9§(false);
               §§goto(addr52);
            }
            return;
         }
         §§goto(addr48);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.onParentVisibilityChange(param1);
            while(true)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               if(_loc2_ && this)
               {
                  break;
               }
               addr73:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               this.§&9§(false);
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr73);
      }
   }
}
