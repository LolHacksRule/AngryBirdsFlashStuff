package §1r§
{
   import §%!v§.§[<§;
   import §8!v§.§>!+§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §%_§ extends EventDispatcher
   {
       
      
      private var §+!3§:Number;
      
      private var §`!T§:MovieClip;
      
      private var §`D§:String;
      
      public function §%_§(param1:MovieClip, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§`!T§ = param1;
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            this.§`D§ = param2;
            if(_loc4_ || this)
            {
               if(_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §@"=§() : String
      {
         return this.§`D§;
      }
      
      public function updateEgg() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         if(_loc6_)
         {
            this.§`!T§.stop();
            while(true)
            {
               this.§`!T§.crown.stop();
               loop1:
               while(!(_loc5_ && this))
               {
                  while(true)
                  {
                     this.§`!T§.star1.graphic.stop();
                     while(true)
                     {
                        while(true)
                        {
                           this.§`!T§.star2.graphic.stop();
                           do
                           {
                              this.§`!T§.star3.graphic.stop();
                           }
                           while(_loc5_ && this);
                           
                           if(!(_loc6_ || _loc1_))
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              continue loop1;
                           }
                           if(false)
                           {
                              continue;
                           }
                           §§push((AngryBirdsFP11.sUserProgress as §[<§).§6M§(this.§`D§));
                           if(_loc6_ || _loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           var _loc1_:* = §§pop();
                           if(_loc6_)
                           {
                              this.§`!T§.gotoAndStop(!!_loc1_ ? 1 : 2);
                              addr527:
                              if(_loc1_)
                              {
                                 addr515:
                                 _loc2_ = (AngryBirdsFP11.sUserProgress as §[<§).getStarsForLevel(this.§`D§);
                                 addr502:
                                 _loc3_ = (AngryBirdsFP11.sUserProgress as §[<§).getEagleScoreForLevel(this.§`D§) == 100;
                                 addr516:
                                 addr503:
                                 addr509:
                                 §§push(AngryBirdsFP11.sUserProgress);
                                 if(_loc6_)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       addr480:
                                       _loc4_ = (§§pop() as §[<§).§#!o§(this.§`D§);
                                       this.§`!T§.star1.graphic.visible = true;
                                       addr479:
                                       if(!_loc5_)
                                       {
                                          this.§`!T§.star2.graphic.visible = true;
                                          this.§`!T§.star3.graphic.visible = true;
                                          addr443:
                                          §§push(this.§`!T§.star1.graphic);
                                          if(_loc2_ >= 1)
                                          {
                                             addr434:
                                             §§pop().gotoAndStop(1);
                                             addr435:
                                             §§push(this.§`!T§.star2.graphic);
                                             if(_loc2_ >= 2)
                                             {
                                                addr418:
                                                §§pop().gotoAndStop(1);
                                                addr419:
                                                §§push(this.§`!T§.star3.graphic);
                                                if(_loc2_ >= 3)
                                                {
                                                   addr402:
                                                   §§pop().gotoAndStop(1);
                                                   addr366:
                                                   §§push(_loc4_);
                                                   if(!(_loc5_ && _loc1_))
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         addr382:
                                                         §§push(§§pop() >= 1);
                                                         if(§§pop() >= 1)
                                                         {
                                                            addr384:
                                                            if(_loc6_)
                                                            {
                                                               §§pop();
                                                               §§push(_loc4_);
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(3);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr356:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr358:
                                                                                    this.§`!T§.crown.visible = true;
                                                                                    this.§`!T§.crown.gotoAndStop(_loc4_);
                                                                                    addr325:
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(!(_loc5_ && _loc1_))
                                                                                       {
                                                                                          addr289:
                                                                                          this.§`!T§.feather.visible = _loc3_;
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             this.§`!T§.buttonMode = true;
                                                                                             addr286:
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                this.§`!T§.addEventListener(MouseEvent.CLICK,this.§%n§);
                                                                                                this.§`!T§.addEventListener(MouseEvent.ROLL_OVER,this.§!!N§);
                                                                                                addr262:
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      this.§`!T§.addEventListener(MouseEvent.ROLL_OUT,this.§3!n§);
                                                                                                      this.§+!3§ = this.§`!T§.scaleX;
                                                                                                      addr230:
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§goto(addr516);
                                                                                                         }
                                                                                                         §§goto(addr100);
                                                                                                      }
                                                                                                      addr311:
                                                                                                      if(!(_loc5_ && _loc1_))
                                                                                                      {
                                                                                                         §§goto(addr289);
                                                                                                      }
                                                                                                      §§goto(addr503);
                                                                                                      addr243:
                                                                                                   }
                                                                                                   §§goto(addr435);
                                                                                                }
                                                                                                §§goto(addr419);
                                                                                                addr280:
                                                                                             }
                                                                                             §§goto(addr527);
                                                                                          }
                                                                                          §§goto(addr325);
                                                                                       }
                                                                                       §§goto(addr443);
                                                                                    }
                                                                                    §§goto(addr358);
                                                                                    addr363:
                                                                                 }
                                                                                 this.§`!T§.crown.visible = false;
                                                                                 §§goto(addr311);
                                                                              }
                                                                              §§goto(addr527);
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                        §§goto(addr384);
                                                                     }
                                                                     §§goto(addr382);
                                                                  }
                                                                  §§goto(addr480);
                                                               }
                                                               §§goto(addr366);
                                                               addr387:
                                                            }
                                                            §§goto(addr502);
                                                         }
                                                         §§goto(addr356);
                                                      }
                                                      §§goto(addr515);
                                                   }
                                                   §§goto(addr479);
                                                   addr403:
                                                }
                                                §§goto(addr402);
                                                §§push(2);
                                             }
                                             §§goto(addr418);
                                             §§push(2);
                                          }
                                          §§goto(addr434);
                                          §§push(2);
                                          addr451:
                                       }
                                       addr481:
                                       §§goto(addr481);
                                    }
                                    §§goto(addr509);
                                 }
                                 addr485:
                                 §§goto(addr485);
                                 addr507:
                              }
                              this.§`!T§.star1.graphic.visible = false;
                              addr209:
                              if(!(_loc5_ && _loc1_))
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    this.§`!T§.star2.graphic.visible = false;
                                    addr179:
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   this.§`!T§.star3.graphic.visible = false;
                                                   addr164:
                                                   if(!(_loc5_ && this))
                                                   {
                                                      this.§`!T§.feather.visible = false;
                                                      addr138:
                                                      if(_loc6_)
                                                      {
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  this.§`!T§.buttonMode = false;
                                                                  addr129:
                                                                  if(!_loc5_)
                                                                  {
                                                                     this.§`!T§.crown.visible = false;
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§goto(addr507);
                                                                              }
                                                                              addr100:
                                                                              return;
                                                                           }
                                                                           §§goto(addr209);
                                                                        }
                                                                        §§goto(addr138);
                                                                     }
                                                                     §§goto(addr129);
                                                                  }
                                                                  §§goto(addr179);
                                                               }
                                                               §§goto(addr363);
                                                            }
                                                            §§goto(addr289);
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                   §§goto(addr403);
                                                }
                                                §§goto(addr451);
                                             }
                                             §§goto(addr387);
                                          }
                                          §§goto(addr280);
                                       }
                                       §§goto(addr262);
                                    }
                                    §§goto(addr230);
                                 }
                                 §§goto(addr480);
                              }
                              §§goto(addr286);
                           }
                           §§goto(addr443);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      private function §!!N§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §>!+§.§;"§.§^!K§(param1.currentTarget,{
               "scaleX":this.§+!3§ + 0.05,
               "scaleY":this.§+!3§ + 0.05
            },null,0.2,§>!+§.§;U§).play();
         }
      }
      
      private function §3!n§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §>!+§.§;"§.§^!K§(param1.currentTarget,{
               "scaleX":this.§+!3§,
               "scaleY":this.§+!3§
            },null,0.2,§>!+§.§;U§).play();
         }
      }
      
      private function §%n§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            param1.currentTarget.scaleX = param1.currentTarget.scaleY = this.§+!3§;
            if(_loc3_ || _loc3_)
            {
               dispatchEvent(param1);
            }
         }
      }
   }
}
