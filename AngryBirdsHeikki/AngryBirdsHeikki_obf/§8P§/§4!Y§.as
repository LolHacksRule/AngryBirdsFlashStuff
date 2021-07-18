package §8P§
{
   import §'!N§.§2O§;
   import §]!6§.§false§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §4!Y§ extends §&-§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §=?§:String = "Deactive";
      
      public static const §[&§:String = "Disabled";
      
      public static const §-j§:String = "Out";
      
      public static const §=w§:String = "Over";
      
      public static const §3!=§:String = "Up_Default";
      
      public static const §%!D§:String = "Down";
      
      public static var §1!e§:Class;
      
      public static var §`J§:Boolean = true;
      
      public static const §5!&§:String = "Tooltip";
      
      public static var §50§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            while(true)
            {
               §=?§ = "Deactive";
               addr121:
               while(true)
               {
                  §[&§ = "Disabled";
                  while(true)
                  {
                     §-j§ = "Out";
                     while(!_loc1_)
                     {
                        §=w§ = "Over";
                        loop4:
                        while(true)
                        {
                           §3!=§ = "Up_Default";
                           addr89:
                           while(true)
                           {
                              §%!D§ = "Down";
                              addr82:
                              while(!_loc1_)
                              {
                              }
                              continue loop4;
                           }
                        }
                        if(_loc2_ || _loc1_)
                        {
                           return;
                           addr46:
                        }
                     }
                  }
               }
               addr65:
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §50§ = true;
               if(!(_loc1_ && §4!Y§))
               {
                  if(_loc2_)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr39);
                     }
                     §§goto(addr82);
                  }
                  while(true)
                  {
                     §5!&§ = "Tooltip";
                  }
                  addr77:
               }
               while(true)
               {
                  if(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr65);
                     }
                     else
                     {
                        §§goto(addr121);
                     }
                  }
                  break;
                  §§goto(addr72);
               }
               addr72:
               §§goto(addr89);
            }
         }
         while(true)
         {
            §`J§ = true;
            §§goto(addr77);
         }
         §§goto(addr46);
      }
      
      public var §,!L§:String;
      
      public var §`r§:String;
      
      public var §%!8§:String;
      
      public var §>!9§:MovieClip;
      
      public var §]c§:int = 6;
      
      private var §9T§:Boolean = false;
      
      private var §-!B§:String = "auto";
      
      public function §4!Y§(param1:XML, param2:§2O§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               this.§,!L§ = COMPONENT_STATE_ACTIVE_DEFAULT;
               while(true)
               {
                  this.§`r§ = §3!=§;
                  while(_loc7_)
                  {
                     this.§&!6§();
                     while(_loc7_)
                     {
                     }
                  }
                  continue loop0;
                  addr46:
                  if(!(_loc6_ && param2))
                  {
                     if(false)
                     {
                        loop5:
                        while(true)
                        {
                           this.§'q§(param1.@Tooltip);
                           while(param1.@Toggle.toString().toUpperCase() == "TRUE")
                           {
                              if(_loc7_)
                              {
                                 this.§9T§ = true;
                              }
                              if(_loc6_ && param2)
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 break loop5;
                              }
                              §§goto(addr46);
                           }
                        }
                        §§goto(addr74);
                        addr55:
                     }
                     var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
                     var _loc5_:String = param1.@cursor.toString().toLowerCase();
                     if(_loc7_ || param3)
                     {
                        if(_loc4_.indexOf(_loc5_) > -1)
                        {
                           if(!_loc6_)
                           {
                              this.§-!B§ = _loc5_;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr55);
         }
      }
      
      public static function §#!e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1!e§ = §false§.§5#§(§5!&§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.setActiveStatus(param1);
         }
         while(!param1)
         {
            if(!(_loc3_ || this))
            {
               break;
            }
            addr69:
            if(_loc2_ && param1)
            {
               continue;
            }
            this.setComponentVisualState(§-j§);
            §§goto(addr69);
         }
      }
      
      public function §'q§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§%!8§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§%!8§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§%!8§ = null;
                                 addr190:
                                 while(true)
                                 {
                                 }
                              }
                              addr187:
                           }
                           loop5:
                           while(true)
                           {
                              §§push(this.§%!8§);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§`J§);
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §`J§ = false;
                                          addr169:
                                          while(true)
                                          {
                                             §#!e§();
                                             continue loop0;
                                          }
                                          addr50:
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          loop21:
                                          while(true)
                                          {
                                             getParentView().addChild(this.§>!9§);
                                             if(_loc3_)
                                             {
                                                §§goto(addr25);
                                             }
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                §§goto(addr50);
                                                continue loop21;
                                             }
                                             loop15:
                                             while(true)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(_loc3_ || param1)
                                                   {
                                                      this.§>!9§.visible = false;
                                                      continue;
                                                   }
                                                   addr93:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            break loop15;
                                                         }
                                                         addr97:
                                                      }
                                                      else
                                                      {
                                                         while(!_loc2_)
                                                         {
                                                         }
                                                         §§goto(addr190);
                                                         addr127:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§>!9§.mouseEnabled = false;
                                                         §§goto(addr97);
                                                      }
                                                   }
                                                }
                                                while(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      this.§>!9§.mouseChildren = false;
                                                      continue loop15;
                                                   }
                                                   addr215:
                                                   addr215:
                                                   while(true)
                                                   {
                                                      §§push(this.§%!8§);
                                                      break loop5;
                                                   }
                                                }
                                                continue loop6;
                                             }
                                             addr43:
                                             §§goto(addr169);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§>!9§ = new MovieClip();
                                          continue loop6;
                                       }
                                       addr130:
                                    }
                                 }
                                 addr183:
                                 if(_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 addr214:
                                 while(true)
                                 {
                                    §§pop();
                                    §§goto(addr215);
                                 }
                              }
                              addr25:
                              return;
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr214);
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §5R§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§>!9§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(_loc4_ || _loc1_)
         {
            _loc1_.name = "Text";
            if(_loc4_)
            {
               addr54:
               this.§>!9§.addChild(_loc1_);
            }
            var _loc2_:Shape = new Shape();
            if(_loc4_ || this)
            {
               _loc2_.name = "Base";
               while(true)
               {
                  this.§>!9§.addChildAt(_loc2_,0);
                  while(_loc4_)
                  {
                     this.§=!G§(this.§%!8§);
                     if(_loc4_)
                     {
                        return;
                        addr81:
                     }
                  }
               }
            }
            §§goto(addr81);
         }
         §§goto(addr54);
      }
      
      private function §'L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§>!9§ = new §1!e§();
            do
            {
               this.§!P§(this.§%!8§);
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function §!P§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%!8§ = param1;
            while(true)
            {
               if(!§1!e§)
               {
                  this.§=!G§(param1);
                  if(!_loc2_)
                  {
                     §§goto(addr20);
                  }
               }
               if(!_loc3_)
               {
                  break;
               }
               if(_loc3_)
               {
                  addr60:
                  this.§ a§(param1);
                  break;
               }
            }
            addr20:
            return;
         }
         §§goto(addr60);
      }
      
      private function § a§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§>!9§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§>!9§.getChildByName("Base") as MovieClip;
         if(!(_loc7_ && this))
         {
            _loc2_.text = this.§%!8§;
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               _loc2_.multiline = false;
               while(!_loc7_)
               {
                  _loc2_.width = _loc2_.textWidth * 1.25;
                  if(!(_loc7_ && param1))
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
            if(!(_loc7_ && param1))
            {
               _loc3_.scaleX = _loc4_ / _loc3_.width;
               if(_loc6_ || _loc3_)
               {
                  addr110:
                  _loc3_.x = 0;
               }
               var _loc5_:int = 0;
               while(true)
               {
                  if(_loc5_ >= _loc3_.numChildren)
                  {
                     if(_loc6_ || _loc2_)
                     {
                        _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                     }
                     if(_loc6_)
                     {
                        break;
                     }
                     loop4:
                     while(!(_loc6_ || this))
                     {
                        while(true)
                        {
                           _loc5_++;
                           continue loop4;
                        }
                     }
                     continue;
                  }
                  _loc3_.getChildAt(0).x = 0;
                  §§goto(addr171);
               }
               return;
            }
            §§goto(addr110);
         }
      }
      
      private function §=!G§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§>!9§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!_loc5_)
         {
            _loc3_.align = TextAlign.CENTER;
            loop0:
            while(true)
            {
               _loc3_.bold = true;
               while(true)
               {
                  _loc3_.size = 12;
                  while(_loc6_)
                  {
                     _loc2_.defaultTextFormat = _loc3_;
                     continue loop0;
                     loop6:
                     while(_loc6_ || _loc2_)
                     {
                        _loc2_.width = _loc2_.textWidth * 1.25;
                        loop7:
                        while(true)
                        {
                           _loc2_.textColor = 0;
                           addr72:
                           addr108:
                           loop8:
                           for(; _loc6_ || param1; if(_loc6_ || _loc2_)
                           {
                              continue loop7;
                           })
                           {
                              while(true)
                              {
                                 do
                                 {
                                    _loc2_.selectable = false;
                                    while(_loc6_)
                                    {
                                       addr60:
                                       if(!(_loc5_ && this))
                                       {
                                          _loc2_.mouseEnabled = false;
                                          if(!_loc5_)
                                          {
                                             continue loop8;
                                          }
                                          continue;
                                       }
                                       addr120:
                                       while(true)
                                       {
                                          _loc2_.text = this.§%!8§;
                                          break loop8;
                                          §§goto(addr60);
                                       }
                                    }
                                    continue loop6;
                                 }
                                 while(false);
                                 
                                 var _loc4_:Shape;
                                 (_loc4_ = this.§>!9§.getChildByName("Base") as Shape).graphics.clear();
                                 if(_loc6_ || _loc2_)
                                 {
                                    _loc4_.graphics.lineStyle(1);
                                    loop12:
                                    while(true)
                                    {
                                       _loc4_.graphics.beginFill(0,1);
                                       while(true)
                                       {
                                          _loc4_.graphics.drawRect(-this.§]c§,-this.§]c§,_loc2_.width + 2 * this.§]c§,_loc2_.height + 2 * this.§]c§);
                                          addr254:
                                          while(_loc6_)
                                          {
                                             _loc4_.graphics.beginFill(16777215,1);
                                             continue loop12;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr229);
                              }
                           }
                           while(!(_loc5_ && _loc3_))
                           {
                              _loc2_.height = _loc2_.textHeight * 1.25;
                              continue loop6;
                              §§goto(addr72);
                           }
                           continue loop0;
                           if(_loc5_ && this)
                           {
                              continue;
                           }
                           §§goto(addr52);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §#+§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!(_loc4_ && _loc3_))
         {
            §§push(!this.§>!9§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr162:
                        while(true)
                        {
                           §§push(this.§%!8§);
                           addr126:
                           loop7:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              addr128:
                              while(true)
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    break loop7;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  loop3:
                  while(true)
                  {
                     §§push(§§pop());
                     loop4:
                     while(!_loc4_)
                     {
                        if(!§§pop())
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§pop();
                              if(_loc5_ || this)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§%!8§);
                                    if(_loc5_ || this)
                                    {
                                       §§push(§§pop().length == 0);
                                       if(!(_loc4_ && this))
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                break loop3;
                                             }
                                             §§push(param1);
                                             if(!(_loc4_ && param1))
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc4_ && this)
                                                {
                                                }
                                                §§goto(addr167);
                                             }
                                             if(!(_loc4_ && param1))
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(§§pop());
                                                if(_loc4_ && this)
                                                {
                                                   continue loop4;
                                                }
                                                if(§§pop())
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            if(false)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(§50§);
                                                            if(!_loc4_)
                                                            {
                                                               addr166:
                                                               addr167:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     addr175:
                                                                     _loc2_ = mClip.getRect(getParentView());
                                                                     if(_loc5_)
                                                                     {
                                                                        this.§>!9§.y = _loc2_.y - this.§>!9§.height - this.§]c§;
                                                                        if(!_loc4_)
                                                                        {
                                                                           this.§>!9§.x = _loc2_.x + mClip.width / 2 - this.§>!9§.width / 2;
                                                                        }
                                                                     }
                                                                     _loc3_ = this.§>!9§.getRect(mClip.stage);
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc3_.right > mClip.stage.stageWidth - this.§]c§)
                                                                        {
                                                                           this.§>!9§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§]c§));
                                                                           addr383:
                                                                           addr355:
                                                                        }
                                                                        if(_loc3_.left < this.§]c§)
                                                                        {
                                                                           addr331:
                                                                           this.§>!9§.x += 1 + (this.§]c§ - _loc3_.left);
                                                                           addr345:
                                                                        }
                                                                        if(_loc3_.bottom > mClip.stage.stageHeight - this.§]c§)
                                                                        {
                                                                           addr302:
                                                                           if(!_loc4_)
                                                                           {
                                                                              this.§>!9§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§]c§));
                                                                              addr322:
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr256:
                                                                                 if(_loc3_.top < this.§]c§)
                                                                                 {
                                                                                    addr262:
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr271:
                                                                                          this.§>!9§.y += mClip.height + this.§>!9§.height + this.§]c§ * 2;
                                                                                          addr289:
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr233:
                                                                                             this.§>!9§.visible = true;
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr256);
                                                                                                      }
                                                                                                      §§goto(addr389);
                                                                                                   }
                                                                                                   §§goto(addr383);
                                                                                                }
                                                                                                §§goto(addr262);
                                                                                             }
                                                                                             §§goto(addr289);
                                                                                          }
                                                                                          §§goto(addr302);
                                                                                       }
                                                                                       §§goto(addr345);
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                                 §§goto(addr233);
                                                                              }
                                                                              §§goto(addr331);
                                                                           }
                                                                           §§goto(addr355);
                                                                        }
                                                                        §§goto(addr256);
                                                                     }
                                                                     §§goto(addr271);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  this.§>!9§.visible = false;
                                                               }
                                                               §§goto(addr389);
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr162);
                                                         }
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr167);
                                             }
                                             break;
                                          }
                                          §§goto(addr128);
                                          addr105:
                                       }
                                       §§goto(addr167);
                                    }
                                    break;
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr389);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr105);
                     }
                     continue loop1;
                  }
                  if(_loc5_ || _loc3_)
                  {
                     return;
                  }
                  §§goto(addr175);
               }
            }
         }
         §§goto(addr162);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§>!9§)
            {
               if(_loc1_)
               {
                  addr102:
                  this.§%!8§ = null;
               }
               loop0:
               while(true)
               {
                  if(this.§>!9§.numChildren > 0)
                  {
                     this.§>!9§.removeChildAt(0);
                     continue;
                  }
                  loop1:
                  while(true)
                  {
                     if(this.§>!9§.parent)
                     {
                        if(_loc1_)
                        {
                           this.§>!9§.parent.removeChild(this.§>!9§);
                        }
                        while(!_loc2_)
                        {
                           if(_loc1_ || this)
                           {
                              if(_loc1_)
                              {
                                 return;
                                 addr42:
                              }
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        this.§>!9§ = null;
                        addr57:
                        while(true)
                        {
                        }
                     }
                  }
               }
            }
            while(true)
            {
               super.clear();
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr33);
            }
            §§goto(addr42);
         }
         §§goto(addr102);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!L§ = param1;
            do
            {
               this.§&!6§();
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§`r§ = param1;
            do
            {
               this.§&!6§();
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function §&!6§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc4_)
               {
                  return;
               }
            }
         }
         var _loc1_:Array = new Array(this.§,!L§ + "_" + this.§`r§,this.§,!L§ + "_" + §3!=§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§`r§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §3!=§);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            try
            {
               mClip.gotoAndStop(_loc1_[_loc2_] as String);
               if(_loc5_ && this)
               {
                  continue;
               }
               if(mClip.numChildren > 0)
               {
                  if(_loc4_ || _loc1_)
                  {
                     return;
                  }
                  break;
               }
            }
            catch(e:Error)
            {
            }
            _loc2_++;
            if(_loc5_)
            {
               break;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§,!L§ != §[&§)
            {
               loop0:
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  loop1:
                  while(true)
                  {
                     §§push(this.§9T§);
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc4_ && this))
                        {
                           if(§§pop())
                           {
                              loop22:
                              while(true)
                              {
                                 §§pop();
                                 addr206:
                                 while(true)
                                 {
                                    §§push(param1);
                                    continue loop22;
                                 }
                              }
                              addr205:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    this.§>+§();
                                 }
                                 while(true)
                                 {
                                    loop11:
                                    while(!(_loc4_ && _loc3_))
                                    {
                                       this.setComponentVisualState(§=w§);
                                       loop12:
                                       for(; _loc3_; while(_loc3_ || _loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop11;
                                          }
                                          Mouse.cursor = MouseCursor.AUTO;
                                          §§goto(addr135);
                                          §§goto(addr98);
                                       })
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             §§push(param1);
                                             loop14:
                                             while(_loc3_)
                                             {
                                                if(§§pop() == §#!C§)
                                                {
                                                   continue loop12;
                                                }
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(_loc4_ && this)
                                                   {
                                                      continue loop14;
                                                   }
                                                   if(§§pop() == §3"§)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               Mouse.cursor = this.§-!B§;
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     while(_loc3_)
                                                                     {
                                                                        this.setComponentVisualState(§-j§);
                                                                        while(!(_loc4_ && this))
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     addr227:
                                                                     return;
                                                                     addr135:
                                                                  }
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     this.setComponentVisualState(§=w§);
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        addr23:
                                                                        while(true)
                                                                        {
                                                                           this.§#+§(param1 == §3"§);
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           continue loop20;
                                                                        }
                                                                        addr43:
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc3_ || param2)
                                                                           {
                                                                              return;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.setComponentVisualState(§%!D§);
                                                                        break loop12;
                                                                     }
                                                                     addr163:
                                                                  }
                                                               }
                                                               addr84:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr98);
                                                      }
                                                      §§goto(addr84);
                                                   }
                                                   §§goto(addr23);
                                                }
                                                §§goto(addr206);
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                                   {
                                                      continue loop11;
                                                   }
                                                   continue loop13;
                                                }
                                                addr161:
                                                while(true)
                                                {
                                                   if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                                   {
                                                      §§goto(addr163);
                                                   }
                                                   addr138:
                                                   while(true)
                                                   {
                                                      continue loop10;
                                                   }
                                                }
                                             }
                                             §§goto(addr169);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr138);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr161);
                              }
                           }
                        }
                        §§goto(addr205);
                     }
                  }
               }
            }
         }
         §§goto(addr227);
      }
      
      public function §>+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§,!L§);
            loop0:
            while(true)
            {
               §§push(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
               while(§§pop() != §§pop())
               {
                  §§push(this.§,!L§);
                  if(!_loc2_)
                  {
                     §§push(§4!Y§.§=?§);
                     if(_loc1_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              this.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           }
                           if(_loc2_)
                           {
                              addr75:
                           }
                        }
                        return;
                     }
                     continue;
                  }
                  continue loop0;
               }
               this.setComponentState(§4!Y§.§=?§);
            }
         }
         §§goto(addr75);
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
         if(!(_loc5_ && _loc3_))
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
               while(true)
               {
                  mParentContainer.mClip.removeChild(mClip);
                  addr155:
                  while(true)
                  {
                  }
                  loop6:
                  while(_loc6_ || _loc3_)
                  {
                     loop7:
                     while(true)
                     {
                        mClip.x = _loc2_;
                        addr94:
                        loop8:
                        for(; _loc6_ || param1; loop9:
                        while(_loc6_ || this)
                        {
                           while(true)
                           {
                              this.§&!6§();
                              if(_loc5_)
                              {
                                 continue loop9;
                              }
                              if(!(_loc6_ || _loc3_))
                              {
                                 continue loop6;
                              }
                              if(!_loc5_)
                              {
                                 break;
                              }
                              addr113:
                              while(true)
                              {
                                 mParentContainer.mClip.addChildAt(mClip,_loc4_);
                                 continue loop6;
                              }
                           }
                           return;
                        })
                        {
                           addr101:
                           if(!(_loc5_ && _loc3_))
                           {
                              mClip.y = _loc3_;
                              continue;
                           }
                           addr135:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 mClip = param1;
                                 break loop8;
                              }
                              break;
                              §§goto(addr101);
                           }
                           §§goto(addr155);
                        }
                        while(true)
                        {
                           if(!this.mParentContainer)
                           {
                              continue loop7;
                           }
                           §§goto(addr113);
                           §§goto(addr94);
                        }
                     }
                  }
               }
            }
            while(true)
            {
               mClip = null;
               §§goto(addr135);
               §§goto(addr155);
            }
         }
         §§goto(addr89);
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
               if(!_loc2_)
               {
                  break;
               }
               addr54:
               if(_loc3_)
               {
                  continue;
               }
               addr51:
               this.§#+§(false);
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr51);
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
               if(!_loc3_)
               {
                  break;
               }
               addr54:
               if(_loc2_)
               {
                  continue;
               }
               this.§#+§(false);
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr54);
      }
   }
}
