package §_-MN§
{
   import §_-6C§.§_-gt§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §_-rR§ extends §_-rD§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §_-5L§:String = "Deactive";
      
      public static const §_-K1§:String = "Disabled";
      
      public static const §_-k0§:String = "Out";
      
      public static const §_-01m§:String = "Over";
      
      public static const §_-vu§:String = "Up_Default";
      
      public static const §_-ai§:String = "Down";
      
      public static var §_-0A6§:Class;
      
      public static var §_-JR§:Boolean = true;
      
      public static const §_-RI§:String = "Tooltip";
      
      public static var §_-ls§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
         }
         loop0:
         while(true)
         {
            §_-5L§ = "Deactive";
            loop1:
            while(true)
            {
               §_-K1§ = "Disabled";
               while(true)
               {
                  §_-k0§ = "Out";
                  while(true)
                  {
                     §_-01m§ = "Over";
                     while(_loc2_ || _loc2_)
                     {
                        §_-vu§ = "Up_Default";
                        continue loop1;
                        if(!(_loc1_ && _loc1_))
                        {
                           return;
                        }
                     }
                  }
                  addr73:
                  while(_loc2_ || §_-rR§)
                  {
                     §_-RI§ = "Tooltip";
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     §§goto(addr37);
                  }
               }
            }
         }
      }
      
      public var §_-0-k§:String;
      
      public var §_-QH§:String;
      
      public var §_-Bc§:String;
      
      public var §_-BD§:MovieClip;
      
      public var §_-7V§:int = 6;
      
      private var §_-fF§:Boolean = false;
      
      private var §_-Sn§:String = "auto";
      
      public function §_-rR§(param1:XML, param2:§_-gt§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,param2,param3);
         }
         while(true)
         {
            this.§_-0-k§ = COMPONENT_STATE_ACTIVE_DEFAULT;
            loop1:
            for(; !(_loc6_ && this); if(_loc6_ && param1)
            {
               continue;
            },if(false)
            {
               §§goto(addr55);
            },§§goto(addr105))
            {
               this.§_-QH§ = §_-vu§;
               loop2:
               while(true)
               {
                  this.§_-4b§();
                  addr81:
                  while(true)
                  {
                     addr55:
                     while(true)
                     {
                        this.§_-0Br§(param1.@Tooltip);
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public static function §_-GT§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-0A6§ = §_-Fc§.§_-YE§(§_-RI§);
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
               if(_loc2_ || _loc2_)
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
            this.setComponentVisualState(§_-k0§);
            §§goto(addr46);
         }
      }
      
      public function §_-0Br§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§_-Bc§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§_-Bc§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc3_ && param1))
                  {
                     if(§§pop())
                     {
                        addr208:
                        while(true)
                        {
                           §§pop();
                           addr209:
                           while(true)
                           {
                              §§push(this.§_-Bc§);
                              addr186:
                              while(true)
                              {
                                 §§push(§§pop().length == 0);
                              }
                           }
                        }
                        addr208:
                     }
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§_-Bc§ = null;
                                 addr194:
                                 while(true)
                                 {
                                 }
                              }
                              addr191:
                           }
                           while(true)
                           {
                              §§push(this.§_-Bc§);
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§_-JR§);
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    if(!(_loc3_ && this))
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§_-BD§ = new MovieClip();
                                             addr122:
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          addr117:
                                       }
                                       while(true)
                                       {
                                          §_-JR§ = false;
                                          addr170:
                                          while(_loc2_)
                                          {
                                             §_-GT§();
                                             continue loop6;
                                          }
                                          §§goto(addr122);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr208);
                                    }
                                    §§goto(addr209);
                                 }
                                 continue loop3;
                              }
                              §§goto(addr24);
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr208);
               }
            }
         }
         §§goto(addr194);
      }
      
      private function §_-pC§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§_-BD§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!_loc3_)
         {
            _loc1_.name = "Text";
            if(_loc4_ || this)
            {
               addr54:
               this.§_-BD§.addChild(_loc1_);
            }
            var _loc2_:Shape = new Shape();
            if(_loc4_ || _loc2_)
            {
               _loc2_.name = "Base";
               while(true)
               {
                  this.§_-BD§.addChildAt(_loc2_,0);
                  while(!(_loc3_ && this))
                  {
                     this.§_-03U§(this.§_-Bc§);
                     if(!(_loc4_ || _loc3_))
                     {
                        continue;
                     }
                     return;
                     addr96:
                  }
               }
            }
            §§goto(addr96);
         }
         §§goto(addr54);
      }
      
      private function §_-jo§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-BD§ = new §_-0A6§();
         }
         do
         {
            this.§_-rr§(this.§_-Bc§);
         }
         while(!(_loc2_ || this));
         
      }
      
      public function §_-rr§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-Bc§ = param1;
            do
            {
               if(§_-0A6§)
               {
                  if(_loc2_ || _loc3_)
                  {
                     this.§_-cO§(param1);
                  }
                  continue;
               }
               this.§_-03U§(param1);
               if(_loc3_)
               {
                  continue;
               }
            }
            while(_loc3_);
            
            §§goto(addr29);
         }
         addr29:
      }
      
      private function §_-cO§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TextField = this.§_-BD§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§_-BD§.getChildByName("Base") as MovieClip;
         if(!_loc6_)
         {
            _loc2_.text = this.§_-Bc§;
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
                  if(_loc7_)
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
            if(!(_loc6_ && param1))
            {
               _loc3_.scaleX = _loc4_ / _loc3_.width;
               if(!(_loc6_ && param1))
               {
                  addr101:
                  _loc3_.x = 0;
               }
               var _loc5_:int = 0;
               while(true)
               {
                  if(_loc5_ >= _loc3_.numChildren)
                  {
                     if(!_loc6_)
                     {
                        _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                     }
                     if(_loc7_)
                     {
                        break;
                     }
                     loop4:
                     while(!(_loc7_ || _loc2_))
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
                  §§goto(addr157);
               }
               return;
            }
            §§goto(addr101);
         }
      }
      
      private function §_-03U§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:TextField = this.§_-BD§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!(_loc6_ && param1))
         {
            _loc3_.align = TextAlign.CENTER;
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
                     addr114:
                     while(_loc5_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            addr143:
         }
         while(true)
         {
            _loc2_.border = false;
            while(true)
            {
               _loc2_.text = this.§_-Bc§;
               loop6:
               while(true)
               {
                  if(!_loc6_)
                  {
                     _loc2_.height = _loc2_.textHeight * 1.25;
                     while(true)
                     {
                        _loc2_.width = _loc2_.textWidth * 1.25;
                        continue loop6;
                     }
                     addr96:
                  }
                  else
                  {
                     §§goto(addr143);
                  }
               }
               while(!(_loc6_ && this))
               {
                  _loc2_.mouseEnabled = false;
                  if(_loc6_)
                  {
                     continue;
                  }
                  §§goto(addr42);
               }
            }
         }
      }
      
      private function §_-VS§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!_loc4_)
         {
            §§push(!this.§_-BD§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(!_loc4_)
                        {
                           §§push(this.§_-Bc§);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              if(_loc5_ || this)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    while(_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   return;
                                                }
                                                addr155:
                                                _loc2_ = mClip.getRect(getParentView());
                                                if(_loc5_ || _loc3_)
                                                {
                                                   this.§_-BD§.y = _loc2_.y - this.§_-BD§.height - this.§_-7V§;
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      addr197:
                                                      this.§_-BD§.x = _loc2_.x + mClip.width / 2 - this.§_-BD§.width / 2;
                                                   }
                                                   _loc3_ = this.§_-BD§.getRect(mClip.stage);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      if(_loc3_.right > mClip.stage.stageWidth - this.§_-7V§)
                                                      {
                                                         addr370:
                                                         this.§_-BD§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§_-7V§));
                                                      }
                                                      if(_loc3_.left < this.§_-7V§)
                                                      {
                                                         addr334:
                                                         this.§_-BD§.x += 1 + (this.§_-7V§ - _loc3_.left);
                                                         addr348:
                                                         if(!_loc4_)
                                                         {
                                                            addr299:
                                                            if(_loc3_.bottom > mClip.stage.stageHeight - this.§_-7V§)
                                                            {
                                                               addr309:
                                                               this.§_-BD§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§_-7V§));
                                                               addr327:
                                                            }
                                                            addr251:
                                                            if(_loc3_.top < this.§_-7V§)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     this.§_-BD§.y += mClip.height + this.§_-BD§.height + this.§_-7V§ * 2;
                                                                     addr284:
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           addr228:
                                                                           this.§_-BD§.visible = true;
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              if(!(_loc4_ && param1))
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr251);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr370);
                                                                              }
                                                                              §§goto(addr348);
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                                  §§goto(addr309);
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            §§goto(addr228);
                                                            addr350:
                                                         }
                                                         §§goto(addr370);
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr350);
                                                }
                                                §§goto(addr197);
                                             }
                                             else
                                             {
                                                §§push(param1);
                                                if(_loc5_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc5_ || this))
                                                   {
                                                      addr146:
                                                      §§push(Boolean(§§pop()));
                                                      break loop2;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                §§goto(addr146);
                                             }
                                          }
                                          addr394:
                                          return;
                                          addr90:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          addr126:
                                          while(true)
                                          {
                                             continue loop2;
                                          }
                                          continue loop2;
                                       }
                                       §§push(§§pop());
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§pop();
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(true)
                                                      {
                                                         §§push(§_-ls§);
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            §§goto(addr146);
                                                         }
                                                      }
                                                      continue loop2;
                                                      break loop2;
                                                   }
                                                   §§goto(addr126);
                                                }
                                                §§goto(addr394);
                                             }
                                             break loop2;
                                          }
                                          break loop2;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 addr120:
                              }
                              break;
                           }
                           if(§§pop())
                           {
                              if(_loc5_ || _loc3_)
                              {
                              }
                           }
                           else
                           {
                              this.§_-BD§.visible = false;
                           }
                           §§goto(addr394);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr120);
               }
            }
         }
         §§goto(addr394);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§_-BD§)
            {
               if(!(_loc2_ && this))
               {
                  addr112:
                  this.§_-Bc§ = null;
               }
               loop0:
               while(true)
               {
                  if(this.§_-BD§.numChildren > 0)
                  {
                     this.§_-BD§.removeChildAt(0);
                     continue;
                  }
                  if(_loc1_)
                  {
                     if(this.§_-BD§.parent)
                     {
                        loop1:
                        while(true)
                        {
                           this.§_-BD§.parent.removeChild(this.§_-BD§);
                           addr93:
                           addr40:
                           while(true)
                           {
                           }
                           loop3:
                           while(true)
                           {
                              if(_loc1_ || this)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    while(true)
                                    {
                                       super.clear();
                                       if(_loc1_ || _loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             break;
                                          }
                                          break loop3;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                    addr23:
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           §§goto(addr93);
                        }
                     }
                     while(true)
                     {
                        this.§_-BD§ = null;
                        §§goto(addr40);
                        §§goto(addr93);
                     }
                  }
                  §§goto(addr93);
               }
            }
            §§goto(addr23);
         }
         §§goto(addr112);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-0-k§ = param1;
            do
            {
               this.§_-4b§();
            }
            while(!_loc2_);
            
         }
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§_-QH§ = param1;
         }
         do
         {
            this.§_-4b§();
         }
         while(_loc3_);
         
      }
      
      public function §_-4b§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            if(mClip.totalFrames < 2)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr35);
               }
            }
            var _loc1_:Array = new Array(this.§_-0-k§ + "_" + this.§_-QH§,this.§_-0-k§ + "_" + §_-vu§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§_-QH§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §_-vu§);
            var _loc2_:int = 0;
            for(; _loc2_ < _loc1_.length; _loc2_++,if(!_loc5_)
            {
               break;
            })
            {
               try
               {
                  mClip.gotoAndStop(_loc1_[_loc2_] as String);
                  if(_loc5_)
                  {
                     if(mClip.numChildren > 0)
                     {
                        if(!_loc4_)
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
         addr35:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(this.§_-0-k§ != §_-K1§)
            {
               loop0:
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  loop1:
                  while(true)
                  {
                     §§push(this.§_-fF§);
                     if(!(_loc3_ && param2))
                     {
                        §§push(Boolean(§§pop()));
                     }
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
                                    this.§_-01v§();
                                    addr197:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr195:
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          this.setComponentVisualState(§_-ai§);
                                          loop9:
                                          while(_loc4_)
                                          {
                                             while(true)
                                             {
                                                addr132:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop11:
                                                   for(; _loc4_; while(true)
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(§§pop() != §_-09A§)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr123);
                                                         }
                                                         break;
                                                      }
                                                      continue loop11;
                                                   },§§goto(addr172))
                                                   {
                                                      if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                                      {
                                                         loop12:
                                                         while(!_loc3_)
                                                         {
                                                            if(_loc3_ && param2)
                                                            {
                                                               continue loop8;
                                                            }
                                                            this.setComponentVisualState(§_-01m§);
                                                            while(_loc4_)
                                                            {
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  §§goto(addr223);
                                                               }
                                                               addr97:
                                                               if(_loc4_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc3_ && param2)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop() == §_-0-Q§)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           Mouse.cursor = this.§_-Sn§;
                                                                           addr76:
                                                                           while(_loc4_ || param2)
                                                                           {
                                                                              if(!(_loc4_ || param2))
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              this.setComponentVisualState(§_-01m§);
                                                                              while(_loc4_)
                                                                              {
                                                                              }
                                                                              while(!_loc3_)
                                                                              {
                                                                                 §§goto(addr97);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 Mouse.cursor = MouseCursor.AUTO;
                                                                                 while(true)
                                                                                 {
                                                                                    this.setComponentVisualState(§_-k0§);
                                                                                    §§goto(addr95);
                                                                                 }
                                                                              }
                                                                              addr95:
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 addr172:
                                                                                 addr211:
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
                                                                                    continue loop25;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop1;
                                                                           addr44:
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           §§goto(addr131);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§_-VS§(param1 == §_-0-Q§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              §§goto(addr44);
                                                                           }
                                                                           §§goto(addr76);
                                                                        }
                                                                        §§goto(addr58);
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                                  addr61:
                                                               }
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                         continue loop9;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         continue loop11;
                                                      }
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          §§goto(addr197);
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                              }
                              addr183:
                           }
                        }
                        §§goto(addr211);
                     }
                  }
               }
            }
            addr223:
            return;
         }
         §§goto(addr169);
      }
      
      public function §_-01v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-0-k§);
            loop0:
            while(true)
            {
               §§push(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr91:
               addr92:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               this.setComponentState(§_-rR§.§_-5L§);
            }
         }
         §§goto(addr96);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.setEnabled(param1);
         }
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc2_))
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
               addr145:
               while(true)
               {
                  mParentContainer.mClip.removeChild(mClip);
                  addr149:
                  while(true)
                  {
                  }
               }
               addr145:
            }
            loop0:
            while(true)
            {
               mClip = null;
               while(true)
               {
                  mClip = param1;
                  loop2:
                  for(; _loc5_ || param1; loop6:
                  while(!(_loc6_ && this))
                  {
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     mClip.y = _loc3_;
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop6;
                     }
                     §§goto(addr124);
                  })
                  {
                     if(this.mParentContainer)
                     {
                        while(true)
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              mParentContainer.mClip.addChildAt(mClip,_loc4_);
                              addr124:
                              while(true)
                              {
                              }
                              addr124:
                           }
                           else
                           {
                              §§goto(addr145);
                           }
                           addr57:
                           if(!(_loc5_ || _loc2_))
                           {
                              continue;
                           }
                           return;
                           addr74:
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        mClip.x = _loc2_;
                        continue loop2;
                        §§goto(addr124);
                     }
                     §§goto(addr74);
                  }
               }
            }
         }
         §§goto(addr145);
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
               this.§_-VS§(false);
            }
            if(_loc3_)
            {
               break;
            }
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.onParentVisibilityChange(param1);
            loop0:
            for(; !param1; while(true)
            {
               if(_loc3_ || param1)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§_-VS§(false);
            §§goto(addr47);
         }
      }
   }
}
