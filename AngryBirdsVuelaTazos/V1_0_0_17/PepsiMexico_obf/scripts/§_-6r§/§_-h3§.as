package §_-6r§
{
   import §_-0S§.§_-z1§;
   import §_-F1§.§_-k4§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §_-h3§ extends §_-Tk§
   {
      
      public static const §_-1M§:String = "Active";
      
      public static const §_-sp§:String = "Deactive";
      
      public static const §_-By§:String = "Disabled";
      
      public static const §_-Wy§:String = "Out";
      
      public static const §_-pm§:String = "Over";
      
      public static const §_-ro§:String = "Up_Default";
      
      public static const §_-zQ§:String = "Down";
      
      public static var §_-7b§:Class;
      
      public static var §_-lk§:Boolean = true;
      
      public static const §_-e§:String = "Tooltip";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §_-h3§)
         {
            §_-1M§ = "Active";
            §_-sp§ = "Deactive";
            if(_loc2_)
            {
               addr29:
               §_-By§ = "Disabled";
               if(!(_loc1_ && _loc2_))
               {
                  addr46:
                  §_-Wy§ = "Out";
                  if(!_loc1_)
                  {
                     §_-pm§ = "Over";
                     §_-ro§ = "Up_Default";
                     if(!(_loc1_ && _loc2_))
                     {
                        addr71:
                        §_-zQ§ = "Down";
                        §_-lk§ = true;
                        §_-e§ = "Tooltip";
                     }
                     return;
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr46);
         }
         §§goto(addr29);
      }
      
      public var §_-OG§:String;
      
      public var §_-SJ§:String;
      
      public var §_-Ls§:String;
      
      public var §_-VT§:MovieClip;
      
      public var §_-dt§:int = 6;
      
      public function §_-h3§(param1:XML, param2:§_-k4§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super(param1,param2,param3);
            if(_loc5_)
            {
               this.§_-OG§ = §_-1M§;
               if(!_loc4_)
               {
                  this.§_-SJ§ = §_-ro§;
                  if(_loc5_ || param3)
                  {
                     addr50:
                     this.§_-t8§();
                     if(_loc5_ || param1)
                     {
                     }
                  }
                  §§goto(addr70);
               }
               this.§_-xS§(param1.@Tooltip);
            }
            addr70:
            return;
         }
         §§goto(addr50);
      }
      
      public static function §_-vr§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-7b§ = §_-z1§.§_-tn§(§_-e§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setActiveStatus(param1);
            if(_loc3_ || param1)
            {
               addr33:
               if(!param1)
               {
                  if(!(_loc2_ && this))
                  {
                     this.setComponentVisualState(§_-Wy§);
                  }
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function §_-xS§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§_-Ls§ = param1;
         if(!_loc3_)
         {
            §§push(this.§_-Ls§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§pop();
                        if(!(_loc3_ && param1))
                        {
                           §§push(this.§_-Ls§);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr51:
                              §§push(§§pop().length == 0);
                              if(!_loc3_)
                              {
                                 addr56:
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       this.§_-Ls§ = null;
                                       addr62:
                                       if(this.§_-Ls§)
                                       {
                                          if(!_loc3_)
                                          {
                                             addr75:
                                             if(§_-lk§)
                                             {
                                                if(_loc2_)
                                                {
                                                   addr78:
                                                   §_-lk§ = false;
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      addr88:
                                                      §_-vr§();
                                                      §§goto(addr90);
                                                   }
                                                   §§goto(addr143);
                                                }
                                             }
                                          }
                                          addr90:
                                          this.§_-VT§ = new MovieClip();
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(§_-7b§)
                                             {
                                                this.§_-dp§();
                                                if(_loc3_ && _loc3_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                this.§_-WC§();
                                             }
                                             this.§_-VT§.mouseEnabled = false;
                                             if(!_loc2_)
                                             {
                                             }
                                             addr143:
                                             getParentView().addChild(this.§_-VT§);
                                             §§goto(addr148);
                                          }
                                          this.§_-VT§.mouseChildren = false;
                                          this.§_-VT§.visible = false;
                                          if(_loc3_ && this)
                                          {
                                          }
                                          addr148:
                                          return;
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr78);
                                 }
                                 §§goto(addr62);
                              }
                              §§goto(addr75);
                           }
                        }
                        §§goto(addr62);
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr51);
         }
         §§goto(addr88);
      }
      
      private function §_-WC§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§_-VT§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!_loc4_)
         {
            _loc1_.name = "Text";
            if(_loc3_)
            {
               this.§_-VT§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(_loc3_)
         {
            _loc2_.name = "Base";
            if(_loc3_)
            {
               this.§_-VT§.addChildAt(_loc2_,0);
               if(_loc3_)
               {
                  addr71:
                  this.§_-Z5§(this.§_-Ls§);
               }
            }
            return;
         }
         §§goto(addr71);
      }
      
      private function §_-dp§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§_-VT§ = new §_-7b§();
            if(_loc1_ || _loc2_)
            {
               this.§_-GX§(this.§_-Ls§);
            }
         }
      }
      
      public function §_-GX§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-Ls§ = param1;
            if(!(_loc3_ && _loc3_))
            {
               if(§_-7b§)
               {
                  if(!_loc3_)
                  {
                     addr36:
                     this.§_-sI§(param1);
                     if(_loc2_ || this)
                     {
                     }
                  }
               }
               else
               {
                  this.§_-Z5§(param1);
               }
               return;
            }
         }
         §§goto(addr36);
      }
      
      private function §_-sI§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TextField = this.§_-VT§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§_-VT§.getChildByName("Base") as MovieClip;
         if(_loc7_)
         {
            _loc2_.text = this.§_-Ls§;
            if(!_loc6_)
            {
               §§goto(addr38);
            }
            §§goto(addr48);
         }
         addr38:
         _loc2_.multiline = false;
         if(!(_loc6_ && _loc2_))
         {
            addr48:
            _loc2_.width = _loc2_.textWidth * 1.1;
         }
         var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
         if(!(_loc6_ && _loc3_))
         {
            _loc3_.scaleX = _loc4_ / _loc3_.width;
            if(_loc7_ || this)
            {
               _loc3_.x = 0;
            }
         }
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_.numChildren)
            {
               if(_loc7_)
               {
                  addr133:
                  _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                  break;
               }
               break;
            }
            _loc3_.getChildAt(0).x = 0;
            if(_loc6_ && param1)
            {
               break;
            }
            _loc5_++;
            if(_loc7_ || this)
            {
               continue;
            }
            §§goto(addr133);
         }
      }
      
      private function §_-Z5§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§_-VT§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§_-Ls§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         if(!_loc5_)
         {
            _loc2_.selectable = false;
            _loc2_.mouseEnabled = false;
         }
         var _loc4_:Shape;
         (_loc4_ = this.§_-VT§.getChildByName("Base") as Shape).graphics.clear();
         if(_loc6_)
         {
            _loc4_.graphics.lineStyle(1);
            if(!(_loc5_ && _loc2_))
            {
               _loc4_.graphics.beginFill(0,1);
               if(_loc6_)
               {
                  addr107:
                  _loc4_.graphics.drawRect(-this.§_-dt§,-this.§_-dt§,_loc2_.width + 2 * this.§_-dt§,_loc2_.height + 2 * this.§_-dt§);
                  if(!(_loc5_ && _loc3_))
                  {
                     addr137:
                     _loc4_.graphics.beginFill(16777215,1);
                     if(!_loc5_)
                     {
                        _loc4_.graphics.drawRect(-this.§_-dt§ / 2,-(this.§_-dt§ / 2),_loc2_.width + 1 * this.§_-dt§,_loc2_.height + 1 * this.§_-dt§);
                     }
                  }
               }
               return;
            }
            §§goto(addr137);
         }
         §§goto(addr107);
      }
      
      private function §_-3P§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!(_loc4_ && param1))
         {
            §§push(!this.§_-VT§);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop());
               if(_loc5_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc5_)
                     {
                        addr48:
                        §§pop();
                        §§push(this.§_-Ls§);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() == null);
                           if(!(_loc4_ && _loc2_))
                           {
                              addr67:
                              if(!§§pop())
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    §§pop();
                                    if(!_loc4_)
                                    {
                                       addr81:
                                       §§push(this.§_-Ls§.length == 0);
                                       if(_loc5_ || param1)
                                       {
                                          addr91:
                                          if(§§pop())
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                return;
                                             }
                                             §§goto(addr288);
                                          }
                                          §§goto(addr288);
                                       }
                                       §§goto(addr103);
                                    }
                                    addr103:
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          _loc2_ = mClip.getRect(getParentView());
                                          if(_loc5_ || _loc2_)
                                          {
                                             this.§_-VT§.y = _loc2_.y - this.§_-VT§.height + this.§_-dt§;
                                             if(_loc5_ || param1)
                                             {
                                                this.§_-VT§.x = _loc2_.x + mClip.width / 2 - this.§_-VT§.width / 2;
                                             }
                                          }
                                          _loc3_ = this.§_-VT§.getRect(mClip.stage);
                                          if(_loc5_)
                                          {
                                             if(_loc3_.right > mClip.stage.stageWidth - this.§_-dt§)
                                             {
                                                if(_loc5_)
                                                {
                                                   this.§_-VT§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§_-dt§));
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr206);
                                                   }
                                                   §§goto(addr259);
                                                }
                                                §§goto(addr234);
                                             }
                                             addr206:
                                             if(_loc3_.left < this.§_-dt§)
                                             {
                                                this.§_-VT§.x += 1 + (this.§_-dt§ - _loc3_.left);
                                             }
                                             §§goto(addr225);
                                          }
                                          addr225:
                                          if(_loc3_.bottom > mClip.stage.stageHeight - this.§_-dt§)
                                          {
                                             addr234:
                                             this.§_-VT§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§_-dt§));
                                          }
                                          if(_loc3_.top < this.§_-dt§)
                                          {
                                             if(_loc5_)
                                             {
                                                addr259:
                                                this.§_-VT§.y += mClip.height + this.§_-VT§.height;
                                             }
                                          }
                                          this.§_-VT§.visible = true;
                                       }
                                    }
                                    else
                                    {
                                       this.§_-VT§.visible = false;
                                    }
                                    §§goto(addr288);
                                    §§push(param1);
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr81);
                     }
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr48);
         }
         §§goto(addr288);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§_-VT§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr26:
                  this.§_-Ls§ = null;
               }
               do
               {
                  if(this.§_-VT§.numChildren > 0)
                  {
                     continue;
                  }
                  if(!(_loc1_ && _loc2_))
                  {
                     if(this.§_-VT§.parent)
                     {
                        if(_loc2_)
                        {
                           addr67:
                           this.§_-VT§.parent.removeChild(this.§_-VT§);
                           if(!(_loc1_ && _loc2_))
                           {
                              break;
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr92);
                     }
                     break;
                  }
                  §§goto(addr67);
               }
               while(this.§_-VT§.removeChildAt(0), !(_loc1_ && this));
               
               this.§_-VT§ = null;
               if(_loc2_)
               {
                  §§goto(addr92);
               }
               §§goto(addr67);
            }
            addr92:
            super.clear();
            addr94:
            return;
         }
         §§goto(addr26);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-OG§ = param1;
            if(_loc2_ || this)
            {
               this.§_-t8§();
            }
         }
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-SJ§ = param1;
            if(_loc3_ || _loc3_)
            {
               addr33:
               this.§_-t8§();
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function §_-t8§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            if(mClip.totalFrames < 2)
            {
               if(!(_loc4_ && this))
               {
                  §§goto(addr32);
               }
            }
            var _loc1_:Array = new Array(this.§_-OG§ + "_" + this.§_-SJ§,this.§_-OG§ + "_" + §_-ro§,§_-1M§ + "_" + this.§_-SJ§,§_-1M§ + "_" + §_-ro§);
            var _loc2_:int = 0;
            while(_loc2_ < _loc1_.length)
            {
               try
               {
                  mClip.gotoAndStop(_loc1_[_loc2_] as String);
                  if(_loc5_)
                  {
                     if(mClip.numChildren > 0)
                     {
                        if(_loc5_)
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
               if(!_loc5_)
               {
                  break;
               }
            }
            return;
         }
         addr32:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(this.§_-OG§ == §_-By§)
            {
               return;
            }
            super.listenerEventOccured(param1,param2);
            if(_loc4_)
            {
               §§push(param1);
               if(!(_loc3_ && param2))
               {
                  if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                  {
                     this.setComponentVisualState(§_-zQ§);
                     §§goto(addr44);
                  }
                  §§goto(addr61);
               }
            }
            §§goto(addr86);
         }
         addr44:
         if(!(_loc3_ && param1))
         {
            addr61:
            §§push(param1);
            if(_loc4_)
            {
               if(§§pop() == LISTENER_EVENT_MOUSE_UP)
               {
                  if(_loc4_ || param1)
                  {
                     this.setComponentVisualState(§_-pm§);
                     if(!_loc3_)
                     {
                        addr78:
                        §§push(param1);
                        if(_loc4_)
                        {
                           addr81:
                           if(§§pop() == §_-6q§)
                           {
                              this.setComponentVisualState(§_-Wy§);
                              addr86:
                              if(param1 == §_-Ek§)
                              {
                                 this.setComponentVisualState(§_-pm§);
                                 §§goto(addr89);
                              }
                           }
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr86);
               }
               §§goto(addr78);
            }
            §§goto(addr81);
         }
         addr89:
         if(_loc4_)
         {
            addr101:
            this.§_-3P§(param1 == §_-Ek§);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setEnabled(param1);
         }
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            super.changeMovieClip(param1);
         }
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(this.mParentContainer)
         {
            mParentContainer.mClip.removeChild(mClip);
         }
         mClip = null;
         if(_loc6_ || this)
         {
            mClip = param1;
            if(!(_loc5_ && this))
            {
               if(this.mParentContainer)
               {
                  addr75:
                  mParentContainer.mClip.addChildAt(mClip,_loc4_);
               }
            }
            mClip.x = _loc2_;
            if(!_loc5_)
            {
               mClip.y = _loc3_;
               this.§_-t8§();
            }
            return;
         }
         §§goto(addr75);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setVisibility(param1);
            if(!_loc3_)
            {
               if(!mClip.visible)
               {
                  if(_loc2_)
                  {
                     this.§_-3P§(false);
                  }
               }
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
            if(_loc3_ || _loc2_)
            {
               §§goto(addr40);
            }
            §§goto(addr44);
         }
         addr40:
         if(!param1)
         {
            if(_loc3_)
            {
               addr44:
               this.§_-3P§(false);
            }
         }
      }
   }
}
