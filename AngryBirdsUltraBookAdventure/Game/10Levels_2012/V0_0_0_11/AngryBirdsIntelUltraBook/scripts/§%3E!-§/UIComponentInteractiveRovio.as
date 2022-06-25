package §>!-§
{
   import §]!6§.UIContainerRovio;
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
      
      public static const §!!c§:String = "Deactive";
      
      public static const §1!M§:String = "Disabled";
      
      public static const §5$§:String = "Out";
      
      public static const §#!A§:String = "Over";
      
      public static const §+!V§:String = "Up_Default";
      
      public static const §5!e§:String = "Down";
      
      public static var §+!0§:Class;
      
      public static var §"!Z§:Boolean = true;
      
      public static const §;y§:String = "Tooltip";
      
      public static var §=!+§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || UIComponentInteractiveRovio)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            loop0:
            while(true)
            {
               §!!c§ = "Deactive";
               addr135:
               while(true)
               {
                  §1!M§ = "Disabled";
                  continue loop0;
               }
            }
         }
         §§goto(addr81);
      }
      
      public var §+!_§:String;
      
      public var §^!;§:String;
      
      public var §2y§:String;
      
      public var §1Z§:MovieClip;
      
      public var §]z§:int = 6;
      
      private var §2!^§:Boolean = false;
      
      private var §80§:String = "auto";
      
      public function UIComponentInteractiveRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            super(param1,param2,param3);
         }
         while(true)
         {
            this.§+!_§ = COMPONENT_STATE_ACTIVE_DEFAULT;
            while(_loc7_)
            {
               this.§^!;§ = §+!V§;
               loop2:
               while(true)
               {
                  this.§'!E§();
                  loop3:
                  while(true)
                  {
                     addr53:
                     while(true)
                     {
                        this.§0!L§(param1.@Tooltip);
                        continue loop3;
                     }
                     continue loop2;
                  }
               }
               if(!(_loc7_ || param2))
               {
                  continue;
               }
               if(param1.@Toggle.toString().toUpperCase() == "TRUE")
               {
                  if(_loc7_ || param2)
                  {
                     if(!_loc6_)
                     {
                        this.§2!^§ = true;
                        §§goto(addr44);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr44);
               }
               §§goto(addr122);
            }
         }
      }
      
      public static function §2$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+!0§ = AssetCache.§-9§(§;y§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.setActiveStatus(param1);
            while(true)
            {
               §§push(param1);
               if(_loc2_)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     if(!_loc3_)
                     {
                        this.setComponentVisualState(§5$§);
                        addr68:
                        break;
                     }
                     continue;
                  }
                  §§goto(addr68);
               }
               break;
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §0!L§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§2y§ = param1;
            while(true)
            {
               §§push(this.§2y§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr222:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr228:
                           while(true)
                           {
                              §§push(this.§2y§);
                              while(true)
                              {
                                 §§push(§§pop().length == 0);
                                 continue loop3;
                                 addr137:
                                 while(true)
                                 {
                                    §§push(this.§2y§);
                                    if(!(_loc3_ || param1))
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        addr213:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§2y§ = null;
                                 addr217:
                                 while(true)
                                 {
                                 }
                              }
                              addr214:
                           }
                           §§goto(addr137);
                        }
                     }
                  }
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               §§goto(addr25);
            }
         }
         §§goto(addr123);
      }
      
      private function §6!I§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§1Z§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(_loc3_)
         {
            _loc1_.name = "Text";
            if(_loc3_ || _loc2_)
            {
               addr48:
               this.§1Z§.addChild(_loc1_);
            }
            var _loc2_:Shape = new Shape();
            if(!_loc4_)
            {
               _loc2_.name = "Base";
            }
            do
            {
               this.§1Z§.addChildAt(_loc2_,0);
               do
               {
                  this.§4r§(this.§2y§);
               }
               while(_loc4_);
               
            }
            while(_loc4_);
            
            return;
         }
         §§goto(addr48);
      }
      
      private function static() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1Z§ = new §+!0§();
         }
         do
         {
            this.§<![§(this.§2y§);
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function §<![§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§2y§ = param1;
            do
            {
               if(!§+!0§)
               {
                  this.§4r§(param1);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(_loc3_ || _loc3_)
                  {
                     addr25:
                     return;
                     addr65:
                  }
               }
               this.§%m§(param1);
            }
            while(_loc2_ && _loc3_);
            
            §§goto(addr25);
         }
         §§goto(addr65);
      }
      
      private function §%m§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§1Z§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§1Z§.getChildByName("Base") as MovieClip;
         if(!_loc7_)
         {
            _loc2_.text = this.§2y§;
            loop0:
            while(true)
            {
               addr53:
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
               §§goto(addr53);
            }
            §§goto(addr57);
         }
         var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
         if(!(_loc7_ && _loc3_))
         {
            _loc3_.scaleX = _loc4_ / _loc3_.width;
            if(_loc6_)
            {
               addr108:
               _loc3_.x = 0;
            }
            §§push(0);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc5_:* = §§pop();
            while(true)
            {
               §§push(_loc5_);
               if(_loc6_)
               {
                  if(§§pop() >= _loc3_.numChildren)
                  {
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                        _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
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
                  §§push(_loc5_);
                  if(_loc6_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
               }
               _loc5_ = §§pop();
            }
            return;
         }
         §§goto(addr108);
      }
      
      private function §4r§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§1Z§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!_loc5_)
         {
            _loc3_.align = TextAlign.CENTER;
            while(true)
            {
               _loc3_.bold = true;
            }
            addr156:
         }
         loop1:
         while(true)
         {
            _loc3_.size = 12;
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               while(!(_loc5_ && this))
               {
                  if(_loc6_)
                  {
                     _loc2_.border = false;
                     loop4:
                     for(; !_loc5_; if(!(_loc6_ || this))
                     {
                        continue;
                     },§§goto(addr48))
                     {
                        _loc2_.text = this.§2y§;
                        while(!_loc5_)
                        {
                           _loc2_.height = _loc2_.textHeight * 1.25;
                           while(true)
                           {
                              _loc2_.width = _loc2_.textWidth * 1.25;
                              loop7:
                              while(_loc6_ || _loc2_)
                              {
                                 _loc2_.textColor = 0;
                                 while(true)
                                 {
                                    addr70:
                                    if(_loc6_ || _loc2_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop7;
                                 }
                                 continue loop4;
                              }
                           }
                           loop10:
                           while(_loc6_ || _loc2_)
                           {
                              _loc2_.mouseEnabled = false;
                              if(!(_loc6_ || param1))
                              {
                                 continue;
                              }
                              addr44:
                              if(!_loc5_)
                              {
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       _loc2_.selectable = false;
                                       continue loop10;
                                       §§goto(addr44);
                                    }
                                    §§goto(addr64);
                                    addr48:
                                 }
                                 else
                                 {
                                    var _loc4_:Shape = this.§1Z§.getChildByName("Base") as Shape;
                                    if(_loc6_ || _loc2_)
                                    {
                                       _loc4_.graphics.clear();
                                       _loc4_.graphics.lineStyle(1);
                                       _loc4_.graphics.beginFill(0,1);
                                       _loc4_.graphics.drawRect(-this.§]z§,-this.§]z§,_loc2_.width + 2 * this.§]z§,_loc2_.height + 2 * this.§]z§);
                                       _loc4_.graphics.beginFill(16777215,1);
                                       _loc4_.graphics.drawRect(-this.§]z§ / 2,-(this.§]z§ / 2),_loc2_.width + 1 * this.§]z§,_loc2_.height + 1 * this.§]z§);
                                       addr296:
                                       addr291:
                                       addr284:
                                       addr276:
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(_loc6_ || this)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(!(_loc6_ || _loc3_))
                                                   {
                                                      §§goto(addr296);
                                                   }
                                                   return;
                                                   addr232:
                                                }
                                                §§goto(addr291);
                                             }
                                             §§goto(addr284);
                                          }
                                          §§goto(addr276);
                                       }
                                       addr240:
                                       §§goto(addr240);
                                    }
                                    §§goto(addr232);
                                 }
                              }
                              else
                              {
                                 §§goto(addr64);
                              }
                              §§goto(addr70);
                           }
                        }
                        §§goto(addr156);
                     }
                     continue;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private function §&9§(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!(_loc5_ && param1))
         {
            §§push(!this.§1Z§);
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
                              if(_loc4_)
                              {
                                 §§push(this.§2y§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop() == null);
                                    loop6:
                                    while(_loc4_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc4_)
                                       {
                                          if(!(_loc4_ || this))
                                          {
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      addr100:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               return;
                                                            }
                                                            addr173:
                                                            addr173:
                                                            _loc2_ = mClip.getRect(getParentView());
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               this.§1Z§.y = _loc2_.y - this.§1Z§.height - this.§]z§;
                                                               if(!_loc5_)
                                                               {
                                                                  this.§1Z§.x = _loc2_.x + mClip.width / 2 - this.§1Z§.width / 2;
                                                               }
                                                            }
                                                            _loc3_ = this.§1Z§.getRect(mClip.stage);
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               if(_loc3_.right > mClip.stage.stageWidth - this.§]z§)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§1Z§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§]z§));
                                                                     addr389:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr370:
                                                               }
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(_loc3_.left < this.§]z§)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§1Z§.x += 1 + (this.§]z§ - _loc3_.left);
                                                                        addr347:
                                                                        while(_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     addr333:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_.bottom > mClip.stage.stageHeight - this.§]z§)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§1Z§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§]z§));
                                                                           addr324:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§goto(addr333);
                                                                              }
                                                                           }
                                                                           §§goto(addr347);
                                                                        }
                                                                        addr305:
                                                                     }
                                                                     loop21:
                                                                     do
                                                                     {
                                                                        if(_loc3_.top < this.§]z§)
                                                                        {
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 this.§1Z§.y += mClip.height + this.§1Z§.height + this.§]z§ * 2;
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       break loop22;
                                                                                    }
                                                                                    if(!(_loc4_ || _loc2_))
                                                                                    {
                                                                                       §§goto(addr347);
                                                                                    }
                                                                                 }
                                                                                 addr284:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr305);
                                                                              }
                                                                           }
                                                                           §§goto(addr324);
                                                                           addr263:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§1Z§.visible = true;
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 §§goto(addr370);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr263);
                                                                              }
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                     }
                                                                     while(false);
                                                                     
                                                                     break loop4;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                         else
                                                         {
                                                            §§push(param1);
                                                            if(_loc4_)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                  }
                                                                  addr169:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §§goto(addr173);
                                                                     }
                                                                     break loop4;
                                                                  }
                                                                  this.§1Z§.visible = false;
                                                                  break loop4;
                                                               }
                                                               addr147:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop5;
                                                               }
                                                            }
                                                            if(!(_loc4_ || param1))
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(§§pop());
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(!(_loc4_ || param1))
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc4_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(§=!+§);
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        §§goto(addr169);
                                                                     }
                                                                  }
                                                                  §§goto(addr173);
                                                               }
                                                            }
                                                            §§goto(addr169);
                                                         }
                                                      }
                                                   }
                                                   addr99:
                                                }
                                                §§goto(addr147);
                                             }
                                          }
                                       }
                                       §§goto(addr169);
                                    }
                                    continue loop0;
                                 }
                              }
                              break;
                           }
                           return;
                        }
                        §§goto(addr136);
                     }
                  }
               }
            }
         }
         §§goto(addr173);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§1Z§)
            {
               if(!(_loc2_ && this))
               {
                  this.§2y§ = null;
                  addr125:
                  while(true)
                  {
                     if(this.§1Z§.numChildren > 0)
                     {
                        this.§1Z§.removeChildAt(0);
                        continue;
                     }
                     loop2:
                     while(true)
                     {
                        if(this.§1Z§.parent)
                        {
                           while(true)
                           {
                              this.§1Z§.parent.removeChild(this.§1Z§);
                              addr101:
                              while(true)
                              {
                              }
                           }
                           addr84:
                        }
                        while(true)
                        {
                           this.§1Z§ = null;
                           continue loop2;
                        }
                     }
                  }
                  addr125:
               }
               §§goto(addr125);
            }
            while(true)
            {
               super.clear();
               if(_loc1_ || _loc1_)
               {
                  if(_loc1_ || _loc1_)
                  {
                     if(!_loc2_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr101);
               }
               §§goto(addr65);
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr125);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+!_§ = param1;
            do
            {
               this.§'!E§();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§^!;§ = param1;
            do
            {
               this.§'!E§();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §'!E§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc5_)
               {
                  §§goto(addr31);
               }
            }
            var _loc1_:Array = new Array(this.§+!_§ + "_" + this.§^!;§,this.§+!_§ + "_" + §+!V§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§^!;§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §+!V§);
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
                     if(!(_loc5_ || _loc2_))
                     {
                        continue loop0;
                     }
                     if(mClip.numChildren > 0)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           return;
                        }
                        break;
                     }
                  }
                  catch(e:Error)
                  {
                  }
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
                  §§push(int(§§pop()));
                  if(!_loc4_)
                  {
                     _loc2_ = §§pop();
                     if(_loc4_ && _loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
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
         if(_loc4_)
         {
            if(this.§+!_§ != §1!M§)
            {
               loop0:
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  loop1:
                  while(true)
                  {
                     §§push(this.§2!^§);
                     if(_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr230);
                              }
                              addr229:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    this.§"9§();
                                    addr207:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr204:
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 loop7:
                                 while(_loc4_)
                                 {
                                    if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                    {
                                       while(true)
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             this.setComponentVisualState(§5!e§);
                                             loop9:
                                             for(; _loc4_; if(!(_loc4_ || param1))
                                             {
                                                continue;
                                             },this.setComponentVisualState(§#!A§),§§goto(addr48))
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                                      {
                                                         while(_loc4_)
                                                         {
                                                            this.setComponentVisualState(§#!A§);
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         continue loop0;
                                                         addr155:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         loop15:
                                                         while(_loc4_)
                                                         {
                                                            if(§§pop() == §@8§)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     Mouse.cursor = MouseCursor.AUTO;
                                                                  }
                                                                  else
                                                                  {
                                                                     addr230:
                                                                     §§goto(addr250);
                                                                  }
                                                               }
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc4_ || param2)
                                                                     {
                                                                        this.setComponentVisualState(§5$§);
                                                                        addr105:
                                                                        while(true)
                                                                        {
                                                                           addr65:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        addr105:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr155);
                                                                     }
                                                                  }
                                                                  break;
                                                                  addr84:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  §§goto(addr105);
                                                               }
                                                               §§goto(addr162);
                                                            }
                                                            §§goto(addr65);
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr204);
                                          }
                                          break;
                                          if(!(_loc4_ || this))
                                          {
                                             continue;
                                          }
                                          §§goto(addr24);
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr187);
                              }
                           }
                        }
                     }
                     §§goto(addr229);
                  }
               }
            }
            addr250:
            while(_loc4_ || _loc3_)
            {
               §§push(param1);
               while(true)
               {
                  §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                  if(_loc4_)
                  {
                     continue loop22;
                  }
                  addr200:
                  if(!_loc4_)
                  {
                     continue loop2;
                  }
               }
               continue loop22;
            }
            return;
         }
         §§goto(addr105);
      }
      
      public function §"9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§+!_§);
            loop0:
            while(true)
            {
               §§push(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr85:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr86);
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super.changeMovieClip(param1);
         }
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(!(_loc6_ && _loc3_))
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
                     addr167:
                     while(true)
                     {
                     }
                  }
                  addr160:
               }
               addr151:
               while(true)
               {
                  mClip = null;
                  while(true)
                  {
                     mClip = param1;
                     continue loop0;
                     loop7:
                     while(!_loc6_)
                     {
                        if(_loc5_ || this)
                        {
                           loop8:
                           while(true)
                           {
                              mClip.x = _loc2_;
                              loop9:
                              for(; _loc5_; if(!(_loc6_ && this))
                              {
                                 return;
                              })
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    break loop8;
                                 }
                                 mClip.y = _loc3_;
                                 while(_loc5_)
                                 {
                                    this.§'!E§();
                                    if(_loc5_ || _loc2_)
                                    {
                                       continue loop9;
                                    }
                                 }
                                 while(true)
                                 {
                                    mParentContainer.mClip.addChildAt(mClip,_loc4_);
                                    break loop9;
                                 }
                              }
                              continue loop7;
                           }
                           addr89:
                        }
                        else
                        {
                           §§goto(addr160);
                        }
                        §§goto(addr167);
                     }
                  }
               }
            }
            addr159:
         }
         while(true)
         {
            §§push(Boolean(this.mParentContainer));
            if(_loc5_ || _loc2_)
            {
               if(§§pop())
               {
                  §§goto(addr118);
               }
               §§goto(addr89);
            }
            else
            {
               §§goto(addr159);
            }
         }
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
               this.§&9§(false);
            }
            break;
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.onParentVisibilityChange(param1);
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc3_ && _loc3_))
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
            addr72:
            if(_loc3_ && param1)
            {
               continue;
            }
            this.§&9§(false);
            §§goto(addr72);
         }
      }
   }
}
