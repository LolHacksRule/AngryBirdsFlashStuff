package §1!t§
{
   import §%i§.§0!Y§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §!!G§ extends §!>§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §@!T§:String = "Deactive";
      
      public static const §[E§:String = "Disabled";
      
      public static const §'!P§:String = "Out";
      
      public static const §+"B§:String = "Over";
      
      public static const §^x§:String = "Up_Default";
      
      public static const §3!e§:String = "Down";
      
      public static var §?"5§:Class;
      
      public static var §^!u§:Boolean = true;
      
      public static const §;! §:String = "Tooltip";
      
      public static var §2"8§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            while(true)
            {
               §@!T§ = "Deactive";
               loop1:
               while(true)
               {
                  §[E§ = "Disabled";
                  while(true)
                  {
                     §'!P§ = "Out";
                     continue loop1;
                     addr48:
                     if(_loc1_ || _loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public var §4" §:String;
      
      public var §@!s§:String;
      
      public var §2!P§:String;
      
      public var §<!B§:MovieClip;
      
      public var §2!<§:int = 6;
      
      private var §^"U§:Boolean = false;
      
      private var §-M§:String = "auto";
      
      public function §!!G§(param1:XML, param2:§0!Y§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            super(param1,param2,param3);
            while(true)
            {
               this.§4" § = COMPONENT_STATE_ACTIVE_DEFAULT;
               loop1:
               while(true)
               {
                  this.§@!s§ = §^x§;
                  while(true)
                  {
                     this.§1!=§();
                     addr78:
                     while(true)
                     {
                        addr50:
                        while(true)
                        {
                           this.§3!j§(param1.@Tooltip);
                           continue loop1;
                        }
                     }
                     addr41:
                     if(_loc6_ && this)
                     {
                        continue;
                     }
                     if(true)
                     {
                        var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
                        var _loc5_:String = param1.@cursor.toString().toLowerCase();
                        §§goto(addr95);
                     }
                     §§goto(addr50);
                  }
               }
            }
         }
         while(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            if(_loc7_)
            {
               if(!_loc6_)
               {
                  this.§^"U§ = true;
                  addr39:
                  if(_loc7_)
                  {
                     §§goto(addr41);
                  }
                  §§goto(addr78);
               }
               §§goto(addr65);
            }
            §§goto(addr39);
         }
         addr95:
         if(_loc7_)
         {
            if(_loc4_.indexOf(_loc5_) > -1)
            {
               if(_loc7_)
               {
                  this.§-M§ = _loc5_;
               }
            }
         }
      }
      
      public static function §%"F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §?"5§ = §?q§.§ q§(§;! §);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.setActiveStatus(param1);
            loop0:
            while(!param1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     this.setComponentVisualState(§'!P§);
                  }
                  addr49:
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
         §§goto(addr49);
      }
      
      public function §3!j§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2!P§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§2!P§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr200:
                           while(true)
                           {
                              §§push(this.§2!P§);
                              addr182:
                              while(true)
                              {
                                 §§push(§§pop().length == 0);
                                 addr185:
                                 while(_loc3_)
                                 {
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§2!P§ = null;
                              addr192:
                              while(true)
                              {
                              }
                              addr86:
                              if(!(_loc3_ || _loc2_))
                              {
                                 continue;
                              }
                              this.§<!B§.mouseChildren = false;
                              loop16:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       loop22:
                                       while(true)
                                       {
                                          addr118:
                                          while(true)
                                          {
                                             this.§<!B§ = new MovieClip();
                                             addr123:
                                             loop12:
                                             while(_loc3_)
                                             {
                                                if(§?"5§)
                                                {
                                                   while(true)
                                                   {
                                                      this.§^!U§();
                                                      break loop16;
                                                   }
                                                   addr113:
                                                }
                                                else
                                                {
                                                   this.§#m§();
                                                   loop13:
                                                   while(true)
                                                   {
                                                      addr72:
                                                      addr173:
                                                      while(true)
                                                      {
                                                         this.§<!B§.mouseEnabled = false;
                                                         continue loop13;
                                                      }
                                                      addr173:
                                                      while(_loc3_)
                                                      {
                                                         §^!u§ = false;
                                                         break loop12;
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §%"F§();
                                                continue loop22;
                                             }
                                             continue loop22;
                                          }
                                       }
                                    }
                                    §§goto(addr113);
                                 }
                                 break;
                                 addr38:
                                 addr32:
                                 do
                                 {
                                    if(_loc2_ && this)
                                    {
                                       continue loop16;
                                    }
                                    if(_loc3_ || param1)
                                    {
                                       continue;
                                    }
                                    §§goto(addr77);
                                 }
                                 while(getParentView().addChild(this.§<!B§), !_loc3_);
                                 
                                 §§goto(addr20);
                              }
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr72);
                                 }
                                 §§goto(addr123);
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§2!P§);
                           if(_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 continue loop1;
                              }
                              if(!§§pop())
                              {
                                 addr20:
                                 return;
                              }
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(§^!u§);
                                 if(!(_loc2_ && this))
                                 {
                                    if(!(_loc3_ || this))
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop())
                                    {
                                       §§goto(addr173);
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr173);
                           }
                           break;
                        }
                        §§goto(addr182);
                     }
                  }
               }
            }
         }
         §§goto(addr32);
      }
      
      private function §#m§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§<!B§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!(_loc3_ && this))
         {
            _loc1_.name = "Text";
            if(!_loc3_)
            {
               addr49:
               this.§<!B§.addChild(_loc1_);
            }
            var _loc2_:Shape = new Shape();
            if(!_loc3_)
            {
               _loc2_.name = "Base";
            }
            while(true)
            {
               this.§<!B§.addChildAt(_loc2_,0);
               while(_loc4_ || this)
               {
                  this.§+P§(this.§2!P§);
                  if(_loc4_ || _loc1_)
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      private function §^!U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§<!B§ = new §?"5§();
            do
            {
               this.§^!B§(this.§2!P§);
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function §^!B§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2!P§ = param1;
            do
            {
               if(!§?"5§)
               {
                  this.§+P§(param1);
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr78:
                  }
               }
               continue;
               return;
            }
            while(_loc2_ && _loc3_);
            
         }
         this.§%"O§(param1);
         §§goto(addr78);
      }
      
      private function §%"O§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§<!B§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§<!B§.getChildByName("Base") as MovieClip;
         if(_loc6_ || param1)
         {
            _loc2_.text = this.§2!P§;
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
                  while(_loc7_);
                  
                  if(!(_loc7_ && this))
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
                     if(!_loc7_)
                     {
                        _loc3_.scaleX = _loc4_ / _loc3_.width;
                        if(_loc6_)
                        {
                           _loc3_.x = 0;
                        }
                     }
                     var _loc5_:int = 0;
                     while(true)
                     {
                        if(_loc5_ >= _loc3_.numChildren)
                        {
                           if(_loc6_)
                           {
                              _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                           }
                           if(!(_loc6_ || param1))
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
                     addr56:
                  }
                  break;
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §+P§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§<!B§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(_loc6_)
         {
            _loc3_.align = TextAlign.CENTER;
            while(true)
            {
               _loc3_.bold = true;
               addr134:
               while(true)
               {
                  _loc3_.size = 12;
                  addr127:
                  while(!_loc5_)
                  {
                  }
               }
            }
            addr139:
         }
         while(true)
         {
            _loc2_.defaultTextFormat = _loc3_;
            loop4:
            while(true)
            {
               if(!_loc5_)
               {
                  _loc2_.border = false;
                  loop5:
                  while(true)
                  {
                     _loc2_.text = this.§2!P§;
                     loop6:
                     while(_loc6_)
                     {
                        _loc2_.height = _loc2_.textHeight * 1.25;
                        loop7:
                        while(true)
                        {
                           _loc2_.width = _loc2_.textWidth * 1.25;
                           loop8:
                           while(true)
                           {
                              _loc2_.textColor = 0;
                              loop9:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                    continue loop7;
                                 }
                                 continue loop8;
                                 addr54:
                                 while(true)
                                 {
                                    _loc2_.selectable = false;
                                    do
                                    {
                                       _loc2_.mouseEnabled = false;
                                    }
                                    while(!(_loc6_ || _loc2_));
                                    
                                    if(!(_loc5_ && this))
                                    {
                                       continue;
                                    }
                                    continue loop9;
                                 }
                                 continue loop6;
                              }
                              continue loop4;
                           }
                        }
                     }
                     §§goto(addr127);
                  }
               }
               else
               {
                  §§goto(addr139);
               }
               §§goto(addr134);
            }
         }
      }
      
      private function §]!J§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(_loc5_)
         {
            §§push(!this.§<!B§);
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
                        if(_loc5_ || _loc3_)
                        {
                           §§push(this.§2!P§);
                           while(true)
                           {
                              §§push(§§pop() == null);
                           }
                           addr86:
                        }
                        break;
                     }
                     addr135:
                     _loc2_ = mClip.getRect(getParentView());
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§<!B§.y = _loc2_.y - this.§<!B§.height - this.§2!<§;
                        if(!_loc4_)
                        {
                           this.§<!B§.x = _loc2_.x + mClip.width / 2 - this.§<!B§.width / 2;
                        }
                     }
                     _loc3_ = this.§<!B§.getRect(mClip.stage);
                     if(!_loc4_)
                     {
                        if(_loc3_.right > mClip.stage.stageWidth - this.§2!<§)
                        {
                           while(true)
                           {
                              this.§<!B§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§2!<§));
                              addr353:
                              while(true)
                              {
                              }
                           }
                           addr335:
                        }
                        loop11:
                        while(true)
                        {
                           if(_loc3_.left < this.§2!<§)
                           {
                              while(true)
                              {
                                 this.§<!B§.x += 1 + (this.§2!<§ - _loc3_.left);
                                 addr315:
                                 while(true)
                                 {
                                 }
                              }
                              addr301:
                           }
                           loop14:
                           while(true)
                           {
                              if(_loc3_.bottom > mClip.stage.stageHeight - this.§2!<§)
                              {
                                 loop15:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       break loop14;
                                    }
                                    this.§<!B§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§2!<§));
                                    while(true)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(_loc4_ && this)
                                          {
                                             continue loop11;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr301);
                                       }
                                    }
                                    §§goto(addr315);
                                    loop19:
                                    while(true)
                                    {
                                       if(_loc4_ && param1)
                                       {
                                          continue loop15;
                                       }
                                       loop20:
                                       while(true)
                                       {
                                          this.§<!B§.visible = true;
                                          if(_loc4_)
                                          {
                                             continue loop19;
                                          }
                                          if(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc5_ || param1)
                                                {
                                                   addr216:
                                                   if(false)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc3_.top >= this.§2!<§)
                                                         {
                                                            continue loop20;
                                                         }
                                                         while(true)
                                                         {
                                                            this.§<!B§.y += mClip.height + this.§<!B§.height + this.§2!<§ * 2;
                                                            continue loop19;
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                      addr354:
                                                      addr218:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr354);
                                                   }
                                                   §§goto(addr359);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr280);
                                             }
                                             §§goto(addr315);
                                          }
                                          §§goto(addr224);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr335);
                        }
                     }
                     §§goto(addr353);
                     addr114:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       if(!_loc4_)
                                       {
                                          return;
                                       }
                                       addr108:
                                       while(true)
                                       {
                                          addr56:
                                          while(true)
                                          {
                                             §§push(this.§2!P§);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop().length == 0);
                                                if(_loc5_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop9;
                                                }
                                                addr126:
                                                §§goto(addr127);
                                                §§push(Boolean(§§pop()));
                                             }
                                             else
                                             {
                                                §§goto(addr86);
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                    §§goto(addr359);
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop());
                                          if(_loc4_)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc4_ && _loc2_)
                                             {
                                             }
                                          }
                                          §§goto(addr127);
                                       }
                                       §§pop();
                                       if(_loc5_ || this)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr56);
                                          }
                                          else
                                          {
                                             §§push(§2"8§);
                                             if(_loc5_)
                                             {
                                                §§goto(addr126);
                                             }
                                             §§goto(addr127);
                                          }
                                       }
                                       §§goto(addr359);
                                    }
                                 }
                                 §§goto(addr126);
                              }
                              continue loop1;
                           }
                           if(_loc5_)
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr114);
                           }
                           else
                           {
                              addr127:
                              if(§§pop())
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§goto(addr135);
                                 }
                              }
                              else
                              {
                                 this.§<!B§.visible = false;
                              }
                           }
                           addr359:
                           return;
                           §§goto(addr127);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr135);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§<!B§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§2!P§ = null;
                  addr125:
                  while(true)
                  {
                     if(this.§<!B§.numChildren <= 0)
                     {
                        if(_loc1_ || this)
                        {
                           if(!(_loc1_ || this))
                           {
                              continue;
                           }
                           if(this.§<!B§.parent)
                           {
                              break;
                           }
                           while(true)
                           {
                              this.§<!B§ = null;
                              addr45:
                              §§goto(addr62);
                           }
                        }
                        break;
                     }
                     this.§<!B§.removeChildAt(0);
                  }
                  while(true)
                  {
                     this.§<!B§.parent.removeChild(this.§<!B§);
                     §§goto(addr103);
                  }
                  addr125:
               }
               §§goto(addr125);
            }
            addr62:
            while(_loc2_ && _loc2_)
            {
               break loop3;
            }
            while(true)
            {
               super.clear();
               if(!_loc2_)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  addr103:
                  while(true)
                  {
                     continue loop5;
                  }
               }
               else
               {
                  §§goto(addr45);
               }
               §§goto(addr62);
            }
            return;
         }
         §§goto(addr125);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§4" § = param1;
         }
         do
         {
            this.§1!=§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!s§ = param1;
            do
            {
               this.§1!=§();
            }
            while(_loc2_);
            
         }
      }
      
      public function §1!=§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc1_))
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc5_)
               {
                  §§goto(addr30);
               }
            }
            var _loc1_:Array = new Array(this.§4" § + "_" + this.§@!s§,this.§4" § + "_" + §^x§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§@!s§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §^x§);
            var _loc2_:int = 0;
            for(; _loc2_ < _loc1_.length; _loc2_++,if(!_loc5_)
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
                        if(!_loc5_)
                        {
                           addr106:
                           continue;
                        }
                     }
                     §§goto(addr106);
                  }
                  return;
               }
               catch(e:Error)
               {
               }
               continue;
               §§goto(addr106);
            }
            return;
         }
         addr30:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§4" § != §[E§)
            {
               loop0:
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  loop1:
                  while(true)
                  {
                     §§push(this.§^"U§);
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                        loop2:
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
                                       this.§8!r§();
                                       while(!(_loc3_ && this))
                                       {
                                          loop8:
                                          while(!(_loc3_ && this))
                                          {
                                             this.setComponentVisualState(§3!e§);
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
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               this.setComponentVisualState(§+"B§);
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     addr89:
                                                                     addr140:
                                                                     loop14:
                                                                     while(_loc4_)
                                                                     {
                                                                        if(§§pop() == §6!E§)
                                                                        {
                                                                           if(_loc4_ || param2)
                                                                           {
                                                                              Mouse.cursor = MouseCursor.AUTO;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr196:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop() == §?"H§)
                                                                              {
                                                                                 loop18:
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    Mouse.cursor = this.§-M§;
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          this.setComponentVisualState(§+"B§);
                                                                                          loop20:
                                                                                          while(!_loc3_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.§]!J§(param1 == §?"H§);
                                                                                                if(_loc4_ || param1)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                       addr114:
                                                                                       while(true)
                                                                                       {
                                                                                          this.setComponentVisualState(§'!P§);
                                                                                          break loop18;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              §§goto(addr24);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              break loop11;
                                                                           }
                                                                           addr49:
                                                                           addr155:
                                                                           addr196:
                                                                        }
                                                                        §§goto(addr114);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        continue loop10;
                                                                        §§goto(addr89);
                                                                     }
                                                                  }
                                                               }
                                                               addr208:
                                                               return;
                                                               addr131:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr131);
                                                      }
                                                      §§goto(addr87);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr155);
                                                      §§goto(addr196);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr140);
                                 }
                              }
                              addr166:
                           }
                        }
                     }
                     §§goto(addr196);
                  }
               }
            }
         }
         §§goto(addr208);
      }
      
      public function §8!r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§4" §);
            loop0:
            while(true)
            {
               §§push(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr74:
               addr20:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc1_)
                     {
                        this.setComponentState(§!!G§.§@!T§);
                     }
                     break;
                     addr81:
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr69);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
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
         if(_loc6_ || _loc2_)
         {
            if(this.mParentContainer)
            {
               while(true)
               {
                  mParentContainer.mClip.removeChild(mClip);
                  addr140:
                  while(true)
                  {
                  }
               }
               addr136:
            }
            loop2:
            while(true)
            {
               mClip = null;
               loop3:
               while(true)
               {
                  mClip = param1;
                  loop4:
                  while(true)
                  {
                     if(this.mParentContainer)
                     {
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              mParentContainer.mClip.addChildAt(mClip,_loc4_);
                           }
                           addr113:
                        }
                        while(!_loc5_)
                        {
                           if(!_loc6_)
                           {
                              §§goto(addr136);
                           }
                        }
                        continue loop2;
                        addr118:
                     }
                     loop6:
                     while(true)
                     {
                        mClip.x = _loc2_;
                        while(_loc6_)
                        {
                           continue loop3;
                           mClip.y = _loc3_;
                           do
                           {
                              this.§1!=§();
                           }
                           while(!(_loc6_ || param1));
                           
                           if(_loc5_ && _loc3_)
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              break loop6;
                           }
                           §§goto(addr118);
                        }
                        continue loop4;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.setVisibility(param1);
         }
         while(!mClip.visible)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  continue;
               }
               this.§]!J§(false);
            }
            break;
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
               if(_loc3_ || _loc3_)
               {
                  if(_loc3_)
                  {
                     this.§]!J§(false);
                     addr49:
                     break;
                  }
                  continue;
               }
               §§goto(addr49);
            }
            return;
         }
         §§goto(addr49);
      }
   }
}
