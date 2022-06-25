package §=R§
{
   import §`M§.§9!#§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §5!a§ extends §&W§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §4]§:String = "Deactive";
      
      public static const §-n§:String = "Disabled";
      
      public static const §'0§:String = "Out";
      
      public static const §8j§:String = "Over";
      
      public static const §[!#§:String = "Up_Default";
      
      public static const §-p§:String = "Down";
      
      public static var §=n§:Class;
      
      public static var §%!$§:Boolean = true;
      
      public static const §+Y§:String = "Tooltip";
      
      public static var §,!c§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            while(true)
            {
               §4]§ = "Deactive";
               while(true)
               {
                  §-n§ = "Disabled";
                  addr108:
                  while(!_loc2_)
                  {
                  }
               }
            }
            addr119:
         }
         while(true)
         {
            §'0§ = "Out";
            loop4:
            while(true)
            {
               §8j§ = "Over";
               while(true)
               {
                  if(_loc1_)
                  {
                     §[!#§ = "Up_Default";
                     loop6:
                     while(!_loc2_)
                     {
                        §-p§ = "Down";
                        while(true)
                        {
                           if(_loc1_ || §5!a§)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §%!$§ = true;
                              continue;
                           }
                           continue loop6;
                        }
                        continue loop4;
                     }
                     continue;
                  }
                  §§goto(addr119);
               }
            }
         }
      }
      
      public var §35§:String;
      
      public var §1y§:String;
      
      public var §%!D§:String;
      
      public var §#!E§:MovieClip;
      
      public var §^!u§:int = 6;
      
      private var §@!4§:Boolean = false;
      
      private var §6p§:String = "auto";
      
      public function §5!a§(param1:XML, param2:§9!#§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               this.§35§ = COMPONENT_STATE_ACTIVE_DEFAULT;
               loop1:
               while(true)
               {
                  this.§1y§ = §[!#§;
                  loop2:
                  while(true)
                  {
                     this.§9!_§();
                     loop3:
                     while(!_loc7_)
                     {
                        loop4:
                        while(true)
                        {
                           this.§#!Z§(param1.@Tooltip);
                           loop5:
                           for(; param1.@Toggle.toString().toUpperCase() == "TRUE"; if(_loc6_ || param3)
                           {
                              continue loop3;
                           })
                           {
                              if(!(_loc7_ && param1))
                              {
                                 continue;
                              }
                              addr54:
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
                           if(_loc6_ || param1)
                           {
                              if(_loc4_.indexOf(_loc5_) > -1)
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    addr142:
                                    this.§6p§ = _loc5_;
                                 }
                              }
                              return;
                           }
                           §§goto(addr142);
                        }
                        if(_loc7_ && param2)
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           continue loop2;
                        }
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           this.§@!4§ = true;
                           §§goto(addr54);
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public static function §1!o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=n§ = §9!N§.§0!k§(§+Y§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setActiveStatus(param1);
            while(!param1)
            {
               if(_loc3_ && param1)
               {
                  break;
               }
               addr53:
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               this.setComponentVisualState(§'0§);
               §§goto(addr53);
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §#!Z§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§%!D§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§%!D§);
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
                           addr219:
                           while(true)
                           {
                              §§push(this.§%!D§);
                              addr196:
                              while(true)
                              {
                                 §§push(§§pop().length == 0);
                              }
                           }
                        }
                        addr218:
                     }
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§%!D§ = null;
                                 continue loop0;
                              }
                              addr201:
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this.§%!D§);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr196);
                              addr141:
                           }
                           addr154:
                           loop11:
                           while(true)
                           {
                              §§push(§%!$§);
                              if(_loc3_ && this)
                              {
                                 break;
                              }
                              if(!(_loc3_ && this))
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop())
                                 {
                                    while(!_loc3_)
                                    {
                                       §%!$§ = false;
                                       while(true)
                                       {
                                          §1!o§();
                                          addr140:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    §§goto(addr219);
                                    addr177:
                                 }
                                 while(true)
                                 {
                                    this.§#!E§ = new MovieClip();
                                    while(_loc2_)
                                    {
                                       if(!§=n§)
                                       {
                                          this.§1!k§();
                                          loop15:
                                          while(true)
                                          {
                                             if(_loc2_ || this)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr177);
                                                }
                                             }
                                             else
                                             {
                                                addr128:
                                                while(true)
                                                {
                                                }
                                                addr128:
                                             }
                                             while(true)
                                             {
                                                this.§#!E§.mouseEnabled = false;
                                                continue loop15;
                                                §§goto(addr128);
                                             }
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr124);
                                    }
                                    continue loop11;
                                    §§goto(addr140);
                                 }
                              }
                              else
                              {
                                 §§goto(addr218);
                              }
                              §§goto(addr219);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr192);
      }
      
      private function §1!k§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            this.§#!E§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!(_loc4_ && _loc2_))
         {
            _loc1_.name = "Text";
            if(_loc3_ || _loc1_)
            {
               addr58:
               this.§#!E§.addChild(_loc1_);
            }
            var _loc2_:Shape = new Shape();
            if(_loc3_ || _loc3_)
            {
               _loc2_.name = "Base";
               while(true)
               {
                  this.§#!E§.addChildAt(_loc2_,0);
                  §§goto(addr109);
               }
            }
            addr109:
            while(true)
            {
               this.§0!J§(this.§%!D§);
               if(!_loc4_)
               {
                  if(_loc3_ || this)
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
      
      private function §<!k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§#!E§ = new §=n§();
            do
            {
               this.§-!t§(this.§%!D§);
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      public function §-!t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§%!D§ = param1;
            do
            {
               if(!§=n§)
               {
                  this.§0!J§(param1);
                  if(!(_loc2_ && param1))
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr83:
                  }
               }
               continue;
               return;
            }
            while(_loc2_ && _loc2_);
            
            this.§`!K§(param1);
         }
         §§goto(addr83);
      }
      
      private function §`!K§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§#!E§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§#!E§.getChildByName("Base") as MovieClip;
         if(!(_loc7_ && param1))
         {
            _loc2_.text = this.§%!D§;
            loop0:
            while(true)
            {
               addr58:
               while(true)
               {
                  _loc2_.multiline = false;
                  continue loop0;
               }
            }
            addr77:
         }
         while(true)
         {
            _loc2_.width = _loc2_.textWidth * 1.25;
            if(!(_loc6_ || this))
            {
               continue;
            }
            if(!_loc7_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr77);
            }
            §§goto(addr58);
         }
         var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
         if(_loc6_ || param1)
         {
            _loc3_.scaleX = _loc4_ / _loc3_.width;
            if(_loc6_)
            {
               addr105:
               _loc3_.x = 0;
            }
            var _loc5_:int = 0;
            while(true)
            {
               if(_loc5_ >= _loc3_.numChildren)
               {
                  if(_loc6_ || _loc3_)
                  {
                     _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                  }
                  if(!_loc6_)
                  {
                     continue;
                  }
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               else
               {
                  _loc3_.getChildAt(0).x = 0;
               }
               _loc5_++;
            }
            return;
         }
         §§goto(addr105);
      }
      
      private function §0!J§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§#!E§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(_loc6_ || this)
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
                  while(true)
                  {
                     _loc2_.defaultTextFormat = _loc3_;
                     loop3:
                     while(true)
                     {
                        _loc2_.border = false;
                        loop4:
                        while(true)
                        {
                           _loc2_.text = this.§%!D§;
                           while(true)
                           {
                              _loc2_.height = _loc2_.textHeight * 1.25;
                              while(true)
                              {
                                 _loc2_.width = _loc2_.textWidth * 1.25;
                                 while(_loc6_ || _loc2_)
                                 {
                                    continue loop1;
                                    while(_loc6_ || param1)
                                    {
                                       continue loop4;
                                    }
                                 }
                              }
                              addr77:
                              while(_loc6_ || _loc2_)
                              {
                                 continue loop3;
                                 if(_loc5_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 if(true)
                                 {
                                    §§goto(addr165);
                                 }
                                 while(true)
                                 {
                                    _loc2_.selectable = false;
                                    §§goto(addr58);
                                 }
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
            _loc2_.mouseEnabled = false;
            if(_loc6_)
            {
               §§goto(addr43);
            }
            §§goto(addr58);
         }
         addr165:
         var _loc4_:Shape;
         (_loc4_ = this.§#!E§.getChildByName("Base") as Shape).graphics.clear();
         if(_loc6_)
         {
            _loc4_.graphics.lineStyle(1);
            while(true)
            {
               _loc4_.graphics.beginFill(0,1);
            }
            addr283:
         }
         loop13:
         while(true)
         {
            _loc4_.graphics.drawRect(-this.§^!u§,-this.§^!u§,_loc2_.width + 2 * this.§^!u§,_loc2_.height + 2 * this.§^!u§);
            loop14:
            while(true)
            {
               _loc4_.graphics.beginFill(16777215,1);
               while(true)
               {
                  if(_loc6_)
                  {
                     continue loop13;
                  }
                  continue loop14;
                  addr236:
                  _loc4_.graphics.drawRect(-this.§^!u§ / 2,-(this.§^!u§ / 2),_loc2_.width + 1 * this.§^!u§,_loc2_.height + 1 * this.§^!u§);
                  if(!(_loc6_ || _loc3_))
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     break loop13;
                  }
                  §§goto(addr283);
               }
               continue loop13;
            }
         }
      }
      
      private function §1!N§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(_loc5_ || param1)
         {
            §§push(!this.§#!E§);
            if(!_loc4_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr117:
                        while(true)
                        {
                           §§push(this.§%!D§);
                           addr88:
                           while(true)
                           {
                              §§push(§§pop() == null);
                           }
                        }
                     }
                     addr116:
                  }
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop());
                        continue loop0;
                        loop9:
                        while(!(_loc4_ && _loc3_))
                        {
                           loop10:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 if(_loc5_)
                                 {
                                    break loop4;
                                 }
                                 §§goto(addr117);
                              }
                              else
                              {
                                 §§push(param1);
                                 if(!_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop9;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(false)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§%!D§);
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop().length == 0);
                                                               continue loop9;
                                                            }
                                                            §§goto(addr88);
                                                            addr60:
                                                         }
                                                         else
                                                         {
                                                            §§push(§,!c§);
                                                            if(_loc5_)
                                                            {
                                                               addr122:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     addr130:
                                                                     _loc2_ = mClip.getRect(getParentView());
                                                                     if(!_loc4_)
                                                                     {
                                                                        this.§#!E§.y = _loc2_.y - this.§#!E§.height - this.§^!u§;
                                                                        if(_loc5_)
                                                                        {
                                                                           this.§#!E§.x = _loc2_.x + mClip.width / 2 - this.§#!E§.width / 2;
                                                                        }
                                                                     }
                                                                     _loc3_ = this.§#!E§.getRect(mClip.stage);
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        if(_loc3_.right > mClip.stage.stageWidth - this.§^!u§)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§#!E§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§^!u§));
                                                                              addr338:
                                                                              addr279:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              if(_loc4_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              this.§#!E§.x += 1 + (this.§^!u§ - _loc3_.left);
                                                                              while(true)
                                                                              {
                                                                                 addr240:
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_.bottom > mClip.stage.stageHeight - this.§^!u§)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§#!E§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§^!u§));
                                                                                          addr268:
                                                                                          while(!_loc4_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          continue loop15;
                                                                                          addr204:
                                                                                          if(!(_loc5_ || this))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr211:
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_.top < this.§^!u§)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§#!E§.y += mClip.height + this.§#!E§.height + this.§^!u§ * 2;
                                                                                                         addr239:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      addr221:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§#!E§.visible = true;
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr221);
                                                                                                      }
                                                                                                      §§goto(addr239);
                                                                                                   }
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr204);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr268);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr338);
                                                                                                addr215:
                                                                                             }
                                                                                             break loop10;
                                                                                          }
                                                                                          §§goto(addr338);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr215);
                                                                                 }
                                                                              }
                                                                              addr300:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_.left < this.§^!u§)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§goto(addr279);
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr240);
                                                                           §§goto(addr338);
                                                                        }
                                                                     }
                                                                     §§goto(addr270);
                                                                  }
                                                                  break loop10;
                                                               }
                                                               this.§#!E§.visible = false;
                                                               break loop10;
                                                            }
                                                            §§goto(addr122);
                                                         }
                                                      }
                                                      addr58:
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr116);
                                                }
                                                §§goto(addr88);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr60);
                                                }
                                                addr100:
                                             }
                                             §§goto(addr130);
                                          }
                                       }
                                       §§goto(addr122);
                                    }
                                 }
                                 §§goto(addr122);
                              }
                           }
                           return;
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr122);
         }
         §§goto(addr58);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§#!E§)
            {
               if(!_loc1_)
               {
                  this.§%!D§ = null;
                  addr111:
                  while(true)
                  {
                     if(this.§#!E§.numChildren > 0)
                     {
                        this.§#!E§.removeChildAt(0);
                        continue;
                     }
                     if(!_loc1_)
                     {
                        if(this.§#!E§.parent)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              this.§#!E§.parent.removeChild(this.§#!E§);
                              addr94:
                              while(true)
                              {
                              }
                              addr94:
                           }
                           §§goto(addr94);
                        }
                        while(true)
                        {
                           this.§#!E§ = null;
                           addr41:
                           §§goto(addr58);
                        }
                     }
                     §§goto(addr94);
                  }
                  addr111:
               }
               §§goto(addr111);
            }
            addr58:
            while(!(_loc2_ || _loc2_))
            {
               continue loop2;
            }
            while(true)
            {
               super.clear();
               if(!_loc1_)
               {
                  if(_loc2_ || _loc2_)
                  {
                     break;
                  }
                  continue loop5;
               }
               §§goto(addr41);
               §§goto(addr58);
            }
            return;
         }
         §§goto(addr111);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§35§ = param1;
            do
            {
               this.§9!_§();
            }
            while(_loc3_);
            
         }
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§1y§ = param1;
         }
         do
         {
            this.§9!_§();
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function §9!_§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc4_)
               {
                  §§goto(addr24);
               }
            }
            var _loc1_:Array = new Array(this.§35§ + "_" + this.§1y§,this.§35§ + "_" + §[!#§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§1y§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §[!#§);
            var _loc2_:int = 0;
            while(_loc2_ < _loc1_.length)
            {
               try
               {
                  mClip.gotoAndStop(_loc1_[_loc2_] as String);
                  if(_loc4_ || _loc1_)
                  {
                     if(mClip.numChildren <= 0)
                     {
                        addr112:
                        _loc2_++;
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue;
                     }
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  return;
               }
               catch(e:Error)
               {
               }
               §§goto(addr112);
            }
            return;
         }
         addr24:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(this.§35§ != §-n§)
            {
               loop0:
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  loop1:
                  while(true)
                  {
                     §§push(this.§@!4§);
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 addr217:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr175:
                                    while(true)
                                    {
                                       §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          break;
                                       }
                                       if(!(_loc4_ || param1))
                                       {
                                          continue loop3;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(_loc4_)
                                 {
                                    this.§4!O§();
                                    while(true)
                                    {
                                       addr161:
                                       loop10:
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop11:
                                          while(true)
                                          {
                                             if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                             {
                                                while(true)
                                                {
                                                   this.setComponentVisualState(§-p§);
                                                   addr168:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr228);
                                                      }
                                                   }
                                                   continue loop10;
                                                }
                                                addr165:
                                             }
                                             while(true)
                                             {
                                                §§push(param1);
                                                loop15:
                                                while(true)
                                                {
                                                   if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               this.setComponentVisualState(§8j§);
                                                               while(_loc4_)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     return;
                                                                  }
                                                               }
                                                               continue loop1;
                                                               addr158:
                                                            }
                                                            continue loop10;
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      §§goto(addr168);
                                                      addr151:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      continue loop11;
                                                   }
                                                   addr80:
                                                   if(!(_loc4_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   if(§§pop() == §=!g§)
                                                   {
                                                      loop24:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && param2))
                                                         {
                                                            if(_loc4_ || param2)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               Mouse.cursor = this.§6p§;
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  this.setComponentVisualState(§8j§);
                                                                  addr63:
                                                                  addr140:
                                                                  loop26:
                                                                  for(; _loc4_ || _loc3_; while(true)
                                                                  {
                                                                     this.§1!N§(param1 == §=!g§);
                                                                     if(_loc4_ || param2)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        continue loop25;
                                                                     }
                                                                     continue loop26;
                                                                  },§§goto(addr158))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop26;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     Mouse.cursor = MouseCursor.AUTO;
                                                                     addr144:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           this.setComponentVisualState(§'0§);
                                                                           break loop24;
                                                                        }
                                                                     }
                                                                     §§goto(addr63);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr151);
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                         break;
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr51);
                                                      }
                                                      while(!_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            if(_loc3_ && param1)
                                                            {
                                                               continue loop11;
                                                            }
                                                            §§goto(addr80);
                                                         }
                                                         continue loop15;
                                                         §§goto(addr89);
                                                      }
                                                      addr89:
                                                      §§goto(addr144);
                                                   }
                                                   §§goto(addr29);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr161);
                           }
                        }
                     }
                  }
               }
            }
            addr228:
            return;
         }
         §§goto(addr70);
      }
      
      public function §4!O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§35§);
            loop0:
            while(true)
            {
               §§push(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr74:
               addr20:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc1_)
                     {
                        addr77:
                        this.setComponentState(§5!a§.§4]§);
                     }
                     break;
                     addr81:
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.setEnabled(param1);
         }
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
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
               while(true)
               {
                  mParentContainer.mClip.removeChild(mClip);
                  addr149:
                  addr76:
                  while(true)
                  {
                  }
                  if(!(_loc5_ || this))
                  {
                     continue;
                  }
                  return;
                  addr83:
               }
            }
            while(true)
            {
               mClip = null;
               while(_loc5_ || param1)
               {
                  mClip = param1;
                  while(!_loc6_)
                  {
                     if(this.mParentContainer)
                     {
                        while(!_loc6_)
                        {
                           mParentContainer.mClip.addChildAt(mClip,_loc4_);
                           while(true)
                           {
                           }
                        }
                        continue;
                        addr105:
                     }
                     while(true)
                     {
                        mClip.x = _loc2_;
                        §§goto(addr122);
                     }
                  }
               }
               §§goto(addr149);
            }
         }
         while(true)
         {
            mClip.y = _loc3_;
            while(_loc5_ || _loc3_)
            {
               this.§9!_§();
               if(_loc6_ && _loc2_)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr76);
                  }
                  §§goto(addr105);
               }
               §§goto(addr122);
            }
         }
         §§goto(addr83);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setVisibility(param1);
            while(!mClip.visible)
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  this.§1!N§(false);
               }
               break;
            }
            return;
         }
         §§goto(addr46);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.onParentVisibilityChange(param1);
            while(!param1)
            {
               if(!(_loc3_ && this))
               {
                  this.§1!N§(false);
               }
               if(_loc2_ || _loc2_)
               {
                  addr53:
                  break;
               }
            }
            return;
         }
         §§goto(addr53);
      }
   }
}
