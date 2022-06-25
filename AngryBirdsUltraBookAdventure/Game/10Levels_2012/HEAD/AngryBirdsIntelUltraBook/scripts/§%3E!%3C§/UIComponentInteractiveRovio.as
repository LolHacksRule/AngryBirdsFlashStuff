package §>!<§
{
   import §"!2§.UIContainerRovio;
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
      
      public static const §6!C§:String = "Deactive";
      
      public static const §,a§:String = "Disabled";
      
      public static const §1>§:String = "Out";
      
      public static const §@!a§:String = "Over";
      
      public static const §0!0§:String = "Up_Default";
      
      public static const §`#§:String = "Down";
      
      public static var §]!S§:Class;
      
      public static var §3[§:Boolean = true;
      
      public static const §%6§:String = "Tooltip";
      
      public static var §>H§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
         }
         loop0:
         while(true)
         {
            §6!C§ = "Deactive";
            addr136:
            while(true)
            {
               §,a§ = "Disabled";
               continue loop0;
            }
         }
      }
      
      public var §9!h§:String;
      
      public var §9![§:String;
      
      public var §=[§:String;
      
      public var §5Y§:MovieClip;
      
      public var §<h§:int = 6;
      
      private var §[!!§:Boolean = false;
      
      private var §8!V§:String = "auto";
      
      public function UIComponentInteractiveRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param2,param3);
            while(true)
            {
               this.§9!h§ = COMPONENT_STATE_ACTIVE_DEFAULT;
               addr82:
               while(true)
               {
                  this.§9![§ = §0!0§;
                  addr74:
                  while(!_loc6_)
                  {
                  }
               }
            }
            addr88:
         }
         while(true)
         {
            this.§'l§();
            loop4:
            while(true)
            {
               if(!_loc6_)
               {
                  loop5:
                  while(true)
                  {
                     this.§^!F§(param1.@Tooltip);
                     while(param1.@Toggle.toString().toUpperCase() == "TRUE")
                     {
                        if(!(_loc6_ && param1))
                        {
                           if(_loc6_)
                           {
                              continue loop4;
                           }
                           this.§[!!§ = true;
                        }
                        if(_loc7_)
                        {
                           continue loop5;
                        }
                     }
                     addr89:
                     var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
                     var _loc5_:String = param1.@cursor.toString().toLowerCase();
                     if(!_loc6_)
                     {
                        if(_loc4_.indexOf(_loc5_) > -1)
                        {
                           if(_loc7_ || this)
                           {
                              addr137:
                              this.§8!V§ = _loc5_;
                           }
                        }
                        return;
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr74);
               }
               else
               {
                  §§goto(addr88);
               }
            }
         }
      }
      
      public static function §-x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]!S§ = AssetCache.§,!k§(§%6§);
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
         while(true)
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
            if(_loc3_)
            {
               break;
            }
            addr53:
            if(_loc3_ && _loc3_)
            {
               continue;
            }
            this.setComponentVisualState(§1>§);
            §§goto(addr53);
         }
      }
      
      public function §^!F§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§=[§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§=[§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        loop22:
                        while(true)
                        {
                           §§pop();
                           addr247:
                           loop23:
                           while(true)
                           {
                              §§push(this.§=[§);
                              addr187:
                              while(!_loc3_)
                              {
                                 §§push(§§pop().length == 0);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop22;
                                 }
                                 continue loop23;
                              }
                              continue loop1;
                           }
                        }
                        addr246:
                     }
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§=[§);
                              if(!_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop6:
                                 for(; §§pop(); if(!(_loc2_ || param1))
                                 {
                                    continue;
                                 },if(§§pop())
                                 {
                                    §§goto(addr148);
                                 },this.§9!§(),§§goto(addr133))
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§3[§);
                                       loop8:
                                       while(_loc2_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §3[§ = false;
                                                loop10:
                                                while(true)
                                                {
                                                   §-x§();
                                                   addr162:
                                                   while(true)
                                                   {
                                                      addr87:
                                                      if(!(_loc2_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(!(_loc2_ || this))
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(_loc2_ || param1)
                                                      {
                                                         this.§5Y§.visible = false;
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               addr209:
                                                               while(true)
                                                               {
                                                                  this.§=[§ = null;
                                                                  break loop18;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     §§goto(addr87);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§<G§();
                                                                        break loop17;
                                                                     }
                                                                     addr148:
                                                                  }
                                                                  continue loop18;
                                                               }
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  addr121:
                                                                  addr133:
                                                                  while(true)
                                                                  {
                                                                     this.§5Y§.mouseEnabled = false;
                                                                     addr126:
                                                                     while(true)
                                                                     {
                                                                        this.§5Y§.mouseChildren = false;
                                                                        §§goto(addr85);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr121);
                                                                     addr44:
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 break loop6;
                                                                              }
                                                                              break loop18;
                                                                           }
                                                                           addr157:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§]!S§));
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                  }
                                                               }
                                                               addr85:
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§5Y§ = new MovieClip();
                                             §§goto(addr157);
                                             §§goto(addr162);
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 return;
                              }
                              break;
                           }
                           §§goto(addr187);
                           addr163:
                        }
                        §§goto(addr209);
                     }
                  }
                  §§goto(addr246);
               }
            }
         }
         while(true)
         {
            §§goto(addr163);
         }
      }
      
      private function §9!§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            this.§5Y§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(_loc3_)
         {
            _loc1_.name = "Text";
            if(!(_loc4_ && _loc2_))
            {
               this.§5Y§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(!_loc4_)
         {
            _loc2_.name = "Base";
            while(true)
            {
               this.§5Y§.addChildAt(_loc2_,0);
               while(!_loc4_)
               {
                  this.§[!<§(this.§=[§);
                  if(_loc3_ || _loc1_)
                  {
                     return;
                     addr92:
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      private function §<G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5Y§ = new §]!S§();
         }
         do
         {
            this.§;i§(this.§=[§);
         }
         while(!_loc1_);
         
      }
      
      public function §;i§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§=[§ = param1;
            while(true)
            {
               if(§]!S§)
               {
                  if(_loc3_)
                  {
                     addr73:
                     this.§2![§(param1);
                     break;
                  }
                  break;
               }
               this.§[!<§(param1);
               if(_loc2_)
               {
                  break;
               }
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr35);
            }
            addr35:
            return;
         }
         §§goto(addr73);
      }
      
      private function §2![§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TextField = this.§5Y§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§5Y§.getChildByName("Base") as MovieClip;
         if(_loc7_)
         {
            _loc2_.text = this.§=[§;
            loop0:
            while(true)
            {
               addr51:
               while(true)
               {
                  _loc2_.multiline = false;
                  continue loop0;
               }
            }
            addr60:
         }
         while(true)
         {
            _loc2_.width = _loc2_.textWidth * 1.25;
            if(_loc6_)
            {
               continue;
            }
            if(!_loc6_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr60);
            }
            §§goto(addr51);
         }
         var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
         if(!_loc6_)
         {
            _loc3_.scaleX = _loc4_ / _loc3_.width;
            if(_loc7_ || _loc3_)
            {
               addr99:
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
               if(!_loc6_)
               {
                  if(§§pop() >= _loc3_.numChildren)
                  {
                     if(_loc7_)
                     {
                        if(!(_loc7_ || _loc2_))
                        {
                           continue;
                        }
                        _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                     }
                     if(!(_loc6_ && _loc3_))
                     {
                        break;
                     }
                  }
                  else
                  {
                     _loc3_.getChildAt(0).x = 0;
                  }
                  §§push(_loc5_);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§§pop() + 1);
                     if(!(_loc6_ && this))
                     {
                        §§push(int(§§pop()));
                     }
                  }
               }
               _loc5_ = §§pop();
            }
            return;
         }
         §§goto(addr99);
      }
      
      private function §[!<§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§5Y§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(_loc6_ || param1)
         {
            _loc3_.align = TextAlign.CENTER;
            loop0:
            while(true)
            {
               _loc3_.bold = true;
               loop1:
               while(true)
               {
                  _loc3_.size = 12;
                  addr150:
                  while(true)
                  {
                     _loc2_.defaultTextFormat = _loc3_;
                     addr143:
                     while(!_loc5_)
                     {
                     }
                     continue loop1;
                  }
               }
               addr121:
               loop5:
               while(true)
               {
                  if(_loc5_ && _loc3_)
                  {
                     continue loop0;
                  }
                  _loc2_.text = this.§=[§;
                  loop6:
                  for(; !_loc5_; if(_loc5_ && _loc3_)
                  {
                     continue;
                  },_loc2_.mouseEnabled = false,if(!(_loc5_ && param1))
                  {
                     if(_loc6_)
                     {
                        continue loop5;
                     }
                     §§goto(addr108);
                  },§§goto(addr66))
                  {
                     _loc2_.height = _loc2_.textHeight * 1.25;
                     while(true)
                     {
                        _loc2_.width = _loc2_.textWidth * 1.25;
                        while(true)
                        {
                           _loc2_.textColor = 0;
                           loop9:
                           while(!(_loc5_ && _loc3_))
                           {
                              while(true)
                              {
                                 _loc2_.selectable = false;
                                 while(true)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       continue loop6;
                                    }
                                    continue loop9;
                                 }
                                 continue loop6;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
                  §§goto(addr150);
               }
            }
         }
         while(true)
         {
            _loc2_.border = false;
            §§goto(addr121);
         }
      }
      
      private function §`!^§(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(_loc4_)
         {
            §§push(!this.§5Y§);
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
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§=[§);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(§§pop() == null);
                                       if(_loc4_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc5_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop7:
                                                   while(!(_loc5_ && _loc3_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  return;
                                                               }
                                                               break loop4;
                                                            }
                                                            §§push(param1);
                                                            if(_loc4_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc5_ && this)
                                                               {
                                                               }
                                                               addr170:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr173:
                                                                     _loc2_ = mClip.getRect(getParentView());
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        this.§5Y§.y = _loc2_.y - this.§5Y§.height - this.§<h§;
                                                                        if(_loc4_)
                                                                        {
                                                                           addr211:
                                                                           this.§5Y§.x = _loc2_.x + mClip.width / 2 - this.§5Y§.width / 2;
                                                                        }
                                                                        _loc3_ = this.§5Y§.getRect(mClip.stage);
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           if(_loc3_.right > mClip.stage.stageWidth - this.§<h§)
                                                                           {
                                                                              addr395:
                                                                              this.§5Y§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§<h§));
                                                                           }
                                                                           if(_loc3_.left < this.§<h§)
                                                                           {
                                                                              addr360:
                                                                              this.§5Y§.x += 1 + (this.§<h§ - _loc3_.left);
                                                                           }
                                                                           if(_loc3_.bottom > mClip.stage.stageHeight - this.§<h§)
                                                                           {
                                                                              addr313:
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 this.§5Y§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§<h§));
                                                                                 addr339:
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       addr255:
                                                                                       if(_loc3_.top < this.§<h§)
                                                                                       {
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                this.§5Y§.y += mClip.height + this.§5Y§.height + this.§<h§ * 2;
                                                                                                addr294:
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   addr244:
                                                                                                   this.§5Y§.visible = true;
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr255);
                                                                                                         }
                                                                                                         break loop4;
                                                                                                      }
                                                                                                      §§goto(addr360);
                                                                                                   }
                                                                                                   §§goto(addr294);
                                                                                                   addr301:
                                                                                                }
                                                                                                §§goto(addr313);
                                                                                             }
                                                                                             §§goto(addr339);
                                                                                          }
                                                                                          §§goto(addr294);
                                                                                       }
                                                                                       §§goto(addr244);
                                                                                    }
                                                                                    §§goto(addr395);
                                                                                 }
                                                                                 §§goto(addr360);
                                                                              }
                                                                              §§goto(addr395);
                                                                           }
                                                                           §§goto(addr255);
                                                                        }
                                                                        §§goto(addr301);
                                                                     }
                                                                     §§goto(addr211);
                                                                  }
                                                                  break loop4;
                                                               }
                                                               this.§5Y§.visible = false;
                                                               break loop4;
                                                            }
                                                            §§push(§§pop());
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc4_ || this))
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§pop();
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§=[§);
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              §§push(§§pop().length == 0);
                                                                              if(!(_loc4_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc5_ && _loc2_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              addr138:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        §§goto(addr170);
                                                                        addr72:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§>H§);
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           addr169:
                                                                           §§goto(addr170);
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        §§goto(addr170);
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                                  §§goto(addr173);
                                                               }
                                                               §§goto(addr169);
                                                            }
                                                            §§goto(addr170);
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             addr127:
                                          }
                                          §§goto(addr138);
                                       }
                                       §§goto(addr170);
                                    }
                                 }
                                 addr159:
                              }
                              break;
                           }
                           return;
                        }
                        §§goto(addr127);
                     }
                  }
               }
            }
         }
         §§goto(addr159);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§5Y§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§=[§ = null;
                  addr111:
                  loop3:
                  while(true)
                  {
                     if(this.§5Y§.numChildren > 0)
                     {
                        this.§5Y§.removeChildAt(0);
                        continue;
                     }
                     while(this.§5Y§.parent)
                     {
                        if(_loc2_)
                        {
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop3;
                           }
                           this.§5Y§.parent.removeChild(this.§5Y§);
                        }
                        break;
                     }
                     this.§5Y§ = null;
                  }
                  addr111:
               }
               §§goto(addr111);
            }
            while(true)
            {
               super.clear();
               if(_loc1_)
               {
                  continue;
               }
               if(!_loc1_)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr56);
               }
               §§goto(addr87);
            }
            return;
         }
         §§goto(addr111);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§9!h§ = param1;
         }
         do
         {
            this.§'l§();
         }
         while(_loc2_);
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9![§ = param1;
            do
            {
               this.§'l§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §'l§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc1_))
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc5_)
               {
                  §§goto(addr31);
               }
            }
            var _loc1_:Array = new Array(this.§9!h§ + "_" + this.§9![§,this.§9!h§ + "_" + §0!0§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§9![§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §0!0§);
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
                     if(_loc5_)
                     {
                        if(mClip.numChildren > 0)
                        {
                           if(_loc5_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                     }
                     break;
                  }
                  catch(e:Error)
                  {
                  }
                  §§push(_loc2_);
                  if(_loc5_ || _loc1_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc4_)
                     {
                        addr136:
                        §§push(int(§§pop()));
                        if(_loc4_ && _loc2_)
                        {
                           continue;
                        }
                     }
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr136);
               }
               return;
            }
         }
         addr31:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(this.§9!h§ != §,a§)
            {
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  loop1:
                  while(true)
                  {
                     §§push(this.§[!!§);
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 addr237:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr177:
                                    while(true)
                                    {
                                       §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                                       if(_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       addr197:
                                       if(!(_loc4_ || this))
                                       {
                                          continue loop3;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    this.§!!X§();
                                    addr209:
                                    while(_loc4_)
                                    {
                                    }
                                    continue loop1;
                                 }
                                 addr206:
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 while(true)
                                 {
                                    if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                    {
                                       addr160:
                                       while(true)
                                       {
                                          this.setComponentVisualState(§`#§);
                                          addr165:
                                          §§goto(addr250);
                                       }
                                       addr160:
                                    }
                                    §§goto(addr142);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr250:
            while(true)
            {
               if(_loc4_)
               {
                  if(_loc3_ && this)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(param1);
                     loop13:
                     while(true)
                     {
                        if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                        {
                           while(true)
                           {
                              this.setComponentVisualState(§@!a§);
                              addr152:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr206);
                                 }
                              }
                              §§goto(addr209);
                           }
                           addr147:
                        }
                        while(true)
                        {
                           §§push(param1);
                           addr121:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 continue loop11;
                              }
                              continue loop13;
                           }
                           continue loop11;
                        }
                     }
                  }
               }
               §§goto(addr209);
            }
            return;
         }
         §§goto(addr160);
      }
      
      public function §!!X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§9!h§);
            loop0:
            while(true)
            {
               §§push(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr100:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr101);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
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
         if(!(_loc6_ && _loc2_))
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
                     addr177:
                     while(true)
                     {
                     }
                  }
                  addr170:
               }
               while(true)
               {
                  mClip = null;
                  while(true)
                  {
                     mClip = param1;
                     while(true)
                     {
                        if(!(_loc6_ && param1))
                        {
                           continue loop0;
                        }
                        §§goto(addr170);
                        loop8:
                        while(!(_loc6_ && _loc2_))
                        {
                           loop9:
                           while(true)
                           {
                              mClip.y = _loc3_;
                              addr86:
                              addr148:
                              while(!(_loc6_ && param1))
                              {
                                 this.§'l§();
                                 if(!(_loc6_ && this))
                                 {
                                    if(!_loc6_)
                                    {
                                       break loop9;
                                    }
                                    continue loop8;
                                 }
                              }
                              while(true)
                              {
                                 addr94:
                                 while(true)
                                 {
                                    mClip.x = _loc2_;
                                    continue loop8;
                                 }
                                 §§goto(addr86);
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr177);
                     addr121:
                     if(!(_loc5_ || _loc2_))
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        mParentContainer.mClip.addChildAt(mClip,_loc4_);
                        §§goto(addr148);
                     }
                     §§goto(addr177);
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.setVisibility(param1);
            while(!mClip.visible)
            {
               if(!_loc2_)
               {
                  this.§`!^§(false);
               }
               if(_loc3_ || _loc2_)
               {
                  addr68:
                  break;
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.onParentVisibilityChange(param1);
            while(true)
            {
               §§push(param1);
               if(_loc2_ || param1)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        this.§`!^§(false);
                        addr52:
                        break;
                     }
                     continue;
                  }
                  §§goto(addr52);
               }
               break;
            }
            return;
         }
         §§goto(addr52);
      }
   }
}
