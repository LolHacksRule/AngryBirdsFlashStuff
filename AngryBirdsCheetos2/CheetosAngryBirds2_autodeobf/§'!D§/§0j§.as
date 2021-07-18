package §'!D§
{
   import §7'§.§!y§;
   import §>M§.§<6§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §0j§ extends §?!h§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §+o§:String = "Deactive";
      
      public static const §%!T§:String = "Disabled";
      
      public static const §-y§:String = "Out";
      
      public static const §=Z§:String = "Over";
      
      public static const § [§:String = "Up_Default";
      
      public static const §;!7§:String = "Down";
      
      public static var §3v§:Class;
      
      public static var §@!H§:Boolean = true;
      
      public static const §4!$§:String = "Tooltip";
      
      public static var §[!2§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            loop0:
            while(true)
            {
               §+o§ = "Deactive";
               loop1:
               while(true)
               {
                  §%!T§ = "Disabled";
                  loop2:
                  while(true)
                  {
                     §-y§ = "Out";
                     addr131:
                     while(true)
                     {
                        §=Z§ = "Over";
                        addr35:
                        if(!(_loc1_ && §0j§))
                        {
                           return;
                           addr42:
                        }
                     }
                     addr109:
                     if(!(_loc1_ && _loc2_))
                     {
                        §@!H§ = true;
                        loop7:
                        while(true)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              continue loop0;
                           }
                           loop6:
                           while(true)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 §§goto(addr109);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    § [§ = "Up_Default";
                                    while(true)
                                    {
                                       §;!7§ = "Down";
                                       continue loop6;
                                       addr54:
                                       if(_loc2_ || _loc1_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    continue loop6;
                                 }
                                 §§goto(addr42);
                                 addr126:
                              }
                           }
                           continue loop2;
                           addr47:
                           while(true)
                           {
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue loop7;
                              }
                              §§goto(addr54);
                              addr78:
                              §[!2§ = true;
                              if(_loc1_)
                              {
                                 continue;
                              }
                              §§goto(addr35);
                           }
                           §§goto(addr131);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr126);
      }
      
      public var §<!V§:String;
      
      public var §0"§:String;
      
      public var §9r§:String;
      
      public var §+!=§:MovieClip;
      
      public var §>!H§:int = 6;
      
      private var §!Y§:Boolean = false;
      
      private var §`!A§:String = "auto";
      
      public function §0j§(param1:XML, param2:§<6§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               this.§<!V§ = COMPONENT_STATE_ACTIVE_DEFAULT;
               loop1:
               while(true)
               {
                  this.§0"§ = § [§;
                  loop2:
                  while(true)
                  {
                     this.§8!Y§();
                     addr69:
                     while(_loc7_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                     loop5:
                     while(true)
                     {
                        if(!(_loc6_ && param3))
                        {
                           if(param1.@Toggle.toString().toUpperCase() == "TRUE")
                           {
                              if(_loc7_)
                              {
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    this.§!Y§ = true;
                                 }
                              }
                              while(true)
                              {
                                 if(_loc7_)
                                 {
                                    if(true)
                                    {
                                       break loop5;
                                    }
                                    while(true)
                                    {
                                       this.§ !i§(param1.@Tooltip);
                                       continue loop5;
                                    }
                                 }
                                 §§goto(addr69);
                              }
                           }
                           break;
                        }
                        continue loop2;
                     }
                     var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
                     var _loc5_:String = param1.@cursor.toString().toLowerCase();
                     if(_loc7_)
                     {
                        if(_loc4_.indexOf(_loc5_) > -1)
                        {
                           if(_loc7_)
                           {
                              this.§`!A§ = _loc5_;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      public static function §3!`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §3v§ = §!y§.§%!C§(§4!$§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.setActiveStatus(param1);
            while(!param1)
            {
               if(_loc2_ && _loc3_)
               {
                  break;
               }
               addr69:
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               this.setComponentVisualState(§-y§);
               §§goto(addr69);
            }
            return;
         }
         §§goto(addr69);
      }
      
      public function § !i§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9r§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§9r§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        addr219:
                        while(true)
                        {
                           §§pop();
                           addr220:
                           while(true)
                           {
                              §§push(this.§9r§);
                              addr180:
                              while(true)
                              {
                                 §§push(§§pop().length == 0);
                              }
                           }
                        }
                        addr219:
                     }
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(!(_loc2_ && this))
                              {
                                 this.§9r§ = null;
                                 loop5:
                                 while(true)
                                 {
                                    addr137:
                                    while(true)
                                    {
                                       §§push(this.§9r§);
                                       if(_loc2_ && _loc2_)
                                       {
                                          break;
                                       }
                                       if(_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§push(§@!H§);
                                                if(!(_loc3_ || _loc3_))
                                                {
                                                   continue loop3;
                                                }
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr173:
                                                      while(true)
                                                      {
                                                         §@!H§ = false;
                                                         addr176:
                                                         while(true)
                                                         {
                                                            §3!`§();
                                                            addr134:
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               addr136:
                                                            }
                                                         }
                                                      }
                                                      addr173:
                                                   }
                                                   while(true)
                                                   {
                                                      this.§+!=§ = new MovieClip();
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(!§3v§)
                                                         {
                                                            this.§5i§();
                                                            loop9:
                                                            while(true)
                                                            {
                                                               if(_loc3_ || param1)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§+!=§.mouseEnabled = false;
                                                                        loop11:
                                                                        while(_loc3_ || param1)
                                                                        {
                                                                           this.§+!=§.mouseChildren = false;
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc2_ && _loc3_))
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           §§goto(addr176);
                                                                        }
                                                                        §§goto(addr134);
                                                                        addr124:
                                                                     }
                                                                     addr39:
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        break loop8;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop5;
                                                         }
                                                         §§goto(addr120);
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr219);
                                                }
                                             }
                                             §§goto(addr173);
                                          }
                                          return;
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr220);
                           }
                           §§goto(addr137);
                        }
                     }
                  }
                  §§goto(addr219);
               }
            }
         }
         §§goto(addr173);
      }
      
      private function §5i§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§+!=§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!_loc3_)
         {
            _loc1_.name = "Text";
            if(_loc4_ || _loc2_)
            {
               this.§+!=§.addChild(_loc1_);
               addr39:
            }
            var _loc2_:Shape = new Shape();
            if(_loc4_ || _loc3_)
            {
               _loc2_.name = "Base";
               do
               {
                  this.§+!=§.addChildAt(_loc2_,0);
                  do
                  {
                     this.§'!P§(this.§9r§);
                  }
                  while(_loc3_ && this);
                  
               }
               while(_loc3_);
               
            }
            return;
         }
         §§goto(addr39);
      }
      
      private function §]!4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§+!=§ = new §3v§();
         }
         do
         {
            this.§#!@§(this.§9r§);
         }
         while(!(_loc2_ || this));
         
      }
      
      public function §#!@§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§9r§ = param1;
            do
            {
               if(§3v§)
               {
                  if(_loc3_)
                  {
                     this.§%6§(param1);
                  }
                  continue;
               }
               this.§'!P§(param1);
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
            }
            while(!(_loc3_ || _loc2_));
            
            §§goto(addr25);
         }
         addr25:
      }
      
      private function §%6§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TextField = this.§+!=§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§+!=§.getChildByName("Base") as MovieClip;
         if(_loc7_ || param1)
         {
            _loc2_.text = this.§9r§;
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
                  if(_loc7_ || param1)
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
            if(_loc7_ || param1)
            {
               _loc3_.scaleX = _loc4_ / _loc3_.width;
               if(!(_loc6_ && _loc3_))
               {
                  addr111:
                  _loc3_.x = 0;
               }
               var _loc5_:int = 0;
               while(true)
               {
                  if(_loc5_ >= _loc3_.numChildren)
                  {
                     if(_loc7_ || _loc2_)
                     {
                        _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                     }
                     if(_loc6_)
                     {
                        continue;
                     }
                     if(_loc7_ || this)
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
            §§goto(addr111);
         }
      }
      
      private function §'!P§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:TextField = this.§+!=§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!(_loc6_ && this))
         {
            _loc3_.align = TextAlign.CENTER;
            loop0:
            while(true)
            {
               _loc3_.bold = true;
               while(true)
               {
                  _loc3_.size = 12;
                  addr143:
                  while(true)
                  {
                     _loc2_.defaultTextFormat = _loc3_;
                     continue loop0;
                  }
                  loop5:
                  for(; _loc5_ || this; if(!(_loc5_ || this))
                  {
                     continue;
                  },while(true)
                  {
                     _loc2_.mouseEnabled = false;
                     if(!(_loc6_ && this))
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr49);
                     }
                     §§goto(addr53);
                  },var _loc4_:Shape,(_loc4_ = this.§+!=§.getChildByName("Base") as Shape).graphics.clear(),if(_loc5_)
                  {
                     _loc4_.graphics.lineStyle(1);
                     while(true)
                     {
                        _loc4_.graphics.beginFill(0,1);
                     }
                     addr267:
                  },while(true)
                  {
                     _loc4_.graphics.drawRect(-this.§>!H§,-this.§>!H§,_loc2_.width + 2 * this.§>!H§,_loc2_.height + 2 * this.§>!H§);
                     while(_loc5_)
                     {
                        _loc4_.graphics.beginFill(16777215,1);
                        for(; !_loc6_; _loc4_.graphics.drawRect(-this.§>!H§ / 2,-(this.§>!H§ / 2),_loc2_.width + 1 * this.§>!H§,_loc2_.height + 1 * this.§>!H§),if(_loc5_ || this)
                        {
                           return;
                        })
                        {
                           if(!_loc6_)
                           {
                              continue;
                           }
                           §§goto(addr267);
                        }
                     }
                  })
                  {
                     _loc2_.height = _loc2_.textHeight * 1.25;
                     while(true)
                     {
                        _loc2_.width = _loc2_.textWidth * 1.25;
                        while(_loc5_ || param1)
                        {
                           if(_loc5_)
                           {
                              _loc2_.textColor = 0;
                              loop8:
                              while(!_loc6_)
                              {
                                 while(true)
                                 {
                                    _loc2_.selectable = false;
                                    addr53:
                                    while(_loc5_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop8;
                                 }
                              }
                              continue;
                           }
                           addr112:
                           while(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 _loc2_.text = this.§9r§;
                                 continue loop5;
                              }
                              §§goto(addr143);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      private function §?l§(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!(_loc5_ && param1))
         {
            §§push(!this.§+!=§);
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
                        addr126:
                        while(true)
                        {
                           §§push(this.§9r§);
                           addr106:
                           while(true)
                           {
                              §§push(§§pop() == null);
                           }
                        }
                     }
                     addr125:
                  }
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(§§pop());
                        loop7:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§pop();
                                 loop9:
                                 while(!(_loc5_ && _loc2_))
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§9r§);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().length == 0);
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                while(!§§pop())
                                                {
                                                   §§push(param1);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc5_)
                                                         {
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr125);
                                                      }
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§push(§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc5_ && this)
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§pop();
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(false)
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§push(§[!2§);
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                            }
                                                            §§goto(addr135);
                                                         }
                                                         §§goto(addr139);
                                                      }
                                                   }
                                                   §§goto(addr135);
                                                }
                                                return;
                                                addr97:
                                             }
                                             break;
                                          }
                                          addr135:
                                          if(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                addr139:
                                                _loc2_ = mClip.getRect(getParentView());
                                                if(_loc4_)
                                                {
                                                   this.§+!=§.y = _loc2_.y - this.§+!=§.height - this.§>!H§;
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      this.§+!=§.x = _loc2_.x + mClip.width / 2 - this.§+!=§.width / 2;
                                                   }
                                                }
                                                _loc3_ = this.§+!=§.getRect(mClip.stage);
                                                if(_loc4_)
                                                {
                                                   if(_loc3_.right > mClip.stage.stageWidth - this.§>!H§)
                                                   {
                                                      this.§+!=§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§>!H§));
                                                      addr319:
                                                   }
                                                   if(_loc3_.left < this.§>!H§)
                                                   {
                                                      addr293:
                                                      if(_loc4_)
                                                      {
                                                         this.§+!=§.x += 1 + (this.§>!H§ - _loc3_.left);
                                                         addr256:
                                                         if(_loc3_.bottom > mClip.stage.stageHeight - this.§>!H§)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               this.§+!=§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§>!H§));
                                                            }
                                                            addr286:
                                                         }
                                                         addr213:
                                                         addr309:
                                                         if(_loc3_.top < this.§>!H§)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  this.§+!=§.y += mClip.height + this.§+!=§.height + this.§>!H§ * 2;
                                                                  addr246:
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        addr202:
                                                                        this.§+!=§.visible = true;
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§goto(addr211);
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                                  §§goto(addr286);
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            §§goto(addr246);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§goto(addr319);
                                                   }
                                                   §§goto(addr256);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             this.§+!=§.visible = false;
                                          }
                                          §§goto(addr211);
                                       }
                                       §§goto(addr106);
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr126);
                              }
                           }
                           §§goto(addr97);
                        }
                     }
                  }
               }
            }
         }
         addr211:
         if(false)
         {
            §§goto(addr213);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§+!=§)
            {
               if(_loc1_ || this)
               {
                  addr122:
                  this.§9r§ = null;
               }
               loop0:
               while(true)
               {
                  if(this.§+!=§.numChildren > 0)
                  {
                     this.§+!=§.removeChildAt(0);
                     continue;
                  }
                  loop1:
                  while(true)
                  {
                     if(this.§+!=§.parent)
                     {
                        while(true)
                        {
                           this.§+!=§.parent.removeChild(this.§+!=§);
                           addr91:
                           while(_loc1_)
                           {
                           }
                           continue loop0;
                        }
                        addr85:
                     }
                     while(true)
                     {
                        this.§+!=§ = null;
                        loop5:
                        while(!(_loc2_ && _loc1_))
                        {
                           while(true)
                           {
                              super.clear();
                              if(!(_loc1_ || _loc1_))
                              {
                                 continue loop5;
                              }
                              if(!(_loc2_ && this))
                              {
                                 if(_loc1_ || this)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr85);
                           }
                           return;
                        }
                        §§goto(addr91);
                     }
                  }
               }
            }
            §§goto(addr28);
         }
         §§goto(addr122);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§<!V§ = param1;
            do
            {
               this.§8!Y§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0"§ = param1;
         }
         do
         {
            this.§8!Y§();
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function §8!Y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc4_)
               {
                  return;
               }
            }
         }
         var _loc1_:Array = new Array(this.§<!V§ + "_" + this.§0"§,this.§<!V§ + "_" + § [§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§0"§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + § [§);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            try
            {
               mClip.gotoAndStop(_loc1_[_loc2_] as String);
               if(!(_loc4_ || _loc3_))
               {
                  continue;
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
         if(!(_loc4_ && param2))
         {
            if(this.§<!V§ != §%!T§)
            {
               loop0:
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  loop1:
                  while(true)
                  {
                     §§push(this.§!Y§);
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc4_)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§9!A§();
                                       addr201:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr199:
                                 }
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop7:
                                    while(true)
                                    {
                                       if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                       {
                                          while(true)
                                          {
                                             this.setComponentVisualState(§;!7§);
                                             addr178:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr175:
                                       }
                                       while(true)
                                       {
                                          §§push(param1);
                                          while(_loc3_)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      this.setComponentVisualState(§=Z§);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         if(!(_loc3_ || _loc3_))
                                                         {
                                                            §§goto(addr199);
                                                         }
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr201);
                                                   addr156:
                                                }
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(§§pop() != §;=§)
                                                      {
                                                         continue;
                                                      }
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            Mouse.cursor = MouseCursor.AUTO;
                                                            loop15:
                                                            while(true)
                                                            {
                                                               this.setComponentVisualState(§-y§);
                                                               while(true)
                                                               {
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(!(_loc3_ || param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        return;
                                                                     }
                                                                     addr232:
                                                                     continue loop13;
                                                                  }
                                                                  continue loop15;
                                                                  addr73:
                                                                  loop18:
                                                                  while(!(_loc4_ && param1))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_ || param2)
                                                                        {
                                                                           Mouse.cursor = this.§`!A§;
                                                                           while(_loc3_)
                                                                           {
                                                                              this.setComponentVisualState(§=Z§);
                                                                              continue loop1;
                                                                              if(_loc4_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              §§goto(addr175);
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                               }
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  addr181:
                                                                  addr210:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                                                                     if(!(_loc3_ || _loc3_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop23;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr201);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr181);
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                              addr197:
                           }
                        }
                        §§goto(addr210);
                        if(!(_loc3_ || param1))
                        {
                           continue;
                        }
                        §§goto(addr197);
                     }
                  }
               }
            }
            §§goto(addr232);
         }
         §§goto(addr178);
      }
      
      public function §9!A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§<!V§);
            loop0:
            while(true)
            {
               §§push(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr86:
               addr87:
               addr20:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               addr20:
               this.setComponentState(§0j§.§+o§);
               return;
            }
         }
         §§goto(addr71);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
         if(_loc6_ || param1)
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
            while(true)
            {
               mClip = null;
               §§goto(addr140);
            }
         }
         while(true)
         {
            mClip = param1;
            do
            {
               if(this.mParentContainer)
               {
                  loop5:
                  while(true)
                  {
                     mParentContainer.mClip.addChildAt(mClip,_loc4_);
                     addr110:
                     while(true)
                     {
                        if(_loc5_)
                        {
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr140);
                     while(true)
                     {
                        if(!(_loc5_ && param1))
                        {
                           continue;
                        }
                        continue loop5;
                     }
                     §§goto(addr110);
                  }
               }
               while(true)
               {
                  mClip.x = _loc2_;
                  §§goto(addr100);
               }
            }
            while(_loc5_);
            
            if(_loc5_)
            {
               continue;
            }
            if(_loc6_)
            {
               break;
            }
            §§goto(addr140);
         }
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.setVisibility(param1);
            while(!mClip.visible)
            {
               if(!_loc3_)
               {
                  this.§?l§(false);
               }
               if(!(_loc3_ && param1))
               {
                  addr64:
                  break;
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.onParentVisibilityChange(param1);
            while(!param1)
            {
               if(_loc3_)
               {
                  break;
               }
               addr63:
               if(!(_loc2_ || param1))
               {
                  continue;
               }
               addr60:
               this.§?l§(false);
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr60);
      }
   }
}
