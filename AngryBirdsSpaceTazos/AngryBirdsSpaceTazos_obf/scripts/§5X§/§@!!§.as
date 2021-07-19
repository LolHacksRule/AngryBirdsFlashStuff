package §5X§
{
   import §77§.§ ",§;
   import §<W§.§]"+§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import com.rovio.assets.§ !h§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §@!!§ extends §8n§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §else §:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §;!<§:String = "Out";
      
      public static const §[a§:String = "Over";
      
      public static const §%!B§:String = "Up_Default";
      
      public static const §!"2§:String = "Down";
      
      public static var §["<§:Class;
      
      public static var §!!-§:Boolean = true;
      
      public static const §@X§:String = "Tooltip";
      
      public static var §+!'§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            while(true)
            {
               §else § = "Deactive";
               addr115:
               while(true)
               {
                  COMPONENT_STATE_DISABLED = "Disabled";
               }
               addr76:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §!"2§ = "Down";
               loop6:
               do
               {
                  §!!-§ = true;
                  while(true)
                  {
                     §@X§ = "Tooltip";
                     while(!_loc2_)
                     {
                        §+!'§ = true;
                        if(_loc1_)
                        {
                           continue loop6;
                        }
                     }
                  }
               }
               while(_loc2_);
               
               addr31:
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc2_)
                  {
                     if(!_loc1_)
                     {
                        while(true)
                        {
                           §;!<§ = "Out";
                           while(true)
                           {
                              §[a§ = "Over";
                              addr88:
                              while(_loc1_)
                              {
                                 §%!B§ = "Up_Default";
                                 while(_loc1_)
                                 {
                                    §§goto(addr76);
                                    §§goto(addr31);
                                 }
                                 §§goto(addr115);
                              }
                           }
                        }
                        addr110:
                     }
                     return;
                  }
                  §§goto(addr88);
               }
               §§goto(addr74);
            }
         }
         §§goto(addr110);
      }
      
      public var §3w§:String;
      
      public var §2!N§:String;
      
      public var §8"G§:String;
      
      public var §%1§:MovieClip;
      
      public var §#!?§:int = 6;
      
      private var §!%§:Boolean = false;
      
      private var §2W§:String = "auto";
      
      private var §&W§:§5!9§;
      
      public function §@!!§(param1:XML, param2:§ ",§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:Array = null;
         if(!_loc7_)
         {
            super(param1,param2,param3);
            while(true)
            {
               this.§3w§ = COMPONENT_STATE_ACTIVE_DEFAULT;
               while(true)
               {
                  this.§2!N§ = §%!B§;
                  loop2:
                  while(true)
                  {
                     this.§8"D§();
                     loop3:
                     while(true)
                     {
                        addr47:
                        while(true)
                        {
                           this.§=! §(param1.@Tooltip);
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(false)
            {
               §§goto(addr47);
            }
            §§goto(addr92);
         }
      }
      
      public static function §1@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §["<§ = § !h§.§["3§(§@X§);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.setActiveStatus(param1);
            loop0:
            for(; !param1; while(true)
            {
               if(!(_loc3_ && _loc3_))
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!(_loc2_ || param1))
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.setComponentVisualState(§;!<§);
            §§goto(addr51);
         }
      }
      
      public function §=! §(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§8"G§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§8"G§);
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
                           addr210:
                           while(true)
                           {
                              §§push(this.§8"G§);
                              addr180:
                              while(true)
                              {
                                 §§push(§§pop().length == 0);
                                 addr183:
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
                           loop8:
                           while(_loc3_)
                           {
                              this.§8"G§ = null;
                              while(true)
                              {
                                 addr142:
                                 while(true)
                                 {
                                    §§push(this.§8"G§);
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr180);
                                 addr81:
                                 if(!(_loc3_ || this))
                                 {
                                    continue;
                                 }
                                 this.§%1§.visible = false;
                                 do
                                 {
                                    getParentView().addChild(this.§%1§);
                                 }
                                 while(!_loc3_);
                                 
                                 if(!_loc2_)
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §1@§();
                                       loop14:
                                       for(; !_loc2_; if(!_loc3_)
                                       {
                                          continue;
                                       },this.§%1§.mouseChildren = false)
                                       {
                                          while(true)
                                          {
                                             this.§%1§ = new MovieClip();
                                             loop16:
                                             while(true)
                                             {
                                                if(§["<§)
                                                {
                                                   while(true)
                                                   {
                                                      this.§9U§();
                                                      continue loop16;
                                                      addr74:
                                                      if(_loc2_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr81);
                                                   }
                                                }
                                                else
                                                {
                                                   this.§1!b§();
                                                   addr114:
                                                   while(true)
                                                   {
                                                      addr89:
                                                      while(true)
                                                      {
                                                         this.§%1§.mouseEnabled = false;
                                                         addr94:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            continue loop16;
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                   addr114:
                                                }
                                             }
                                          }
                                       }
                                       addr155:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop8;
                                          }
                                          §§push(§!!-§);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                §§goto(addr130);
                                             }
                                             §§goto(addr173);
                                          }
                                          else
                                          {
                                             §§goto(addr183);
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          §§goto(addr74);
                                       }
                                       §§goto(addr114);
                                    }
                                    break;
                                    §§goto(addr88);
                                 }
                                 addr88:
                                 §§goto(addr94);
                              }
                           }
                           §§goto(addr210);
                        }
                        §§goto(addr142);
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      private function §1!b§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§%1§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(_loc3_)
         {
            _loc1_.name = "Text";
            if(!_loc4_)
            {
               this.§%1§.addChild(_loc1_);
            }
         }
         var _loc2_:Shape = new Shape();
         if(!(_loc4_ && _loc1_))
         {
            _loc2_.name = "Base";
         }
         while(true)
         {
            this.§%1§.addChildAt(_loc2_,0);
            while(!_loc4_)
            {
               this.§,!n§(this.§8"G§);
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      private function §9U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§%1§ = new §["<§();
         }
         do
         {
            this.§0F§(this.§8"G§);
         }
         while(!_loc2_);
         
      }
      
      public function §0F§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8"G§ = param1;
            while(true)
            {
               if(!§["<§)
               {
                  this.§,!n§(param1);
                  if(!_loc3_)
                  {
                     §§goto(addr19);
                  }
               }
               if(_loc3_ && this)
               {
                  break;
               }
               if(!(_loc3_ && param1))
               {
                  this.§#!z§(param1);
                  break;
               }
            }
         }
         addr19:
      }
      
      private function §#!z§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TextField = this.§%1§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§%1§.getChildByName("Base") as MovieClip;
         if(_loc7_)
         {
            _loc2_.text = this.§8"G§;
            loop0:
            while(true)
            {
               addr47:
               while(true)
               {
                  _loc2_.multiline = false;
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr47);
         }
         var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
         if(_loc7_)
         {
            _loc3_.scaleX = _loc4_ / _loc3_.width;
            if(_loc7_ || _loc3_)
            {
               addr101:
               _loc3_.x = 0;
            }
            var _loc5_:int = 0;
            while(true)
            {
               if(_loc5_ >= _loc3_.numChildren)
               {
                  if(!(_loc6_ && param1))
                  {
                     if(!_loc7_)
                     {
                        continue;
                     }
                     _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                  }
                  if(_loc7_)
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
         §§goto(addr101);
      }
      
      private function §,!n§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextField = this.§%1§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(_loc6_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            loop0:
            while(true)
            {
               _loc3_.bold = true;
               addr144:
               while(true)
               {
                  _loc3_.size = 12;
                  addr139:
                  while(true)
                  {
                     _loc2_.defaultTextFormat = _loc3_;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      private function §3"0§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(_loc5_ || _loc2_)
         {
            §§push(!this.§%1§);
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(this.§8"G§);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              addr93:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr95:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§pop();
                                             if(!(_loc5_ || param1))
                                             {
                                                addr364:
                                             }
                                             else
                                             {
                                                addr364:
                                             }
                                             continue loop2;
                                             return;
                                          }
                                          §§goto(addr364);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             addr85:
                                             §§goto(addr86);
                                          }
                                          addr84:
                                       }
                                       addr131:
                                       if(§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             addr135:
                                             _loc2_ = mClip.getRect(getParentView());
                                             if(_loc5_)
                                             {
                                                this.§%1§.y = _loc2_.y - this.§%1§.height - this.§#!?§;
                                                if(_loc5_ || _loc2_)
                                                {
                                                   this.§%1§.x = _loc2_.x + mClip.width / 2 - this.§%1§.width / 2;
                                                }
                                             }
                                             _loc3_ = this.§%1§.getRect(mClip.stage);
                                             if(_loc5_ || param1)
                                             {
                                                if(_loc3_.right > mClip.stage.stageWidth - this.§#!?§)
                                                {
                                                   this.§%1§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§#!?§));
                                                   addr358:
                                                   addr330:
                                                }
                                                if(_loc3_.left < this.§#!?§)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         this.§%1§.x += 1 + (this.§#!?§ - _loc3_.left);
                                                         addr267:
                                                         if(_loc3_.bottom > mClip.stage.stageHeight - this.§#!?§)
                                                         {
                                                            addr277:
                                                            this.§%1§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§#!?§));
                                                            addr295:
                                                         }
                                                         addr226:
                                                         addr320:
                                                         if(_loc3_.top < this.§#!?§)
                                                         {
                                                            addr232:
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  this.§%1§.y += mClip.height + this.§%1§.height + this.§#!?§ * 2;
                                                                  addr259:
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     addr203:
                                                                     this.§%1§.visible = true;
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr226);
                                                                              }
                                                                              §§goto(addr364);
                                                                           }
                                                                           §§goto(addr295);
                                                                        }
                                                                        §§goto(addr232);
                                                                     }
                                                                     §§goto(addr259);
                                                                  }
                                                                  §§goto(addr358);
                                                               }
                                                               §§goto(addr320);
                                                            }
                                                            §§goto(addr277);
                                                         }
                                                         §§goto(addr203);
                                                      }
                                                      §§goto(addr330);
                                                   }
                                                   §§goto(addr226);
                                                }
                                             }
                                             §§goto(addr267);
                                          }
                                       }
                                       else
                                       {
                                          this.§%1§.visible = false;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr364);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr93);
               }
               if(!(_loc5_ || _loc3_))
               {
                  continue;
               }
               §§pop();
               if(_loc5_)
               {
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        if(false)
                        {
                           §§goto(addr71);
                        }
                        §§push(§+!'§);
                        if(_loc4_)
                        {
                        }
                        §§goto(addr131);
                     }
                     addr86:
                     while(!§§pop())
                     {
                        while(true)
                        {
                           §§push(param1);
                           if(_loc5_)
                           {
                              continue loop4;
                           }
                        }
                        continue loop4;
                     }
                     return;
                  }
                  while(true)
                  {
                     §§goto(addr31);
                  }
                  addr87:
               }
               §§goto(addr135);
            }
         }
         §§goto(addr87);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§3w§ = COMPONENT_STATE_DISABLED;
         }
         loop0:
         while(this.§%1§)
         {
            if(!_loc1_)
            {
               this.§8"G§ = null;
            }
            if(_loc1_ && this)
            {
               continue;
            }
            loop1:
            while(true)
            {
               if(this.§%1§.numChildren > 0)
               {
                  this.§%1§.removeChildAt(0);
                  continue;
               }
               if(!(_loc1_ && _loc1_))
               {
                  if(this.§%1§.parent)
                  {
                     while(true)
                     {
                        this.§%1§.parent.removeChild(this.§%1§);
                        addr77:
                        while(_loc2_)
                        {
                        }
                        continue loop1;
                        addr31:
                        if(_loc1_ && this)
                        {
                           continue;
                        }
                        return;
                        addr38:
                     }
                  }
                  while(true)
                  {
                     this.§%1§ = null;
                     addr43:
                     while(true)
                     {
                        break loop0;
                     }
                     addr29:
                     if(!_loc1_)
                     {
                        §§goto(addr31);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr38);
               }
               §§goto(addr77);
            }
         }
         while(true)
         {
            super.clear();
            if(!_loc2_)
            {
               continue;
            }
            §§goto(addr29);
         }
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§3w§ = param1;
            do
            {
               this.§8"D§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§-O§)
            {
               if(_loc3_ || this)
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     §§push(§[a§);
                     addr207:
                     addr41:
                     loop1:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           continue loop0;
                        }
                        if(!_loc2_)
                        {
                           §§push(this.§&W§);
                           loop2:
                           while(true)
                           {
                              §§push(null);
                              addr223:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    addr224:
                                    while(true)
                                    {
                                       §§push(this.§&W§);
                                       addr226:
                                       while(true)
                                       {
                                          §§pop().stop();
                                          addr227:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr224:
                                 }
                                 while(true)
                                 {
                                    this.§&W§ = §!D§.§[!1§.§1"<§(mClip,{
                                       "scaleX":§3!M§.scaleX + 0.1,
                                       "scaleY":§3!M§.scaleY + 0.1
                                    },null,0.1);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§&W§);
                                       loop6:
                                       for(; _loc3_; if(_loc3_ || this)
                                       {
                                          continue loop2;
                                       })
                                       {
                                          §§pop().play();
                                          while(true)
                                          {
                                             break loop1;
                                             addr66:
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             this.§8"D§();
                                             if(!_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr80:
                                                   while(true)
                                                   {
                                                      break loop1;
                                                   }
                                                   addr80:
                                                }
                                                if(_loc2_ && _loc2_)
                                                {
                                                   continue loop5;
                                                }
                                                if(!_loc2_)
                                                {
                                                   return;
                                                   addr40:
                                                }
                                                §§goto(addr224);
                                             }
                                             loop19:
                                             while(true)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      addr59:
                                                      if(!(_loc2_ && this))
                                                      {
                                                         §§goto(addr66);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§&W§);
                                                            if(_loc3_ || this)
                                                            {
                                                               continue loop6;
                                                            }
                                                            addr166:
                                                            while(true)
                                                            {
                                                               §§pop().stop();
                                                            }
                                                            §§goto(addr59);
                                                         }
                                                         addr130:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      addr81:
                                                      while(true)
                                                      {
                                                         this.§&W§ = §!D§.§[!1§.§1"<§(mClip,{
                                                            "scaleX":§3!M§.scaleX,
                                                            "scaleY":§3!M§.scaleY
                                                         },null,0.1);
                                                         break loop19;
                                                      }
                                                   }
                                                }
                                                break;
                                                §§goto(addr73);
                                             }
                                             addr73:
                                             loop12:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(this.§&W§);
                                                   if(_loc3_)
                                                   {
                                                      §§pop().play();
                                                      §§goto(addr80);
                                                   }
                                                   break;
                                                }
                                                addr162:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§push(this.§&W§);
                                                      break loop12;
                                                   }
                                                   §§goto(addr227);
                                                }
                                             }
                                             §§goto(addr166);
                                          }
                                       }
                                       §§goto(addr226);
                                    }
                                 }
                              }
                              if(!(_loc3_ || this))
                              {
                                 continue;
                              }
                              §§push(null);
                              if(_loc3_ || _loc3_)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    §§goto(addr162);
                                 }
                                 §§goto(addr81);
                              }
                              §§goto(addr223);
                           }
                        }
                        §§goto(addr227);
                     }
                     while(true)
                     {
                        this.§2!N§ = param1;
                        §§goto(addr45);
                        §§goto(addr80);
                     }
                     §§goto(addr40);
                  }
               }
               §§goto(addr224);
            }
            §§goto(addr41);
         }
         §§goto(addr40);
      }
      
      public function §8"D§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §§push(mClip == null);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr38:
                     §§pop();
                     addr54:
                     if(!_loc3_)
                     {
                        §§push(mClip.totalFrames < 2);
                     }
                     §§push(this.§3w§ + "_");
                     if(_loc4_ || this)
                     {
                        §§push(this.§2!N§);
                        if(!(_loc3_ && _loc1_))
                        {
                           addr85:
                           §§push(§§pop() + §§pop());
                           §§push(this.§3w§);
                        }
                        §§push(§§pop() + "_");
                        if(!_loc3_)
                        {
                           §§push(§§pop() + §%!B§);
                        }
                        var _loc1_:Array = null;
                        if(!_loc3_)
                        {
                           if(this.§3w§ != COMPONENT_STATE_ACTIVE_DEFAULT)
                           {
                              if(_loc4_)
                              {
                                 addr104:
                                 _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§2!N§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §%!B§);
                              }
                           }
                           var _loc2_:int = 0;
                           while(true)
                           {
                              if(_loc2_ >= _loc1_.length)
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr136);
                                 }
                              }
                              if(this.§#!E§(_loc1_[_loc2_]))
                              {
                                 break;
                              }
                              _loc2_++;
                              continue;
                              addr136:
                              return;
                           }
                           mClip.gotoAndStop(String(_loc1_[_loc2_]));
                           §§goto(addr170);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr85);
                  }
               }
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     return;
                  }
                  §§goto(addr54);
               }
               §§goto(addr54);
            }
         }
         §§goto(addr38);
      }
      
      private function §#!E§(param1:String) : Boolean
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
               if(_loc6_ && this)
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(this.§3w§ != COMPONENT_STATE_DISABLED)
            {
               loop0:
               while(true)
               {
                  §§push(this.§!%§);
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop21:
                           while(true)
                           {
                              §§pop();
                              addr214:
                              while(true)
                              {
                                 §§push(param1);
                                 continue loop21;
                              }
                           }
                           addr213:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§#!,§();
                                 addr194:
                                 while(true)
                                 {
                                 }
                              }
                              addr192:
                           }
                           while(true)
                           {
                              §§push(param1);
                              loop6:
                              while(true)
                              {
                                 if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                 {
                                    if(!(_loc3_ && param2))
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          this.setComponentVisualState(§!"2§);
                                          loop7:
                                          while(true)
                                          {
                                             addr147:
                                             while(true)
                                             {
                                                §§push(param1);
                                                loop9:
                                                while(true)
                                                {
                                                   if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                                   {
                                                      while(true)
                                                      {
                                                         this.setComponentVisualState(§[a§);
                                                         addr154:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr151:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop13:
                                                      for(; _loc4_; while(true)
                                                      {
                                                         §§push(param1);
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop13;
                                                         addr133:
                                                      },continue loop9)
                                                      {
                                                         if(§§pop() != § h§)
                                                         {
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            Mouse.cursor = MouseCursor.AUTO;
                                                            addr144:
                                                            while(_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.setComponentVisualState(§;!<§);
                                                                  continue loop7;
                                                               }
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                }
                                             }
                                          }
                                          addr176:
                                       }
                                       break;
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr147);
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(§§pop() == §3!R§)
                                 {
                                    loop17:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             Mouse.cursor = this.§2W§;
                                             loop18:
                                             while(true)
                                             {
                                                this.setComponentVisualState(§[a§);
                                                loop19:
                                                while(!_loc3_)
                                                {
                                                   if(!(_loc4_ || param1))
                                                   {
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§3"0§(param1 == §3!R§);
                                                      if(_loc3_)
                                                      {
                                                         continue loop19;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         continue loop18;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         continue loop17;
                                                      }
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               return super.listenerUIEventOccured(param1,param2);
                                                            }
                                                            §§goto(addr151);
                                                         }
                                                         break loop17;
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                }
                                                §§goto(addr214);
                                             }
                                          }
                                          §§goto(addr154);
                                       }
                                       §§goto(addr140);
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr33);
                              }
                              §§goto(addr194);
                           }
                        }
                     }
                  }
                  §§goto(addr213);
               }
            }
            §§goto(addr219);
         }
         §§goto(addr146);
      }
      
      public function §#!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§3w§);
            loop0:
            while(true)
            {
               §§push(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               while(§§pop() != §§pop())
               {
                  §§push(this.§3w§);
                  if(_loc1_)
                  {
                     continue loop0;
                  }
                  §§push(§@!!§.§else §);
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc1_ && this))
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           if(!(_loc2_ || _loc2_))
                           {
                              break;
                           }
                           this.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        }
                        addr25:
                        return;
                        addr101:
                     }
                  }
                  §§goto(addr25);
               }
               this.setComponentState(§@!!§.§else §);
            }
         }
         §§goto(addr101);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.setEnabled(param1);
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
         if(_loc6_)
         {
            if(this.mParentContainer)
            {
               if(!_loc5_)
               {
                  mParentContainer.mClip.removeChild(mClip);
               }
               while(true)
               {
                  loop3:
                  for(; !(_loc5_ && param1); while(_loc6_ || param1)
                  {
                     §§goto(addr71);
                  })
                  {
                     if(!this.mParentContainer)
                     {
                        while(true)
                        {
                           mClip.x = _loc2_;
                           loop7:
                           for(; _loc6_; while(_loc6_ || _loc2_)
                           {
                              this.§8"D§();
                              if(!_loc5_)
                              {
                                 return;
                              }
                           })
                           {
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    mClip.y = _loc3_;
                                    continue loop7;
                                 }
                                 addr79:
                              }
                           }
                           continue loop3;
                        }
                        addr71:
                     }
                     while(!_loc5_)
                     {
                        mParentContainer.mClip.addChildAt(mClip,_loc4_);
                        continue loop3;
                     }
                     while(true)
                     {
                        mClip = param1;
                        continue loop3;
                     }
                  }
               }
               addr135:
            }
            while(true)
            {
               mClip = null;
               §§goto(addr115);
               §§goto(addr135);
            }
         }
         §§goto(addr79);
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
               if(!_loc3_)
               {
                  this.§3"0§(false);
               }
               if(_loc2_ || _loc3_)
               {
                  addr59:
                  break;
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
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
               if(_loc2_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§3"0§(false);
            §§goto(addr47);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§&W§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§&W§);
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
                  super.viewWidth = param1;
                  if(!(_loc3_ || param1))
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
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§&W§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  addr77:
                  while(true)
                  {
                     §§push(this.§&W§);
                     addr79:
                     while(true)
                     {
                        §§pop().stop();
                        addr80:
                        while(true)
                        {
                        }
                     }
                  }
                  addr77:
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  if(_loc2_ || _loc3_)
                  {
                     break;
                  }
                  §§goto(addr77);
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr77);
      }
   }
}
