package §'!A§
{
   import §'p§.§`!T§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §9!!§ extends §-!2§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §,!0§:String = "Deactive";
      
      public static const §%!§:String = "Disabled";
      
      public static const §7N§:String = "Out";
      
      public static const §&M§:String = "Over";
      
      public static const §6m§:String = "Up_Default";
      
      public static const §?"?§:String = "Down";
      
      public static var §8!_§:Class;
      
      public static var § d§:Boolean = true;
      
      public static const §3+§:String = "Tooltip";
      
      public static var §<>§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            while(true)
            {
               §,!0§ = "Deactive";
               loop1:
               while(true)
               {
                  §%!§ = "Disabled";
                  addr125:
                  while(true)
                  {
                     §7N§ = "Out";
                     loop3:
                     while(true)
                     {
                        §&M§ = "Over";
                        while(true)
                        {
                           §6m§ = "Up_Default";
                           addr100:
                           while(true)
                           {
                              §?"?§ = "Down";
                           }
                           addr43:
                           if(_loc1_ || _loc1_)
                           {
                              if(_loc1_)
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               addr83:
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §3+§ = "Tooltip";
               while(_loc1_)
               {
                  §<>§ = true;
                  if(_loc2_)
                  {
                     continue;
                  }
                  addr29:
                  if(_loc1_ || §9!!§)
                  {
                     addr36:
                     if(_loc1_ || _loc2_)
                     {
                        §§goto(addr43);
                     }
                     while(true)
                     {
                        § d§ = true;
                        §§goto(addr36);
                     }
                     §§goto(addr69);
                     addr95:
                  }
                  while(!_loc2_)
                  {
                     §§goto(addr83);
                     §§goto(addr29);
                  }
                  §§goto(addr125);
               }
               §§goto(addr100);
            }
         }
         §§goto(addr95);
      }
      
      public var §%!v§:String;
      
      public var §,!I§:String;
      
      public var §"!+§:String;
      
      public var §"R§:MovieClip;
      
      public var §7!^§:int = 6;
      
      private var §>!r§:Boolean = false;
      
      private var §<[§:String = "auto";
      
      public function §9!!§(param1:XML, param2:§`!T§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            super(param1,param2,param3);
            while(true)
            {
               this.§%!v§ = COMPONENT_STATE_ACTIVE_DEFAULT;
            }
            addr94:
         }
         while(true)
         {
            this.§,!I§ = §6m§;
            while(!_loc6_)
            {
               this.§"!i§();
               loop3:
               while(_loc7_ || param1)
               {
                  loop4:
                  while(true)
                  {
                     this.§]!0§(param1.@Tooltip);
                     while(true)
                     {
                        if(_loc6_)
                        {
                           continue loop3;
                        }
                        if(!_loc6_)
                        {
                           if(param1.@Toggle.toString().toUpperCase() != "TRUE")
                           {
                              break;
                           }
                           if(_loc7_)
                           {
                              this.§>!r§ = true;
                           }
                           if(!(_loc6_ && this))
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           continue;
                        }
                        §§goto(addr94);
                     }
                     var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
                     var _loc5_:String = param1.@cursor.toString().toLowerCase();
                     if(_loc7_)
                     {
                        if(_loc4_.indexOf(_loc5_) > -1)
                        {
                           if(_loc7_)
                           {
                              addr133:
                              this.§<[§ = _loc5_;
                           }
                        }
                        return;
                     }
                     §§goto(addr133);
                  }
               }
            }
         }
      }
      
      public static function §'"8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §9!!§))
         {
            §8!_§ = §>!]§.§1!8§(§3+§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super.setActiveStatus(param1);
            while(!param1)
            {
               if(_loc3_ && param1)
               {
                  break;
               }
               addr63:
               if(!_loc2_)
               {
                  continue;
               }
               addr60:
               this.setComponentVisualState(§7N§);
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function §]!0§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§"!+§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§"!+§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc2_ || this)
                  {
                     if(§§pop())
                     {
                        loop12:
                        while(true)
                        {
                           §§pop();
                           addr204:
                           loop13:
                           while(true)
                           {
                              §§push(this.§"!+§);
                              addr162:
                              while(!_loc3_)
                              {
                                 §§push(§§pop().length == 0);
                                 if(!(_loc2_ || _loc3_))
                                 {
                                    continue loop12;
                                 }
                                 continue loop13;
                              }
                              continue loop1;
                           }
                        }
                        addr203:
                     }
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§"!+§ = null;
                              addr179:
                              while(true)
                              {
                              }
                           }
                           addr176:
                        }
                        while(true)
                        {
                           §§push(this.§"!+§);
                           if(_loc2_)
                           {
                              if(!§§pop())
                              {
                                 addr24:
                              }
                              loop6:
                              while(true)
                              {
                                 §§push(§ d§);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       § d§ = false;
                                       addr156:
                                       while(_loc2_)
                                       {
                                          §'"8§();
                                          while(!_loc3_)
                                          {
                                          }
                                          §§goto(addr204);
                                       }
                                       continue loop0;
                                    }
                                    addr153:
                                 }
                                 while(true)
                                 {
                                    this.§"R§ = new MovieClip();
                                    addr136:
                                    loop14:
                                    while(true)
                                    {
                                       if(!§8!_§)
                                       {
                                          this.§!"-§();
                                          while(true)
                                          {
                                             loop16:
                                             while(true)
                                             {
                                                this.§"R§.mouseEnabled = false;
                                                loop17:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      this.§"R§.mouseChildren = false;
                                                      loop18:
                                                      for(; !_loc3_; while(true)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            continue loop17;
                                                         }
                                                         continue loop18;
                                                         addr74:
                                                         getParentView().addChild(this.§"R§);
                                                         if(!(_loc2_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            break loop16;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc2_ || this)
                                                            {
                                                               §§goto(addr24);
                                                            }
                                                            §§goto(addr156);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop16;
                                                            }
                                                            addr130:
                                                         }
                                                      },continue loop6)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               this.§"R§.visible = false;
                                                               continue;
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                      §§goto(addr153);
                                                   }
                                                }
                                                §§goto(addr140);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             this.§-!`§();
                                             §§goto(addr130);
                                          }
                                          §§goto(addr140);
                                       }
                                    }
                                 }
                                 if(!(_loc2_ || this))
                                 {
                                    continue;
                                 }
                                 §§goto(addr74);
                              }
                              continue loop2;
                              return;
                           }
                           break;
                        }
                        §§goto(addr162);
                     }
                  }
                  §§goto(addr203);
               }
            }
         }
         §§goto(addr136);
      }
      
      private function §!"-§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            this.§"R§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!(_loc4_ && _loc3_))
         {
            _loc1_.name = "Text";
            if(!(_loc4_ && _loc1_))
            {
               addr58:
               this.§"R§.addChild(_loc1_);
            }
            var _loc2_:Shape = new Shape();
            if(!(_loc4_ && _loc3_))
            {
               _loc2_.name = "Base";
               while(true)
               {
                  this.§"R§.addChildAt(_loc2_,0);
                  loop1:
                  while(!_loc4_)
                  {
                     while(true)
                     {
                        this.§3J§(this.§"!+§);
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr104);
         }
         §§goto(addr58);
      }
      
      private function §-!`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"R§ = new §8!_§();
            do
            {
               this.§;!9§(this.§"!+§);
            }
            while(!_loc2_);
            
         }
      }
      
      public function §;!9§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!+§ = param1;
            while(true)
            {
               if(§8!_§)
               {
                  addr19:
                  break;
                  addr72:
               }
               this.§3J§(param1);
               if(!(_loc2_ || _loc3_))
               {
                  return;
               }
               if(!_loc2_)
               {
                  break;
               }
               if(_loc3_ && this)
               {
                  continue;
               }
               §§goto(addr19);
            }
         }
         this.§^c§(param1);
         §§goto(addr72);
      }
      
      private function §^c§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TextField = this.§"R§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§"R§.getChildByName("Base") as MovieClip;
         if(!_loc6_)
         {
            _loc2_.text = this.§"!+§;
            loop0:
            while(true)
            {
               addr54:
               while(true)
               {
                  _loc2_.multiline = false;
                  continue loop0;
               }
            }
            addr63:
         }
         while(true)
         {
            _loc2_.width = _loc2_.textWidth * 1.25;
            if(_loc6_)
            {
               continue;
            }
            if(_loc7_ || _loc3_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr63);
            }
            §§goto(addr54);
         }
         var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
         if(!(_loc6_ && _loc3_))
         {
            _loc3_.scaleX = _loc4_ / _loc3_.width;
            if(!(_loc6_ && this))
            {
               _loc3_.x = 0;
            }
         }
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_.numChildren)
            {
               if(!_loc6_)
               {
                  if(_loc7_)
                  {
                     _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                  }
                  else
                  {
                     _loc5_++;
                     continue;
                     addr157:
                  }
               }
               if(!_loc6_)
               {
                  break;
               }
               continue;
            }
            _loc3_.getChildAt(0).x = 0;
            §§goto(addr157);
         }
      }
      
      private function §3J§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:TextField = this.§"R§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!(_loc6_ && _loc2_))
         {
            _loc3_.align = TextAlign.CENTER;
         }
         loop0:
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
                     continue loop2;
                     addr98:
                     if(_loc5_ || param1)
                     {
                        _loc2_.textColor = 0;
                        loop8:
                        while(_loc5_ || _loc3_)
                        {
                           while(true)
                           {
                              _loc2_.selectable = false;
                              continue loop8;
                              addr49:
                              if(!_loc5_)
                              {
                                 break;
                              }
                              if(false)
                              {
                                 continue;
                              }
                              var _loc4_:Shape;
                              (_loc4_ = this.§"R§.getChildByName("Base") as Shape).graphics.clear();
                              if(!_loc6_)
                              {
                                 _loc4_.graphics.lineStyle(1);
                                 _loc4_.graphics.beginFill(0,1);
                                 _loc4_.graphics.drawRect(-this.§7!^§,-this.§7!^§,_loc2_.width + 2 * this.§7!^§,_loc2_.height + 2 * this.§7!^§);
                                 addr246:
                                 addr277:
                                 if(_loc5_ || _loc3_)
                                 {
                                    if(!_loc6_)
                                    {
                                       _loc4_.graphics.beginFill(16777215,1);
                                       addr219:
                                       if(_loc5_)
                                       {
                                          _loc4_.graphics.drawRect(-this.§7!^§ / 2,-(this.§7!^§ / 2),_loc2_.width + 1 * this.§7!^§,_loc2_.height + 1 * this.§7!^§);
                                          if(_loc6_)
                                          {
                                             §§goto(addr219);
                                          }
                                          return;
                                       }
                                       §§goto(addr246);
                                       addr255:
                                    }
                                    §§goto(addr277);
                                 }
                                 addr272:
                                 §§goto(addr272);
                              }
                              while(true)
                              {
                                 if(_loc6_ && this)
                                 {
                                    continue loop8;
                                 }
                                 if(!(_loc5_ || this))
                                 {
                                    break;
                                 }
                                 _loc2_.mouseEnabled = false;
                                 if(_loc6_ && param1)
                                 {
                                    continue;
                                 }
                                 if(!_loc6_)
                                 {
                                    §§goto(addr49);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       _loc2_.height = _loc2_.textHeight * 1.25;
                                       addr113:
                                       while(_loc5_)
                                       {
                                          _loc2_.width = _loc2_.textWidth * 1.25;
                                          break loop8;
                                       }
                                       continue loop1;
                                    }
                                    addr121:
                                 }
                              }
                              continue loop2;
                              §§goto(addr255);
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           if(!(_loc6_ && this))
                           {
                              §§goto(addr98);
                           }
                           else
                           {
                              §§goto(addr113);
                           }
                        }
                        addr76:
                     }
                  }
               }
            }
         }
      }
      
      private function §>!?§(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(_loc4_ || _loc2_)
         {
            §§push(!this.§"R§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§"!+§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              if(!(_loc5_ && _loc3_))
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop6:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(_loc4_)
                                          {
                                             §§pop();
                                             while(true)
                                             {
                                                addr88:
                                                while(true)
                                                {
                                                   §§push(this.§"!+§);
                                                   if(!_loc4_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(§§pop().length == 0);
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ || this))
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop0;
                                          addr126:
                                       }
                                       while(!§§pop())
                                       {
                                          §§push(param1);
                                          if(_loc4_ || param1)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc4_)
                                             {
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   continue loop6;
                                                }
                                                §§goto(addr96);
                                             }
                                          }
                                          §§push(Boolean(§§pop()));
                                          break loop4;
                                       }
                                       addr105:
                                       if(!_loc5_)
                                       {
                                          break loop5;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 return;
                                 addr123:
                              }
                              break;
                           }
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 _loc2_ = mClip.getRect(getParentView());
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    this.§"R§.y = _loc2_.y - this.§"R§.height - this.§7!^§;
                                    if(_loc4_)
                                    {
                                       this.§"R§.x = _loc2_.x + mClip.width / 2 - this.§"R§.width / 2;
                                       addr176:
                                    }
                                    _loc3_ = this.§"R§.getRect(mClip.stage);
                                    if(!(_loc5_ && this))
                                    {
                                       if(_loc3_.right > mClip.stage.stageWidth - this.§7!^§)
                                       {
                                          this.§"R§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§7!^§));
                                          addr339:
                                       }
                                       if(_loc3_.left < this.§7!^§)
                                       {
                                          addr308:
                                          this.§"R§.x += 1 + (this.§7!^§ - _loc3_.left);
                                          if(!(_loc5_ && this))
                                          {
                                             addr271:
                                             if(_loc3_.bottom > mClip.stage.stageHeight - this.§7!^§)
                                             {
                                                addr281:
                                                this.§"R§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§7!^§));
                                                if(!_loc5_)
                                                {
                                                   addr233:
                                                   if(_loc3_.top < this.§7!^§)
                                                   {
                                                      addr239:
                                                      if(_loc4_ || this)
                                                      {
                                                         this.§"R§.y += mClip.height + this.§"R§.height + this.§7!^§ * 2;
                                                         addr264:
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  addr217:
                                                                  this.§"R§.visible = true;
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr233);
                                                                        }
                                                                        §§goto(addr373);
                                                                     }
                                                                     §§goto(addr239);
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                               §§goto(addr339);
                                                            }
                                                            §§goto(addr308);
                                                         }
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                   §§goto(addr217);
                                                   addr301:
                                                }
                                                §§goto(addr308);
                                             }
                                             §§goto(addr233);
                                          }
                                          §§goto(addr339);
                                       }
                                       §§goto(addr271);
                                    }
                                    §§goto(addr301);
                                 }
                                 §§goto(addr176);
                              }
                           }
                           else
                           {
                              this.§"R§.visible = false;
                           }
                           §§goto(addr373);
                        }
                     }
                  }
                  §§goto(addr123);
               }
            }
         }
         §§goto(addr129);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§"R§)
            {
               if(_loc1_)
               {
                  addr102:
                  this.§"!+§ = null;
               }
               while(true)
               {
                  if(this.§"R§.numChildren > 0)
                  {
                     this.§"R§.removeChildAt(0);
                     continue;
                  }
                  if(!_loc2_)
                  {
                     if(this.§"R§.parent)
                     {
                        while(_loc1_)
                        {
                           this.§"R§.parent.removeChild(this.§"R§);
                           while(true)
                           {
                           }
                        }
                        continue;
                        addr70:
                     }
                     while(true)
                     {
                        this.§"R§ = null;
                        while(true)
                        {
                           §§goto(addr23);
                        }
                     }
                  }
                  §§goto(addr70);
               }
            }
            addr23:
            do
            {
               super.clear();
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               if(!(_loc1_ || this))
               {
                  continue loop1;
               }
            }
            while(_loc2_);
            
            return;
         }
         §§goto(addr102);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§%!v§ = param1;
         }
         do
         {
            this.§"!i§();
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!I§ = param1;
         }
         do
         {
            this.§"!i§();
         }
         while(_loc3_ && param1);
         
      }
      
      public function §"!i§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc5_)
               {
                  §§goto(addr30);
               }
            }
            var _loc1_:Array = new Array(this.§%!v§ + "_" + this.§,!I§,this.§%!v§ + "_" + §6m§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§,!I§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §6m§);
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
                     }
                  }
               }
               catch(e:Error)
               {
                  continue;
               }
            }
            return;
         }
         addr30:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§%!v§ != §%!§)
            {
               loop0:
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  loop1:
                  while(true)
                  {
                     §§push(this.§>!r§);
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    this.§ a§();
                                    §§goto(addr179);
                                 }
                                 addr177:
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 loop10:
                                 while(true)
                                 {
                                    if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                this.setComponentVisualState(§?"?§);
                                                while(true)
                                                {
                                                   addr133:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                                         {
                                                            while(true)
                                                            {
                                                               this.setComponentVisualState(§&M§);
                                                               addr140:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            addr137:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(§§pop() == §2"3§)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               addr62:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!(_loc3_ || _loc3_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop16;
                                                               }
                                                               continue loop12;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr161:
                                             }
                                             else
                                             {
                                                §§goto(addr177);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr133);
                                 }
                                 addr179:
                                 §§goto(addr212);
                              }
                           }
                           addr175:
                        }
                        §§goto(addr190);
                        if(_loc4_ && param1)
                        {
                           continue;
                        }
                        §§goto(addr175);
                     }
                  }
               }
            }
            addr212:
            while(!_loc4_)
            {
            }
            return;
         }
         §§goto(addr161);
      }
      
      public function § a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§%!v§);
            loop0:
            while(true)
            {
               §§push(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr76:
               addr77:
               addr25:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               addr25:
               this.setComponentState(§9!!§.§,!0§);
               return;
            }
         }
         §§goto(addr55);
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
         if(_loc6_ || param1)
         {
            super.changeMovieClip(param1);
         }
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(_loc6_)
         {
            if(this.mParentContainer)
            {
               loop0:
               while(true)
               {
                  mParentContainer.mClip.removeChild(mClip);
                  addr140:
                  while(true)
                  {
                  }
                  loop6:
                  while(true)
                  {
                     if(_loc5_ && _loc2_)
                     {
                        continue loop0;
                     }
                     loop7:
                     while(true)
                     {
                        mClip.x = _loc2_;
                        loop8:
                        while(true)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              if(!_loc6_)
                              {
                                 break loop7;
                              }
                              mClip.y = _loc3_;
                              while(_loc6_)
                              {
                                 continue loop6;
                                 this.§"!i§();
                                 if(!_loc5_)
                                 {
                                    return;
                                 }
                              }
                              continue;
                           }
                           addr98:
                           while(!_loc5_)
                           {
                              mParentContainer.mClip.addChildAt(mClip,_loc4_);
                              break loop8;
                           }
                           §§goto(addr140);
                        }
                        continue loop6;
                     }
                     while(true)
                     {
                        if(!this.mParentContainer)
                        {
                           §§goto(addr80);
                        }
                        §§goto(addr98);
                     }
                     addr80:
                  }
                  addr132:
                  while(true)
                  {
                     mClip = param1;
                     §§goto(addr117);
                  }
               }
            }
            while(true)
            {
               mClip = null;
               §§goto(addr132);
               §§goto(addr140);
            }
         }
         §§goto(addr117);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setVisibility(param1);
            loop0:
            for(; !mClip.visible; while(true)
            {
               if(_loc2_ || _loc3_)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(_loc3_ && param1)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§>!?§(false);
            §§goto(addr47);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.onParentVisibilityChange(param1);
            loop0:
            while(!param1)
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     this.§>!?§(false);
                  }
                  addr38:
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr38);
      }
   }
}
