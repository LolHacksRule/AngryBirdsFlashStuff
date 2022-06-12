package §2!i§
{
   import §4!e§.§08§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §=!&§ extends §7'§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const § !s§:String = "Deactive";
      
      public static const §-N§:String = "Disabled";
      
      public static const §="?§:String = "Out";
      
      public static const §+4§:String = "Over";
      
      public static const §>!`§:String = "Up_Default";
      
      public static const §=!X§:String = "Down";
      
      public static var § 8§:Class;
      
      public static var §5!>§:Boolean = true;
      
      public static const §="&§:String = "Tooltip";
      
      public static var §+-§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §=!&§))
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            while(true)
            {
               § !s§ = "Deactive";
               while(!(_loc2_ && _loc1_))
               {
                  §>!`§ = "Up_Default";
                  loop5:
                  for(; _loc1_ || §=!&§; if(_loc2_ && _loc2_)
                  {
                     continue;
                  },§="&§ = "Tooltip",while(true)
                  {
                     if(_loc1_)
                     {
                        addr43:
                        if(_loc2_ && _loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr65);
                  },while(true)
                  {
                     §-N§ = "Disabled";
                     §§goto(addr125);
                     §§goto(addr43);
                  },addr130:)
                  {
                     addr91:
                     if(_loc1_)
                     {
                        §=!X§ = "Down";
                        loop6:
                        while(true)
                        {
                           §5!>§ = true;
                           addr65:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop5;
                              }
                              continue loop6;
                           }
                           continue loop5;
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           §="?§ = "Out";
                           addr120:
                           while(true)
                           {
                              §+4§ = "Over";
                              break loop5;
                           }
                           §§goto(addr91);
                        }
                        addr125:
                     }
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      public var §5!L§:String;
      
      public var §@6§:String;
      
      public var §>"A§:String;
      
      public var §>!r§:MovieClip;
      
      public var §;t§:int = 6;
      
      private var §4!H§:Boolean = false;
      
      private var §""'§:String = "auto";
      
      public function §=!&§(param1:XML, param2:§08§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2,param3);
            while(true)
            {
               this.§5!L§ = COMPONENT_STATE_ACTIVE_DEFAULT;
            }
            addr93:
         }
         loop1:
         while(true)
         {
            this.§@6§ = §>!`§;
            loop2:
            while(true)
            {
               this.§-"A§();
               while(true)
               {
                  addr56:
                  loop4:
                  while(true)
                  {
                     this.§!!+§(param1.@Tooltip);
                     while(!_loc7_)
                     {
                        if(param1.@Toggle.toString().toUpperCase() != "TRUE")
                        {
                           var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
                           var _loc5_:String = param1.@cursor.toString().toLowerCase();
                           if(_loc6_ || this)
                           {
                              if(_loc4_.indexOf(_loc5_) > -1)
                              {
                                 if(!(_loc7_ && param2))
                                 {
                                    this.§""'§ = _loc5_;
                                 }
                              }
                           }
                        }
                        else
                        {
                           addr94:
                        }
                        if(_loc6_ || param1)
                        {
                           addr43:
                           continue;
                           if(_loc7_ && param1)
                           {
                              continue;
                           }
                           this.§4!H§ = true;
                           §§goto(addr43);
                        }
                        if(_loc7_)
                        {
                           break loop4;
                        }
                        continue loop2;
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public static function §>M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § 8§ = §8B§.§6"C§(§="&§);
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
         while(!param1)
         {
            if(_loc3_)
            {
               break;
            }
            addr48:
            if(_loc3_ && _loc2_)
            {
               continue;
            }
            this.setComponentVisualState(§="?§);
            §§goto(addr48);
         }
      }
      
      public function §!!+§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§>"A§ = param1;
            while(true)
            {
               §§push(this.§>"A§);
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
                           addr205:
                           while(true)
                           {
                              §§push(this.§>"A§);
                              addr182:
                              while(true)
                              {
                                 §§push(§§pop().length == 0);
                                 addr185:
                                 while(!(_loc2_ && _loc3_))
                                 {
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        addr204:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§>"A§ = null;
                              addr197:
                              while(true)
                              {
                              }
                           }
                           addr194:
                        }
                        while(true)
                        {
                           §§push(this.§>"A§);
                           if(!_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 continue loop1;
                              }
                              if(§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§push(§5!>§);
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §5!>§ = false;
                                                addr178:
                                                while(true)
                                                {
                                                   §>M§();
                                                   addr150:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                loop22:
                                                while(true)
                                                {
                                                   if(_loc2_ && _loc3_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§>!r§.mouseEnabled = false;
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  this.§>!r§.mouseChildren = false;
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        this.§>!r§.visible = false;
                                                                        continue;
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                                  §§goto(addr178);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§ 8§)
                                                                  {
                                                                     this.§>!b§();
                                                                     §§goto(addr119);
                                                                  }
                                                               }
                                                               addr146:
                                                            }
                                                            while(_loc3_)
                                                            {
                                                               this.§@"A§();
                                                               continue loop22;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop22;
                                                         §§goto(addr140);
                                                      }
                                                      addr140:
                                                      continue loop12;
                                                   }
                                                   §§goto(addr205);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§>!r§ = new MovieClip();
                                             §§goto(addr146);
                                             §§goto(addr150);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr204);
                                       }
                                       §§goto(addr205);
                                    }
                                    break;
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr25);
                           }
                           break;
                           §§goto(addr197);
                        }
                        §§goto(addr182);
                     }
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      private function §>!b§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§>!r§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(_loc4_)
         {
            _loc1_.name = "Text";
            if(!_loc3_)
            {
               this.§>!r§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(_loc4_ || _loc1_)
         {
            _loc2_.name = "Base";
            while(true)
            {
               this.§>!r§.addChildAt(_loc2_,0);
               loop1:
               while(_loc4_ || _loc1_)
               {
                  while(true)
                  {
                     this.§5!8§(this.§>"A§);
                     if(_loc4_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr100);
      }
      
      private function §@"A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§>!r§ = new § 8§();
         }
         do
         {
            this.§1!V§(this.§>"A§);
         }
         while(!_loc1_);
         
      }
      
      public function §1!V§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§>"A§ = param1;
         }
         while(!§ 8§)
         {
            this.§5!8§(param1);
            if(_loc3_)
            {
               return;
            }
            addr34:
            addr57:
            if(!_loc2_)
            {
               break;
            }
            if(_loc3_)
            {
               continue;
            }
            §§goto(addr34);
         }
         this.§>"5§(param1);
         §§goto(addr57);
      }
      
      private function §>"5§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TextField = this.§>!r§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§>!r§.getChildByName("Base") as MovieClip;
         if(!(_loc6_ && this))
         {
            _loc2_.text = this.§>"A§;
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               _loc2_.multiline = false;
               while(!_loc6_)
               {
                  _loc2_.width = _loc2_.textWidth * 1.25;
                  if(!(_loc6_ && _loc3_))
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
            if(!_loc6_)
            {
               _loc3_.scaleX = _loc4_ / _loc3_.width;
               if(_loc7_)
               {
                  _loc3_.x = 0;
               }
            }
            var _loc5_:int = 0;
            while(true)
            {
               if(_loc5_ >= _loc3_.numChildren)
               {
                  if(_loc7_ || _loc3_)
                  {
                     if(_loc6_ && this)
                     {
                        continue;
                     }
                     if(_loc7_)
                     {
                        _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                        break;
                     }
                     _loc5_++;
                     continue;
                     addr162:
                  }
                  break;
               }
               _loc3_.getChildAt(0).x = 0;
               §§goto(addr162);
            }
            return;
         }
      }
      
      private function §5!8§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:TextField = this.§>!r§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!(_loc6_ && _loc3_))
         {
            _loc3_.align = TextAlign.CENTER;
            while(true)
            {
               _loc3_.bold = true;
            }
            addr148:
         }
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
                  addr118:
                  addr42:
                  while(true)
                  {
                     _loc2_.text = this.§>"A§;
                     continue loop1;
                  }
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop9:
                     while(true)
                     {
                        _loc2_.selectable = false;
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              addr57:
                              if(!(_loc5_ || param1))
                              {
                                 break;
                              }
                              if(_loc5_)
                              {
                                 _loc2_.mouseEnabled = false;
                                 if(_loc5_)
                                 {
                                    continue loop9;
                                 }
                                 continue;
                              }
                              §§goto(addr148);
                           }
                           addr71:
                           while(_loc5_)
                           {
                              continue loop9;
                           }
                           §§goto(addr118);
                        }
                        loop7:
                        while(true)
                        {
                           if(_loc5_ || this)
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              if(_loc6_)
                              {
                                 continue loop2;
                              }
                              _loc2_.textColor = 0;
                              §§goto(addr71);
                           }
                           else
                           {
                              while(true)
                              {
                                 _loc2_.width = _loc2_.textWidth * 1.25;
                                 continue loop7;
                              }
                              addr100:
                           }
                        }
                        continue loop1;
                     }
                     continue;
                  }
                  var _loc4_:Shape;
                  (_loc4_ = this.§>!r§.getChildByName("Base") as Shape).graphics.clear();
                  if(!_loc6_)
                  {
                     _loc4_.graphics.lineStyle(1);
                     _loc4_.graphics.beginFill(0,1);
                     addr267:
                  }
                  _loc4_.graphics.drawRect(-this.§;t§,-this.§;t§,_loc2_.width + 2 * this.§;t§,_loc2_.height + 2 * this.§;t§);
                  _loc4_.graphics.beginFill(16777215,1);
                  addr209:
                  addr262:
                  if(_loc5_)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        if(_loc5_)
                        {
                           _loc4_.graphics.drawRect(-this.§;t§ / 2,-(this.§;t§ / 2),_loc2_.width + 1 * this.§;t§,_loc2_.height + 1 * this.§;t§);
                           if(_loc6_ && param1)
                           {
                              §§goto(addr209);
                           }
                           return;
                        }
                        §§goto(addr267);
                     }
                     §§goto(addr262);
                  }
                  addr255:
                  §§goto(addr255);
               }
            }
         }
      }
      
      private function §?!C§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(_loc5_)
         {
            §§push(!this.§>!r§);
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
                        addr137:
                        while(true)
                        {
                           §§push(this.§>"A§);
                           addr113:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              addr115:
                              while(!_loc4_)
                              {
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     loop7:
                     while(_loc5_)
                     {
                        if(!§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§pop();
                              if(_loc5_ || this)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§>"A§);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop().length == 0);
                                       if(!(_loc4_ && param1))
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      return;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      addr26:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            continue loop8;
                                                         }
                                                         addr57:
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc4_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  addr65:
                                                                  §§pop();
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     §§push(§+-§);
                                                                     if(_loc5_)
                                                                     {
                                                                        addr142:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              addr150:
                                                                              _loc2_ = mClip.getRect(getParentView());
                                                                              if(!_loc4_)
                                                                              {
                                                                                 this.§>!r§.y = _loc2_.y - this.§>!r§.height - this.§;t§;
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    addr187:
                                                                                    this.§>!r§.x = _loc2_.x + mClip.width / 2 - this.§>!r§.width / 2;
                                                                                 }
                                                                                 _loc3_ = this.§>!r§.getRect(mClip.stage);
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    if(_loc3_.right > mClip.stage.stageWidth - this.§;t§)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§>!r§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§;t§));
                                                                                          addr373:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr355:
                                                                                    }
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_.left < this.§;t§)
                                                                                       {
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             this.§>!r§.x += 1 + (this.§;t§ - _loc3_.left);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             loop20:
                                                                                             while(_loc5_ || _loc2_)
                                                                                             {
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§>!r§.visible = true;
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   loop19:
                                                                                                   while(_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         this.§>!r§.y += mClip.height + this.§>!r§.height + this.§;t§ * 2;
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      addr280:
                                                                                                      addr280:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§>!r§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§;t§));
                                                                                                         break loop19;
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ || param1))
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr229:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_.top >= this.§;t§)
                                                                                                            {
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            §§goto(addr235);
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                         addr229:
                                                                                                      }
                                                                                                      §§goto(addr355);
                                                                                                   }
                                                                                                   addr235:
                                                                                                }
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr229);
                                                                                                }
                                                                                                break loop8;
                                                                                             }
                                                                                          }
                                                                                          addr335:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_.bottom > mClip.stage.stageHeight - this.§;t§)
                                                                                          {
                                                                                             §§goto(addr280);
                                                                                          }
                                                                                          §§goto(addr229);
                                                                                          §§goto(addr335);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr280);
                                                                              }
                                                                              §§goto(addr187);
                                                                           }
                                                                           break loop8;
                                                                        }
                                                                        this.§>!r§.visible = false;
                                                                        break loop8;
                                                                     }
                                                                     §§goto(addr142);
                                                                  }
                                                                  §§goto(addr150);
                                                               }
                                                            }
                                                            §§goto(addr142);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr115);
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                §§goto(addr137);
                                             }
                                             §§goto(addr26);
                                          }
                                          addr92:
                                       }
                                       §§goto(addr142);
                                    }
                                    break;
                                 }
                                 §§goto(addr113);
                              }
                              break;
                           }
                           return;
                        }
                        §§goto(addr92);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§>!r§)
            {
               if(!_loc2_)
               {
                  this.§>"A§ = null;
                  addr125:
                  while(true)
                  {
                     if(this.§>!r§.numChildren <= 0)
                     {
                        if(_loc1_ || this)
                        {
                           if(this.§>!r§.parent)
                           {
                              if(!(_loc1_ || this))
                              {
                                 break;
                              }
                              if(!(_loc2_ && _loc1_))
                              {
                                 this.§>!r§.parent.removeChild(this.§>!r§);
                                 break;
                              }
                              continue;
                           }
                           while(true)
                           {
                              this.§>!r§ = null;
                              addr43:
                              §§goto(addr60);
                           }
                           addr39:
                        }
                        break;
                     }
                     this.§>!r§.removeChildAt(0);
                  }
                  while(true)
                  {
                     §§goto(addr39);
                  }
                  addr125:
               }
               §§goto(addr125);
            }
            addr60:
            while(_loc2_ && _loc1_)
            {
               break loop2;
            }
            while(true)
            {
               super.clear();
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               §§goto(addr43);
               §§goto(addr60);
            }
            return;
         }
         §§goto(addr125);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§5!L§ = param1;
            do
            {
               this.§-"A§();
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§@6§ = param1;
            do
            {
               this.§-"A§();
            }
            while(_loc2_);
            
         }
      }
      
      public function §-"A§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc5_)
               {
                  return;
               }
            }
         }
         var _loc1_:Array = new Array(this.§5!L§ + "_" + this.§@6§,this.§5!L§ + "_" + §>!`§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§@6§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §>!`§);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            try
            {
               mClip.gotoAndStop(_loc1_[_loc2_] as String);
               if(!_loc4_)
               {
                  if(mClip.numChildren > 0)
                  {
                     if(!_loc4_)
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
            if(!_loc5_)
            {
               break;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(this.§5!L§ == §-N§)
            {
               if(_loc3_ || param1)
               {
                  return;
               }
               while(true)
               {
               }
               addr233:
            }
            loop0:
            while(true)
            {
               super.listenerEventOccured(param1,param2);
               loop1:
               while(true)
               {
                  §§push(this.§4!H§);
                  if(!(_loc4_ && param1))
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
                                    this.§>9§();
                                    addr189:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr187:
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 loop7:
                                 while(!(_loc4_ && param1))
                                 {
                                    if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          this.setComponentVisualState(§=!X§);
                                          loop9:
                                          while(!(_loc4_ && this))
                                          {
                                             while(true)
                                             {
                                                §§push(param1);
                                                loop11:
                                                while(true)
                                                {
                                                   if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                                   {
                                                      while(true)
                                                      {
                                                         this.setComponentVisualState(§+4§);
                                                         addr144:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr141:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(§§pop() == §`!k§)
                                                         {
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            addr132:
                                                            loop16:
                                                            while(!_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               this.setComponentVisualState(§="?§);
                                                               while(true)
                                                               {
                                                                  addr59:
                                                                  if(_loc4_ && param1)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§?!C§(param1 == §'!f§);
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr187);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.setComponentVisualState(§+4§);
                                                                                 }
                                                                                 addr94:
                                                                              }
                                                                           }
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_ && param2)
                                                                              {
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    Mouse.cursor = this.§""'§;
                                                                                    §§goto(addr94);
                                                                                    continue loop21;
                                                                                 }
                                                                                 continue loop1;
                                                                                 addr86:
                                                                              }
                                                                              §§goto(addr59);
                                                                           }
                                                                        }
                                                                        addr28:
                                                                     }
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1);
                                                                        break loop7;
                                                                        addr213:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop24;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr141);
                                                               }
                                                            }
                                                            §§goto(addr144);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            if(!_loc4_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            continue loop15;
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr189);
                                       }
                                    }
                                    §§goto(addr137);
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                                    if(_loc4_ && param2)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           addr185:
                        }
                     }
                  }
                  §§goto(addr213);
               }
            }
         }
         §§goto(addr233);
      }
      
      public function §>9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§5!L§);
            loop0:
            while(true)
            {
               §§push(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr89:
               addr25:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_)
                     {
                        addr92:
                        this.setComponentState(§=!&§.§ !s§);
                     }
                     break;
                     addr96:
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr92);
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
         if(_loc6_ || _loc2_)
         {
            super.changeMovieClip(param1);
         }
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(_loc6_ || _loc3_)
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
                  addr75:
                  if(_loc6_ || _loc3_)
                  {
                     return;
                  }
               }
            }
            loop2:
            while(true)
            {
               mClip = null;
               loop3:
               while(true)
               {
                  mClip = param1;
                  while(true)
                  {
                     if(this.mParentContainer)
                     {
                        loop5:
                        while(_loc6_)
                        {
                           while(true)
                           {
                              mParentContainer.mClip.addChildAt(mClip,_loc4_);
                              addr137:
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 continue loop3;
                              }
                              continue loop5;
                           }
                           §§goto(addr137);
                        }
                        continue loop2;
                     }
                     while(true)
                     {
                        mClip.x = _loc2_;
                        §§goto(addr101);
                        §§goto(addr137);
                     }
                     §§goto(addr75);
                     addr89:
                     if(!(_loc6_ || _loc3_))
                     {
                        continue;
                     }
                     this.§-"A§();
                     addr96:
                     if(!_loc6_)
                     {
                        while(!_loc5_)
                        {
                           §§goto(addr89);
                           §§goto(addr96);
                        }
                        §§goto(addr101);
                        addr87:
                     }
                     if(!(_loc6_ || _loc3_))
                     {
                        §§goto(addr137);
                     }
                     §§goto(addr75);
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setVisibility(param1);
         }
         while(!mClip.visible)
         {
            if(!_loc2_)
            {
               break;
            }
            addr49:
            if(!(_loc2_ || _loc2_))
            {
               continue;
            }
            this.§?!C§(false);
            §§goto(addr49);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.onParentVisibilityChange(param1);
         }
         while(!param1)
         {
            if(!(_loc3_ && _loc2_))
            {
               if(!_loc2_)
               {
                  continue;
               }
               this.§?!C§(false);
            }
            break;
         }
      }
   }
}
