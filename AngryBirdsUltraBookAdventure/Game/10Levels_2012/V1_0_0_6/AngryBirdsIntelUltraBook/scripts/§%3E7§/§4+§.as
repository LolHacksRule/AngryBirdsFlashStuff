package §>7§
{
   import §1!E§.§#?§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §4+§ extends §&! §
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §2v§:String = "Deactive";
      
      public static const § !M§:String = "Disabled";
      
      public static const §>&§:String = "Out";
      
      public static const §9!C§:String = "Over";
      
      public static const §5!S§:String = "Up_Default";
      
      public static const §2K§:String = "Down";
      
      public static var §%!"§:Class;
      
      public static var §!!0§:Boolean = true;
      
      public static const §[!U§:String = "Tooltip";
      
      public static var §`!^§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            loop0:
            while(true)
            {
               §2v§ = "Deactive";
               while(true)
               {
                  § !M§ = "Disabled";
                  addr111:
                  while(true)
                  {
                     §>&§ = "Out";
                     addr106:
                     while(true)
                     {
                        §9!C§ = "Over";
                     }
                  }
                  addr74:
                  if(!(_loc2_ || §4+§))
                  {
                     continue;
                  }
                  §!!0§ = true;
                  loop7:
                  while(_loc2_)
                  {
                     §[!U§ = "Tooltip";
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(_loc2_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop7;
                     }
                     loop6:
                     while(true)
                     {
                        if(!(_loc1_ && §4+§))
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr74);
                        }
                        addr101:
                        while(true)
                        {
                           §5!S§ = "Up_Default";
                           §§goto(addr96);
                           continue loop6;
                        }
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr106);
               }
            }
         }
         §§goto(addr101);
      }
      
      public var §8!j§:String;
      
      public var §8!t§:String;
      
      public var §!$§:String;
      
      public var §"!&§:MovieClip;
      
      public var §4-§:int = 6;
      
      private var §2n§:Boolean = false;
      
      private var §4!>§:String = "auto";
      
      public function §4+§(param1:XML, param2:§#?§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               this.§8!j§ = COMPONENT_STATE_ACTIVE_DEFAULT;
               while(true)
               {
                  this.§8!t§ = §5!S§;
                  loop2:
                  while(true)
                  {
                     this.§2!]§();
                     loop3:
                     while(true)
                     {
                        addr56:
                        while(true)
                        {
                           this.§]!P§(param1.@Tooltip);
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     continue loop0;
                  }
                  this.§2n§ = true;
                  §§goto(addr47);
               }
            }
         }
         while(true)
         {
            if(false)
            {
               §§goto(addr56);
            }
            §§goto(addr99);
         }
      }
      
      public static function §5!M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §%!"§ = §`!t§.§=J§(§[!U§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setActiveStatus(param1);
         }
         while(!param1)
         {
            if(_loc3_ || _loc2_)
            {
               this.setComponentVisualState(§>&§);
            }
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function §]!P§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§!$§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§!$§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr211:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr214:
                           while(true)
                           {
                              §§push(this.§!$§);
                              while(true)
                              {
                                 §§push(§§pop().length == 0);
                                 addr136:
                                 while(true)
                                 {
                                    §§push(this.§!$§);
                                    if(_loc3_ && this)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        addr213:
                     }
                     while(true)
                     {
                        addr202:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§!$§ = null;
                                 addr206:
                                 while(true)
                                 {
                                 }
                              }
                              addr203:
                           }
                           §§goto(addr136);
                        }
                     }
                  }
               }
               loop11:
               while(true)
               {
                  if(_loc2_ || this)
                  {
                     §§push(§!!0§);
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           if(!(_loc3_ && param1))
                           {
                              if(§§pop())
                              {
                                 loop12:
                                 for(; !(_loc3_ && param1); if(_loc3_ && _loc3_)
                                 {
                                    continue;
                                 },this.§1b§(),§§goto(addr114))
                                 {
                                    §!!0§ = false;
                                    loop13:
                                    while(true)
                                    {
                                       §5!M§();
                                       addr131:
                                       loop14:
                                       for(; !_loc3_; if(!(_loc2_ || param1))
                                       {
                                          continue;
                                       },§§goto(addr24))
                                       {
                                          if(!_loc3_)
                                          {
                                             while(true)
                                             {
                                                this.§"!&§ = new MovieClip();
                                                while(true)
                                                {
                                                   if(§%!"§)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      continue loop13;
                                                   }
                                                   this.§0!T§();
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      loop23:
                                                      while(true)
                                                      {
                                                         addr74:
                                                         loop18:
                                                         while(true)
                                                         {
                                                            this.§"!&§.mouseEnabled = false;
                                                            while(true)
                                                            {
                                                               this.§"!&§.mouseChildren = false;
                                                               for(; !_loc3_; this.§"!&§.visible = false,do
                                                               {
                                                                  getParentView().addChild(this.§"!&§);
                                                               }
                                                               while(!(_loc2_ || param1));
                                                               ,if(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     break loop18;
                                                                  }
                                                                  continue loop22;
                                                               })
                                                               {
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                            }
                                                            continue loop23;
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                }
                                             }
                                             addr122:
                                          }
                                          §§goto(addr203);
                                       }
                                       continue loop11;
                                    }
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr211);
                        }
                        §§goto(addr213);
                     }
                     break;
                  }
                  continue loop0;
               }
               §§goto(addr202);
            }
         }
         §§goto(addr89);
      }
      
      private function §0!T§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§"!&§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.name = "Text";
            if(_loc4_ || this)
            {
               this.§"!&§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(_loc4_ || _loc2_)
         {
            _loc2_.name = "Base";
            while(true)
            {
               this.§"!&§.addChildAt(_loc2_,0);
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§0!G§(this.§!$§);
                     if(_loc4_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr110);
      }
      
      private function §1b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"!&§ = new §%!"§();
            do
            {
               this.§ !1§(this.§!$§);
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function § !1§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§!$§ = param1;
            do
            {
               if(!§%!"§)
               {
                  this.§0!G§(param1);
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr73:
                  }
               }
               continue;
               return;
            }
            while(!_loc3_);
            
         }
         this.§>=§(param1);
         §§goto(addr73);
      }
      
      private function §>=§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§"!&§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§"!&§.getChildByName("Base") as MovieClip;
         if(!_loc7_)
         {
            _loc2_.text = this.§!$§;
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
               while(!_loc6_);
               
               if(_loc7_ && _loc3_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
               if(_loc6_)
               {
                  _loc3_.scaleX = _loc4_ / _loc3_.width;
                  if(!_loc7_)
                  {
                     addr95:
                     _loc3_.x = 0;
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
                        if(!_loc6_)
                        {
                           continue;
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
                  return;
               }
               §§goto(addr95);
            }
         }
      }
      
      private function §0!G§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§"!&§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(_loc6_)
         {
            _loc3_.align = TextAlign.CENTER;
            loop0:
            while(true)
            {
               _loc3_.bold = true;
               while(true)
               {
                  _loc3_.size = 12;
                  while(true)
                  {
                     _loc2_.defaultTextFormat = _loc3_;
                     loop3:
                     while(true)
                     {
                        _loc2_.border = false;
                        while(_loc6_)
                        {
                           _loc2_.text = this.§!$§;
                           loop5:
                           while(!(_loc5_ && _loc3_))
                           {
                              _loc2_.height = _loc2_.textHeight * 1.25;
                              loop6:
                              while(true)
                              {
                                 _loc2_.width = _loc2_.textWidth * 1.25;
                                 while(_loc6_)
                                 {
                                    _loc2_.textColor = 0;
                                    while(!_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          addr44:
                                          do
                                          {
                                             _loc2_.selectable = false;
                                             continue loop3;
                                          }
                                          while(false);
                                          
                                          var _loc4_:Shape;
                                          (_loc4_ = this.§"!&§.getChildByName("Base") as Shape).graphics.clear();
                                          if(_loc6_)
                                          {
                                             _loc4_.graphics.lineStyle(1);
                                             while(true)
                                             {
                                                _loc4_.graphics.beginFill(0,1);
                                                addr248:
                                                while(true)
                                                {
                                                   _loc4_.graphics.drawRect(-this.§4-§,-this.§4-§,_loc2_.width + 2 * this.§4-§,_loc2_.height + 2 * this.§4-§);
                                                   addr188:
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      return;
                                                      addr195:
                                                   }
                                                }
                                             }
                                             addr253:
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             _loc4_.graphics.beginFill(16777215,1);
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop14;
                                                }
                                                if(_loc6_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr253);
                                             }
                                             §§goto(addr248);
                                          }
                                          §§goto(addr195);
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      private function §3+§(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!_loc5_)
         {
            §§push(!this.§"!&§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this.§!$§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              continue loop0;
                              loop9:
                              while(true)
                              {
                                 §§push(this.§!$§);
                                 if(!(_loc4_ || param1))
                                 {
                                    continue loop3;
                                 }
                                 §§push(§§pop().length == 0);
                                 if(_loc4_ || param1)
                                 {
                                    loop10:
                                    while(!§§pop())
                                    {
                                       §§push(param1);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc4_)
                                                {
                                                   while(!(_loc5_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         continue loop10;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                      }
                                                   }
                                                   continue loop1;
                                                   addr126:
                                                }
                                                if(§§pop())
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      addr55:
                                                      if(!_loc4_)
                                                      {
                                                         break loop9;
                                                      }
                                                      §§pop();
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         if(!(_loc4_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(false)
                                                            {
                                                               continue loop9;
                                                            }
                                                            §§push(§`!^§);
                                                            if(!_loc4_)
                                                            {
                                                            }
                                                            §§goto(addr151);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop3;
                                                            addr135:
                                                         }
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                   §§goto(addr151);
                                                }
                                                addr151:
                                                if(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      addr154:
                                                      _loc2_ = mClip.getRect(getParentView());
                                                      if(!_loc5_)
                                                      {
                                                         this.§"!&§.y = _loc2_.y - this.§"!&§.height - this.§4-§;
                                                         if(_loc4_)
                                                         {
                                                            addr186:
                                                            this.§"!&§.x = _loc2_.x + mClip.width / 2 - this.§"!&§.width / 2;
                                                         }
                                                         _loc3_ = this.§"!&§.getRect(mClip.stage);
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc3_.right > mClip.stage.stageWidth - this.§4-§)
                                                            {
                                                               addr344:
                                                               this.§"!&§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§4-§));
                                                               addr362:
                                                            }
                                                            if(_loc3_.left < this.§4-§)
                                                            {
                                                               addr308:
                                                               this.§"!&§.x += 1 + (this.§4-§ - _loc3_.left);
                                                               if(_loc4_)
                                                               {
                                                                  addr266:
                                                                  if(_loc3_.bottom > mClip.stage.stageHeight - this.§4-§)
                                                                  {
                                                                     addr276:
                                                                     this.§"!&§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§4-§));
                                                                     addr294:
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        addr227:
                                                                        if(_loc3_.top < this.§4-§)
                                                                        {
                                                                           addr233:
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              this.§"!&§.y += mClip.height + this.§"!&§.height + this.§4-§ * 2;
                                                                              addr258:
                                                                              if(_loc4_ || param1)
                                                                              {
                                                                                 addr212:
                                                                                 this.§"!&§.visible = true;
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr227);
                                                                                             }
                                                                                             §§goto(addr368);
                                                                                          }
                                                                                          §§goto(addr308);
                                                                                       }
                                                                                       §§goto(addr294);
                                                                                    }
                                                                                    §§goto(addr233);
                                                                                 }
                                                                                 §§goto(addr258);
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                           §§goto(addr308);
                                                                        }
                                                                        §§goto(addr212);
                                                                        addr301:
                                                                     }
                                                                     §§goto(addr362);
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                               §§goto(addr344);
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         §§goto(addr301);
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                }
                                                else
                                                {
                                                   this.§"!&§.visible = false;
                                                }
                                                addr368:
                                                return;
                                                §§goto(addr135);
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr55);
                                       }
                                       §§goto(addr151);
                                    }
                                    return;
                                 }
                                 §§goto(addr151);
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        §§goto(addr126);
                     }
                     addr124:
                  }
                  §§goto(addr151);
               }
            }
         }
         §§goto(addr368);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§"!&§)
            {
               if(_loc2_ || _loc1_)
               {
                  addr113:
                  this.§!$§ = null;
               }
               loop0:
               while(true)
               {
                  if(this.§"!&§.numChildren > 0)
                  {
                     this.§"!&§.removeChildAt(0);
                     continue;
                  }
                  loop1:
                  while(true)
                  {
                     if(this.§"!&§.parent)
                     {
                        loop2:
                        while(_loc2_)
                        {
                           this.§"!&§.parent.removeChild(this.§"!&§);
                           while(true)
                           {
                              addr34:
                              if(_loc2_ || this)
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    return;
                                    addr58:
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        this.§"!&§ = null;
                        loop5:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              super.clear();
                              if(!(_loc2_ || this))
                              {
                                 continue loop5;
                              }
                              §§goto(addr34);
                           }
                           §§goto(addr58);
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr113);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8!j§ = param1;
            do
            {
               this.§2!]§();
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§8!t§ = param1;
            do
            {
               this.§2!]§();
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      public function §2!]§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(mClip.totalFrames < 2)
            {
               if(!(_loc4_ && _loc3_))
               {
                  return;
               }
            }
         }
         var _loc1_:Array = new Array(this.§8!j§ + "_" + this.§8!t§,this.§8!j§ + "_" + §5!S§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§8!t§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §5!S§);
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
                     if(_loc4_)
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
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§8!j§ != § !M§)
            {
               loop0:
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  addr223:
                  loop1:
                  while(true)
                  {
                     §§push(this.§2n§);
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc3_)
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
                                       this.§,c§();
                                       addr205:
                                       while(_loc4_)
                                       {
                                       }
                                       continue loop1;
                                    }
                                    addr203:
                                 }
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop7:
                                    for(; _loc4_; loop15:
                                    for(; !(_loc3_ && param1); while(true)
                                    {
                                       §§push(param1);
                                       if(!(_loc3_ && param2))
                                       {
                                          if(!_loc3_)
                                          {
                                             if(§§pop() == §"!n§)
                                             {
                                                §§goto(addr74);
                                             }
                                             §§goto(addr24);
                                          }
                                          break;
                                       }
                                       continue loop15;
                                    },§§goto(addr148))
                                    {
                                       if(§§pop() != §^v§)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          Mouse.cursor = MouseCursor.AUTO;
                                          while(!(_loc3_ && this))
                                          {
                                             this.setComponentVisualState(§>&§);
                                             while(_loc4_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr203);
                                             }
                                          }
                                          §§goto(addr153);
                                          addr53:
                                          if(_loc3_ && param1)
                                          {
                                             continue;
                                          }
                                          loop23:
                                          while(true)
                                          {
                                             this.§3+§(param1 == §"!n§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(_loc4_)
                                                {
                                                   §§goto(addr39);
                                                }
                                                else
                                                {
                                                   loop21:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(_loc3_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         this.setComponentVisualState(§9!C§);
                                                         while(_loc4_)
                                                         {
                                                            §§goto(addr53);
                                                            continue loop23;
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc4_ || param2)
                                                            {
                                                               if(!(_loc4_ || this))
                                                               {
                                                                  break;
                                                               }
                                                               Mouse.cursor = this.§4!>§;
                                                               continue loop21;
                                                            }
                                                            §§goto(addr150);
                                                         }
                                                         loop25:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            break loop7;
                                                            addr216:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop25;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr116);
                                                      }
                                                      §§goto(addr153);
                                                   }
                                                   §§goto(addr163);
                                                }
                                             }
                                             §§goto(addr51);
                                          }
                                       }
                                    })
                                    {
                                       if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                       {
                                          while(true)
                                          {
                                             this.setComponentVisualState(§2K§);
                                             addr163:
                                             while(_loc4_ || param1)
                                             {
                                                if(_loc3_ && this)
                                                {
                                                   §§goto(addr228);
                                                }
                                             }
                                             §§goto(addr205);
                                             addr39:
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                return;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(param1);
                                          addr148:
                                          while(true)
                                          {
                                             if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                             {
                                                while(true)
                                                {
                                                   this.setComponentVisualState(§9!C§);
                                                   addr153:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr150:
                                             }
                                             while(true)
                                             {
                                                §§push(param1);
                                                continue loop7;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                                       if(!_loc3_)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              addr201:
                           }
                        }
                        §§goto(addr216);
                     }
                  }
               }
            }
            addr228:
            return;
         }
         §§goto(addr223);
      }
      
      public function §,c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§8!j§);
            loop0:
            while(true)
            {
               §§push(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr78:
               addr19:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc1_)
                     {
                        this.setComponentState(§4+§.§2v§);
                     }
                     break;
                     addr85:
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr62);
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
            if(this.mParentContainer)
            {
               while(true)
               {
                  mParentContainer.mClip.removeChild(mClip);
                  addr139:
                  while(true)
                  {
                  }
               }
               addr135:
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
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              continue loop3;
                           }
                           if(_loc5_)
                           {
                              mParentContainer.mClip.addChildAt(mClip,_loc4_);
                              while(true)
                              {
                              }
                              addr121:
                           }
                           else
                           {
                              §§goto(addr135);
                           }
                           addr66:
                           if(!(_loc6_ && _loc3_))
                           {
                              continue loop4;
                           }
                        }
                        continue loop2;
                     }
                     while(true)
                     {
                        mClip.x = _loc2_;
                        do
                        {
                           mClip.y = _loc3_;
                           do
                           {
                              this.§2!]§();
                           }
                           while(_loc6_);
                           
                        }
                        while(!_loc5_);
                        
                        if(_loc6_)
                        {
                           continue;
                        }
                        §§goto(addr66);
                     }
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.setVisibility(param1);
         }
         while(!mClip.visible)
         {
            if(_loc3_ || _loc2_)
            {
               this.§3+§(false);
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
         if(!_loc2_)
         {
            super.onParentVisibilityChange(param1);
            while(!param1)
            {
               if(_loc2_ && _loc2_)
               {
                  break;
               }
               addr54:
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               addr51:
               this.§3+§(false);
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr51);
      }
   }
}
