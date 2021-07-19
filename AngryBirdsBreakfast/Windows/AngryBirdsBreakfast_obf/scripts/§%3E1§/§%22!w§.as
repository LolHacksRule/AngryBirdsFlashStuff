package §>1§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §"!w§ extends §7O§
   {
      
      public static const §8'§:Number = 41.666666666666664;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8'§ = 1000 / 24;
         }
      }
      
      protected var §!!^§:Number;
      
      protected var §0M§:int;
      
      protected var §4t§:int;
      
      protected var § `§:int;
      
      protected var §"!0§:String = "best";
      
      public function §"!w§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§4t§ = 0;
               loop1:
               while(true)
               {
                  this.§ `§ = param1.length;
                  while(true)
                  {
                     this.§!!^§ = param3;
                     while(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              this.§0M§ = 0;
                              if(!_loc4_)
                              {
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      protected function §0!-§(param1:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:* = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §?!a§[param1];
         if(_loc9_)
         {
            §§push(Boolean(§^!4§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr329:
                        while(true)
                        {
                           §§push(!§-!"§);
                        }
                     }
                     addr328:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr321:
                           while(true)
                           {
                              §§push(true);
                              addr322:
                              loop32:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr323:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc10_)
                                       {
                                          if(!§§pop())
                                          {
                                             _loc2_.nextFrame();
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(Boolean(§=d§.loop));
                                          }
                                       }
                                       loop10:
                                       while(_loc9_)
                                       {
                                          §§push(§§pop());
                                          loop11:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   if(!(_loc10_ && this))
                                                   {
                                                      §§pop();
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(!§^!4§);
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            if(!(_loc9_ || _loc3_))
                                                            {
                                                               continue loop12;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc10_ && this)
                                                               {
                                                                  continue loop5;
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               break loop13;
                                                            }
                                                            if(!_loc10_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            addr314:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr315:
                                                               while(true)
                                                               {
                                                                  continue loop8;
                                                               }
                                                            }
                                                         }
                                                         addr66:
                                                         if(!(_loc10_ && _loc2_))
                                                         {
                                                            addr357:
                                                            break loop8;
                                                            addr34:
                                                         }
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop32;
                                                }
                                                continue loop32;
                                             }
                                             §§goto(addr220);
                                          }
                                       }
                                       continue loop0;
                                    }
                                    addr360:
                                    return;
                                 }
                              }
                           }
                           addr321:
                        }
                        else
                        {
                           §§push(Boolean(§5t§(_loc2_,§^!4§)));
                        }
                        §§goto(addr314);
                     }
                  }
               }
            }
         }
         §§goto(addr321);
      }
      
      protected function runAnimations() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = int(§?!a§.length - 1);
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc1_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc3_ || _loc1_))
                  {
                     continue;
                  }
                  if(_loc3_ || this)
                  {
                     break;
                  }
               }
               else
               {
                  this.§0!-§(_loc1_);
               }
               §§push(_loc1_);
               if(_loc3_ || _loc1_)
               {
                  §§push(§§pop() - 1);
               }
            }
            _loc1_ = §§pop();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§0M§ += param1;
         }
         loop0:
         while(true)
         {
            §§push(this.§0M§);
            if(_loc2_ || this)
            {
               if(§§pop() < this.§!!^§)
               {
                  if(!_loc3_)
                  {
                     if(_loc2_ || this)
                     {
                        if(!(_loc3_ && param1))
                        {
                           if(_loc2_ || this)
                           {
                              break;
                           }
                           addr117:
                           while(true)
                           {
                              stage.quality = this.§"!0§;
                           }
                           addr117:
                        }
                        while(true)
                        {
                           addr88:
                           while(true)
                           {
                              §!D§ = false;
                           }
                           §§goto(addr117);
                        }
                     }
                     loop4:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           dispatchEvent(new Event(Event.COMPLETE));
                           while(_loc3_ && _loc3_)
                           {
                              loop7:
                              while(_loc3_)
                              {
                                 loop8:
                                 while(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§0M§ -= this.§!!^§;
                                       continue loop8;
                                    }
                                 }
                                 §§push(this.§4t§);
                                 while(§§pop() >= this.§ `§)
                                 {
                                    continue loop7;
                                 }
                                 continue loop0;
                              }
                              §§push(Boolean(stage));
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§pop();
                                       addr137:
                                       while(true)
                                       {
                                          §§push(§=d§.stageQuality == "");
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(_loc2_ || param1)
                                          {
                                             break;
                                          }
                                          continue loop10;
                                       }
                                    }
                                    addr136:
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr117);
                                 }
                              }
                              §§goto(addr136);
                           }
                           continue loop0;
                           addr70:
                        }
                        §§goto(addr137);
                     }
                  }
                  §§goto(addr70);
               }
               else
               {
                  this.runAnimations();
               }
               §§goto(addr164);
            }
            §§goto(addr125);
         }
      }
      
      override public function start(param1:§2B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.start(param1);
            loop0:
            while(true)
            {
               this.§ `§ = §?!a§.length;
               loop1:
               while(true)
               {
                  this.§4t§ = 0;
                  while(true)
                  {
                     §§push(Boolean(stage));
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§pop();
                              addr97:
                              loop7:
                              while(true)
                              {
                                 §§push(param1.stageQuality == "");
                                 if(_loc3_)
                                 {
                                    if(_loc2_ && this)
                                    {
                                       continue loop8;
                                    }
                                    addr63:
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       break loop7;
                                       §§goto(addr63);
                                    }
                                 }
                                 break;
                              }
                              while(§§pop())
                              {
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr97);
                                 }
                                 continue loop0;
                              }
                              §§goto(addr20);
                           }
                           addr96:
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr96);
                     addr79:
                     while(_loc3_ || this)
                     {
                        if(_loc3_)
                        {
                           stage.quality = param1.stageQuality;
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              §§goto(addr66);
                           }
                           else
                           {
                              addr38:
                           }
                           addr20:
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr38);
      }
   }
}
