package §%#W§
{
   import §]!$§.§4@§;
   import §]!$§.§6y§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §"!z§ extends §4@§
   {
      
      public static const §#5§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §"!z§))
         {
            §#5§ = 1000 / 60;
         }
      }
      
      protected var §'!A§:Number;
      
      protected var §8I§:int;
      
      protected var §^Z§:int;
      
      protected var §6#Z§:int;
      
      protected var §;#'§:String = "best";
      
      public function §"!z§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 16.666666666666668)
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
               for(; !(_loc5_ && param2); if(!(_loc4_ || param1))
               {
                  continue;
               },§§goto(addr53))
               {
                  this.§6#Z§ = param1.length;
                  loop2:
                  while(true)
                  {
                     this.§'!A§ = param3;
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                        addr53:
                        this.§8I§ = 0;
                        if(_loc4_)
                        {
                           return;
                           addr29:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr29);
      }
      
      protected function runAnimation(param1:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:* = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §[I§[param1];
         if(!_loc9_)
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
                     while(true)
                     {
                        §§pop();
                        addr293:
                        while(true)
                        {
                           §§push(!§7a§);
                        }
                     }
                     addr292:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc9_ && _loc2_))
                           {
                              §§push(true);
                              loop6:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 if(!_loc9_)
                                 {
                                    while(true)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                _loc2_.nextFrame();
                                             }
                                             if(_loc10_)
                                             {
                                                addr260:
                                                §§push(Boolean(§7#§.loop));
                                                if(_loc10_)
                                                {
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop());
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop1;
                                                            addr173:
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr292);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc9_ && this))
                                                   {
                                                      continue loop5;
                                                   }
                                                   addr269:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      continue loop8;
                                                   }
                                                   §§goto(addr149);
                                                }
                                                addr260:
                                             }
                                             while(true)
                                             {
                                                §§push(!§5!z§);
                                                if(_loc9_ && _loc2_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc10_ || param1)
                                                {
                                                   if(!(_loc10_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr173);
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                    addr287:
                                 }
                                 break;
                              }
                              return;
                           }
                           §§goto(addr287);
                        }
                        else
                        {
                           §§push(Boolean(§0#H§(_loc2_,§5!z§)));
                        }
                        §§goto(addr269);
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      protected function runAnimations() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = int(§[I§.length - 1);
         while(true)
         {
            §§push(_loc1_);
            if(_loc2_ || _loc1_)
            {
               if(_loc2_ || _loc3_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        break;
                     }
                     loop1:
                     while(!(_loc2_ || _loc3_))
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
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr63);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(§7#§.stageQuality == "");
                              if(!(_loc2_ && param1))
                              {
                                 if(_loc2_ && this)
                                 {
                                    continue;
                                 }
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(!§§pop());
                                    loop2:
                                    while(true)
                                    {
                                       addr97:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(!(_loc2_ && param1))
                                             {
                                                stage.quality = this.§;#'§;
                                                while(true)
                                                {
                                                }
                                             }
                                             loop6:
                                             while(_loc2_)
                                             {
                                                while(true)
                                                {
                                                   this.§8I§ -= this.§'!A§;
                                                   addr139:
                                                   while(true)
                                                   {
                                                      §§push(this.§^Z§);
                                                      addr113:
                                                      while(§§pop() >= this.§6#Z§)
                                                      {
                                                         continue loop6;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             §§push(Boolean(stage));
                                             while(!§§pop())
                                             {
                                                continue loop2;
                                             }
                                             continue loop1;
                                             addr98:
                                             addr120:
                                          }
                                          while(true)
                                          {
                                             §&#6§ = false;
                                             loop8:
                                             while(_loc3_)
                                             {
                                                dispatchEvent(new Event(Event.COMPLETE));
                                                while(!_loc3_)
                                                {
                                                   continue loop8;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr98);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr139);
                        }
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr49);
               }
               else
               {
                  this.runAnimations();
               }
               §§goto(addr155);
            }
            §§goto(addr113);
         }
      }
      
      override public function start(param1:§6y§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.start(param1);
         }
         var _loc2_:* = int(§[I§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && this))
            {
               if(_loc4_ || this)
               {
                  if(§§pop() < 0)
                  {
                     loop1:
                     while(true)
                     {
                        this.§6#Z§ = §[I§.length;
                        loop2:
                        while(true)
                        {
                           if(!(_loc3_ && param1))
                           {
                              this.§^Z§ = 0;
                              loop3:
                              while(true)
                              {
                                 §§push(Boolean(stage));
                                 loop4:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop7:
                                                do
                                                {
                                                   this.§;#'§ = stage.quality;
                                                   while(true)
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         continue loop3;
                                                      }
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(param1.stageQuality == "");
                                                         if(_loc3_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(_loc4_ || this)
                                                         {
                                                            continue loop4;
                                                         }
                                                         addr121:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop6;
                                                         }
                                                      }
                                                      addr115:
                                                      stage.quality = param1.stageQuality;
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         continue loop7;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                while(_loc3_);
                                                
                                                if(!_loc4_)
                                                {
                                                   continue loop2;
                                                }
                                                if(!(_loc4_ || param1))
                                                {
                                                   break loop2;
                                                }
                                             }
                                             return;
                                          }
                                       }
                                       addr78:
                                    }
                                    §§goto(addr121);
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
                  else
                  {
                     §[I§[_loc2_].visible = true;
                  }
                  §§push(_loc2_);
               }
               §§push(§§pop() - 1);
            }
            _loc2_ = §§pop();
         }
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
               if(!_loc2_)
               {
                  super.dispose();
               }
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               loop1:
               while(_loc2_ && _loc2_)
               {
                  while(true)
                  {
                     _loc1_++;
                     continue loop1;
                  }
               }
               continue;
            }
            §#<§[_loc1_].visible = false;
            §§goto(addr78);
         }
      }
   }
}
