package §,"T§
{
   import §="2§.§@!a§;
   import §[#+§.§<k§;
   import §]!$§.§4@§;
   import §]!$§.§6y§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §55§ extends §4@§
   {
      
      public static const §#5§:Number = 16.666666666666668;
      
      private static const §"#+§:int = 180;
      
      private static const § 6§:String = "skip";
      
      private static const §9!2§:String = "start_theme_music";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#5§ = 1000 / 60;
            while(true)
            {
               §"#+§ = 180;
               loop2:
               while(!(_loc2_ && _loc2_))
               {
                  §9!2§ = "start_theme_music";
                  if(_loc1_ || §55§)
                  {
                     addr44:
                     if(_loc2_ && _loc2_)
                     {
                        while(true)
                        {
                           § 6§ = "skip";
                           continue loop2;
                           §§goto(addr44);
                        }
                        addr78:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      protected var §'!A§:Number;
      
      protected var §8I§:int;
      
      protected var §^Z§:int;
      
      protected var §6#Z§:int;
      
      protected var §;#'§:String = "best";
      
      protected var §%!O§:Vector.<String>;
      
      protected var §^!x§:int;
      
      protected var §#B§:Boolean;
      
      protected var §3!!§:int;
      
      public function §55§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 16.666666666666668)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2);
            while(true)
            {
               this.§^Z§ = 0;
               loop1:
               for(; !_loc5_; if(!(_loc4_ || this))
               {
                  continue;
               },this.§#B§ = false)
               {
                  this.§6#Z§ = param1.length;
                  while(true)
                  {
                     this.§'!A§ = param3;
                     while(_loc4_)
                     {
                        this.§8I§ = 0;
                        loop4:
                        while(_loc4_ || this)
                        {
                           continue loop1;
                           while(true)
                           {
                              this.§2"<§();
                              if(_loc4_)
                              {
                                 if(_loc4_ || this)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      private function §2"<§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:FrameLabel = null;
         var _loc1_:MovieClip = §#<§[0];
         if(_loc6_)
         {
            §§push(Boolean(_loc1_));
            if(!(_loc7_ && this))
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§pop();
                     addr97:
                     loop1:
                     while(true)
                     {
                        addr43:
                        while(true)
                        {
                           §§push(_loc1_.name == "MovieClip_BackGround");
                           if(_loc6_ || _loc3_)
                           {
                              break loop1;
                           }
                           continue loop4;
                        }
                        continue loop4;
                     }
                  }
                  addr96:
               }
               while(§§pop())
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     if(_loc6_)
                     {
                        while(true)
                        {
                           this.§%!O§ = new Vector.<String>(0);
                        }
                        addr66:
                     }
                     else
                     {
                        §§goto(addr97);
                     }
                  }
                  do
                  {
                     this.§^!x§ = 0;
                  }
                  while(!(_loc6_ || this));
                  
                  if(true)
                  {
                     _loc2_ = _loc1_.currentLabels;
                     var _loc4_:int = 0;
                     var _loc5_:* = _loc2_;
                     addr134:
                  }
                  continue;
                  for each(_loc3_ in _loc5_)
                  {
                     if(_loc6_)
                     {
                        if(_loc3_.name.indexOf(§ 6§) == 0)
                        {
                           if(_loc6_ || _loc2_)
                           {
                              addr129:
                              this.§%!O§.push(_loc3_.name);
                           }
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr129);
                  }
                  if(_loc6_)
                  {
                     stage.addEventListener(MouseEvent.CLICK,this.§2! §);
                     break;
                  }
                  §§goto(addr43);
                  break;
               }
               return;
            }
            §§goto(addr96);
         }
         §§goto(addr66);
      }
      
      private function §2! §(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            §§push(this.§^!x§ >= this.§%!O§.length);
            if(_loc5_ || this)
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr68);
            }
            addr43:
            §§pop();
            if(!(_loc4_ && this))
            {
               addr68:
               if(param1.stageX > stage.stageWidth - §"#+§)
               {
                  if(_loc4_ && param1)
                  {
                     addr77:
                     var _loc2_:MovieClip = §[I§[0];
                     if(!(_loc4_ && _loc2_))
                     {
                        if(_loc2_)
                        {
                           if(_loc5_)
                           {
                              §§push(this.§4b§(_loc2_));
                              if(!(_loc4_ && param1))
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc3_ = §§pop();
                           }
                           do
                           {
                              _loc2_.gotoAndStop(_loc3_);
                           }
                           while(!(_loc5_ || param1));
                           
                           addr105:
                        }
                        return;
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr77);
            }
            return;
         }
         §§goto(addr77);
      }
      
      protected function §4b§(param1:MovieClip) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc2_:* = int(param1.currentFrame);
         §§push(this.§^!x§);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc8_ && param1))
            {
               if(§§pop() < this.§%!O§.length)
               {
                  _loc4_ = this.§%!O§[_loc3_];
                  if(!_loc8_)
                  {
                     §§push(this.§-#F§(param1,_loc4_));
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push(int(§§pop()));
                        if(!_loc8_)
                        {
                           addr56:
                           §§push(§§pop());
                           if(!_loc8_)
                           {
                              _loc5_ = §§pop();
                              if(_loc9_)
                              {
                                 addr63:
                                 if(§§pop() > _loc2_)
                                 {
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       §§push(_loc5_);
                                       if(_loc8_ && _loc2_)
                                       {
                                          break;
                                       }
                                       addr89:
                                       §§push(int(§§pop()));
                                       if(_loc8_ && this)
                                       {
                                          break;
                                       }
                                       addr97:
                                       _loc2_ = §§pop();
                                       if(_loc9_)
                                       {
                                          addr159:
                                          §§push(_loc2_);
                                          break;
                                       }
                                       continue;
                                    }
                                    §§goto(addr159);
                                 }
                                 else
                                 {
                                    var _loc6_:*;
                                    §§push((_loc6_ = this).§^!x§);
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc7_:* = §§pop();
                                    if(!_loc8_)
                                    {
                                       _loc6_.§^!x§ = _loc7_;
                                    }
                                    if(!(_loc9_ || this))
                                    {
                                       continue;
                                    }
                                 }
                                 _loc3_++;
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    continue;
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr63);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr56);
                  }
               }
               §§goto(addr159);
            }
            break;
         }
         return §§pop();
      }
      
      protected function §-#F§(param1:MovieClip, param2:String) : int
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:FrameLabel = null;
         var _loc3_:Array = param1.currentLabels;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.name.indexOf(param2) == 0)
            {
               if(!_loc7_)
               {
                  return _loc4_.frame;
               }
            }
         }
         return -1;
      }
      
      protected function runAnimation(param1:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:* = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §[I§[param1];
         if(!_loc10_)
         {
            §§push(Boolean(§5!z§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(!§7a§);
                           if(_loc9_ || this)
                           {
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(Boolean(§0#H§(_loc2_,§5!z§)));
                                    loop6:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc9_ || _loc3_)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc10_ && _loc2_))
                                             {
                                                if(_loc10_ && param1)
                                                {
                                                   continue loop2;
                                                }
                                                if(_loc10_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§7#§.loop));
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop10:
                                                         while(!(_loc10_ && param1))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr290:
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(!§5!z§);
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!(_loc9_ || param1))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       if(!(_loc10_ && _loc2_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 break loop9;
                                                                              }
                                                                              continue loop9;
                                                                              addr155:
                                                                           }
                                                                           addr330:
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr345:
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr327:
                                                                                    §§goto(addr330);
                                                                                    §§push(this.§#B§);
                                                                                    addr352:
                                                                                 }
                                                                                 this.§-!<§(_loc2_);
                                                                                 break loop8;
                                                                              }
                                                                              break loop8;
                                                                           }
                                                                           §§goto(addr323);
                                                                        }
                                                                        addr349:
                                                                        §§goto(addr327);
                                                                        addr322:
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(_loc10_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               §§goto(addr322);
                                                               addr290:
                                                            }
                                                            §§goto(addr155);
                                                         }
                                                         continue loop1;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         §[I§.splice(param1,1);
                                                         if(_loc9_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(false)
                                                               {
                                                                  addr34:
                                                                  §§goto(addr349);
                                                                  addr47:
                                                               }
                                                               else
                                                               {
                                                                  var _loc7_:*;
                                                                  §§push((_loc7_ = this).§^Z§);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                  }
                                                                  var _loc8_:* = §§pop();
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     _loc7_.§^Z§ = _loc8_;
                                                                  }
                                                                  if(!_loc9_)
                                                                  {
                                                                  }
                                                                  §§goto(addr352);
                                                               }
                                                               §§goto(addr327);
                                                            }
                                                            else
                                                            {
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(!(_loc9_ || _loc3_))
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(§7#§.defaultStartLabel);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(§7#§.startLabel != "")
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(!(_loc10_ && _loc2_))
                                                                                       {
                                                                                          §§push(§7#§.startLabel);
                                                                                          if(_loc10_ && _loc3_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§7#§.defaultStartLabel != "")
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             §§push("");
                                                                                             continue loop15;
                                                                                          }
                                                                                          addr200:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr349);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(!(_loc9_ || this))
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr94:
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc10_ && _loc2_))
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                       }
                                                                                       if(§§pop() != "")
                                                                                       {
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             _loc2_.gotoAndStop(_loc6_);
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr345);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr327);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc2_.gotoAndStop(1);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§goto(addr34);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr349);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr94);
                                                                              }
                                                                              §§goto(addr349);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr290);
                                                                     }
                                                                     addr289:
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   addr323:
                                                   return;
                                                }
                                                _loc2_.nextFrame();
                                                §§goto(addr327);
                                             }
                                             §§goto(addr330);
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr345);
                                    }
                                 }
                                 §§goto(addr289);
                              }
                              addr287:
                           }
                           §§goto(addr290);
                        }
                     }
                  }
                  §§goto(addr287);
               }
            }
         }
         §§goto(addr293);
      }
      
      private function §-!<§(param1:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@!a§ = null;
         if(_loc3_)
         {
            §§push(param1.currentFrame >= this.§3!!§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     addr47:
                     §§pop();
                     §§goto(addr68);
                  }
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     this.§#B§ = true;
                  }
                  §§goto(addr68);
               }
               addr68:
               if(_loc3_ || this)
               {
                  §§push(param1.currentFrame < this.§3!!§ + 5);
               }
               _loc2_ = §@!m§(§4#;§.singleton).final();
               if(_loc3_)
               {
                  _loc2_.§,y§(§<k§.§5"<§,false,true);
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      protected function runAnimations() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = int(§[I§.length - 1);
         while(true)
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.runAnimation(_loc1_);
                  }
                  §§push(_loc1_);
               }
               §§push(§§pop() - 1);
            }
            _loc1_ = §§pop();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8I§ += param1;
         }
         loop0:
         while(true)
         {
            §§push(this.§8I§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() < this.§'!A§)
               {
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(_loc3_ || param1)
                              {
                                 stage.quality = this.§;#'§;
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §&#6§ = false;
                                       addr61:
                                       while(true)
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                if(!(_loc2_ && this))
                                                {
                                                   §§push(Boolean(stage));
                                                   if(_loc3_ || this)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr140:
                                                            while(true)
                                                            {
                                                               §§push(§7#§.stageQuality == "");
                                                               if(_loc3_ || param1)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               if(_loc2_ && _loc3_)
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                         addr139:
                                                      }
                                                      §§goto(addr101);
                                                   }
                                                   §§goto(addr139);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.§8I§ -= this.§'!A§;
                                                      addr149:
                                                      while(true)
                                                      {
                                                         §§push(this.§^Z§);
                                                         addr118:
                                                         while(§§pop() >= this.§6#Z§)
                                                         {
                                                            continue loop6;
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr165:
                                                }
                                             }
                                             continue;
                                          }
                                          §§goto(addr140);
                                       }
                                       addr56:
                                       dispatchEvent(new Event(Event.COMPLETE));
                                       continue loop0;
                                    }
                                 }
                                 addr114:
                              }
                              §§goto(addr149);
                           }
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr56);
               }
               else
               {
                  this.runAnimations();
               }
               §§goto(addr165);
            }
            §§goto(addr118);
         }
      }
      
      override public function start(param1:§6y§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.start(param1);
            loop0:
            while(true)
            {
               this.§6#Z§ = §[I§.length;
               loop1:
               while(true)
               {
                  this.§^Z§ = 0;
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(stage));
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           loop10:
                           while(true)
                           {
                              §§pop();
                              loop8:
                              for(; _loc2_; continue loop10)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(param1.stageQuality == "");
                                 if(_loc2_)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop10;
                                    }
                                    addr75:
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       §§goto(addr75);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          this.§;#'§ = stage.quality;
                                          loop6:
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                stage.quality = param1.stageQuality;
                                                while(true)
                                                {
                                                   if(_loc2_ || this)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop2;
                                                addr39:
                                             }
                                             continue loop8;
                                          }
                                          continue loop8;
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§#"4§();
                                       if(!(_loc3_ && param1))
                                       {
                                          break;
                                       }
                                       §§goto(addr39);
                                    }
                                    §§goto(addr33);
                                 }
                              }
                              continue loop1;
                           }
                           addr97:
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr97);
                  }
               }
            }
         }
         addr33:
      }
      
      private function §#"4§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MovieClip = §[I§[0];
         if(_loc3_ || _loc2_)
         {
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  addr53:
                  this.§3!!§ = this.§-#F§(_loc1_,§9!2§);
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      override public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= §#<§.length)
            {
               if(_loc3_ || this)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     super.dispose();
                     break;
                  }
                  _loc1_++;
                  continue;
                  addr73:
               }
               break;
            }
            §#<§[_loc1_].visible = false;
            §§goto(addr73);
         }
      }
   }
}
