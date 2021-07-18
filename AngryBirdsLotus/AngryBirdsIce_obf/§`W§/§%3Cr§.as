package §`W§
{
   import §[v§.§&F§;
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §<r§ extends §`H§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §55§:String = "Deactive";
      
      public static const §?!B§:String = "Disabled";
      
      public static const §const§:String = "Out";
      
      public static const §%i§:String = "Over";
      
      public static const §>!2§:String = "Up_Default";
      
      public static const §7!4§:String = "Down";
      
      public static var §[L§:Class;
      
      public static var §',§:Boolean = true;
      
      public static const §'0§:String = "Tooltip";
      
      public static var §1C§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §<r§)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            §55§ = "Deactive";
            while(true)
            {
               §?!B§ = "Disabled";
               loop1:
               for(; _loc1_ || _loc2_; if(!(_loc1_ || _loc2_))
               {
                  continue;
               },§§goto(addr61))
               {
                  §const§ = "Out";
                  §%i§ = "Over";
                  §>!2§ = "Up_Default";
                  loop2:
                  while(true)
                  {
                     §7!4§ = "Down";
                     while(true)
                     {
                        §',§ = true;
                        loop4:
                        while(_loc1_)
                        {
                           continue loop2;
                           while(true)
                           {
                              §'0§ = "Tooltip";
                              if(_loc1_ || _loc2_)
                              {
                                 continue loop1;
                              }
                              continue loop4;
                           }
                           §1C§ = true;
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public var §`!8§:String;
      
      public var §7m§:String;
      
      public var §5E§:String;
      
      public var §9a§:MovieClip;
      
      public var §+!G§:int = 6;
      
      private var §<'§:Boolean = false;
      
      private var §=e§:String = "auto";
      
      public function §<r§(param1:XML, param2:§&F§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super(param1,param2,param3);
         do
         {
            this.§`!8§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         }
         while(_loc7_);
         
         this.§7m§ = §>!2§;
         this.§;!9§();
         loop1:
         while(true)
         {
            while(true)
            {
               this.§1P§(param1.@Tooltip);
               if(!_loc7_)
               {
                  if(param1.@Toggle.toString().toUpperCase() != "TRUE")
                  {
                     break;
                  }
                  this.§<'§ = true;
                  if(true)
                  {
                     break;
                  }
                  continue;
               }
               continue loop1;
            }
            var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
            var _loc5_:String = param1.@cursor.toString().toLowerCase();
            if(_loc6_)
            {
               if(_loc4_.indexOf(_loc5_) > -1)
               {
                  if(!(_loc7_ && this))
                  {
                     addr112:
                     this.§=e§ = _loc5_;
                  }
               }
               return;
            }
            §§goto(addr112);
         }
      }
      
      public static function §`V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[L§ = §>D§.§`C§(§'0§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setActiveStatus(param1);
            loop0:
            for(; !param1; while(true)
            {
               if(_loc3_ || _loc3_)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(_loc2_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.setComponentVisualState(§const§);
            §§goto(addr42);
         }
      }
      
      public function §1P§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§5E§ = param1;
         loop0:
         while(true)
         {
            §§push(this.§5E§);
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
                        §§push(this.§5E§);
                        while(true)
                        {
                           §§push(§§pop().length == 0);
                           §§goto(addr148);
                        }
                     }
                  }
                  while(true)
                  {
                     addr148:
                     addr18:
                     while(true)
                     {
                        if(§§pop())
                        {
                           this.§5E§ = null;
                        }
                        §§push(this.§5E§);
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        §§push(§',§);
                        addr107:
                        continue loop4;
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           continue loop3;
                        }
                        if(!_loc3_)
                        {
                           continue loop2;
                        }
                        if(§§pop())
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §',§ = false;
                           }
                           §`V§();
                           addr93:
                        }
                        this.§9a§ = new MovieClip();
                        addr89:
                        if(§[L§)
                        {
                           if(_loc3_)
                           {
                              this.§?!9§();
                              addr81:
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              addr52:
                              this.§9a§.mouseEnabled = false;
                              this.§9a§.mouseChildren = false;
                              this.§9a§.visible = false;
                              getParentView().addChild(this.§9a§);
                              if(_loc3_)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr93);
                                    }
                                    break;
                                 }
                                 §§goto(addr81);
                              }
                              addr45:
                              §§goto(addr45);
                           }
                           §§goto(addr89);
                        }
                        this.§ &§();
                        §§goto(addr52);
                     }
                     return;
                  }
               }
            }
         }
      }
      
      private function § &§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§9a§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(_loc3_ || _loc3_)
         {
            _loc1_.name = "Text";
            if(_loc3_)
            {
               this.§9a§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(_loc3_)
         {
            _loc2_.name = "Base";
            while(true)
            {
               this.§9a§.addChildAt(_loc2_,0);
               while(!_loc4_)
               {
                  this.§=R§(this.§5E§);
                  if(!_loc4_)
                  {
                     return;
                     addr85:
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      private function §?!9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9a§ = new §[L§();
            do
            {
               this.§;!@§(this.§5E§);
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §;!@§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5E§ = param1;
         }
         do
         {
            if(!§[L§)
            {
               this.§=R§(param1);
               if(!_loc3_)
               {
                  continue;
               }
               if(!(_loc2_ && param1))
               {
                  §§goto(addr20);
               }
            }
            this.§7u§(param1);
         }
         while(_loc2_ && this);
         
         addr20:
      }
      
      private function §7u§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§9a§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§9a§.getChildByName("Base") as MovieClip;
         if(!(_loc7_ && _loc3_))
         {
            _loc2_.text = this.§5E§;
            loop0:
            while(true)
            {
               addr56:
               while(true)
               {
                  _loc2_.multiline = false;
                  addr60:
                  while(!_loc7_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc2_.width = _loc2_.textWidth * 1.25;
            if(_loc6_ || param1)
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
            if(!(_loc7_ && _loc3_))
            {
               _loc3_.x = 0;
            }
         }
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_.numChildren)
            {
               if(!(_loc7_ && _loc3_))
               {
                  if(_loc7_ && this)
                  {
                     continue;
                  }
                  _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
               }
               if(_loc6_)
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
      
      private function §=R§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:TextField = this.§9a§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(_loc5_ || param1)
         {
            _loc3_.align = TextAlign.CENTER;
            do
            {
               _loc3_.bold = true;
            }
            while(_loc6_);
            
            _loc3_.size = 12;
            _loc2_.defaultTextFormat = _loc3_;
            _loc2_.border = false;
         }
         _loc2_.text = this.§5E§;
         loop1:
         while(true)
         {
            _loc2_.height = _loc2_.textHeight * 1.25;
            loop2:
            while(true)
            {
               _loc2_.width = _loc2_.textWidth * 1.25;
               while(true)
               {
                  _loc2_.textColor = 0;
                  loop4:
                  while(_loc5_)
                  {
                     loop5:
                     while(true)
                     {
                        _loc2_.selectable = false;
                        while(_loc5_)
                        {
                           _loc2_.mouseEnabled = false;
                           if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           }
                           if(_loc6_)
                           {
                              break loop5;
                           }
                           if(_loc6_)
                           {
                              continue loop1;
                           }
                           if(false)
                           {
                              continue loop5;
                           }
                           var _loc4_:Shape;
                           (_loc4_ = this.§9a§.getChildByName("Base") as Shape).graphics.clear();
                           if(_loc5_)
                           {
                              _loc4_.graphics.lineStyle(1);
                              _loc4_.graphics.beginFill(0,1);
                              addr249:
                           }
                           _loc4_.graphics.drawRect(-this.§+!G§,-this.§+!G§,_loc2_.width + 2 * this.§+!G§,_loc2_.height + 2 * this.§+!G§);
                           _loc4_.graphics.beginFill(16777215,1);
                           addr237:
                           if(_loc5_ || param1)
                           {
                              _loc4_.graphics.drawRect(-this.§+!G§ / 2,-(this.§+!G§ / 2),_loc2_.width + 1 * this.§+!G§,_loc2_.height + 1 * this.§+!G§);
                              if(!_loc6_)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    if(!(_loc5_ || this))
                                    {
                                       §§goto(addr249);
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr237);
                           }
                           addr244:
                           §§goto(addr244);
                        }
                        continue loop4;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      private function §8!#§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!(_loc4_ && this))
         {
            §§push(!this.§9a§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               addr122:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     §§push(this.§5E§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() == null);
                        if(_loc5_)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              addr115:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       while(true)
                                       {
                                          §§push(this.§5E§);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop().length == 0);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr88);
                                                   }
                                                   §§push(param1);
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop0;
                                                }
                                                addr61:
                                                §§pop();
                                                if(_loc5_ || _loc2_)
                                                {
                                                   if(true)
                                                   {
                                                      §§push(§1C§);
                                                   }
                                                   continue;
                                                   break;
                                                }
                                                addr135:
                                                _loc2_ = mClip.getRect(getParentView());
                                                if(!(_loc4_ && param1))
                                                {
                                                   this.§9a§.y = _loc2_.y - this.§9a§.height - this.§+!G§;
                                                   if(_loc5_)
                                                   {
                                                      this.§9a§.x = _loc2_.x + mClip.width / 2 - this.§9a§.width / 2;
                                                   }
                                                }
                                                _loc3_ = this.§9a§.getRect(mClip.stage);
                                                if(_loc3_.right > mClip.stage.stageWidth - this.§+!G§)
                                                {
                                                   this.§9a§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§+!G§));
                                                   addr331:
                                                }
                                                if(_loc3_.left < this.§+!G§)
                                                {
                                                   if(!(_loc5_ || _loc2_))
                                                   {
                                                      §§goto(addr331);
                                                   }
                                                   this.§9a§.x += 1 + (this.§+!G§ - _loc3_.left);
                                                }
                                                if(_loc3_.bottom > mClip.stage.stageHeight - this.§+!G§)
                                                {
                                                   addr247:
                                                   this.§9a§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§+!G§));
                                                }
                                                addr205:
                                                if(_loc3_.top < this.§+!G§)
                                                {
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      this.§9a§.y += mClip.height + this.§9a§.height + this.§+!G§ * 2;
                                                      addr196:
                                                      this.§9a§.visible = true;
                                                      if(!_loc4_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                      addr236:
                                                      §§goto(addr236);
                                                   }
                                                   §§goto(addr247);
                                                }
                                                §§goto(addr196);
                                                addr86:
                                             }
                                             break;
                                          }
                                          continue loop2;
                                       }
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
                                          this.§9a§.visible = false;
                                       }
                                       addr337:
                                       return;
                                    }
                                    addr116:
                                 }
                                 §§goto(addr86);
                              }
                           }
                           addr113:
                        }
                        §§goto(addr116);
                     }
                  }
                  §§goto(addr113);
               }
            }
         }
         addr88:
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§9a§)
            {
               if(!_loc2_)
               {
                  this.§5E§ = null;
                  addr95:
                  loop4:
                  while(true)
                  {
                     if(this.§9a§.numChildren > 0)
                     {
                        this.§9a§.removeChildAt(0);
                        continue;
                     }
                     while(_loc2_)
                     {
                        continue loop4;
                     }
                     if(this.§9a§.parent)
                     {
                        if(_loc1_)
                        {
                           this.§9a§.parent.removeChild(this.§9a§);
                        }
                        addr78:
                     }
                     this.§9a§ = null;
                     while(true)
                     {
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           §§goto(addr54);
                        }
                        §§goto(addr78);
                     }
                     addr54:
                  }
                  addr95:
               }
               §§goto(addr95);
            }
            while(true)
            {
               super.clear();
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr33);
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr95);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!8§ = param1;
            do
            {
               this.§;!9§();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§7m§ = param1;
            do
            {
               this.§;!9§();
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function §;!9§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            if(mClip.totalFrames < 2)
            {
               if(!_loc4_)
               {
                  §§goto(addr30);
               }
            }
            var _loc1_:Array = new Array(this.§`!8§ + "_" + this.§7m§,this.§`!8§ + "_" + §>!2§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§7m§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §>!2§);
            var _loc2_:int = 0;
            while(_loc2_ < _loc1_.length)
            {
               try
               {
                  mClip.gotoAndStop(_loc1_[_loc2_] as String);
                  if(_loc5_ || _loc3_)
                  {
                     if(mClip.numChildren <= 0)
                     {
                        addr118:
                        _loc2_++;
                        if(!_loc5_)
                        {
                           break;
                        }
                        continue;
                     }
                     if(!_loc5_)
                     {
                        continue;
                     }
                  }
                  return;
               }
               catch(e:Error)
               {
                  var _loc3_:* = e;
               }
               §§goto(addr118);
            }
            return;
         }
         addr30:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§`!8§ == §?!B§)
            {
               return;
            }
            loop0:
            while(true)
            {
               super.listenerEventOccured(param1,param2);
               §§push(this.§<'§);
               if(_loc4_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc3_)
                  {
                     addr178:
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           §§push(param1);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    do
                                    {
                                       this.§?d§();
                                    }
                                    while(_loc4_);
                                    
                                    continue loop0;
                                    addr165:
                                 }
                                 while(true)
                                 {
                                    §§push(param1);
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        addr180:
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr180);
               }
               §§goto(addr178);
            }
         }
         §§goto(addr107);
      }
      
      public function §?d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§`!8§);
            loop0:
            while(true)
            {
               §§push(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr80:
               addr81:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               this.setComponentState(§<r§.§55§);
            }
         }
         §§goto(addr19);
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
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
               mParentContainer.mClip.removeChild(mClip);
               addr131:
               while(true)
               {
               }
               addr131:
            }
            while(true)
            {
               mClip = null;
               loop1:
               while(!(_loc6_ && _loc2_))
               {
                  mClip = param1;
                  loop2:
                  do
                  {
                     if(this.mParentContainer)
                     {
                        mParentContainer.mClip.addChildAt(mClip,_loc4_);
                        loop3:
                        while(!(_loc6_ && this))
                        {
                           while(true)
                           {
                              mClip.x = _loc2_;
                              if(!(_loc6_ && _loc3_))
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     §§goto(addr68);
                  }
                  while(mClip.y = _loc3_, _loc6_);
                  
                  this.§;!9§();
                  return;
               }
               §§goto(addr131);
            }
         }
         §§goto(addr131);
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
               if(_loc2_ || _loc2_)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  this.§8!#§(false);
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
               if(_loc3_)
               {
                  break;
               }
               addr48:
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               addr45:
               this.§8!#§(false);
               §§goto(addr48);
            }
            return;
         }
         §§goto(addr45);
      }
   }
}
