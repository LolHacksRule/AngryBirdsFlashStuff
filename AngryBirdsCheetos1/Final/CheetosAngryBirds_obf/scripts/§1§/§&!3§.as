package §1§
{
   import §,j§.§1-§;
   import §1!K§.§<!I§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §&!3§ extends §;d§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §;2§:String = "Deactive";
      
      public static const §#!$§:String = "Disabled";
      
      public static const §#i§:String = "Out";
      
      public static const §;!F§:String = "Over";
      
      public static const §4?§:String = "Up_Default";
      
      public static const §`"§:String = "Down";
      
      public static var §#e§:Class;
      
      public static var §7n§:Boolean = true;
      
      public static const §8i§:String = "Tooltip";
      
      public static var §=,§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            COMPONENT_STATE_ACTIVE_DEFAULT = "Active";
            while(true)
            {
               §;2§ = "Deactive";
               addr126:
               while(true)
               {
                  §#!$§ = "Disabled";
               }
            }
            addr130:
         }
         loop2:
         while(true)
         {
            §#i§ = "Out";
            loop3:
            while(true)
            {
               if(!_loc2_)
               {
                  continue loop2;
               }
               if(_loc2_)
               {
                  §;!F§ = "Over";
                  while(true)
                  {
                     §4?§ = "Up_Default";
                     addr85:
                     while(_loc2_ || _loc1_)
                     {
                        §`"§ = "Down";
                        continue loop3;
                     }
                  }
               }
               else
               {
                  §§goto(addr130);
               }
            }
            §§goto(addr126);
         }
      }
      
      public var §#F§:String;
      
      public var §6H§:String;
      
      public var §,6§:String;
      
      public var §5k§:MovieClip;
      
      public var §%!Q§:int = 6;
      
      private var §+!_§:Boolean = false;
      
      private var §'y§:String = "auto";
      
      public function §&!3§(param1:XML, param2:§1-§, param3:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,param2,param3);
         }
         loop0:
         while(true)
         {
            this.§#F§ = COMPONENT_STATE_ACTIVE_DEFAULT;
            loop1:
            while(true)
            {
               this.§6H§ = §4?§;
               while(true)
               {
                  this.§-x§();
                  loop3:
                  while(!_loc6_)
                  {
                     loop4:
                     while(true)
                     {
                        this.§5x§(param1.@Tooltip);
                        while(param1.@Toggle.toString().toUpperCase() == "TRUE")
                        {
                           if(_loc7_ || param2)
                           {
                              if(_loc7_)
                              {
                                 if(!(_loc7_ || param1))
                                 {
                                    continue loop3;
                                 }
                                 if(_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 this.§+!_§ = true;
                                 §§goto(addr48);
                                 continue loop3;
                              }
                              continue;
                           }
                           continue loop4;
                        }
                        addr90:
                        var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
                        var _loc5_:String = param1.@cursor.toString().toLowerCase();
                        if(!(_loc6_ && param1))
                        {
                           if(_loc4_.indexOf(_loc5_) > -1)
                           {
                              if(_loc7_)
                              {
                                 this.§'y§ = _loc5_;
                              }
                           }
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public static function §-n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#e§ = §<!I§.§;!U§(§8i§);
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
            if(_loc3_ || _loc3_)
            {
               this.setComponentVisualState(§#i§);
            }
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function §5x§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§,6§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§,6§);
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
                           addr214:
                           while(true)
                           {
                              §§push(this.§,6§);
                              addr181:
                              while(true)
                              {
                                 §§push(§§pop().length == 0);
                                 addr184:
                                 while(_loc2_ || this)
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
                              this.§,6§ = null;
                              addr196:
                              while(true)
                              {
                              }
                           }
                           addr193:
                        }
                        loop10:
                        while(true)
                        {
                           §§push(this.§,6§);
                           if(_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              if(§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§push(§7n§);
                                    if(!_loc3_)
                                    {
                                       if(_loc3_ && param1)
                                       {
                                          continue loop2;
                                       }
                                       if(§§pop())
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §7n§ = false;
                                             addr175:
                                             while(_loc2_)
                                             {
                                                §-n§();
                                                continue loop12;
                                             }
                                             §§goto(addr214);
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§5k§ = new MovieClip();
                                          loop16:
                                          while(true)
                                          {
                                             if(§#e§)
                                             {
                                                loop22:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      this.§[!B§();
                                                      loop23:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§5k§.mouseEnabled = false;
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     this.§5k§.mouseChildren = false;
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           addr76:
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(!(_loc2_ || _loc2_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 this.§5k§.visible = false;
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    continue loop23;
                                                                                 }
                                                                                 continue loop23;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        continue loop19;
                                                                        if(_loc3_ && this)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr48);
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop22;
                                                               }
                                                               §§goto(addr135);
                                                            }
                                                            addr135:
                                                            addr93:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr193);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr175);
                                                }
                                                continue loop0;
                                             }
                                             this.§5b§();
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr24);
                           }
                           break;
                        }
                        §§goto(addr181);
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §5b§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§5k§ = new MovieClip();
         }
         var _loc1_:TextField = new TextField();
         if(!_loc3_)
         {
            _loc1_.name = "Text";
            if(!(_loc3_ && this))
            {
               addr54:
               this.§5k§.addChild(_loc1_);
            }
            var _loc2_:Shape = new Shape();
            if(!(_loc3_ && _loc3_))
            {
               _loc2_.name = "Base";
            }
            do
            {
               this.§5k§.addChildAt(_loc2_,0);
               do
               {
                  this.§#!Y§(this.§,6§);
               }
               while(_loc3_ && _loc3_);
               
            }
            while(_loc3_);
            
            return;
         }
         §§goto(addr54);
      }
      
      private function §[!B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§5k§ = new §#e§();
            do
            {
               this.§&0§(this.§,6§);
            }
            while(!_loc1_);
            
         }
      }
      
      public function §&0§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,6§ = param1;
            do
            {
               if(!§#e§)
               {
                  this.§#!Y§(param1);
                  if(!(_loc3_ && param1))
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr72:
                  }
               }
               continue;
               return;
            }
            while(_loc3_ && _loc2_);
            
            this.§>!J§(param1);
         }
         §§goto(addr72);
      }
      
      private function §>!J§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:TextField = this.§5k§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§5k§.getChildByName("Base") as MovieClip;
         if(!_loc7_)
         {
            _loc2_.text = this.§,6§;
            loop0:
            while(true)
            {
               addr58:
               while(true)
               {
                  _loc2_.multiline = false;
                  continue loop0;
               }
            }
            addr67:
         }
         while(true)
         {
            _loc2_.width = _loc2_.textWidth * 1.25;
            if(_loc7_ && _loc3_)
            {
               continue;
            }
            if(_loc6_ || _loc3_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr67);
            }
            §§goto(addr58);
         }
         var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
         if(_loc6_)
         {
            _loc3_.scaleX = _loc4_ / _loc3_.width;
            if(_loc6_ || _loc2_)
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
                     if(!_loc7_)
                     {
                        _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
                        break;
                     }
                     loop4:
                     while(_loc7_)
                     {
                        while(true)
                        {
                           _loc5_++;
                           continue loop4;
                        }
                     }
                     continue;
                     addr136:
                  }
                  break;
               }
               _loc3_.getChildAt(0).x = 0;
               §§goto(addr156);
               §§goto(addr136);
            }
            return;
         }
         §§goto(addr105);
      }
      
      private function §#!Y§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:TextField = this.§5k§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         if(_loc5_ || this)
         {
            _loc3_.align = TextAlign.CENTER;
            while(true)
            {
               _loc3_.bold = true;
               while(!(_loc6_ && this))
               {
                  _loc3_.size = 12;
                  while(true)
                  {
                     _loc2_.defaultTextFormat = _loc3_;
                     while(!(_loc6_ && this))
                     {
                        _loc2_.border = false;
                        loop4:
                        while(true)
                        {
                           _loc2_.text = this.§,6§;
                           addr109:
                           while(true)
                           {
                              _loc2_.height = _loc2_.textHeight * 1.25;
                              continue loop4;
                           }
                        }
                     }
                  }
                  if(_loc6_ && param1)
                  {
                     continue;
                  }
                  §§goto(addr49);
               }
            }
         }
         §§goto(addr114);
      }
      
      private function §7!B§(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!(_loc5_ && _loc2_))
         {
            §§push(!this.§5k§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        if(!(_loc5_ && param1))
                        {
                           §§push(this.§,6§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              if(_loc4_ || param1)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop5:
                                    while(_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   return;
                                                }
                                                break loop2;
                                             }
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                addr49:
                                                §§push(§§pop());
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                if(!§§pop())
                                                {
                                                   break loop3;
                                                }
                                                if(!_loc4_)
                                                {
                                                   break loop3;
                                                }
                                                if(_loc4_)
                                                {
                                                   §§pop();
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(_loc5_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(true)
                                                            {
                                                               §§push(§=,§);
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  §§goto(addr145);
                                                               }
                                                            }
                                                            continue loop3;
                                                         }
                                                         addr74:
                                                      }
                                                   }
                                                   break loop2;
                                                }
                                                continue loop2;
                                             }
                                             continue loop5;
                                          }
                                          addr363:
                                          return;
                                          addr96:
                                       }
                                       if(_loc5_)
                                       {
                                          addr145:
                                          §§push(Boolean(§§pop()));
                                          break loop3;
                                       }
                                       §§pop();
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 addr114:
                              }
                              break;
                           }
                           addr146:
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              this.§5k§.visible = false;
                           }
                           §§goto(addr363);
                        }
                        break;
                     }
                     _loc2_ = mClip.getRect(getParentView());
                     if(!_loc5_)
                     {
                        this.§5k§.y = _loc2_.y - this.§5k§.height - this.§%!Q§;
                        if(!_loc5_)
                        {
                           this.§5k§.x = _loc2_.x + mClip.width / 2 - this.§5k§.width / 2;
                           addr171:
                        }
                        _loc3_ = this.§5k§.getRect(mClip.stage);
                        if(_loc4_ || _loc3_)
                        {
                           if(_loc3_.right > mClip.stage.stageWidth - this.§%!Q§)
                           {
                              while(true)
                              {
                                 this.§5k§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§%!Q§));
                                 addr357:
                                 while(true)
                                 {
                                 }
                              }
                              addr329:
                           }
                           while(true)
                           {
                              if(_loc3_.left < this.§%!Q§)
                              {
                                 while(!_loc5_)
                                 {
                                    this.§5k§.x += 1 + (this.§%!Q§ - _loc3_.left);
                                    while(true)
                                    {
                                    }
                                 }
                                 continue;
                                 addr303:
                              }
                              while(true)
                              {
                                 if(_loc3_.bottom > mClip.stage.stageHeight - this.§%!Q§)
                                 {
                                    while(!_loc5_)
                                    {
                                       this.§5k§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§%!Q§));
                                       while(true)
                                       {
                                       }
                                    }
                                    continue;
                                    addr276:
                                 }
                                 loop18:
                                 while(true)
                                 {
                                    if(_loc3_.top < this.§%!Q§)
                                    {
                                       loop19:
                                       while(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             this.§5k§.y += mClip.height + this.§5k§.height + this.§%!Q§ * 2;
                                             loop20:
                                             while(!_loc5_)
                                             {
                                                while(true)
                                                {
                                                   this.§5k§.visible = true;
                                                   if(!(_loc4_ || _loc2_))
                                                   {
                                                      continue loop20;
                                                   }
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      continue loop19;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop18;
                                                      }
                                                      continue loop18;
                                                   }
                                                   §§goto(addr276);
                                                }
                                             }
                                             §§goto(addr329);
                                          }
                                          else
                                          {
                                             §§goto(addr303);
                                          }
                                       }
                                       §§goto(addr296);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr363);
                              }
                           }
                        }
                        §§goto(addr319);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr114);
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§5k§)
            {
               if(!_loc2_)
               {
                  this.§,6§ = null;
                  addr115:
                  loop5:
                  while(true)
                  {
                     if(this.§5k§.numChildren > 0)
                     {
                        this.§5k§.removeChildAt(0);
                        continue;
                     }
                     if(!(_loc2_ && _loc1_))
                     {
                        if(this.§5k§.parent)
                        {
                           while(true)
                           {
                              this.§5k§.parent.removeChild(this.§5k§);
                              addr86:
                              while(_loc2_)
                              {
                                 continue loop5;
                              }
                           }
                           addr80:
                        }
                        while(true)
                        {
                           this.§5k§ = null;
                           addr43:
                           §§goto(addr62);
                        }
                     }
                     §§goto(addr86);
                  }
                  addr115:
               }
               §§goto(addr115);
            }
            addr62:
            while(true)
            {
               if(!(_loc2_ && this))
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr80);
               }
               continue loop6;
            }
            while(true)
            {
               super.clear();
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               §§goto(addr43);
               §§goto(addr62);
            }
            return;
         }
         §§goto(addr115);
      }
      
      public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§#F§ = param1;
         }
         do
         {
            this.§-x§();
         }
         while(_loc3_);
         
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§6H§ = param1;
            do
            {
               this.§-x§();
            }
            while(_loc2_);
            
         }
      }
      
      public function §-x§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(mClip.totalFrames < 2)
            {
               if(_loc5_)
               {
                  return;
               }
            }
         }
         var _loc1_:Array = new Array(this.§#F§ + "_" + this.§6H§,this.§#F§ + "_" + §4?§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§6H§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §4?§);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            try
            {
               mClip.gotoAndStop(_loc1_[_loc2_] as String);
               if(!(_loc4_ && _loc1_))
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
               break;
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
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(this.§#F§ != §#!$§)
            {
               loop0:
               while(true)
               {
                  super.listenerEventOccured(param1,param2);
                  loop1:
                  while(true)
                  {
                     §§push(this.§+!_§);
                     if(_loc3_ || param1)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc3_ || param2)
                        {
                           if(§§pop())
                           {
                              loop23:
                              while(true)
                              {
                                 §§pop();
                                 addr216:
                                 while(true)
                                 {
                                    §§push(param1);
                                    continue loop23;
                                 }
                              }
                              addr215:
                           }
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(!(_loc4_ && param1))
                                 {
                                    this.§-!#§();
                                    while(_loc3_)
                                    {
                                    }
                                    return;
                                 }
                                 continue loop0;
                                 addr183:
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop() == LISTENER_EVENT_MOUSE_DOWN)
                                    {
                                       while(true)
                                       {
                                          this.setComponentVisualState(§`"§);
                                          addr169:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr166:
                                    }
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop10:
                                       for(; _loc3_; for(; !(_loc4_ && param1); §§goto(addr56))
                                       {
                                          if(§§pop() != §'!#§)
                                          {
                                             continue;
                                          }
                                          §§goto(addr136);
                                       })
                                       {
                                          if(§§pop() == LISTENER_EVENT_MOUSE_UP)
                                          {
                                             while(true)
                                             {
                                                this.setComponentVisualState(§;!F§);
                                                addr159:
                                                while(_loc3_)
                                                {
                                                }
                                                addr96:
                                                §§goto(addr192);
                                                if(_loc3_ || param2)
                                                {
                                                   this.setComponentVisualState(§;!F§);
                                                   loop21:
                                                   while(!(_loc4_ && param2))
                                                   {
                                                      loop22:
                                                      while(true)
                                                      {
                                                         this.§7!B§(param1 == §6!A§);
                                                         if(!_loc3_)
                                                         {
                                                            continue loop21;
                                                         }
                                                         addr36:
                                                         if(_loc3_ || param1)
                                                         {
                                                            break;
                                                         }
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc3_ || this)
                                                               {
                                                                  Mouse.cursor = this.§'y§;
                                                                  break loop21;
                                                               }
                                                               §§goto(addr183);
                                                            }
                                                            else
                                                            {
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop() == §6!A§)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 continue loop22;
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           continue loop6;
                                                                           addr56:
                                                                        }
                                                                        §§goto(addr166);
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr149:
                                                                  while(true)
                                                                  {
                                                                     this.setComponentVisualState(§#i§);
                                                                     continue loop17;
                                                                  }
                                                               }
                                                               §§goto(addr169);
                                                            }
                                                         }
                                                         §§goto(addr159);
                                                      }
                                                      return;
                                                   }
                                                   while(_loc3_ || param1)
                                                   {
                                                      §§goto(addr96);
                                                      §§goto(addr48);
                                                   }
                                                   addr48:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§goto(addr216);
                                                      §§goto(addr89);
                                                   }
                                                   addr89:
                                                   continue loop1;
                                                   addr136:
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(param1);
                                             continue loop10;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr215);
                  }
               }
            }
            §§goto(addr237);
         }
         §§goto(addr238);
      }
      
      public function §-!#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§#F§);
            loop0:
            while(true)
            {
               §§push(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
               while(§§pop() != §§pop())
               {
                  §§push(this.§#F§);
                  if(_loc1_)
                  {
                     continue loop0;
                  }
                  §§push(§&!3§.§;2§);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        if(_loc2_ || _loc1_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           this.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           addr20:
                           return;
                           addr66:
                        }
                        §§goto(addr20);
                        addr86:
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr20);
               }
               this.setComponentState(§&!3§.§;2§);
               §§goto(addr86);
            }
         }
         §§goto(addr62);
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
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
                  addr85:
                  if(_loc6_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr92:
               }
            }
            loop2:
            while(true)
            {
               mClip = null;
               while(true)
               {
                  mClip = param1;
                  loop4:
                  while(!_loc6_)
                  {
                     if(this.mParentContainer)
                     {
                        while(true)
                        {
                           mParentContainer.mClip.addChildAt(mClip,_loc4_);
                           addr114:
                           while(true)
                           {
                           }
                           addr61:
                           if(!(_loc5_ || param1))
                           {
                              continue;
                           }
                           addr78:
                           if(!(_loc5_ || this))
                           {
                              continue loop2;
                           }
                           §§goto(addr85);
                        }
                     }
                     loop7:
                     while(true)
                     {
                        mClip.x = _loc2_;
                        while(!_loc6_)
                        {
                           mClip.y = _loc3_;
                           do
                           {
                              this.§-x§();
                           }
                           while(!(_loc5_ || _loc2_));
                           
                           if(!(_loc5_ || _loc2_))
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              continue loop7;
                           }
                           §§goto(addr61);
                        }
                        continue loop4;
                     }
                     §§goto(addr78);
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setVisibility(param1);
            loop0:
            for(; !mClip.visible; while(true)
            {
               if(_loc2_ || _loc3_)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§7!B§(false);
            §§goto(addr47);
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
               addr59:
               if(!_loc3_)
               {
                  continue;
               }
               this.§7!B§(false);
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr59);
      }
   }
}
