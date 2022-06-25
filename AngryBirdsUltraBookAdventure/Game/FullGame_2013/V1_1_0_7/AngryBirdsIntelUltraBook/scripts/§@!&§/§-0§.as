package §@!&§
{
   import §2y§.§^! §;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §-0§ extends §7!>§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §6![§:String = "Deactive";
      
      public static const §6!q§:String = "Disabled";
      
      public static const §`"#§:String = "Out";
      
      public static const §5§:String = "Over";
      
      public static const §?d§:String = "Up_Default";
      
      public static const §9!,§:String = "Down";
      
      public static var §3;§:Class;
      
      public static var §8!L§:Boolean = true;
      
      public static const §+d§:String = "Tooltip";
      
      public static var §2!V§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §-0§)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            loop0:
            while(true)
            {
               §6![§ = "Deactive";
               loop1:
               while(true)
               {
                  §6!q§ = "Disabled";
                  loop2:
                  while(true)
                  {
                     §`"#§ = "Out";
                     loop3:
                     while(_loc1_)
                     {
                        §5§ = "Over";
                        while(true)
                        {
                           §?d§ = "Up_Default";
                           while(!_loc2_)
                           {
                              if(_loc1_)
                              {
                                 §9!,§ = "Down";
                                 loop6:
                                 for(; !(_loc2_ && _loc2_); if(!_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    addr62:
                                 },continue,return)
                                 {
                                    §8!L§ = true;
                                    loop7:
                                    while(true)
                                    {
                                       §+d§ = "Tooltip";
                                       addr67:
                                       while(true)
                                       {
                                          §2!V§ = true;
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(_loc1_ || §-0§)
                                             {
                                                continue loop6;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       §§goto(addr62);
                                    }
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public var §"""§:String;
      
      public var §'![§:String;
      
      public var §'W§:String;
      
      public var §%^§:MovieClip;
      
      public var §9!v§:int = 6;
      
      private var §%!6§:Boolean = false;
      
      private var §,-§:String = "auto";
      
      public function §-0§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2,param3);
            while(true)
            {
               this.§"""§ = COMPONENT_STATE_ACTIVE_DEFAULT;
               while(!_loc7_)
               {
                  this.§'![§ = §?d§;
                  loop2:
                  while(true)
                  {
                     this.§'u§();
                     while(true)
                     {
                        addr56:
                        addr28:
                        while(true)
                        {
                           this.§@!^§(param1.@Tooltip);
                        }
                        if(_loc6_ || param2)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         for(; param1.@Toggle.toString().toUpperCase() == "TRUE"; §§goto(addr47))
         {
            if(_loc7_)
            {
               continue;
            }
            §§goto(addr28);
         }
         §§goto(addr94);
      }
      
      public static function §2!J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §3;§ = §,!j§.§!!N§(§+d§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setActiveStatus(param1);
         }
         while(!param1)
         {
            if(_loc3_)
            {
               this.setComponentVisualState(§`"#§);
            }
            if(_loc3_)
            {
               break;
            }
         }
      }
      
      public function §@!^§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'W§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§'W§);
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
                           continue loop0;
                        }
                        addr217:
                     }
                     else
                     {
                        loop7:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§'W§ = null;
                                 addr210:
                                 while(true)
                                 {
                                 }
                              }
                              addr207:
                           }
                           addr147:
                           addr185:
                           while(true)
                           {
                              §§push(this.§'W§);
                              if(!(_loc3_ || _loc2_))
                              {
                                 break;
                              }
                              continue loop1;
                              §§goto(addr210);
                           }
                           while(true)
                           {
                              §§push(§§pop().length == 0);
                              addr188:
                              while(_loc3_ || _loc3_)
                              {
                                 continue loop7;
                              }
                              continue loop2;
                              §§goto(addr147);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr210);
      }
      
      private function §2i§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            this.§%^§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!(_loc4_ && this))
         {
            _loc1_.name = "Text";
            if(!(_loc4_ && _loc1_))
            {
               addr58:
               this.§%^§.addChild(_loc1_);
            }
            var _loc2_:Shape = new Shape();
            if(_loc3_ || this)
            {
               _loc2_.name = "Base";
               while(true)
               {
                  this.§%^§.addChildAt(_loc2_,0);
                  §§goto(addr104);
               }
            }
            addr104:
            while(true)
            {
               this.§,B§(this.§'W§);
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      private function §&!#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§%^§ = new §3;§();
            do
            {
               this.§1!Z§(this.§'W§);
            }
            while(!_loc2_);
            
         }
      }
      
      public function §1!Z§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§'W§ = param1;
            while(true)
            {
               if(§3;§)
               {
                  addr25:
                  break;
                  addr83:
               }
               this.§,B§(param1);
               if(_loc2_ && _loc2_)
               {
                  return;
               }
               if(!(_loc3_ || this))
               {
                  break;
               }
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§goto(addr25);
            }
            this.§]"§(param1);
         }
         §§goto(addr83);
      }
      
      private function §]"§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TextField = this.§%^§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§%^§.getChildByName("Base") as MovieClip;
         if(!_loc6_)
         {
            _loc2_.text = this.§'W§;
            loop0:
            while(true)
            {
               addr47:
               while(true)
               {
                  _loc2_.multiline = false;
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr47);
         }
         var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
         if(_loc7_ || param1)
         {
            _loc3_.scaleX = _loc4_ / _loc3_.width;
            if(_loc7_ || _loc2_)
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
      
      private function §,B§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§%^§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(_loc6_ || param1)
         {
            _loc3_.align = TextAlign.CENTER;
            while(true)
            {
               _loc3_.bold = true;
               addr68:
               if(_loc5_ && _loc3_)
               {
                  continue;
               }
               _loc2_.mouseEnabled = false;
               if(!(_loc5_ && param1))
               {
                  addr48:
                  if(!(_loc5_ && _loc3_))
                  {
                     if(false)
                     {
                        loop9:
                        while(true)
                        {
                           _loc2_.selectable = false;
                           addr61:
                           addr99:
                           while(_loc6_ || _loc2_)
                           {
                              §§goto(addr68);
                           }
                           while(true)
                           {
                              _loc2_.textColor = 0;
                              break loop9;
                              §§goto(addr61);
                           }
                           §§goto(addr48);
                        }
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 addr84:
                                 if(_loc5_ && _loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr57);
                              }
                              while(true)
                              {
                                 _loc2_.height = _loc2_.textHeight * 1.25;
                              }
                              addr119:
                           }
                           loop6:
                           while(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    _loc2_.width = _loc2_.textWidth * 1.25;
                                    §§goto(addr99);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       _loc2_.defaultTextFormat = _loc3_;
                                    }
                                    addr144:
                                 }
                              }
                              while(true)
                              {
                                 _loc2_.border = false;
                                 break loop6;
                              }
                           }
                           while(true)
                           {
                              _loc2_.text = this.§'W§;
                              §§goto(addr119);
                           }
                           §§goto(addr48);
                        }
                        addr57:
                        while(true)
                        {
                           _loc3_.size = 12;
                           §§goto(addr144);
                           §§goto(addr84);
                        }
                        addr80:
                        addr149:
                     }
                     var _loc4_:Shape;
                     (_loc4_ = this.§%^§.getChildByName("Base") as Shape).graphics.clear();
                     if(!(_loc5_ && _loc2_))
                     {
                        _loc4_.graphics.lineStyle(1);
                     }
                     _loc4_.graphics.beginFill(0,1);
                     addr276:
                     if(_loc6_ || this)
                     {
                        _loc4_.graphics.drawRect(-this.§9!v§,-this.§9!v§,_loc2_.width + 2 * this.§9!v§,_loc2_.height + 2 * this.§9!v§);
                        _loc4_.graphics.beginFill(16777215,1);
                        addr227:
                        if(_loc6_ || _loc3_)
                        {
                           _loc4_.graphics.drawRect(-this.§9!v§ / 2,-(this.§9!v§ / 2),_loc2_.width + 1 * this.§9!v§,_loc2_.height + 1 * this.§9!v§);
                           if(_loc6_ || this)
                           {
                              if(_loc5_ && _loc2_)
                              {
                                 §§goto(addr276);
                              }
                              return;
                           }
                           §§goto(addr227);
                        }
                        addr269:
                        §§goto(addr269);
                     }
                     addr288:
                     §§goto(addr288);
                  }
                  §§goto(addr80);
               }
               §§goto(addr61);
            }
         }
         §§goto(addr149);
      }
      
      private function §@" §(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(_loc5_ || _loc3_)
         {
            §§push(!this.§%^§);
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
                        if(_loc5_)
                        {
                           §§push(this.§'W§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              loop4:
                              while(_loc5_ || param1)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop11:
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
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   addr45:
                                                   §§push(§§pop());
                                                   if(_loc5_)
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               addr63:
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              §§push(§2!V§);
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr146:
                                                                                 §§push(Boolean(§§pop()));
                                                                                 break loop11;
                                                                              }
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        addr80:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        addr133:
                                                                     }
                                                                  }
                                                                  addr150:
                                                                  _loc2_ = mClip.getRect(getParentView());
                                                                  if(_loc5_)
                                                                  {
                                                                     this.§%^§.y = _loc2_.y - this.§%^§.height - this.§9!v§;
                                                                     if(_loc5_)
                                                                     {
                                                                        this.§%^§.x = _loc2_.x + mClip.width / 2 - this.§%^§.width / 2;
                                                                     }
                                                                  }
                                                                  _loc3_ = this.§%^§.getRect(mClip.stage);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     if(_loc3_.right > mClip.stage.stageWidth - this.§9!v§)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§%^§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§9!v§));
                                                                           addr363:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr345:
                                                                     }
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_.left < this.§9!v§)
                                                                        {
                                                                           addr307:
                                                                           while(true)
                                                                           {
                                                                              this.§%^§.x += 1 + (this.§9!v§ - _loc3_.left);
                                                                              addr321:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§goto(addr345);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr325:
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr307:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_.bottom > mClip.stage.stageHeight - this.§9!v§)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§%^§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§9!v§));
                                                                                 addr300:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              addr282:
                                                                           }
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_.top < this.§9!v§)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    this.§%^§.y += mClip.height + this.§%^§.height + this.§9!v§ * 2;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr307);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr300);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr321);
                                                                                 addr262:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§%^§.visible = true;
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             break loop19;
                                                                                          }
                                                                                          continue loop19;
                                                                                       }
                                                                                       §§goto(addr321);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr282);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr262);
                                                                                 }
                                                                                 §§goto(addr300);
                                                                              }
                                                                           }
                                                                           break loop2;
                                                                           §§goto(addr325);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               else
                                                               {
                                                                  while(_loc5_ || param1)
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     continue loop4;
                                                                     §§goto(addr63);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                  }
                                                                  addr132:
                                                                  addr95:
                                                               }
                                                               §§goto(addr133);
                                                            }
                                                            §§goto(addr146);
                                                         }
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr45);
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                §§goto(addr150);
                                             }
                                             break loop2;
                                          }
                                          this.§%^§.visible = false;
                                          break loop2;
                                       }
                                       §§goto(addr132);
                                    }
                                 }
                              }
                              continue loop2;
                           }
                        }
                        break;
                     }
                     return;
                  }
                  §§goto(addr129);
               }
            }
         }
         §§goto(addr80);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§%^§)
            {
               if(_loc2_)
               {
                  addr113:
                  this.§'W§ = null;
               }
               loop0:
               while(true)
               {
                  if(this.§%^§.numChildren <= 0)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        if(_loc1_ && _loc1_)
                        {
                           continue;
                        }
                        if(this.§%^§.parent)
                        {
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           this.§%^§ = null;
                           loop4:
                           while(_loc2_ || _loc2_)
                           {
                              while(true)
                              {
                                 super.clear();
                                 if(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    break loop0;
                                 }
                                 continue loop4;
                              }
                              return;
                           }
                           addr99:
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                     }
                     break;
                  }
                  this.§%^§.removeChildAt(0);
               }
               while(true)
               {
                  this.§%^§.parent.removeChild(this.§%^§);
                  §§goto(addr99);
               }
            }
            §§goto(addr29);
         }
         §§goto(addr113);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§"""§ = param1;
         }
         do
         {
            this.§'u§();
         }
         while(_loc2_);
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§'![§ = param1;
            do
            {
               this.§'u§();
            }
            while(_loc3_);
            
         }
      }
      
      public function §'u§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc4_)
               {
                  return;
               }
            }
         }
         var _loc1_:Array = new Array(this.§"""§ + "_" + this.§'![§,this.§"""§ + "_" + §?d§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§'![§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §?d§);
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
                     if(!_loc5_)
                     {
                        return;
                     }
                     break;
                  }
               }
               break;
            }
            catch(e:Error)
            {
            }
            _loc2_++;
            if(_loc5_ && _loc1_)
            {
               break;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(this.§"""§ != §6!q§)
            {
               loop0:
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  loop1:
                  while(true)
                  {
                     §§push(this.§%!6§);
                     if(_loc4_ || param2)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(_loc4_ || param1)
                              {
                                 §§push(param1);
                                 while(true)
                                 {
                                    §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                                    if(_loc3_ && param1)
                                    {
                                       break;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    addr65:
                                    if(!(_loc4_ || this))
                                    {
                                       continue;
                                    }
                                    if(§§pop() == §4§)
                                    {
                                       if(!(_loc3_ && param2))
                                       {
                                          Mouse.cursor = this.§,-§;
                                       }
                                       loop20:
                                       while(true)
                                       {
                                          this.setComponentVisualState(§5§);
                                          loop21:
                                          while(_loc4_)
                                          {
                                             while(true)
                                             {
                                                this.§@" §(param1 == §4§);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop20;
                                                }
                                                continue loop21;
                                             }
                                             if(!_loc3_)
                                             {
                                                addr46:
                                                if(!(_loc4_ || param2))
                                                {
                                                   loop17:
                                                   for(; !_loc3_; §§goto(addr46))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               this.setComponentVisualState(§`"#§);
                                                               while(_loc4_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr65);
                                                                  }
                                                                  loop16:
                                                                  while(_loc4_)
                                                                  {
                                                                     if(§§pop() == § M§)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           Mouse.cursor = MouseCursor.AUTO;
                                                                           continue loop17;
                                                                        }
                                                                        addr147:
                                                                        while(true)
                                                                        {
                                                                           this.setComponentVisualState(§9!,§);
                                                                           addr150:
                                                                           while(true)
                                                                           {
                                                                              addr126:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 break loop16;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr61);
                                                                     }
                                                                  }
                                                                  addr61:
                                                                  while(!(_loc3_ && param1))
                                                                  {
                                                                     if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.setComponentVisualState(§5§);
                                                                           break loop17;
                                                                        }
                                                                        addr137:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr105);
                                                                     }
                                                                  }
                                                                  addr105:
                                                               }
                                                               continue loop4;
                                                               addr90:
                                                            }
                                                            else
                                                            {
                                                               addr166:
                                                            }
                                                            while(true)
                                                            {
                                                               this.§@?§();
                                                               §§goto(addr168);
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                                               {
                                                                  §§goto(addr147);
                                                               }
                                                               §§goto(addr126);
                                                            }
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                      §§goto(addr137);
                                                   }
                                                   while(!_loc3_)
                                                   {
                                                      §§goto(addr93);
                                                   }
                                                   addr168:
                                                   §§goto(addr218);
                                                }
                                                return;
                                             }
                                             §§goto(addr90);
                                          }
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr29);
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§goto(addr166);
                           }
                           §§goto(addr143);
                        }
                     }
                  }
               }
            }
            addr218:
            while(_loc4_ || this)
            {
               addr175:
               while(true)
               {
                  §§push(param1);
                  §§goto(addr175);
               }
            }
            return;
         }
         §§goto(addr166);
      }
      
      public function §@?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§"""§);
            loop0:
            while(true)
            {
               §§push(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr96:
               addr97:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               this.setComponentState(§-0§.§6![§);
            }
         }
         §§goto(addr101);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.setEnabled(param1);
         }
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super.changeMovieClip(param1);
         }
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(!_loc5_)
         {
            if(this.mParentContainer)
            {
               while(true)
               {
                  mParentContainer.mClip.removeChild(mClip);
                  addr145:
                  addr93:
                  while(true)
                  {
                  }
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  mClip.y = _loc3_;
                  loop9:
                  for(; _loc6_; while(true)
                  {
                     this.§'u§();
                     if(!_loc6_)
                     {
                        continue loop9;
                     }
                     if(!_loc5_)
                     {
                        addr50:
                        if(!(_loc5_ && this))
                        {
                           break;
                        }
                        addr115:
                        while(_loc6_ || param1)
                        {
                           mParentContainer.mClip.addChildAt(mClip,_loc4_);
                           loop6:
                           while(true)
                           {
                              addr82:
                              while(true)
                              {
                                 mClip.x = _loc2_;
                                 continue loop6;
                              }
                           }
                           §§goto(addr50);
                        }
                        §§goto(addr145);
                     }
                     while(!(_loc5_ && param1))
                     {
                        §§goto(addr93);
                     }
                     §§goto(addr127);
                  },return)
                  {
                     addr74:
                     if(_loc6_ || _loc2_)
                     {
                        continue;
                     }
                     addr137:
                     while(true)
                     {
                        mClip = param1;
                        break loop9;
                        §§goto(addr74);
                     }
                  }
                  while(true)
                  {
                     if(this.mParentContainer)
                     {
                        §§goto(addr115);
                     }
                     §§goto(addr82);
                  }
               }
            }
            while(true)
            {
               mClip = null;
               §§goto(addr137);
               §§goto(addr145);
            }
         }
         §§goto(addr81);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.setVisibility(param1);
            loop0:
            while(!mClip.visible)
            {
               if(!(_loc2_ && this))
               {
                  while(true)
                  {
                     this.§@" §(false);
                  }
                  addr50:
               }
               while(true)
               {
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.onParentVisibilityChange(param1);
         }
         while(!param1)
         {
            if(!(_loc3_ && _loc3_))
            {
               this.§@" §(false);
            }
            if(_loc2_ || _loc3_)
            {
               break;
            }
         }
      }
   }
}
