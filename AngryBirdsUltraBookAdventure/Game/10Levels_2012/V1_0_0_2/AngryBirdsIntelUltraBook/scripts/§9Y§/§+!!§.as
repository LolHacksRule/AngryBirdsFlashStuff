package §9Y§
{
   import §?!7§.§8;§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §+!!§ extends §9j§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §^!<§:String = "Deactive";
      
      public static const § H§:String = "Disabled";
      
      public static const §?!0§:String = "Out";
      
      public static const §;=§:String = "Over";
      
      public static const §!%§:String = "Up_Default";
      
      public static const §1J§:String = "Down";
      
      public static var §#!e§:Class;
      
      public static var §+3§:Boolean = true;
      
      public static const §`%§:String = "Tooltip";
      
      public static var §=0§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §+!!§))
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            loop0:
            while(true)
            {
               §^!<§ = "Deactive";
               loop1:
               while(true)
               {
                  § H§ = "Disabled";
                  while(true)
                  {
                     §?!0§ = "Out";
                     loop3:
                     while(!_loc2_)
                     {
                        §;=§ = "Over";
                        while(_loc1_)
                        {
                           §!%§ = "Up_Default";
                           loop5:
                           while(!(_loc2_ && §+!!§))
                           {
                              §1J§ = "Down";
                              loop6:
                              do
                              {
                                 §+3§ = true;
                                 while(!_loc2_)
                                 {
                                    continue loop3;
                                    §`%§ = "Tooltip";
                                    do
                                    {
                                       §=0§ = true;
                                    }
                                    while(_loc2_);
                                    
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    if(!_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr74);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue loop6;
                                    }
                                 }
                                 continue loop5;
                              }
                              while(_loc2_);
                              
                              return;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public var §>!f§:String;
      
      public var §%j§:String;
      
      public var §+m§:String;
      
      public var §[=§:MovieClip;
      
      public var §6!!§:int = 6;
      
      private var §]?§:Boolean = false;
      
      private var §5!^§:String = "auto";
      
      public function §+!!§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param2,param3);
            while(true)
            {
               this.§>!f§ = COMPONENT_STATE_ACTIVE_DEFAULT;
               while(true)
               {
                  this.§%j§ = §!%§;
                  addr66:
                  while(_loc7_)
                  {
                     this.§"!b§();
                  }
               }
            }
            addr79:
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               this.§7!g§(param1.@Tooltip);
               while(!_loc6_)
               {
                  if(param1.@Toggle.toString().toUpperCase() == "TRUE")
                  {
                     if(!_loc6_)
                     {
                        if(!_loc7_)
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           if(_loc7_)
                           {
                              this.§]?§ = true;
                              addr38:
                              if(false)
                              {
                                 continue loop4;
                              }
                              addr80:
                              var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
                              var _loc5_:String = param1.@cursor.toString().toLowerCase();
                              if(_loc7_ || param1)
                              {
                                 if(_loc4_.indexOf(_loc5_) > -1)
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       addr128:
                                       this.§5!^§ = _loc5_;
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr128);
                           }
                           else
                           {
                              §§goto(addr79);
                           }
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr38);
                  }
                  §§goto(addr80);
               }
               continue loop3;
            }
         }
      }
      
      public static function §13§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §+!!§))
         {
            §#!e§ = §%!G§.§^!B§(§`%§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.setActiveStatus(param1);
            while(!param1)
            {
               if(!_loc3_)
               {
                  this.setComponentVisualState(§?!0§);
               }
               if(!(_loc3_ && _loc2_))
               {
                  addr53:
                  break;
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §7!g§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+m§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§+m§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 this.§+m§ = null;
                              }
                              while(true)
                              {
                              }
                              addr201:
                           }
                           loop9:
                           while(true)
                           {
                              §§push(this.§+m§);
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(§+3§);
                                    if(_loc2_)
                                    {
                                       if(_loc3_ && param1)
                                       {
                                          continue loop2;
                                       }
                                       if(§§pop())
                                       {
                                          while(!_loc3_)
                                          {
                                             §+3§ = false;
                                             continue loop0;
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§goto(addr19);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             this.§[=§ = new MovieClip();
                                             while(true)
                                             {
                                                if(!§#!e§)
                                                {
                                                   this.§[7§();
                                                   loop16:
                                                   for(; !_loc3_; if(_loc3_ && param1)
                                                   {
                                                      continue;
                                                   },§§goto(addr45))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      loop17:
                                                      while(true)
                                                      {
                                                         this.§[=§.mouseEnabled = false;
                                                         loop18:
                                                         while(true)
                                                         {
                                                            this.§[=§.mouseChildren = false;
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               addr58:
                                                               while(_loc2_ || this)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     getParentView().addChild(this.§[=§);
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     continue;
                                                                     continue;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                            }
                                                            addr131:
                                                            loop13:
                                                            while(_loc2_ || _loc3_)
                                                            {
                                                               continue loop14;
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     this.§[!m§();
                                                                     continue loop17;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr112);
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(_loc2_)
                                       {
                                          continue loop7;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                       }
                                       addr208:
                                       addr192:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§+m§);
                                       break loop9;
                                    }
                                 }
                                 addr145:
                              }
                              addr19:
                              return;
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr208);
                  }
               }
            }
         }
         §§goto(addr145);
      }
      
      private function §[7§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§[=§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(_loc4_)
         {
            _loc1_.name = "Text";
            if(_loc4_ || _loc3_)
            {
               this.§[=§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(_loc4_ || this)
         {
            _loc2_.name = "Base";
         }
         while(true)
         {
            this.§[=§.addChildAt(_loc2_,0);
            while(!_loc3_)
            {
               this.§5!+§(this.§+m§);
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      private function §[!m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§[=§ = new §#!e§();
            do
            {
               this.§%^§(this.§+m§);
            }
            while(_loc2_);
            
         }
      }
      
      public function §%^§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§+m§ = param1;
            while(true)
            {
               if(!§#!e§)
               {
                  this.§5!+§(param1);
                  if(_loc3_)
                  {
                     §§goto(addr45);
                  }
               }
               if(!(_loc3_ || this))
               {
                  break;
               }
               if(!_loc2_)
               {
                  addr70:
                  this.§!J§(param1);
                  break;
               }
            }
            addr45:
            return;
         }
         §§goto(addr70);
      }
      
      private function §!J§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§[=§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§[=§.getChildByName("Base") as MovieClip;
         if(_loc6_ || _loc3_)
         {
            _loc2_.text = this.§+m§;
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
               while(_loc7_ && _loc3_);
               
               if(_loc6_)
               {
                  if(true)
                  {
                     var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
                     if(!(_loc7_ && this))
                     {
                        _loc3_.scaleX = _loc4_ / _loc3_.width;
                        if(!(_loc7_ && this))
                        {
                           _loc3_.x = 0;
                        }
                     }
                     var _loc5_:int = 0;
                  }
                  continue;
                  while(true)
                  {
                     if(_loc5_ >= _loc3_.numChildren)
                     {
                        if(!(_loc6_ || param1))
                        {
                           break;
                        }
                        if(!_loc7_)
                        {
                           _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                           break;
                        }
                        loop4:
                        while(_loc7_ && _loc2_)
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
               break;
            }
         }
      }
      
      private function §5!+§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§[=§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.align = TextAlign.CENTER;
            while(true)
            {
               _loc3_.bold = true;
               addr139:
               while(true)
               {
                  _loc3_.size = 12;
                  addr134:
                  while(true)
                  {
                     _loc2_.defaultTextFormat = _loc3_;
                  }
               }
            }
            addr144:
         }
         loop3:
         while(true)
         {
            _loc2_.border = false;
            loop4:
            while(true)
            {
               _loc2_.text = this.§+m§;
               loop5:
               while(true)
               {
                  _loc2_.height = _loc2_.textHeight * 1.25;
                  continue loop4;
                  addr67:
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     loop9:
                     while(true)
                     {
                        _loc2_.selectable = false;
                        while(!_loc5_)
                        {
                           _loc2_.mouseEnabled = false;
                           if(!_loc6_)
                           {
                              continue;
                           }
                           if(_loc5_ && param1)
                           {
                              break loop9;
                           }
                           if(!_loc5_)
                           {
                              if(false)
                              {
                                 continue loop9;
                              }
                              var _loc4_:Shape;
                              (_loc4_ = this.§[=§.getChildByName("Base") as Shape).graphics.clear();
                              if(!(_loc5_ && param1))
                              {
                                 _loc4_.graphics.lineStyle(1);
                                 _loc4_.graphics.beginFill(0,1);
                                 _loc4_.graphics.drawRect(-this.§6!!§,-this.§6!!§,_loc2_.width + 2 * this.§6!!§,_loc2_.height + 2 * this.§6!!§);
                                 addr247:
                                 addr273:
                                 if(_loc6_ || this)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       _loc4_.graphics.beginFill(16777215,1);
                                       _loc4_.graphics.drawRect(-this.§6!!§ / 2,-(this.§6!!§ / 2),_loc2_.width + 1 * this.§6!!§,_loc2_.height + 1 * this.§6!!§);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr247);
                                          }
                                          return;
                                       }
                                       addr212:
                                       §§goto(addr212);
                                       addr261:
                                    }
                                    §§goto(addr273);
                                 }
                                 addr268:
                                 §§goto(addr268);
                              }
                              §§goto(addr261);
                           }
                           else
                           {
                              §§goto(addr134);
                           }
                        }
                        loop8:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              while(_loc6_)
                              {
                                 _loc2_.textColor = 0;
                                 continue loop8;
                              }
                              continue loop3;
                              addr84:
                           }
                           §§goto(addr67);
                        }
                        continue loop5;
                     }
                     continue loop4;
                  }
                  §§goto(addr139);
               }
            }
         }
      }
      
      private function §-!d§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(_loc5_ || this)
         {
            §§push(!this.§[=§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(_loc5_ || param1)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(this.§+m§);
                           while(true)
                           {
                              §§push(§§pop() == null);
                              addr96:
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr98:
                                    while(!_loc4_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             addr86:
                                             loop9:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(_loc5_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc4_)
                                                         {
                                                            addr136:
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  addr145:
                                                                  _loc2_ = mClip.getRect(getParentView());
                                                                  if(!_loc4_)
                                                                  {
                                                                     this.§[=§.y = _loc2_.y - this.§[=§.height - this.§6!!§;
                                                                     if(!_loc4_)
                                                                     {
                                                                        this.§[=§.x = _loc2_.x + mClip.width / 2 - this.§[=§.width / 2;
                                                                     }
                                                                  }
                                                                  _loc3_ = this.§[=§.getRect(mClip.stage);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc3_.right > mClip.stage.stageWidth - this.§6!!§)
                                                                     {
                                                                        addr335:
                                                                        this.§[=§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§6!!§));
                                                                     }
                                                                     if(_loc3_.left < this.§6!!§)
                                                                     {
                                                                        addr294:
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           this.§[=§.x += 1 + (this.§6!!§ - _loc3_.left);
                                                                           addr315:
                                                                           if(_loc3_.bottom > mClip.stage.stageHeight - this.§6!!§)
                                                                           {
                                                                              addr267:
                                                                              if(!_loc4_)
                                                                              {
                                                                                 this.§[=§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§6!!§));
                                                                                 addr212:
                                                                                 addr287:
                                                                                 if(_loc3_.top < this.§6!!§)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             this.§[=§.y += mClip.height + this.§[=§.height + this.§6!!§ * 2;
                                                                                             addr247:
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr203:
                                                                                                   this.§[=§.visible = true;
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr210:
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr212);
                                                                                                      }
                                                                                                      break loop9;
                                                                                                   }
                                                                                                   §§goto(addr247);
                                                                                                }
                                                                                                §§goto(addr294);
                                                                                             }
                                                                                             §§goto(addr267);
                                                                                          }
                                                                                          §§goto(addr315);
                                                                                       }
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                    §§goto(addr247);
                                                                                 }
                                                                                 §§goto(addr203);
                                                                              }
                                                                              §§goto(addr335);
                                                                           }
                                                                           §§goto(addr212);
                                                                        }
                                                                        §§goto(addr335);
                                                                     }
                                                                     §§goto(addr315);
                                                                  }
                                                                  §§goto(addr210);
                                                               }
                                                               break loop9;
                                                            }
                                                            this.§[=§.visible = false;
                                                         }
                                                         else
                                                         {
                                                            addr136:
                                                         }
                                                         continue loop5;
                                                         break loop9;
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                   continue loop5;
                                                   addr31:
                                                }
                                                if(!_loc4_)
                                                {
                                                   return;
                                                }
                                                §§goto(addr145);
                                             }
                                             addr359:
                                             return;
                                          }
                                          addr85:
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr96);
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§[=§)
            {
               if(!_loc2_)
               {
                  this.§+m§ = null;
                  addr110:
                  loop6:
                  while(true)
                  {
                     if(this.§[=§.numChildren > 0)
                     {
                        this.§[=§.removeChildAt(0);
                        continue;
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        if(this.§[=§.parent)
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop6;
                              }
                              this.§[=§.parent.removeChild(this.§[=§);
                              while(true)
                              {
                                 break loop1;
                              }
                           }
                           addr85:
                        }
                        while(true)
                        {
                           this.§[=§ = null;
                           addr55:
                           §§goto(addr57);
                        }
                     }
                     §§goto(addr85);
                  }
                  addr110:
               }
               §§goto(addr110);
            }
            addr57:
            while(_loc2_)
            {
               continue loop4;
            }
            while(true)
            {
               super.clear();
               if(!(_loc2_ && _loc1_))
               {
                  if(_loc1_ || this)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr55);
               }
               §§goto(addr57);
            }
            return;
         }
         §§goto(addr110);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!f§ = param1;
         }
         do
         {
            this.§"!b§();
         }
         while(_loc3_ && param1);
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§%j§ = param1;
         }
         do
         {
            this.§"!b§();
         }
         while(!(_loc2_ || param1));
         
      }
      
      public function §"!b§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(mClip.totalFrames < 2)
            {
               if(!(_loc4_ && _loc1_))
               {
                  return;
               }
            }
         }
         var _loc1_:Array = new Array(this.§>!f§ + "_" + this.§%j§,this.§>!f§ + "_" + §!%§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§%j§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §!%§);
         var _loc2_:int = 0;
         for(; _loc2_ < _loc1_.length; _loc2_++,if(_loc4_ && this)
         {
            break;
         })
         {
            try
            {
               mClip.gotoAndStop(_loc1_[_loc2_] as String);
               if(_loc5_ || _loc2_)
               {
                  if(mClip.numChildren <= 0)
                  {
                     addr111:
                     continue;
                  }
                  if(!(_loc5_ || _loc1_))
                  {
                     break;
                  }
               }
               return;
            }
            catch(e:Error)
            {
            }
            continue;
            §§goto(addr111);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(this.§>!f§ != § H§)
            {
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  while(true)
                  {
                     §§push(this.§]?§);
                     if(_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc4_)
                        {
                           addr209:
                           if(§§pop())
                           {
                              loop2:
                              while(true)
                              {
                                 §§pop();
                                 addr212:
                                 while(true)
                                 {
                                    §§push(param1);
                                    continue loop2;
                                 }
                              }
                              addr211:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§goto(addr196);
                              }
                              §§goto(addr165);
                           }
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr209);
                  }
               }
            }
            §§goto(addr223);
         }
         §§goto(addr169);
      }
      
      public function §8F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§>!f§);
            loop0:
            while(true)
            {
               §§push(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr90:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr91);
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc2_))
         {
            super.changeMovieClip(param1);
         }
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(!(_loc5_ && _loc2_))
         {
            if(this.mParentContainer)
            {
               while(true)
               {
                  mParentContainer.mClip.removeChild(mClip);
                  addr145:
                  while(true)
                  {
                  }
               }
               addr141:
            }
            while(true)
            {
               mClip = null;
               §§goto(addr145);
            }
         }
         loop3:
         while(true)
         {
            mClip = param1;
            loop4:
            while(true)
            {
               if(!this.mParentContainer)
               {
                  while(true)
                  {
                     mClip.x = _loc2_;
                     §§goto(addr89);
                  }
                  continue loop3;
                  addr85:
               }
               while(true)
               {
                  mParentContainer.mClip.addChildAt(mClip,_loc4_);
                  continue loop4;
                  addr77:
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
                  this.§"!b§();
                  addr84:
                  if(!_loc6_)
                  {
                     while(_loc6_)
                     {
                        §§goto(addr77);
                        §§goto(addr84);
                     }
                     while(_loc6_)
                     {
                        continue loop3;
                     }
                     continue loop4;
                     addr89:
                     addr75:
                  }
                  if(!_loc5_)
                  {
                     return;
                  }
                  §§goto(addr145);
               }
            }
         }
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.setVisibility(param1);
            while(!mClip.visible)
            {
               if(_loc2_)
               {
                  break;
               }
               addr55:
               if(!(_loc3_ || this))
               {
                  continue;
               }
               addr52:
               this.§-!d§(false);
               §§goto(addr55);
            }
            return;
         }
         §§goto(addr52);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.onParentVisibilityChange(param1);
         }
         while(!param1)
         {
            if(_loc3_)
            {
               this.§-!d§(false);
            }
            if(_loc3_ || _loc3_)
            {
               break;
            }
         }
      }
   }
}
