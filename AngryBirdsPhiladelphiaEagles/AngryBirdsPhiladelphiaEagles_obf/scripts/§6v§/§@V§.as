package §6v§
{
   import §"U§.§[Q§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §@V§ extends §var §
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §?!@§:String = "Deactive";
      
      public static const §!%§:String = "Disabled";
      
      public static const §1V§:String = "Out";
      
      public static const §+R§:String = "Over";
      
      public static const §%g§:String = "Up_Default";
      
      public static const §@@§:String = "Down";
      
      public static var §^!P§:Class;
      
      public static var §8!G§:Boolean = true;
      
      public static const §%!!§:String = "Tooltip";
      
      public static var §=-§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §1V§ = "Out";
            §+R§ = "Over";
            §%g§ = "Up_Default";
            §@@§ = "Down";
            while(true)
            {
               §8!G§ = true;
               addr55:
               while(!(_loc1_ && _loc2_))
               {
                  continue loop0;
               }
            }
         }
      }
      
      public var § var§:String;
      
      public var §if §:String;
      
      public var §2!9§:String;
      
      public var §<!&§:MovieClip;
      
      public var §!&§:int = 6;
      
      private var §+]§:Boolean = false;
      
      private var §]b§:String = "auto";
      
      public function §@V§(param1:XML, param2:§[Q§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super(param1,param2,param3);
         this.§ var§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         do
         {
            this.§if § = §%g§;
         }
         while(!(_loc6_ || param3));
         
         this.§>!N§();
         loop1:
         while(true)
         {
            this.§4M§(param1.@Tooltip);
            while(param1.@Toggle.toString().toUpperCase() == "TRUE")
            {
               if(_loc6_ || this)
               {
                  this.§+]§ = true;
                  if(true)
                  {
                     break;
                  }
                  continue loop1;
               }
            }
            var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
            var _loc5_:String = param1.@cursor.toString().toLowerCase();
            if(!_loc7_)
            {
               if(_loc4_.indexOf(_loc5_) > -1)
               {
                  if(_loc6_ || param3)
                  {
                     addr122:
                     this.§]b§ = _loc5_;
                  }
               }
               return;
            }
            §§goto(addr122);
         }
      }
      
      public static function §,b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §^!P§ = §[!D§.§8!N§(§%!!§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setActiveStatus(param1);
            loop0:
            for(; !param1; while(true)
            {
               if(!(_loc3_ && param1))
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(_loc3_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.setComponentVisualState(§1V§);
            §§goto(addr41);
         }
      }
      
      public function §4M§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2!9§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§2!9§);
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
                           addr198:
                           while(true)
                           {
                              §§push(this.§2!9§);
                              addr180:
                              while(true)
                              {
                                 §§push(§§pop().length == 0);
                                 addr183:
                                 while(!_loc3_)
                                 {
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        addr197:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§2!9§ = null;
                              addr190:
                              while(true)
                              {
                              }
                              addr53:
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              getParentView().addChild(this.§<!&§);
                              addr60:
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(!_loc3_)
                                 {
                                    addr38:
                                    if(!(_loc2_ || param1))
                                    {
                                       while(true)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             this.§<!&§ = new MovieClip();
                                             addr123:
                                             addr141:
                                             while(true)
                                             {
                                                if(§^!P§)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§1!L§();
                                                      addr74:
                                                      while(true)
                                                      {
                                                         this.§<!&§.mouseEnabled = false;
                                                         addr79:
                                                         while(_loc2_ || this)
                                                         {
                                                            this.§<!&§.mouseChildren = false;
                                                            while(_loc2_ || _loc2_)
                                                            {
                                                               this.§<!&§.visible = false;
                                                               while(!_loc3_)
                                                               {
                                                                  §§goto(addr53);
                                                                  §§goto(addr60);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   this.§9U§();
                                                }
                                                loop16:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §§goto(addr74);
                                                   }
                                                   else
                                                   {
                                                      while(_loc2_)
                                                      {
                                                         §,b§();
                                                         break loop16;
                                                      }
                                                      §§goto(addr190);
                                                      addr174:
                                                   }
                                                   §§goto(addr79);
                                                }
                                                continue loop14;
                                             }
                                             while(!(_loc3_ && _loc2_))
                                             {
                                                §§push(§8!G§);
                                                if(_loc2_ || _loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §8!G§ = false;
                                                      §§goto(addr174);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr197);
                                                   }
                                                }
                                                §§goto(addr183);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr38);
                                       }
                                    }
                                    addr19:
                                    return;
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr51);
                           }
                        }
                        while(true)
                        {
                           §§push(this.§2!9§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                           §§goto(addr190);
                        }
                        §§goto(addr180);
                     }
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      private function §9U§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            this.§<!&§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(_loc4_)
         {
            _loc1_.name = "Text";
            if(!_loc3_)
            {
               this.§<!&§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(_loc4_)
         {
            _loc2_.name = "Base";
         }
         do
         {
            this.§<!&§.addChildAt(_loc2_,0);
            do
            {
               this.§+!-§(this.§2!9§);
            }
            while(_loc3_);
            
         }
         while(_loc3_ && _loc2_);
         
      }
      
      private function §1!L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<!&§ = new §^!P§();
            do
            {
               this.§0!>§(this.§2!9§);
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function §0!>§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§2!9§ = param1;
            while(true)
            {
               if(!§^!P§)
               {
                  this.§+!-§(param1);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     §§goto(addr44);
                  }
               }
            }
            addr44:
            return;
         }
         while(true)
         {
            this.§#z§(param1);
            §§goto(addr65);
         }
      }
      
      private function §#z§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§<!&§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§<!&§.getChildByName("Base") as MovieClip;
         if(!(_loc7_ && param1))
         {
            _loc2_.text = this.§2!9§;
            loop0:
            while(true)
            {
               addr56:
               while(true)
               {
                  _loc2_.multiline = false;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc2_.width = _loc2_.textWidth * 1.25;
            if(_loc6_ || _loc3_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr56);
            }
            §§goto(addr60);
         }
         var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
         if(_loc6_ || param1)
         {
            _loc3_.scaleX = _loc4_ / _loc3_.width;
            if(!(_loc7_ && this))
            {
               _loc3_.x = 0;
            }
         }
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_.numChildren)
            {
               if(_loc6_ || param1)
               {
                  _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
               }
               if(_loc7_ && _loc2_)
               {
                  continue;
               }
               if(!(_loc7_ && this))
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
      }
      
      private function §+!-§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§<!&§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!_loc5_)
         {
            _loc3_.align = TextAlign.CENTER;
            _loc3_.bold = true;
            _loc3_.size = 12;
            loop0:
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               _loc2_.border = false;
               _loc2_.text = this.§2!9§;
               loop1:
               while(true)
               {
                  _loc2_.height = _loc2_.textHeight * 1.25;
                  while(true)
                  {
                     _loc2_.width = _loc2_.textWidth * 1.25;
                     while(!(_loc5_ && _loc3_))
                     {
                        _loc2_.textColor = 0;
                        loop4:
                        while(!_loc5_)
                        {
                           loop5:
                           while(true)
                           {
                              _loc2_.selectable = false;
                              while(_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 _loc2_.mouseEnabled = false;
                                 if(_loc5_ && param1)
                                 {
                                    continue;
                                 }
                                 if(!_loc6_)
                                 {
                                    break loop5;
                                 }
                                 while(false)
                                 {
                                    continue loop5;
                                 }
                                 var _loc4_:Shape;
                                 (_loc4_ = this.§<!&§.getChildByName("Base") as Shape).graphics.clear();
                                 if(!_loc5_)
                                 {
                                    _loc4_.graphics.lineStyle(1);
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    _loc4_.graphics.beginFill(0,1);
                                    loop9:
                                    do
                                    {
                                       _loc4_.graphics.drawRect(-this.§!&§,-this.§!&§,_loc2_.width + 2 * this.§!&§,_loc2_.height + 2 * this.§!&§);
                                       while(!_loc5_)
                                       {
                                          _loc4_.graphics.beginFill(16777215,1);
                                          do
                                          {
                                             _loc4_.graphics.drawRect(-this.§!&§ / 2,-(this.§!&§ / 2),_loc2_.width + 1 * this.§!&§,_loc2_.height + 1 * this.§!&§);
                                          }
                                          while(_loc5_ && _loc2_);
                                          
                                          if(!_loc5_)
                                          {
                                             continue loop9;
                                          }
                                       }
                                       continue loop8;
                                    }
                                    while(!_loc6_);
                                    
                                    return;
                                 }
                              }
                              continue loop4;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      private function § r§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(_loc5_)
         {
            §§push(!this.§<!&§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        §§push(this.§2!9§);
                        while(true)
                        {
                           §§push(§§pop() == null);
                        }
                        addr80:
                     }
                     §§goto(addr305);
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     loop4:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§pop();
                           while(true)
                           {
                              addr56:
                              while(true)
                              {
                                 §§push(this.§2!9§);
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop().length == 0);
                              }
                              §§goto(addr80);
                           }
                           addr88:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(_loc5_)
                                 {
                                    return;
                                 }
                                 §§goto(addr88);
                              }
                           }
                           else
                           {
                              §§push(param1);
                              if(!_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc4_ && this)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§pop();
                                          if(_loc5_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr56);
                                             }
                                             else
                                             {
                                                addr99:
                                                if(!§=-§)
                                                {
                                                   this.§<!&§.visible = false;
                                                }
                                                §§goto(addr305);
                                             }
                                          }
                                          _loc2_ = mClip.getRect(getParentView());
                                          if(_loc5_)
                                          {
                                             this.§<!&§.y = _loc2_.y - this.§<!&§.height - this.§!&§;
                                             if(!(_loc4_ && this))
                                             {
                                                this.§<!&§.x = _loc2_.x + mClip.width / 2 - this.§<!&§.width / 2;
                                             }
                                          }
                                          _loc3_ = this.§<!&§.getRect(mClip.stage);
                                          if(_loc5_ || param1)
                                          {
                                             if(_loc3_.right > mClip.stage.stageWidth - this.§!&§)
                                             {
                                                addr281:
                                                this.§<!&§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§!&§));
                                                addr299:
                                             }
                                             if(_loc3_.left < this.§!&§)
                                             {
                                                this.§<!&§.x += 1 + (this.§!&§ - _loc3_.left);
                                                addr261:
                                             }
                                             if(_loc3_.bottom > mClip.stage.stageHeight - this.§!&§)
                                             {
                                                this.§<!&§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§!&§));
                                                addr240:
                                             }
                                             addr176:
                                             if(_loc3_.top < this.§!&§)
                                             {
                                                if(_loc5_)
                                                {
                                                   this.§<!&§.y += mClip.height + this.§<!&§.height + this.§!&§ * 2;
                                                   if(_loc5_ || param1)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr169);
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr240);
                                                }
                                                §§goto(addr261);
                                             }
                                             addr169:
                                             this.§<!&§.visible = true;
                                             if(false)
                                             {
                                                §§goto(addr176);
                                             }
                                             §§goto(addr305);
                                          }
                                          §§goto(addr281);
                                       }
                                       §§goto(addr99);
                                    }
                                 }
                              }
                              §§goto(addr99);
                           }
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
         addr305:
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§<!&§)
            {
               if(_loc1_ || _loc1_)
               {
                  this.§2!9§ = null;
                  addr110:
                  loop3:
                  while(true)
                  {
                     if(this.§<!&§.numChildren <= 0)
                     {
                        if(!(_loc2_ && this))
                        {
                           if(!(_loc1_ || this))
                           {
                              continue;
                           }
                           if(this.§<!&§.parent)
                           {
                              while(true)
                              {
                                 this.§<!&§.parent.removeChild(this.§<!&§);
                                 break loop3;
                              }
                              addr82:
                           }
                           while(true)
                           {
                              this.§<!&§ = null;
                              addr35:
                              §§goto(addr37);
                           }
                        }
                        break;
                     }
                     this.§<!&§.removeChildAt(0);
                  }
                  while(true)
                  {
                     §§goto(addr31);
                  }
                  addr110:
               }
               §§goto(addr110);
            }
            addr37:
            while(!_loc1_)
            {
               break loop3;
            }
            while(true)
            {
               super.clear();
               if(!_loc2_)
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr82);
               }
               else
               {
                  §§goto(addr35);
               }
            }
            return;
         }
         §§goto(addr110);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§ var§ = param1;
         }
         do
         {
            this.§>!N§();
         }
         while(_loc2_);
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§if § = param1;
            do
            {
               this.§>!N§();
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function §>!N§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            if(mClip.totalFrames < 2)
            {
               if(!_loc4_)
               {
                  §§goto(addr30);
               }
            }
            var _loc1_:Array = new Array(this.§ var§ + "_" + this.§if §,this.§ var§ + "_" + §%g§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§if §,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §%g§);
            var _loc2_:int = 0;
            for(; _loc2_ < _loc1_.length; _loc2_++,if(!(_loc5_ || _loc2_))
            {
               break;
            })
            {
               try
               {
                  mClip.gotoAndStop(_loc1_[_loc2_] as String);
                  if(!(_loc4_ && this))
                  {
                     if(mClip.numChildren > 0)
                     {
                        if(!(_loc5_ || this))
                        {
                           addr116:
                           continue;
                        }
                     }
                     §§goto(addr116);
                  }
                  return;
               }
               catch(e:Error)
               {
               }
               continue;
               §§goto(addr116);
            }
            return;
         }
         addr30:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(this.§ var§ == §!%§)
         {
            return;
         }
         while(true)
         {
            super.listenerEventOccured(param1,param2);
            while(true)
            {
               §§push(this.§+]§);
               if(!(_loc3_ && param1))
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc3_ && this))
                  {
                     addr200:
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§pop();
                           addr203:
                           while(true)
                           {
                              §§push(param1);
                              continue loop2;
                           }
                        }
                        addr202:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr167);
                        }
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr202);
               }
               §§goto(addr200);
            }
         }
      }
      
      public function §;!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§ var§);
            loop0:
            while(true)
            {
               §§push(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr86:
               addr87:
               addr25:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               addr25:
               this.setComponentState(§@V§.§?!@§);
               return;
            }
         }
         §§goto(addr81);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
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
         if(_loc5_)
         {
            if(this.mParentContainer)
            {
               mParentContainer.mClip.removeChild(mClip);
               loop0:
               while(true)
               {
                  addr87:
                  while(true)
                  {
                     mParentContainer.mClip.addChildAt(mClip,_loc4_);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§goto(addr68);
                     }
                     continue loop0;
                  }
               }
               addr117:
            }
            while(true)
            {
               mClip = null;
               mClip = param1;
               if(this.mParentContainer)
               {
                  §§goto(addr87);
               }
               break;
               §§goto(addr117);
            }
            addr68:
            mClip.x = _loc2_;
            mClip.y = _loc3_;
            do
            {
               this.§>!N§();
            }
            while(_loc6_);
            
            return;
         }
         §§goto(addr87);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setVisibility(param1);
         }
         while(!mClip.visible)
         {
            if(_loc3_)
            {
               this.§ r§(false);
            }
            if(!(_loc2_ && this))
            {
               break;
            }
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.onParentVisibilityChange(param1);
            while(!param1)
            {
               if(!_loc2_)
               {
                  if(_loc3_)
                  {
                     this.§ r§(false);
                     addr44:
                     break;
                  }
                  continue;
               }
               §§goto(addr44);
            }
            return;
         }
         §§goto(addr44);
      }
   }
}
