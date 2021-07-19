package §@R§
{
   import §0v§.§-'§;
   import §8!8§.§4!C§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §<d§ extends §']§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §^#§:String = "Deactive";
      
      public static const §%^§:String = "Disabled";
      
      public static const §^!'§:String = "Out";
      
      public static const §,]§:String = "Over";
      
      public static const §3j§:String = "Up_Default";
      
      public static const §8!7§:String = "Down";
      
      public static var §`7§:Class;
      
      public static var §,!X§:Boolean = true;
      
      public static const §5u§:String = "Tooltip";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            loop0:
            while(true)
            {
               §^#§ = "Deactive";
               loop1:
               while(true)
               {
                  §%^§ = "Disabled";
                  loop2:
                  for(; !_loc2_; while(!(_loc2_ && _loc2_))
                  {
                     addr72:
                     if(_loc1_ || _loc2_)
                     {
                        §,!X§ = true;
                        while(_loc1_)
                        {
                           §5u§ = "Tooltip";
                           if(_loc2_ && §<d§)
                           {
                              continue;
                           }
                           §§goto(addr34);
                        }
                        loop7:
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr72);
                           }
                           else
                           {
                              while(true)
                              {
                                 §8!7§ = "Down";
                                 continue loop7;
                              }
                              addr84:
                           }
                        }
                     }
                  })
                  {
                     §^!'§ = "Out";
                     while(true)
                     {
                        §,]§ = "Over";
                        continue loop2;
                        addr34:
                        if(_loc1_ || _loc1_)
                        {
                           if(!_loc2_)
                           {
                              return;
                              addr43:
                           }
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §3j§ = "Up_Default";
            §§goto(addr84);
         }
         §§goto(addr43);
      }
      
      public var §0<§:String;
      
      public var §2!E§:String;
      
      public var §+3§:String;
      
      public var §5m§:MovieClip;
      
      public var §,,§:int = 6;
      
      public function §<d§(param1:XML, param2:§4!C§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1,param2,param3);
            while(true)
            {
               this.§0<§ = COMPONENT_STATE_ACTIVE_DEFAULT;
               loop1:
               for(; !(_loc4_ && param2); if(_loc4_ && param2)
               {
                  continue;
               },§§goto(addr53))
               {
                  this.§2!E§ = §3j§;
                  while(true)
                  {
                     this.§%C§();
                     loop3:
                     while(!_loc4_)
                     {
                        while(true)
                        {
                           this.§8<§(param1.@Tooltip);
                           if(!_loc4_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public static function §[u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`7§ = §-'§.§]`§(§5u§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setActiveStatus(param1);
            while(!param1)
            {
               if(!_loc2_)
               {
                  this.setComponentVisualState(§^!'§);
               }
               if(!_loc2_)
               {
                  addr54:
                  break;
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §8<§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+3§ = param1;
            while(true)
            {
               §§push(this.§+3§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr197:
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
                              §§push(this.§+3§);
                              addr172:
                              while(true)
                              {
                                 §§push(§§pop().length == 0);
                                 addr175:
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
                              this.§+3§ = null;
                              addr182:
                              while(true)
                              {
                              }
                           }
                           addr179:
                        }
                        addr141:
                        while(true)
                        {
                           §§push(this.§+3§);
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop1;
                           §§goto(addr182);
                        }
                        §§goto(addr172);
                     }
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      private function §7p§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§5m§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.name = "Text";
            if(!(_loc3_ && _loc2_))
            {
               this.§5m§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(!_loc3_)
         {
            _loc2_.name = "Base";
         }
         do
         {
            this.§5m§.addChildAt(_loc2_,0);
            do
            {
               this.§6E§(this.§+3§);
            }
            while(_loc3_ && this);
            
         }
         while(!(_loc4_ || _loc3_));
         
      }
      
      private function § !U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§5m§ = new §`7§();
         }
         do
         {
            this.§#N§(this.§+3§);
         }
         while(_loc2_);
         
      }
      
      public function §#N§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+3§ = param1;
            while(true)
            {
               if(!§`7§)
               {
                  this.§6E§(param1);
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     §§goto(addr19);
                  }
               }
            }
            addr19:
            return;
         }
         while(true)
         {
            this.§'!6§(param1);
            §§goto(addr65);
         }
      }
      
      private function §'!6§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§5m§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§5m§.getChildByName("Base") as MovieClip;
         if(_loc6_)
         {
            _loc2_.text = this.§+3§;
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
                  
                  if(!(_loc7_ && _loc2_))
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
                     if(_loc6_)
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
                           if(!(_loc7_ && _loc2_))
                           {
                              _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                           }
                           if(!(_loc7_ && this))
                           {
                              break;
                           }
                        }
                        else
                        {
                           _loc3_.getChildAt(0).x = 0;
                           while(true)
                           {
                              _loc5_++;
                           }
                           addr161:
                        }
                        while(!_loc6_)
                        {
                           §§goto(addr161);
                        }
                     }
                     return;
                     addr51:
                  }
                  break;
               }
            }
         }
         §§goto(addr51);
      }
      
      private function §6E§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§5m§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!(_loc5_ && param1))
         {
            _loc3_.align = TextAlign.CENTER;
            while(true)
            {
               _loc3_.bold = true;
               addr102:
               if(_loc5_ && _loc3_)
               {
                  continue;
               }
               _loc2_.width = _loc2_.textWidth * 1.25;
               loop7:
               while(true)
               {
                  _loc2_.textColor = 0;
                  addr77:
                  loop8:
                  while(!(_loc5_ && _loc3_))
                  {
                     loop9:
                     while(true)
                     {
                        _loc2_.selectable = false;
                        addr61:
                        addr144:
                        while(true)
                        {
                           if(_loc6_)
                           {
                              continue loop7;
                           }
                           continue loop8;
                        }
                        loop2:
                        while(true)
                        {
                           _loc2_.defaultTextFormat = _loc3_;
                           while(true)
                           {
                              _loc2_.border = false;
                              addr120:
                              while(_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    _loc2_.text = this.§+3§;
                                    break loop9;
                                 }
                                 addr149:
                                 while(true)
                                 {
                                    _loc3_.size = 12;
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        addr48:
                        if(_loc5_ && _loc2_)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue;
                        }
                        var _loc4_:Shape;
                        (_loc4_ = this.§5m§.getChildByName("Base") as Shape).graphics.clear();
                        if(!(_loc5_ && this))
                        {
                           _loc4_.graphics.lineStyle(1);
                        }
                        _loc4_.graphics.beginFill(0,1);
                        _loc4_.graphics.drawRect(-this.§,,§,-this.§,,§,_loc2_.width + 2 * this.§,,§,_loc2_.height + 2 * this.§,,§);
                        _loc4_.graphics.beginFill(16777215,1);
                        addr273:
                        addr251:
                        if(_loc6_)
                        {
                           _loc4_.graphics.drawRect(-this.§,,§ / 2,-(this.§,,§ / 2),_loc2_.width + 1 * this.§,,§,_loc2_.height + 1 * this.§,,§);
                           if(!(_loc5_ && this))
                           {
                              if(!_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr273);
                                 }
                                 return;
                              }
                              §§goto(addr251);
                           }
                           §§goto(addr273);
                        }
                        addr268:
                        §§goto(addr268);
                     }
                     while(true)
                     {
                        _loc2_.height = _loc2_.textHeight * 1.25;
                        break loop8;
                        §§goto(addr48);
                     }
                  }
                  while(_loc6_)
                  {
                     §§goto(addr102);
                     §§goto(addr77);
                  }
                  §§goto(addr120);
               }
            }
         }
         §§goto(addr149);
      }
      
      private function §2i§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!_loc4_)
         {
            §§push(!this.§5m§);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(_loc5_ || this)
                     {
                        §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(this.§+3§);
                           while(true)
                           {
                              §§push(§§pop() == null);
                              addr72:
                              addr92:
                              while(true)
                              {
                                 continue loop0;
                              }
                              §§push(this.§+3§);
                              if(!(_loc5_ || _loc2_))
                              {
                                 continue;
                              }
                              §§push(§§pop().length == 0);
                              if(_loc5_ || this)
                              {
                                 addr46:
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc5_ || this)
                                    {
                                       §§goto(addr57);
                                    }
                                 }
                                 else
                                 {
                                    addr122:
                                    if(param1)
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          _loc2_ = mClip.getRect(getParentView());
                                          if(_loc5_)
                                          {
                                             this.§5m§.y = _loc2_.y - this.§5m§.height + this.§,,§;
                                             if(_loc5_ || param1)
                                             {
                                                this.§5m§.x = _loc2_.x + mClip.width / 2 - this.§5m§.width / 2;
                                                addr157:
                                             }
                                             _loc3_ = this.§5m§.getRect(mClip.stage);
                                             if(!(_loc4_ && param1))
                                             {
                                                if(_loc3_.right > mClip.stage.stageWidth - this.§,,§)
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      this.§5m§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§,,§));
                                                      addr343:
                                                      loop5:
                                                      while(true)
                                                      {
                                                         addr237:
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            loop14:
                                                            while(true)
                                                            {
                                                               this.§5m§.visible = true;
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr237);
                                                                  }
                                                                  else
                                                                  {
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr212:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_.top >= this.§,,§)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 this.§5m§.y += mClip.height + this.§5m§.height;
                                                                                 continue loop13;
                                                                              }
                                                                              addr255:
                                                                              while(_loc5_ || _loc2_)
                                                                              {
                                                                                 this.§5m§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§,,§));
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           addr212:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§5m§.x += 1 + (this.§,,§ - _loc3_.left);
                                                                           }
                                                                           addr289:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_.bottom <= mClip.stage.stageHeight - this.§,,§)
                                                                              {
                                                                                 §§goto(addr212);
                                                                              }
                                                                              §§goto(addr255);
                                                                           }
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(false)
                                                            {
                                                               §§goto(addr212);
                                                            }
                                                            addr349:
                                                            return;
                                                            addr210:
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc3_.left < this.§,,§)
                                                   {
                                                      §§goto(addr289);
                                                   }
                                                   §§goto(addr245);
                                                   §§goto(addr343);
                                                }
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr157);
                                       }
                                    }
                                    else
                                    {
                                       this.§5m§.visible = false;
                                    }
                                 }
                                 §§goto(addr349);
                              }
                              §§goto(addr122);
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr122);
                     }
                     §§goto(addr349);
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr122);
         }
         addr57:
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§5m§)
            {
               if(_loc2_)
               {
                  addr103:
                  this.§+3§ = null;
               }
               loop0:
               while(true)
               {
                  if(this.§5m§.numChildren > 0)
                  {
                     this.§5m§.removeChildAt(0);
                     continue;
                  }
                  loop1:
                  while(true)
                  {
                     if(this.§5m§.parent)
                     {
                        while(true)
                        {
                           this.§5m§.parent.removeChild(this.§5m§);
                           addr77:
                           while(_loc2_)
                           {
                           }
                           continue loop0;
                        }
                        addr71:
                     }
                     while(true)
                     {
                        this.§5m§ = null;
                        loop5:
                        while(_loc2_ || _loc1_)
                        {
                           while(true)
                           {
                              super.clear();
                              if(_loc1_)
                              {
                                 continue loop5;
                              }
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr71);
                           }
                           return;
                        }
                        §§goto(addr77);
                     }
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr103);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0<§ = param1;
         }
         do
         {
            this.§%C§();
         }
         while(_loc3_);
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§2!E§ = param1;
         }
         do
         {
            this.§%C§();
         }
         while(_loc3_);
         
      }
      
      public function §%C§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc4_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc1_:Array = new Array(this.§0<§ + "_" + this.§2!E§,this.§0<§ + "_" + §3j§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§2!E§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §3j§);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            try
            {
               mClip.gotoAndStop(_loc1_[_loc2_] as String);
               if(_loc4_)
               {
                  if(mClip.numChildren > 0)
                  {
                     if(_loc4_)
                     {
                        return;
                     }
                     continue;
                  }
               }
            }
            catch(e:Error)
            {
            }
            _loc2_++;
            if(!_loc4_)
            {
               break;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§0<§ != §%^§)
            {
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  addr155:
                  while(true)
                  {
                     §§push(param1);
                     loop2:
                     while(true)
                     {
                        if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                        {
                           while(true)
                           {
                              this.setComponentVisualState(§8!7§);
                              addr139:
                              while(true)
                              {
                              }
                           }
                           addr136:
                        }
                        while(true)
                        {
                           §§push(param1);
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr160);
         }
         §§goto(addr155);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.setEnabled(param1);
         }
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc3_))
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
               while(true)
               {
                  mParentContainer.mClip.removeChild(mClip);
                  addr150:
                  while(true)
                  {
                  }
               }
               addr146:
            }
            while(true)
            {
               mClip = null;
               loop3:
               for(; _loc6_ || _loc2_; while(_loc6_ || this)
               {
                  §§goto(addr85);
               })
               {
                  mClip = param1;
                  loop4:
                  do
                  {
                     if(!this.mParentContainer)
                     {
                        while(true)
                        {
                           mClip.x = _loc2_;
                           for(; !(_loc5_ && param1); mClip.y = _loc3_,do
                           {
                              this.§%C§();
                           }
                           while(_loc5_ && _loc3_);
                           ,if(_loc6_ || _loc2_)
                           {
                              continue loop4;
                           })
                           {
                              if(_loc6_)
                              {
                                 continue;
                              }
                           }
                           continue loop3;
                        }
                        addr85:
                     }
                     while(true)
                     {
                        mParentContainer.mClip.addChildAt(mClip,_loc4_);
                        continue loop3;
                     }
                  }
                  while(!_loc6_);
                  
                  if(!_loc6_)
                  {
                     §§goto(addr146);
                  }
               }
               §§goto(addr150);
            }
         }
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.setVisibility(param1);
            while(!mClip.visible)
            {
               if(_loc3_ && param1)
               {
                  break;
               }
               addr69:
               if(!(_loc2_ || param1))
               {
                  continue;
               }
               addr66:
               this.§2i§(false);
               §§goto(addr69);
            }
            return;
         }
         §§goto(addr66);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.onParentVisibilityChange(param1);
            while(!param1)
            {
               if(_loc3_ && param1)
               {
                  break;
               }
               addr63:
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               this.§2i§(false);
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr63);
      }
   }
}
