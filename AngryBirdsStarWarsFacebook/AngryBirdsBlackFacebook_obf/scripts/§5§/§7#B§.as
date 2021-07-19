package §5§#7
{
   import §]!$§.§4@§;
   import §]!$§.§6y§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §7#B§ extends §4@§
   {
      
      public static const §'@§:String = "transition_lop";
      
      public static const §#5§:Number = 41.666666666666664;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §'@§ = "transition_lop";
            do
            {
               §#5§ = 1000 / 24;
            }
            while(_loc2_);
            
         }
      }
      
      protected var §'!A§:Number;
      
      protected var §8I§:int;
      
      protected var §^Z§:int;
      
      protected var §6#Z§:int;
      
      protected var §;#'§:String = "best";
      
      public function §7#B§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2);
            while(true)
            {
               this.§^Z§ = 0;
            }
            addr82:
         }
         do
         {
            this.§6#Z§ = param1.length;
            loop2:
            do
            {
               this.§'!A§ = param3;
               while(!_loc4_)
               {
                  this.§8I§ = 0;
                  if(!_loc4_)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr82);
            }
            while(!(_loc5_ || param1));
            
         }
         while(!_loc5_);
         
      }
      
      protected function runAnimation(param1:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
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
                           loop4:
                           while(_loc11_)
                           {
                              loop20:
                              while(true)
                              {
                                 if(_loc10_ && _loc3_)
                                 {
                                    continue loop4;
                                 }
                                 addr265:
                                 loop19:
                                 for(; _loc11_ || param1; §§goto(addr265))
                                 {
                                    §§push(§7#§.type == §6y§.§5z§);
                                    if(_loc10_ && param1)
                                    {
                                       continue loop20;
                                    }
                                    if(_loc11_ || param1)
                                    {
                                       if(!_loc10_)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                if(§7#§.defaultStartLabel != "")
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         §§push(§7#§.defaultStartLabel);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            addr145:
                                                            addr384:
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        if(§7#§.startLabel != "")
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(§7#§.startLabel);
                                                                                 if(_loc11_ || param1)
                                                                                 {
                                                                                    addr95:
                                                                                    §§push(§§pop());
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    addr107:
                                                                                    addr107:
                                                                                    if(§§pop() != "")
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr387:
                                                                                       }
                                                                                       if(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          _loc2_.gotoAndStop(_loc7_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr38:
                                                                                             break loop16;
                                                                                             addr51:
                                                                                             addr123:
                                                                                          }
                                                                                          break loop16;
                                                                                       }
                                                                                       continue loop19;
                                                                                       addr387:
                                                                                       return;
                                                                                    }
                                                                                    _loc2_.gotoAndStop(1);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§goto(addr38);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.name == "MovieClip_TutorialClip");
                                                                                             addr249:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                addr250:
                                                                                                addr302:
                                                                                                while(!(_loc10_ && param1))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr303:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc10_ && _loc2_))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            break loop19;
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                      addr303:
                                                                                                   }
                                                                                                   addr220:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(_loc10_ && _loc2_)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      if(!(_loc10_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            _loc4_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  §[I§.splice(param1,1);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr51);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        var _loc8_:*;
                                                                                                                        §§push((_loc8_ = this).§^Z§);
                                                                                                                        if(!(_loc10_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + 1);
                                                                                                                        }
                                                                                                                        var _loc9_:* = §§pop();
                                                                                                                        if(_loc11_ || this)
                                                                                                                        {
                                                                                                                           _loc8_.§^Z§ = _loc9_;
                                                                                                                        }
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           break loop16;
                                                                                                                        }
                                                                                                                        §§goto(addr387);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr387);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr303);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr250);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            break loop14;
                                                                                                         }
                                                                                                         addr320:
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr38);
                                                                                    }
                                                                                    break loop16;
                                                                                    §§goto(addr387);
                                                                                 }
                                                                                 §§goto(addr107);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§7#§.loop));
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr302);
                                                                                    }
                                                                                    addr301:
                                                                                 }
                                                                                 §§goto(addr303);
                                                                              }
                                                                              addr291:
                                                                           }
                                                                           §§goto(addr123);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc11_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                        §§goto(addr107);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr200:
                                                                        if(_loc10_ && param1)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        _loc5_ = "loop_run";
                                                                        _loc2_.gotoAndStop(_loc5_);
                                                                        addr163:
                                                                        if(!_loc10_)
                                                                        {
                                                                           dispatchEvent(new Event(§'@§));
                                                                           if(_loc10_)
                                                                           {
                                                                              §§goto(addr163);
                                                                           }
                                                                           §§goto(addr38);
                                                                        }
                                                                        addr209:
                                                                        §§goto(addr209);
                                                                     }
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop15;
                                                            }
                                                            §§goto(addr387);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr387);
                                                }
                                                else
                                                {
                                                   §§push("");
                                                }
                                                §§goto(addr145);
                                             }
                                             §§goto(addr200);
                                          }
                                          while(true)
                                          {
                                             if(_loc11_ || _loc3_)
                                             {
                                                addr328:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      addr283:
                                                      if(_loc10_ && _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr291);
                                                      }
                                                      else
                                                      {
                                                         _loc2_.nextFrame();
                                                      }
                                                      §§goto(addr387);
                                                   }
                                                   §§goto(addr301);
                                                   §§goto(addr328);
                                                }
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   §§goto(addr283);
                                                }
                                                addr274:
                                                addr339:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr274);
                                             }
                                          }
                                       }
                                       §§goto(addr242);
                                    }
                                    §§goto(addr249);
                                 }
                                 §§pop();
                                 while(true)
                                 {
                                    §§push(!§5!z§);
                                    if(_loc11_ || this)
                                    {
                                       §§goto(addr220);
                                    }
                                    §§goto(addr242);
                                    §§goto(addr266);
                                 }
                                 addr266:
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc10_)
                        {
                           §§goto(addr339);
                           §§push(true);
                        }
                        §§goto(addr384);
                     }
                     else
                     {
                        §§push(Boolean(§0#H§(_loc2_,§5!z§)));
                     }
                     §§goto(addr320);
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      protected function runAnimations() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = int(§[I§.length - 1);
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc3_ && this))
            {
               if(§§pop() < 0)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  loop1:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        _loc1_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               this.runAnimation(_loc1_);
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
               }
            }
            §§goto(addr58);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§8I§ += param1;
         }
         loop0:
         while(true)
         {
            §§push(this.§8I§);
            if(_loc2_)
            {
               if(§§pop() < this.§'!A§)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        if(_loc2_ || this)
                        {
                           if(_loc2_ || param1)
                           {
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 stage.quality = this.§;#'§;
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §&#6§ = false;
                                       addr70:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                break;
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   §§push(Boolean(stage));
                                                   if(!(_loc3_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr139:
                                                            while(true)
                                                            {
                                                               §§push(§7#§.stageQuality == "");
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               addr106:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     break loop7;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         addr138:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr106);
                                                      }
                                                   }
                                                   §§goto(addr138);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§^Z§);
                                                      addr122:
                                                      while(§§pop() >= this.§6#Z§)
                                                      {
                                                         continue loop7;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr148:
                                                }
                                             }
                                             continue;
                                          }
                                          §§goto(addr139);
                                       }
                                       continue loop1;
                                    }
                                 }
                                 addr118:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§8I§ -= this.§'!A§;
                                 }
                                 addr164:
                              }
                              §§goto(addr148);
                           }
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr70);
                  }
                  continue;
               }
               this.runAnimations();
               §§goto(addr164);
            }
            §§goto(addr122);
         }
      }
      
      override public function start(param1:§6y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.start(param1);
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
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 addr102:
                                 while(true)
                                 {
                                    §§push(param1.stageQuality == "");
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                           addr20:
                           return;
                           addr73:
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr102);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§;#'§ = stage.quality;
            §§goto(addr95);
         }
      }
   }
}
