package §;"Y§
{
   import §+D§.§ #^§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §<w§.§6#'§;
   import com.rovio.assets.§5_§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §1"z§ extends §]#X§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §4"o§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §5,§:String = "Out";
      
      public static const §%!f§:String = "Over";
      
      public static const §##;§:String = "Up_Default";
      
      public static const §^%§:String = "Down";
      
      public static var §^"7§:Class;
      
      public static var §'#<§:Boolean = true;
      
      public static const §-b§:String = "Tooltip";
      
      public static var §1"o§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            loop0:
            while(true)
            {
               §4"o§ = "Deactive";
               loop1:
               while(true)
               {
                  COMPONENT_STATE_DISABLED = "Disabled";
                  loop2:
                  while(true)
                  {
                     §5,§ = "Out";
                     while(true)
                     {
                        §%!f§ = "Over";
                        addr96:
                        while(_loc1_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                        addr48:
                        if(!(_loc2_ && _loc2_))
                        {
                           while(true)
                           {
                              §1"o§ = true;
                              if(_loc1_)
                              {
                                 break;
                              }
                              loop8:
                              while(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc1_)
                                 {
                                    while(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          §'#<§ = true;
                                          break loop8;
                                       }
                                       §§goto(addr96);
                                    }
                                    continue loop2;
                                    addr75:
                                 }
                                 §§goto(addr48);
                              }
                              while(true)
                              {
                                 §-b§ = "Tooltip";
                                 §§goto(addr39);
                              }
                              addr39:
                           }
                           return;
                           addr55:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public var §^'§:String;
      
      public var §2!B§:String;
      
      public var §#I§:String;
      
      public var §`#<§:MovieClip;
      
      public var §-"5§:int = 6;
      
      private var §2"-§:Boolean = false;
      
      private var §8!k§:String = "auto";
      
      private var §7!a§:§[#R§;
      
      public function §1"z§(param1:XML, param2:§ #^§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:Array = null;
         if(!(_loc6_ && param3))
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               this.§^'§ = COMPONENT_STATE_ACTIVE_DEFAULT;
               loop1:
               while(true)
               {
                  this.§2!B§ = §##;§;
                  addr101:
                  while(true)
                  {
                     this.§%#Q§();
                     continue loop1;
                     addr37:
                     if(_loc7_ || param1)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr70);
         }
      }
      
      public static function §`"E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^"7§ = §5_§.§`"G§(§-b§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.setActiveStatus(param1);
            while(!param1)
            {
               if(_loc2_ && param1)
               {
                  break;
               }
               addr69:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               this.setComponentVisualState(§5,§);
               §§goto(addr69);
            }
            return;
         }
         §§goto(addr69);
      }
      
      public function §=# §(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§#I§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§#I§);
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
                           addr209:
                           while(true)
                           {
                              §§push(this.§#I§);
                              addr174:
                              while(_loc2_)
                              {
                                 §§push(§§pop().length == 0);
                              }
                              continue loop1;
                           }
                        }
                        addr208:
                     }
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 this.§#I§ = null;
                              }
                              while(true)
                              {
                              }
                              addr191:
                           }
                           while(true)
                           {
                              §§push(this.§#I§);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 return;
                              }
                              addr24:
                              loop10:
                              while(true)
                              {
                                 §§push(§'#<§);
                                 if(_loc3_)
                                 {
                                    continue loop7;
                                 }
                                 if(_loc2_ || param1)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §'#<§ = false;
                                          addr168:
                                          loop12:
                                          while(!_loc3_)
                                          {
                                             §`"E§();
                                             while(true)
                                             {
                                                addr134:
                                                loop15:
                                                while(_loc2_ || this)
                                                {
                                                   if(§^"7§)
                                                   {
                                                      while(!_loc3_)
                                                      {
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            this.§,7§();
                                                            loop22:
                                                            while(true)
                                                            {
                                                               addr79:
                                                               while(true)
                                                               {
                                                                  this.§`#<§.mouseEnabled = false;
                                                                  addr84:
                                                                  while(_loc2_ || param1)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        this.§`#<§.mouseChildren = false;
                                                                        continue loop0;
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                                  continue loop22;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr209);
                                                         }
                                                      }
                                                      continue loop10;
                                                      addr117:
                                                   }
                                                   this.§9#2§();
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      §§goto(addr79);
                                                      §§goto(addr84);
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                          }
                                          §§goto(addr191);
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§`#<§ = new MovieClip();
                                       §§goto(addr134);
                                       §§goto(addr145);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr208);
                                 }
                                 §§goto(addr209);
                              }
                              continue loop2;
                           }
                           §§goto(addr174);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            getParentView().addChild(this.§`#<§);
            if(!_loc3_)
            {
               if(!(_loc3_ && this))
               {
                  if(_loc3_ && this)
                  {
                     §§goto(addr168);
                  }
                  §§goto(addr24);
               }
               §§goto(addr117);
            }
            §§goto(addr56);
         }
      }
      
      private function §9#2§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc1_)
         {
            this.§`#<§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.name = "Text";
            if(_loc4_)
            {
               this.§`#<§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(_loc4_ || _loc2_)
         {
            _loc2_.name = "Base";
         }
         do
         {
            this.§`#<§.addChildAt(_loc2_,0);
            do
            {
               this.§?"h§(this.§#I§);
            }
            while(_loc3_);
            
         }
         while(_loc3_);
         
      }
      
      private function §,7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`#<§ = new §^"7§();
         }
         do
         {
            this.§@q§(this.§#I§);
         }
         while(_loc2_ && this);
         
      }
      
      public function §@q§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§#I§ = param1;
            while(true)
            {
               if(!§^"7§)
               {
                  this.§?"h§(param1);
                  if(_loc3_ || this)
                  {
                     §§goto(addr25);
                  }
                  continue;
               }
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
            }
            addr25:
            return;
         }
         while(true)
         {
            this.§ !A§(param1);
            §§goto(addr76);
         }
      }
      
      private function § !A§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§`#<§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§`#<§.getChildByName("Base") as MovieClip;
         if(!_loc7_)
         {
            _loc2_.text = this.§#I§;
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
               while(_loc7_);
               
               if(!_loc6_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
               if(_loc6_ || _loc2_)
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
                           if(_loc7_ && this)
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                              break;
                           }
                           _loc5_++;
                           continue;
                           addr151:
                        }
                        break;
                     }
                     _loc3_.getChildAt(0).x = 0;
                     §§goto(addr151);
                  }
                  return;
               }
               §§goto(addr95);
            }
         }
      }
      
      private function §?"h§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§`#<§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(!_loc5_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            while(true)
            {
               _loc3_.bold = true;
               loop1:
               while(true)
               {
                  _loc3_.size = 12;
                  loop2:
                  while(true)
                  {
                     _loc2_.defaultTextFormat = _loc3_;
                     loop3:
                     while(true)
                     {
                        _loc2_.border = false;
                        while(true)
                        {
                           _loc2_.text = this.§#I§;
                           addr102:
                           while(!_loc5_)
                           {
                              _loc2_.height = _loc2_.textHeight * 1.25;
                           }
                           continue loop1;
                           loop7:
                           while(!(_loc5_ && _loc2_))
                           {
                              if(_loc5_)
                              {
                                 continue loop2;
                              }
                              _loc2_.textColor = 0;
                              loop8:
                              while(true)
                              {
                                 addr60:
                                 while(true)
                                 {
                                    _loc2_.selectable = false;
                                    while(_loc6_)
                                    {
                                       _loc2_.mouseEnabled = false;
                                       if(_loc6_)
                                       {
                                          continue loop8;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue loop7;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      private function §,j§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!_loc4_)
         {
            §§push(!this.§`#<§);
            if(!(_loc4_ && this))
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        if(_loc5_ || param1)
                        {
                           §§push(this.§#I§);
                           loop7:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              addr103:
                              while(true)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop3:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§pop();
                                             if(!_loc4_)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(this.§#I§);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(§§pop().length == 0);
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc4_ && this)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_ || param1)
                                                               {
                                                                  return;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§push(§1"o§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break loop4;
                                                                                 }
                                                                              }
                                                                              addr150:
                                                                              _loc2_ = mClip.getRect(getParentView());
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 this.§`#<§.y = _loc2_.y - this.§`#<§.height - this.§-"5§;
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    this.§`#<§.x = _loc2_.x + mClip.width / 2 - this.§`#<§.width / 2;
                                                                                 }
                                                                              }
                                                                              _loc3_ = this.§`#<§.getRect(mClip.stage);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(_loc3_.right > mClip.stage.stageWidth - this.§-"5§)
                                                                                 {
                                                                                    loop9:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§`#<§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§-"5§));
                                                                                       addr383:
                                                                                       while(true)
                                                                                       {
                                                                                          addr274:
                                                                                          if(!(_loc5_ || this))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§`#<§.visible = true;
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc5_ || param1))
                                                                                                   {
                                                                                                      loop16:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc3_.top < this.§-"5§)
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  addr240:
                                                                                                                  if(_loc5_ || this)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        break loop16;
                                                                                                                     }
                                                                                                                     this.§`#<§.y += mClip.height + this.§`#<§.height + this.§-"5§ * 2;
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  addr292:
                                                                                                               }
                                                                                                               continue loop19;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§`#<§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§-"5§));
                                                                                                                  continue loop16;
                                                                                                                  §§goto(addr240);
                                                                                                               }
                                                                                                               break loop19;
                                                                                                            }
                                                                                                            addr389:
                                                                                                            return;
                                                                                                            addr232:
                                                                                                            addr384:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr324:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§`#<§.x += 1 + (this.§-"5§ - _loc3_.left);
                                                                                                            break loop16;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   §§goto(addr274);
                                                                                                }
                                                                                             }
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr232);
                                                                                             }
                                                                                             §§goto(addr384);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_.left < this.§-"5§)
                                                                                    {
                                                                                       §§goto(addr324);
                                                                                    }
                                                                                    §§goto(addr282);
                                                                                    §§goto(addr383);
                                                                                 }
                                                                              }
                                                                              §§goto(addr281);
                                                                           }
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc5_ || this)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           this.§`#<§.visible = false;
                                                                        }
                                                                        §§goto(addr389);
                                                                     }
                                                                     break loop4;
                                                                  }
                                                                  break loop4;
                                                               }
                                                               addr26:
                                                            }
                                                            §§goto(addr389);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop7;
                                                }
                                                addr141:
                                                §§goto(addr142);
                                                §§push(Boolean(§§pop()));
                                             }
                                             §§goto(addr150);
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr85);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr389);
                     }
                     addr129:
                  }
                  §§goto(addr103);
               }
            }
            §§goto(addr129);
         }
         §§goto(addr26);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^'§ = COMPONENT_STATE_DISABLED;
            loop0:
            while(this.§`#<§)
            {
               if(!_loc2_)
               {
                  this.§#I§ = null;
               }
               if(_loc2_)
               {
                  continue;
               }
               loop8:
               while(true)
               {
                  if(this.§`#<§.numChildren > 0)
                  {
                     this.§`#<§.removeChildAt(0);
                     continue;
                  }
                  while(true)
                  {
                     if(this.§`#<§.parent)
                     {
                        while(true)
                        {
                           this.§`#<§.parent.removeChild(this.§`#<§);
                           addr78:
                           while(true)
                           {
                           }
                        }
                        addr72:
                     }
                     while(true)
                     {
                        this.§`#<§ = null;
                        addr44:
                        addr61:
                        while(_loc2_ && _loc1_)
                        {
                           continue loop8;
                        }
                        break loop0;
                     }
                  }
               }
               addr108:
            }
            while(true)
            {
               super.clear();
               if(_loc1_)
               {
                  if(!_loc2_)
                  {
                     if(_loc1_)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr78);
               }
               §§goto(addr44);
               §§goto(addr61);
            }
            return;
         }
         §§goto(addr108);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§^'§ = param1;
         }
         do
         {
            this.§%#Q§();
         }
         while(!(_loc2_ || param1));
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(§["U§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§push(param1);
                           loop4:
                           while(true)
                           {
                              §§push(§%!f§);
                              loop5:
                              while(§§pop() != §§pop())
                              {
                                 §§push(param1);
                                 if(!_loc3_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(§5,§);
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§7!a§);
                                       if(_loc3_)
                                       {
                                          if(!(_loc2_ && param1))
                                          {
                                             §§push(null);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§push(this.§7!a§);
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(_loc3_ || param1)
                                                            {
                                                               §§pop().stop();
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr167:
                                                                     while(true)
                                                                     {
                                                                        this.§7!a§ = §-#C§.§%!E§.§^!H§(mClip,{
                                                                           "scaleX":§=#B§.scaleX,
                                                                           "scaleY":§=#B§.scaleY
                                                                        },null,0.1);
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§7!a§);
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              §§pop().play();
                                                                              loop15:
                                                                              while(_loc3_)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§2!B§ = param1;
                                                                                       while(_loc3_ || param1)
                                                                                       {
                                                                                          this.§%#Q§();
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                             continue loop15;
                                                                                             continue loop15;
                                                                                          }
                                                                                       }
                                                                                       loop2:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§=#B§));
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr246:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             continue loop2;
                                                                                          }
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    return;
                                                                                    addr58:
                                                                                    addr57:
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                        §§goto(addr167);
                                                                     }
                                                                     addr86:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(!_loc2_)
                                                                     {
                                                                        if(_loc2_ && _loc3_)
                                                                        {
                                                                           break loop5;
                                                                        }
                                                                        §§push(this.§7!a§);
                                                                        while(true)
                                                                        {
                                                                           §§pop().play();
                                                                           addr172:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr58);
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§7!a§);
                                                                        addr240:
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§pop().stop();
                                                                           addr241:
                                                                           while(true)
                                                                           {
                                                                              addr173:
                                                                              while(true)
                                                                              {
                                                                                 this.§7!a§ = §-#C§.§%!E§.§^!H§(mClip,{
                                                                                    "scaleX":§=#B§.scaleX + 0.1,
                                                                                    "scaleY":§=#B§.scaleY + 0.1
                                                                                 },null,0.1);
                                                                                 §§goto(addr193);
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr193:
                                                                     addr228:
                                                                  }
                                                                  §§goto(addr58);
                                                               }
                                                            }
                                                            §§goto(addr171);
                                                         }
                                                         addr157:
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                }
                                                §§goto(addr86);
                                             }
                                             while(true)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr173);
                                             }
                                             addr227:
                                          }
                                          §§goto(addr240);
                                       }
                                       §§goto(addr157);
                                    }
                                 }
                                 §§goto(addr58);
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§7!a§);
                           if(_loc3_)
                           {
                              §§goto(addr227);
                              §§push(null);
                           }
                           §§goto(addr240);
                        }
                     }
                     §§goto(addr58);
                  }
                  addr215:
               }
               §§goto(addr246);
            }
         }
         §§goto(addr58);
      }
      
      public function §%#Q§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(mClip == null);
            if(!(_loc3_ && this))
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     addr38:
                     §§pop();
                     if(!_loc3_)
                     {
                        addr45:
                        if(mClip.totalFrames < 2)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr48);
                           }
                        }
                     }
                     §§push(this.§^'§ + "_");
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(this.§2!B§);
                        if(_loc4_)
                        {
                           addr65:
                           §§push(§§pop() + §§pop());
                           §§push(this.§^'§);
                        }
                        §§push(§§pop() + "_");
                        if(_loc4_)
                        {
                           §§push(§§pop() + §##;§);
                        }
                        var _loc1_:Array = null;
                        if(_loc4_ || _loc3_)
                        {
                           if(this.§^'§ != COMPONENT_STATE_ACTIVE_DEFAULT)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§2!B§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §##;§);
                              }
                           }
                        }
                        var _loc2_:int = 0;
                        while(true)
                        {
                           if(_loc2_ >= _loc1_.length)
                           {
                              if(_loc3_ && _loc2_)
                              {
                                 continue;
                              }
                              if(_loc4_ || _loc1_)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr146);
                              }
                           }
                           if(this.§>!"§(_loc1_[_loc2_]))
                           {
                              break;
                           }
                           _loc2_++;
                           continue;
                           addr146:
                           return;
                        }
                        mClip.gotoAndStop(String(_loc1_[_loc2_]));
                        §§goto(addr180);
                     }
                     §§goto(addr65);
                  }
               }
               §§goto(addr45);
            }
            §§goto(addr38);
         }
         addr48:
      }
      
      private function §>!"§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:FrameLabel = null;
         var _loc3_:int = 0;
         var _loc4_:* = mClip.currentLabels;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(_loc5_ || param1)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §6#'§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§^'§ != COMPONENT_STATE_DISABLED)
            {
               loop0:
               while(true)
               {
                  §§push(this.§2"-§);
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(param1);
                                 while(true)
                                 {
                                    §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                                    if(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc4_ && param2)
                                    {
                                       break;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    addr66:
                                    if(!(_loc3_ || param1))
                                    {
                                       continue;
                                    }
                                    if(§§pop() == §;#V§)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(!_loc4_)
                                          {
                                             Mouse.cursor = this.§8!k§;
                                             loop21:
                                             while(true)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   this.setComponentVisualState(§%!f§);
                                                   continue;
                                                }
                                                addr148:
                                                while(!(_loc4_ && param1))
                                                {
                                                   this.setComponentVisualState(§5,§);
                                                   continue loop21;
                                                }
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   addr131:
                                                   addr158:
                                                   for(; _loc3_ || param1; while(true)
                                                   {
                                                      §§push(param1);
                                                      if(_loc4_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr66);
                                                   })
                                                   {
                                                      if(§§pop() != §<!^§)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         Mouse.cursor = MouseCursor.AUTO;
                                                      }
                                                      §§goto(addr148);
                                                   }
                                                   while(_loc3_ || param1)
                                                   {
                                                      if(§§pop() != LISTENER_EVENT_MOUSE_UP)
                                                      {
                                                         continue loop16;
                                                      }
                                                      §§goto(addr167);
                                                      §§goto(addr131);
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            this.setComponentVisualState(§^%§);
                                                         }
                                                         loop11:
                                                         while(true)
                                                         {
                                                            addr102:
                                                            loop19:
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr121:
                                                                     if(_loc3_ || param2)
                                                                     {
                                                                        §§goto(addr57);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§8!5§();
                                                                           break loop19;
                                                                           §§goto(addr121);
                                                                        }
                                                                        addr203:
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop11;
                                                            }
                                                            while(true)
                                                            {
                                                               addr171:
                                                               while(true)
                                                               {
                                                                  continue loop10;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                             }
                                             addr88:
                                          }
                                          §§goto(addr102);
                                       }
                                       §§goto(addr88);
                                    }
                                    §§goto(addr27);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§goto(addr203);
                           }
                           §§goto(addr171);
                        }
                     }
                  }
               }
            }
            §§goto(addr228);
         }
         §§goto(addr37);
      }
      
      public function §8!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§^'§);
            loop0:
            while(true)
            {
               §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_)
                     {
                        this.setComponentState(§1"z§.§4"o§);
                     }
                     break;
                     addr81:
                  }
                  §§push(this.§^'§);
                  if(_loc2_)
                  {
                     continue;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setEnabled(param1,param2);
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
         if(_loc5_)
         {
            if(this.mParentContainer)
            {
               while(true)
               {
                  mParentContainer.mClip.removeChild(mClip);
                  addr144:
                  while(true)
                  {
                  }
                  addr102:
                  if(_loc6_ && _loc2_)
                  {
                     continue;
                  }
                  mParentContainer.mClip.addChildAt(mClip,_loc4_);
                  loop6:
                  for(; !_loc6_; loop8:
                  while(!(_loc6_ && param1))
                  {
                     if(_loc5_)
                     {
                        loop9:
                        while(true)
                        {
                           mClip.y = _loc3_;
                           addr59:
                           addr95:
                           while(_loc5_ || _loc3_)
                           {
                              this.§%#Q§();
                              if(!(_loc6_ && param1))
                              {
                                 if(_loc5_)
                                 {
                                    break loop9;
                                 }
                                 continue loop8;
                              }
                           }
                           while(true)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 §§goto(addr102);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    mClip = param1;
                                    break loop6;
                                 }
                                 addr136:
                              }
                              §§goto(addr59);
                           }
                           §§goto(addr144);
                        }
                        return;
                        addr90:
                     }
                     §§goto(addr144);
                     while(true)
                     {
                        mClip = null;
                        §§goto(addr136);
                        §§goto(addr144);
                     }
                  })
                  {
                     while(true)
                     {
                        mClip.x = _loc2_;
                        continue loop6;
                     }
                  }
                  while(true)
                  {
                     if(this.mParentContainer)
                     {
                        §§goto(addr95);
                     }
                     §§goto(addr77);
                  }
               }
            }
            §§goto(addr122);
         }
         §§goto(addr90);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setVisibility(param1);
            loop0:
            for(; !mClip.visible; while(true)
            {
               if(!(_loc2_ && this))
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§,j§(false);
            §§goto(addr48);
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
            if(!(_loc2_ || this))
            {
               break;
            }
            addr58:
            if(!_loc2_)
            {
               continue;
            }
            this.§,j§(false);
            §§goto(addr58);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§7!a§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr63:
                  while(true)
                  {
                     §§push(this.§7!a§);
                     addr65:
                     while(true)
                     {
                        §§pop().stop();
                        addr66:
                        while(true)
                        {
                        }
                     }
                  }
                  addr63:
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr63);
               }
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr63);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§7!a§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§7!a§);
                     addr70:
                     while(true)
                     {
                        §§pop().stop();
                        addr71:
                        while(true)
                        {
                        }
                     }
                     addr45:
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     return;
                     addr52:
                  }
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  §§goto(addr45);
               }
               §§goto(addr52);
            }
            §§goto(addr70);
         }
         §§goto(addr71);
      }
   }
}
