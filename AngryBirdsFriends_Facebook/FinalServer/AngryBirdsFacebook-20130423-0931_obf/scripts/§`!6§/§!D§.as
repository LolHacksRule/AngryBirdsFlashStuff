package §`!6§
{
   import §2"'§.§0W§;
   import §@!%§.§#!$§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §!D§ extends EventDispatcher
   {
       
      
      private var §9=§:Number;
      
      private var §0"+§:MovieClip;
      
      private var §^"B§:String;
      
      public function §!D§(param1:MovieClip, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§0"+§ = param1;
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§^"B§ = param2;
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr46);
      }
      
      public function get §4^§() : String
      {
         return this.§^"B§;
      }
      
      public function updateEgg() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         if(!(_loc6_ && this))
         {
            this.§0"+§.stop();
            while(true)
            {
               this.§0"+§.crown.stop();
               addr70:
               while(true)
               {
                  this.§0"+§.star1.graphic.stop();
               }
            }
            addr74:
         }
         loop2:
         while(true)
         {
            addr47:
            addr75:
            while(true)
            {
               this.§0"+§.star2.graphic.stop();
               while(!_loc6_)
               {
                  if(!_loc6_)
                  {
                     this.§0"+§.star3.graphic.stop();
                     if(_loc5_)
                     {
                        continue loop2;
                     }
                     continue;
                  }
                  §§goto(addr74);
               }
               §§goto(addr70);
            }
            §§push((AngryBirdsFP11.sUserProgress as §#!$§).§,"F§(this.§^"B§));
            if(_loc5_)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc1_:* = §§pop();
            if(_loc5_)
            {
               this.§0"+§.gotoAndStop(!!_loc1_ ? 1 : 2);
               loop5:
               while(true)
               {
                  §§push(_loc1_);
                  loop6:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§0"+§.star1.graphic.visible = false;
                        loop7:
                        while(!_loc6_)
                        {
                           this.§0"+§.star2.graphic.visible = false;
                           loop8:
                           for(; _loc5_ || _loc3_; while(true)
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 if(_loc5_ || _loc1_)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       this.§0"+§.buttonMode = false;
                                       §§goto(addr128);
                                    }
                                    §§goto(addr532);
                                 }
                                 break;
                              }
                              continue loop8;
                              §§goto(addr106);
                           },§§goto(addr234))
                           {
                              if(!_loc6_)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       this.§0"+§.star3.graphic.visible = false;
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             this.§0"+§.feather.visible = false;
                                             continue loop8;
                                          }
                                          continue loop7;
                                          addr128:
                                          while(_loc5_ || this)
                                          {
                                             this.§0"+§.crown.visible = false;
                                             if(!(_loc5_ || _loc1_))
                                             {
                                                continue;
                                             }
                                             if(_loc6_ && _loc3_)
                                             {
                                                continue loop8;
                                             }
                                             if(!_loc6_)
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   break loop6;
                                                }
                                                while(true)
                                                {
                                                   this.§0"+§.star2.graphic.visible = true;
                                                   addr473:
                                                   while(_loc5_)
                                                   {
                                                      this.§0"+§.star3.graphic.visible = true;
                                                      break loop9;
                                                   }
                                                   continue loop5;
                                                }
                                                addr483:
                                             }
                                             loop36:
                                             while(true)
                                             {
                                                this.§0"+§.crown.visible = true;
                                                addr374:
                                                while(true)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      this.§0"+§.crown.gotoAndStop(_loc4_);
                                                      loop29:
                                                      while(true)
                                                      {
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§0"+§.feather.visible = _loc3_;
                                                               addr303:
                                                               while(true)
                                                               {
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        this.§0"+§.buttonMode = true;
                                                                        break loop7;
                                                                     }
                                                                     addr536:
                                                                     while(true)
                                                                     {
                                                                        §§push(AngryBirdsFP11.sUserProgress);
                                                                        addr538:
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(int((§§pop() as §#!$§).getStarsForLevel(this.§^"B§)));
                                                                           addr544:
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(AngryBirdsFP11.sUserProgress);
                                                                     loop21:
                                                                     for(; !_loc6_; while(true)
                                                                     {
                                                                        §§push(AngryBirdsFP11.sUserProgress);
                                                                        if(!(_loc5_ || _loc2_))
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        §§push((§§pop() as §#!$§).§;M§(this.§^"B§));
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           addr508:
                                                                           while(true)
                                                                           {
                                                                              this.§0"+§.star1.graphic.visible = true;
                                                                              §§goto(addr483);
                                                                           }
                                                                        }
                                                                     })
                                                                     {
                                                                        §§push((§§pop() as §#!$§).getEagleScoreForLevel(this.§^"B§) == 100);
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           continue loop21;
                                                                        }
                                                                     }
                                                                     §§goto(addr538);
                                                                  }
                                                               }
                                                               §§goto(addr344);
                                                            }
                                                            addr344:
                                                            this.§0"+§.addEventListener(MouseEvent.CLICK,this.§9c§);
                                                            addr296:
                                                            loop13:
                                                            while(true)
                                                            {
                                                               this.§0"+§.addEventListener(MouseEvent.ROLL_OVER,this.§ for§);
                                                               addr250:
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     break loop13;
                                                                  }
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr297);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ && _loc1_))
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(3);
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(!(_loc5_ || _loc3_))
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
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() >= §§pop());
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr531);
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                    addr389:
                                                                                 }
                                                                                 while(§§pop())
                                                                                 {
                                                                                    continue loop36;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§goto(addr389);
                                                                                       §§push(1);
                                                                                    }
                                                                                    §§goto(addr544);
                                                                                 }
                                                                                 §§goto(addr507);
                                                                              }
                                                                              addr384:
                                                                           }
                                                                           addr425:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr384);
                                                                           }
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop29;
                                                                  }
                                                               }
                                                               §§goto(addr296);
                                                            }
                                                            addr297:
                                                            addr296:
                                                            this.§0"+§.addEventListener(MouseEvent.ROLL_OUT,this.§6!I§);
                                                            while(!(_loc5_ || _loc1_))
                                                            {
                                                               §§goto(addr276);
                                                               §§goto(addr257);
                                                            }
                                                            addr276:
                                                            addr257:
                                                            this.§9=§ = this.§0"+§.scaleX;
                                                            break loop8;
                                                            addr234:
                                                         }
                                                         addr441:
                                                         while(true)
                                                         {
                                                            this.§0"+§.star3.graphic.gotoAndStop(_loc2_ >= 3 ? 1 : 2);
                                                            §§goto(addr425);
                                                         }
                                                      }
                                                   }
                                                   addr457:
                                                   while(true)
                                                   {
                                                      this.§0"+§.star2.graphic.gotoAndStop(_loc2_ >= 2 ? 1 : 2);
                                                      §§goto(addr441);
                                                   }
                                                   continue loop36;
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§0"+§.star1.graphic.gotoAndStop(_loc2_ >= 1 ? 1 : 2);
                                          §§goto(addr457);
                                       }
                                    }
                                    §§goto(addr508);
                                 }
                                 §§goto(addr303);
                              }
                              §§goto(addr250);
                           }
                           return;
                        }
                        while(true)
                        {
                           if(!(_loc6_ && _loc1_))
                           {
                              if(!(_loc6_ && _loc1_))
                              {
                                 §§goto(addr296);
                              }
                              §§goto(addr473);
                           }
                           §§goto(addr374);
                        }
                     }
                     §§goto(addr536);
                  }
                  §§goto(addr89);
               }
            }
            §§goto(addr457);
         }
      }
      
      private function § for§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §0W§.§&"5§.§]!r§(param1.currentTarget,{
               "scaleX":this.§9=§ + 0.05,
               "scaleY":this.§9=§ + 0.05
            },null,0.2,§0W§.§'I§).play();
         }
      }
      
      private function §6!I§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §0W§.§&"5§.§]!r§(param1.currentTarget,{
               "scaleX":this.§9=§,
               "scaleY":this.§9=§
            },null,0.2,§0W§.§'I§).play();
         }
      }
      
      private function §9c§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            param1.currentTarget.scaleX = param1.currentTarget.scaleY = this.§9=§;
            if(_loc3_)
            {
               dispatchEvent(param1);
            }
         }
      }
   }
}
