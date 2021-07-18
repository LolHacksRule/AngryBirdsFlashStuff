package §]!$§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §`!]§ extends §4@§
   {
      
      public static const §#5§:Number = 41.666666666666664;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §#5§ = 1000 / 24;
         }
      }
      
      protected var §'!A§:Number;
      
      protected var §8I§:int;
      
      protected var §^Z§:int;
      
      protected var §6#Z§:int;
      
      protected var §;#'§:String = "best";
      
      public function §`!]§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
            while(true)
            {
               this.§^Z§ = 0;
               while(!(_loc4_ && param3))
               {
                  this.§'!A§ = param3;
                  loop3:
                  while(!_loc4_)
                  {
                     this.§8I§ = 0;
                     if(_loc5_ || param2)
                     {
                        addr50:
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              this.§6#Z§ = param1.length;
                              break loop3;
                              §§goto(addr50);
                           }
                           addr87:
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      protected function runAnimation(param1:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:* = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §[I§[param1];
         if(!_loc10_)
         {
            §§push(Boolean(§5!z§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               addr332:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr334:
                        while(true)
                        {
                           §§push(!§7a§);
                           if(_loc9_ || _loc2_)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr326:
                                    while(true)
                                    {
                                       §§push(true);
                                       addr327:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr328:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr326:
                                 }
                                 else
                                 {
                                    §§push(Boolean(§0#H§(_loc2_,§5!z§)));
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr313:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr312:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    continue loop0;
                                    §§goto(addr313);
                                 }
                              }
                              addr324:
                           }
                           §§goto(addr327);
                        }
                     }
                     addr333:
                  }
                  §§goto(addr324);
               }
            }
         }
         §§goto(addr303);
      }
      
      protected function runAnimations() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = int(§[I§.length - 1);
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc3_))
            {
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     if(!_loc2_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8I§ += param1;
         }
         loop0:
         while(true)
         {
            §§push(this.§8I§);
            if(!_loc3_)
            {
               if(§§pop() < this.§'!A§)
               {
                  if(_loc2_ || param1)
                  {
                     if(_loc2_)
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && this))
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 stage.quality = this.§;#'§;
                                 while(true)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §&#6§ = false;
                                          addr60:
                                          while(_loc3_ && _loc2_)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   §§push(§7#§.stageQuality == "");
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(!§§pop());
                                                         while(true)
                                                         {
                                                            addr101:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue loop1;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop5;
                                                      }
                                                      addr126:
                                                   }
                                                   §§goto(addr101);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr126);
                                                }
                                                §§goto(addr100);
                                             }
                                          }
                                          addr55:
                                          dispatchEvent(new Event(Event.COMPLETE));
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§8I§ -= this.§'!A§;
                                       }
                                       addr159:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§^Z§);
                                       addr119:
                                       while(§§pop() >= this.§6#Z§)
                                       {
                                       }
                                       continue loop0;
                                    }
                                 }
                                 addr108:
                              }
                              while(true)
                              {
                                 §§goto(addr124);
                              }
                           }
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr55);
               }
               else
               {
                  this.runAnimations();
               }
               §§goto(addr159);
            }
            §§goto(addr119);
         }
      }
      
      override public function start(param1:§6y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§pop();
                              loop7:
                              while(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(param1.stageQuality == "");
                                       if(_loc2_ && this)
                                       {
                                          loop4:
                                          while(§§pop())
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                this.§;#'§ = stage.quality;
                                                addr82:
                                                while(true)
                                                {
                                                   stage.quality = param1.stageQuality;
                                                   if(_loc3_ || this)
                                                   {
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break loop4;
                                                         }
                                                         continue loop6;
                                                         continue loop7;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr77:
                                       }
                                       continue loop6;
                                       return;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           addr90:
                        }
                        while(true)
                        {
                           §§goto(addr77);
                           §§goto(addr75);
                        }
                     }
                     §§goto(addr90);
                  }
               }
            }
         }
         §§goto(addr82);
      }
   }
}
