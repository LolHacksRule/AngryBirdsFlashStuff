package §'"!§
{
   import §!""§.§]H§;
   import §2u§.§,6§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import com.rovio.assets.§=!V§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §-!g§ extends §<!7§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §+O§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §'!F§:String = "Out";
      
      public static const §@!+§:String = "Over";
      
      public static const §>!U§:String = "Up_Default";
      
      public static const §&j§:String = "Down";
      
      public static var §1Y§:Class;
      
      public static var §6!^§:Boolean = true;
      
      public static const §8-§:String = "Tooltip";
      
      public static var §,!c§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            loop0:
            while(true)
            {
               §+O§ = "Deactive";
               addr126:
               while(true)
               {
                  COMPONENT_STATE_DISABLED = "Disabled";
                  while(true)
                  {
                     §'!F§ = "Out";
                     addr104:
                     while(_loc2_)
                     {
                     }
                     addr42:
                     continue loop0;
                     if(_loc2_ || §-!g§)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §@!+§ = "Over";
            while(true)
            {
               §>!U§ = "Up_Default";
               loop6:
               while(_loc2_)
               {
                  §&j§ = "Down";
                  while(true)
                  {
                     §6!^§ = true;
                     loop8:
                     while(true)
                     {
                        §8-§ = "Tooltip";
                        while(true)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr126);
                                 }
                                 break;
                              }
                              continue loop6;
                           }
                           continue loop8;
                        }
                        §§goto(addr104);
                     }
                     if(!(_loc2_ || §-!g§))
                     {
                        continue;
                     }
                     §§goto(addr42);
                  }
               }
            }
         }
      }
      
      public var §@!x§:String;
      
      public var §<!m§:String;
      
      public var §[!O§:String;
      
      public var §"i§:MovieClip;
      
      public var §]!W§:int = 6;
      
      private var §`" §:Boolean = false;
      
      private var §=B§:String = "auto";
      
      private var §9s§:§]W§;
      
      public function §-!g§(param1:XML, param2:§,6§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:Array = null;
         if(!_loc6_)
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               this.§@!x§ = COMPONENT_STATE_ACTIVE_DEFAULT;
               while(true)
               {
                  this.§<!m§ = §>!U§;
                  while(true)
                  {
                     this.§ !Q§();
                     addr86:
                     while(true)
                     {
                        addr67:
                        while(true)
                        {
                           this.§3!§(param1.@Tooltip);
                        }
                     }
                     §§goto(addr56);
                  }
                  addr39:
                  if(!(_loc7_ || param1))
                  {
                     continue;
                  }
                  this.§`" § = true;
                  addr49:
                  if(_loc7_ || param1)
                  {
                     addr56:
                     if(!(_loc6_ && param2))
                     {
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                        if(false)
                        {
                           §§goto(addr67);
                        }
                        var _loc4_:String;
                        if(_loc4_ = param1.@cursor.toString().toLowerCase())
                        {
                           if(_loc7_)
                           {
                              if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
                              {
                                 if(_loc7_)
                                 {
                                    this.§=B§ = _loc4_;
                                 }
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr158);
                        }
                        addr136:
                     }
                     continue loop2;
                     §^1§(§]'§,param1.@MouseOver);
                     if(_loc7_ || param3)
                     {
                        addr158:
                        §^1§(§<!H§,param1.@MouseOut);
                     }
                     return;
                  }
                  while(param1.@Toggle.toString().toUpperCase() == "TRUE")
                  {
                     if(_loc7_ || param2)
                     {
                        if(_loc7_)
                        {
                           §§goto(addr39);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr49);
                  }
                  §§goto(addr103);
               }
            }
         }
         §§goto(addr82);
      }
      
      public static function §2!F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1Y§ = §=!V§.§?!O§(§8-§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.setActiveStatus(param1);
         }
         while(!param1)
         {
            if(_loc2_ && _loc3_)
            {
               break;
            }
            addr64:
            if(!_loc3_)
            {
               continue;
            }
            this.setComponentVisualState(§'!F§);
            §§goto(addr64);
         }
      }
      
      public function §3!§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[!O§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§[!O§);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    this.§[!O§ = null;
                                 }
                                 while(_loc2_)
                                 {
                                 }
                                 continue loop0;
                                 addr172:
                              }
                              while(true)
                              {
                                 §§push(this.§[!O§);
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(§6!^§);
                                             if(!(_loc2_ || param1))
                                             {
                                                continue loop3;
                                             }
                                             if(_loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §6!^§ = false;
                                                      addr149:
                                                      addr194:
                                                      while(!_loc3_)
                                                      {
                                                         §2!F§();
                                                         while(_loc2_ || param1)
                                                         {
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§[!O§);
                                                         continue loop2;
                                                      }
                                                   }
                                                   addr146:
                                                }
                                                while(true)
                                                {
                                                   this.§"i§ = new MovieClip();
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(!§1Y§)
                                                         {
                                                            this.§#-§();
                                                            loop11:
                                                            while(true)
                                                            {
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     addr103:
                                                                     while(true)
                                                                     {
                                                                        this.§-9§();
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§"i§.mouseEnabled = false;
                                                                  continue loop11;
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr103);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr146);
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                }
                                                addr193:
                                             }
                                             §§goto(addr194);
                                          }
                                          else
                                          {
                                             §§goto(addr172);
                                          }
                                       }
                                       §§goto(addr149);
                                    }
                                    break;
                                 }
                                 continue loop2;
                              }
                              return;
                           }
                        }
                        continue;
                        addr165:
                     }
                  }
                  §§goto(addr193);
               }
            }
         }
         §§goto(addr89);
      }
      
      private function §#-§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§"i§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(_loc3_ || _loc3_)
         {
            _loc1_.name = "Text";
            if(!(_loc4_ && _loc1_))
            {
               addr53:
               this.§"i§.addChild(_loc1_);
            }
            var _loc2_:Shape = new Shape();
            if(!_loc4_)
            {
               _loc2_.name = "Base";
            }
            do
            {
               this.§"i§.addChildAt(_loc2_,0);
               do
               {
                  this.§3!'§(this.§[!O§);
               }
               while(_loc4_ && _loc1_);
               
            }
            while(!(_loc3_ || _loc2_));
            
            return;
         }
         §§goto(addr53);
      }
      
      private function §-9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§"i§ = new §1Y§();
         }
         do
         {
            this.§4!o§(this.§[!O§);
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function §4!o§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§[!O§ = param1;
            do
            {
               if(!§1Y§)
               {
                  this.§3!'§(param1);
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc3_ || _loc3_)
                  {
                     addr25:
                     return;
                     addr59:
                  }
               }
               this.§,O§(param1);
            }
            while(_loc2_ && _loc3_);
            
            §§goto(addr25);
         }
         §§goto(addr59);
      }
      
      private function §,O§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§"i§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§"i§.getChildByName("Base") as MovieClip;
         if(!(_loc7_ && _loc3_))
         {
            _loc2_.text = this.§[!O§;
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
            if(!(_loc7_ && _loc3_))
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
         if(!_loc7_)
         {
            _loc3_.scaleX = _loc4_ / _loc3_.width;
            if(!_loc7_)
            {
               addr105:
               _loc3_.x = 0;
            }
            var _loc5_:int = 0;
            while(true)
            {
               if(_loc5_ >= _loc3_.numChildren)
               {
                  if(_loc6_)
                  {
                     if(!_loc6_)
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                        break;
                     }
                     _loc5_++;
                     continue;
                     addr156:
                  }
                  break;
               }
               _loc3_.getChildAt(0).x = 0;
               §§goto(addr156);
            }
            return;
         }
         §§goto(addr105);
      }
      
      private function §3!'§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:TextField = this.§"i§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(_loc5_ || _loc2_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            loop0:
            while(true)
            {
               _loc3_.bold = true;
               loop1:
               while(true)
               {
                  _loc3_.size = 12;
                  while(true)
                  {
                     if(_loc6_)
                     {
                        break;
                        addr129:
                     }
                     _loc2_.defaultTextFormat = _loc3_;
                     while(_loc5_)
                     {
                     }
                     continue loop1;
                     addr61:
                     if(_loc6_ && _loc2_)
                     {
                        continue;
                     }
                     if(false)
                     {
                        loop10:
                        while(true)
                        {
                           _loc2_.selectable = false;
                           loop11:
                           while(_loc5_)
                           {
                              _loc2_.mouseEnabled = false;
                              if(_loc6_ && this)
                              {
                                 continue;
                              }
                              addr47:
                              if(_loc5_ || _loc2_)
                              {
                                 addr54:
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    break loop10;
                                 }
                                 §§goto(addr61);
                              }
                              while(true)
                              {
                                 _loc2_.textColor = 0;
                                 break loop11;
                                 §§goto(addr47);
                              }
                           }
                           addr81:
                           addr117:
                           while(_loc5_ || param1)
                           {
                              continue loop10;
                           }
                           while(true)
                           {
                              _loc2_.height = _loc2_.textHeight * 1.25;
                              break loop10;
                              §§goto(addr81);
                           }
                        }
                        while(!(_loc6_ && _loc2_))
                        {
                           _loc2_.width = _loc2_.textWidth * 1.25;
                           §§goto(addr96);
                           §§goto(addr54);
                        }
                        while(_loc5_)
                        {
                           _loc2_.text = this.§[!O§;
                           §§goto(addr117);
                           §§goto(addr104);
                        }
                        addr104:
                        §§goto(addr129);
                        addr122:
                     }
                     var _loc4_:Shape;
                     (_loc4_ = this.§"i§.getChildByName("Base") as Shape).graphics.clear();
                     if(!_loc6_)
                     {
                        _loc4_.graphics.lineStyle(1);
                        _loc4_.graphics.beginFill(0,1);
                        _loc4_.graphics.drawRect(-this.§]!W§,-this.§]!W§,_loc2_.width + 2 * this.§]!W§,_loc2_.height + 2 * this.§]!W§);
                        addr282:
                        if(!(_loc6_ && _loc3_))
                        {
                           _loc4_.graphics.beginFill(16777215,1);
                           _loc4_.graphics.drawRect(-this.§]!W§ / 2,-(this.§]!W§ / 2),_loc2_.width + 1 * this.§]!W§,_loc2_.height + 1 * this.§]!W§);
                           if(!(_loc6_ && _loc3_))
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 if(_loc6_ && param1)
                                 {
                                    §§goto(addr282);
                                 }
                                 return;
                                 addr226:
                              }
                              §§goto(addr282);
                           }
                           addr233:
                           §§goto(addr233);
                        }
                        addr287:
                        §§goto(addr287);
                     }
                     §§goto(addr226);
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc2_.border = false;
            §§goto(addr122);
         }
      }
      
      private function §^k§(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!_loc5_)
         {
            §§push(!this.§"i§);
            if(_loc4_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              §§push(this.§[!O§);
                              loop9:
                              while(true)
                              {
                                 §§push(§§pop() == null);
                                 addr132:
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
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   addr89:
                                                   while(true)
                                                   {
                                                      §§push(this.§[!O§);
                                                      if(!(_loc4_ || _loc2_))
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§push(§§pop().length == 0);
                                                   }
                                                   continue loop9;
                                                   addr119:
                                                   if(!(_loc4_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   addr25:
                                                   §§push(param1);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr34:
                                                      if(_loc5_ && param1)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§goto(addr111);
                                                               }
                                                               §§goto(addr119);
                                                            }
                                                            §§goto(addr25);
                                                            §§goto(addr34);
                                                         }
                                                         addr49:
                                                         if(!(_loc5_ && this))
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop2;
                                                         addr103:
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         §§goto(addr166);
                                                      }
                                                   }
                                                   §§goto(addr49);
                                                }
                                             }
                                             addr166:
                                             §§goto(addr165);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr103);
                                          }
                                          addr165:
                                          if(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                break loop8;
                                             }
                                          }
                                          else
                                          {
                                             this.§"i§.visible = false;
                                          }
                                          return;
                                       }
                                    }
                                 }
                              }
                           }
                           break;
                        }
                        _loc2_ = mClip.getRect(getParentView());
                        if(!_loc5_)
                        {
                           this.§"i§.y = _loc2_.y - this.§"i§.height - this.§]!W§;
                           if(!_loc5_)
                           {
                              addr201:
                              this.§"i§.x = _loc2_.x + mClip.width / 2 - this.§"i§.width / 2;
                           }
                           _loc3_ = this.§"i§.getRect(mClip.stage);
                           if(_loc4_ || param1)
                           {
                              if(_loc3_.right > mClip.stage.stageWidth - this.§]!W§)
                              {
                                 while(true)
                                 {
                                    this.§"i§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§]!W§));
                                    addr382:
                                    while(true)
                                    {
                                    }
                                    addr256:
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    this.§"i§.y += mClip.height + this.§"i§.height + this.§]!W§ * 2;
                                    loop18:
                                    while(_loc4_)
                                    {
                                       while(true)
                                       {
                                          addr232:
                                          addr239:
                                          while(true)
                                          {
                                             this.§"i§.visible = true;
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             continue loop18;
                                          }
                                          if(false)
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                if(_loc3_.top < this.§]!W§)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop18;
                                                   }
                                                   addr249:
                                                   if(_loc4_ || this)
                                                   {
                                                      §§goto(addr256);
                                                   }
                                                   else
                                                   {
                                                      while(!_loc5_)
                                                      {
                                                         continue loop17;
                                                         §§goto(addr249);
                                                      }
                                                      §§goto(addr382);
                                                      addr321:
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr232);
                                                }
                                             }
                                             addr241:
                                          }
                                          §§goto(addr166);
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§"i§.x += 1 + (this.§]!W§ - _loc3_.left);
                                       while(true)
                                       {
                                          addr284:
                                          while(true)
                                          {
                                             if(_loc3_.bottom > mClip.stage.stageHeight - this.§]!W§)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(!(_loc4_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   this.§"i§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§]!W§));
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr241);
                                          }
                                       }
                                    }
                                    addr330:
                                 }
                              }
                              while(true)
                              {
                                 if(_loc3_.left < this.§]!W§)
                                 {
                                    §§goto(addr330);
                                 }
                                 §§goto(addr284);
                                 §§goto(addr382);
                              }
                           }
                           §§goto(addr283);
                        }
                        §§goto(addr201);
                        addr153:
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr132);
               }
            }
            §§goto(addr153);
         }
         addr111:
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§@!x§ = COMPONENT_STATE_DISABLED;
         }
         loop0:
         while(this.§"i§)
         {
            if(!_loc2_)
            {
               this.§[!O§ = null;
            }
            if(!(_loc2_ && _loc1_))
            {
               while(true)
               {
                  if(this.§"i§.numChildren > 0)
                  {
                     this.§"i§.removeChildAt(0);
                     continue;
                  }
                  if(!_loc2_)
                  {
                     if(this.§"i§.parent)
                     {
                        addr82:
                        while(true)
                        {
                           this.§"i§.parent.removeChild(this.§"i§);
                           addr88:
                           while(true)
                           {
                           }
                        }
                        addr82:
                     }
                     while(true)
                     {
                        this.§"i§ = null;
                        addr67:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              break loop0;
                           }
                           break;
                        }
                        §§goto(addr88);
                     }
                     addr45:
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr82);
               }
               return;
            }
         }
         while(true)
         {
            super.clear();
            if(!(_loc2_ && _loc2_))
            {
               if(_loc1_ || this)
               {
                  §§goto(addr45);
               }
               §§goto(addr82);
            }
            §§goto(addr67);
         }
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§@!x§ = param1;
         }
         do
         {
            this.§ !Q§();
         }
         while(_loc2_ && param1);
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(Boolean(§5!+§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr242:
                     while(true)
                     {
                        §§push(Boolean(§'!9§));
                        if(_loc2_)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§push(param1);
                        loop5:
                        while(true)
                        {
                           §§push(§@!+§);
                           loop6:
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 §§push(param1);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(§'!F§);
                                    if(!(_loc2_ && param1))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          §§goto(addr127);
                                       }
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop5;
                              }
                              if(!(_loc2_ && param1))
                              {
                                 §§push(this.§9s§);
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(null);
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(this.§9s§);
                                             addr235:
                                             while(true)
                                             {
                                                §§pop().stop();
                                                addr236:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr223:
                                       }
                                       while(true)
                                       {
                                          this.§9s§ = §0!o§.§,2§.§4!t§(mClip,{
                                             "scaleX":§'!9§.scaleX + 0.1,
                                             "scaleY":§'!9§.scaleY + 0.1
                                          },null,0.1);
                                          addr190:
                                          while(_loc3_)
                                          {
                                             §§push(this.§9s§);
                                             while(_loc3_ || param1)
                                             {
                                                §§pop().play();
                                                while(_loc3_ || _loc3_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      break loop6;
                                                   }
                                                }
                                                §§goto(addr223);
                                             }
                                          }
                                          §§goto(addr236);
                                       }
                                       addr136:
                                       §§push(null);
                                       if(!(_loc3_ || this))
                                       {
                                          continue;
                                       }
                                       if(§§pop() != §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(this.§9s§);
                                             addr147:
                                             while(true)
                                             {
                                                §§pop().stop();
                                                addr148:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr145:
                                       }
                                       while(true)
                                       {
                                          this.§9s§ = §0!o§.§,2§.§4!t§(mClip,{
                                             "scaleX":§'!9§.scaleX,
                                             "scaleY":§'!9§.scaleY
                                          },null,0.1);
                                          while(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(this.§9s§);
                                                if(!_loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§pop().play();
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break loop6;
                                                         }
                                                         break;
                                                         addr34:
                                                         if(!(_loc3_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         addr41:
                                                         if(_loc3_ || this)
                                                         {
                                                            return;
                                                            addr48:
                                                         }
                                                         addr127:
                                                         while(true)
                                                         {
                                                            §§push(this.§9s§);
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               §§goto(addr136);
                                                            }
                                                            §§goto(addr147);
                                                            §§goto(addr41);
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr147);
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr148);
                                       }
                                    }
                                 }
                                 §§goto(addr235);
                              }
                              §§goto(addr236);
                              §§goto(addr160);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     this.§<!m§ = param1;
                     for(; _loc3_; this.§ !Q§(),if(_loc2_)
                     {
                        continue;
                     },§§goto(addr34))
                     {
                        if(_loc3_)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr242);
                        }
                        else
                        {
                           §§goto(addr190);
                        }
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr48);
               }
            }
         }
         §§goto(addr169);
      }
      
      public function § !Q§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(mClip == null);
            if(!(_loc4_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     addr32:
                     §§pop();
                     addr48:
                     if(!_loc4_)
                     {
                        §§push(mClip.totalFrames < 2);
                     }
                     §§push(this.§@!x§ + "_");
                     if(!_loc4_)
                     {
                        §§push(this.§<!m§);
                        if(!_loc4_)
                        {
                           addr59:
                           §§push(§§pop() + §§pop());
                           §§push(this.§@!x§);
                        }
                        §§push(§§pop() + "_");
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop() + §>!U§);
                        }
                        var _loc1_:Array = null;
                        if(!(_loc4_ && _loc1_))
                        {
                           if(this.§@!x§ != COMPONENT_STATE_ACTIVE_DEFAULT)
                           {
                              if(!(_loc4_ && _loc1_))
                              {
                                 addr103:
                                 _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§<!m§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §>!U§);
                              }
                           }
                           var _loc2_:int = 0;
                           while(true)
                           {
                              if(_loc2_ >= _loc1_.length)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       addr169:
                                    }
                                    return;
                                 }
                              }
                              else
                              {
                                 if(this.§=M§(_loc1_[_loc2_]))
                                 {
                                    break;
                                 }
                                 _loc2_++;
                              }
                           }
                           if(!_loc4_)
                           {
                              mClip.gotoAndStop(String(_loc1_[_loc2_]));
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr59);
                  }
               }
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     return;
                  }
                  §§goto(addr48);
               }
               §§goto(addr48);
            }
         }
         §§goto(addr32);
      }
      
      private function §=M§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:FrameLabel = null;
         for each(_loc2_ in mClip.currentLabels)
         {
            if(!(_loc6_ && this))
            {
               if(_loc2_.name == param1)
               {
                  if(_loc5_ || this)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]H§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§@!x§ != COMPONENT_STATE_DISABLED)
            {
               while(true)
               {
                  §§push(this.§`" §);
                  if(_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr181:
                           §§goto(addr198);
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              this.§[!h§();
                              addr171:
                              while(true)
                              {
                              }
                              while(true)
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop6;
                                 }
                                 while(true)
                                 {
                                    §§push(param1);
                                    while(_loc3_)
                                    {
                                       if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                       {
                                          loop12:
                                          while(!_loc4_)
                                          {
                                             this.setComponentVisualState(§@!+§);
                                             while(true)
                                             {
                                             }
                                             while(true)
                                             {
                                                if(_loc3_ || param2)
                                                {
                                                   this.setComponentVisualState(§'!F§);
                                                   continue;
                                                }
                                                continue loop12;
                                             }
                                          }
                                          §§goto(addr171);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr114);
                                          §§goto(addr143);
                                       }
                                    }
                                    §§goto(addr161);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr146);
                           §§goto(addr171);
                        }
                     }
                  }
               }
            }
            addr198:
            while(!_loc4_)
            {
               §§push(param1);
               while(true)
               {
                  §§push(§§pop() == LISTENER_EVENT_MOUSE_UP);
                  if(_loc4_)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     continue loop1;
                  }
               }
               continue loop2;
            }
            return null;
         }
         §§goto(addr148);
      }
      
      public function §[!h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§@!x§);
            loop0:
            while(true)
            {
               §§push(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr85:
               addr86:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               this.setComponentState(§-!g§.§+O§);
            }
         }
         §§goto(addr90);
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.setEnabled(param1,param2);
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
         if(!_loc5_)
         {
            if(this.mParentContainer)
            {
               while(true)
               {
                  mParentContainer.mClip.removeChild(mClip);
                  addr130:
                  while(true)
                  {
                  }
               }
               addr126:
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
                           mParentContainer.mClip.addChildAt(mClip,_loc4_);
                           addr102:
                           while(true)
                           {
                           }
                        }
                        addr97:
                     }
                     loop7:
                     while(true)
                     {
                        mClip.x = _loc2_;
                        while(_loc6_)
                        {
                           if(_loc6_)
                           {
                              mClip.y = _loc3_;
                              while(_loc6_ || _loc2_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 continue loop2;
                              }
                              continue loop7;
                              addr74:
                           }
                           continue loop3;
                           if(_loc5_)
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 return;
                                 addr69:
                              }
                              §§goto(addr126);
                           }
                           else
                           {
                              §§goto(addr97);
                           }
                        }
                        continue loop4;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§ !Q§();
            if(!(_loc5_ && param1))
            {
               §§goto(addr53);
            }
            §§goto(addr74);
         }
         §§goto(addr69);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super.setVisibility(param1);
            while(!mClip.visible)
            {
               if(_loc2_)
               {
                  this.§^k§(false);
               }
               if(_loc2_ || param1)
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
         if(!(_loc3_ && this))
         {
            super.onParentVisibilityChange(param1);
            while(!param1)
            {
               if(!(_loc2_ || param1))
               {
                  break;
               }
               addr68:
               if(_loc3_ && param1)
               {
                  continue;
               }
               addr65:
               this.§^k§(false);
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr65);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§9s§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr64:
                     this.§9s§.stop();
                     addr65:
                     while(true)
                     {
                     }
                     addr65:
                  }
                  §§goto(addr65);
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr65);
               }
               return;
            }
         }
         §§goto(addr64);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§9s§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr70:
                     this.§9s§.stop();
                     addr71:
                     while(true)
                     {
                     }
                     addr71:
                  }
                  §§goto(addr71);
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr71);
               }
               return;
            }
         }
         §§goto(addr70);
      }
   }
}
