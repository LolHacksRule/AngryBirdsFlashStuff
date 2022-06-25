package §4L§
{
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §,!_§ extends MovieClip
   {
       
      
      private var get:§4!Z§;
      
      private var §]u§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §-<§:Boolean = false;
      
      public function §,!_§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            §§push(param5);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr133:
                        while(true)
                        {
                           §§pop();
                           addr134:
                           while(true)
                           {
                              §§push(AngryBirdsFP11.§3!a§);
                              addr111:
                              while(true)
                              {
                                 §§push(§§pop().getAppWidth());
                                 addr112:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                        }
                        addr133:
                     }
                     while(true)
                     {
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop4:
                           while(true)
                           {
                              param5 = §§pop();
                              while(true)
                              {
                                 §§push(param6);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop7:
                                    while(!_loc8_)
                                    {
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop());
                                          if(_loc8_ && param2)
                                          {
                                             continue loop1;
                                          }
                                          if(!§§pop())
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc9_ || param3)
                                                {
                                                   §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      addr29:
                                                      addr73:
                                                      while(true)
                                                      {
                                                         §§push(AngryBirdsFP11.§3!a§);
                                                         if(_loc8_ && param3)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop().getAppHeight());
                                                         if(!_loc8_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            if(_loc9_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               addr47:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(_loc9_ || param3)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc9_ || this)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop9;
                                                      }
                                                      §§goto(addr134);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr133);
                                                }
                                                §§goto(addr111);
                                             }
                                          }
                                          §§goto(addr47);
                                       }
                                       §§goto(addr112);
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr133);
         }
         §§goto(addr27);
      }
      
      public function §"!h§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(!this.§-<§)
            {
               loop0:
               while(true)
               {
                  §§push(this.get);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.get);
                           addr182:
                           while(true)
                           {
                              §§pop().stop();
                              addr183:
                              while(true)
                              {
                              }
                           }
                           addr66:
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                           addr73:
                           §§push(this.get);
                           if(_loc5_ || param3)
                           {
                              if(!_loc6_)
                              {
                                 §§pop().play();
                                 do
                                 {
                                    this.§-<§ = true;
                                 }
                                 while(_loc6_);
                                 
                                 if(_loc6_ && param1)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr66);
                                          }
                                          break;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc5_ || this)
                                          {
                                             if(!(_loc5_ || this))
                                             {
                                                break;
                                             }
                                             §§push(this.get);
                                             while(true)
                                             {
                                                §§pop().onComplete = this.§4d§;
                                                continue loop12;
                                                §§goto(addr73);
                                             }
                                          }
                                          addr123:
                                          addr158:
                                          while(!_loc6_)
                                          {
                                             this.get = §,!b§.§<d§.§>a§(this.§]u§,{
                                                "redOffset":param1,
                                                "greenOffset":param2,
                                                "blueOffset":param3
                                             },null,param4);
                                             continue loop10;
                                          }
                                          while(true)
                                          {
                                             this.§]u§.greenOffset = transform.colorTransform.greenOffset;
                                             break loop12;
                                          }
                                       }
                                       §§goto(addr183);
                                    }
                                    while(!(_loc6_ && param2))
                                    {
                                       while(true)
                                       {
                                          this.§]u§.blueOffset = transform.colorTransform.blueOffset;
                                          §§goto(addr123);
                                       }
                                    }
                                    while(_loc5_ || param3)
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr187);
                                       }
                                       this.§]u§.redOffset = transform.colorTransform.redOffset;
                                       §§goto(addr158);
                                    }
                                    continue loop0;
                                    addr164:
                                 }
                                 return;
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr54);
                        }
                     }
                     while(true)
                     {
                        this.§]u§ = new ColorTransform();
                        §§goto(addr164);
                        §§goto(addr183);
                     }
                  }
                  §§goto(addr182);
               }
            }
            addr187:
            return;
         }
         §§goto(addr140);
      }
      
      public function §]f§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.mNewAlpha = param1;
            do
            {
               alpha = param1;
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function §7!+§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.get);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  addr112:
                  while(true)
                  {
                     §§push(this.get);
                     addr114:
                     while(true)
                     {
                        §§pop().stop();
                        addr115:
                        while(true)
                        {
                        }
                     }
                  }
                  addr112:
               }
               while(true)
               {
                  this.get = §,!b§.§<d§.§>a§(this,{"mNewAlpha":param1},null,param2);
                  loop2:
                  while(true)
                  {
                     §§push(this.get);
                     while(!_loc3_)
                     {
                        §§pop().onComplete = this.§-!t§;
                        loop4:
                        while(_loc4_ || param2)
                        {
                           §§push(this.get);
                           loop5:
                           while(true)
                           {
                              §§pop().§-3§ = false;
                              addr57:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop4;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc4_ || _loc3_)
                                 {
                                    continue loop5;
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr114);
                           }
                        }
                        §§goto(addr115);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      private function §-!t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§5!t§));
         }
      }
      
      private function §4d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§-<§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§]u§)
            {
               loop2:
               while(true)
               {
                  transform.colorTransform = this.§]u§;
                  loop3:
                  while(true)
                  {
                     if(!this.§-<§)
                     {
                        while(true)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              if(_loc2_)
                              {
                                 this.§]u§ = null;
                                 addr80:
                                 break;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        addr68:
                     }
                  }
               }
               addr84:
            }
            while(alpha != this.mNewAlpha)
            {
               if(_loc2_)
               {
                  alpha = this.mNewAlpha;
               }
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr68);
               }
               §§goto(addr80);
            }
            return;
         }
         §§goto(addr84);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            AngryBirdsFP11.§3!a§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         loop0:
         while(true)
         {
            §§push(this.get);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.get);
                     addr75:
                     addr44:
                     while(true)
                     {
                        §§pop().stop();
                        continue loop0;
                     }
                     addr51:
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     §§goto(addr51);
                  }
               }
               return;
            }
            §§goto(addr75);
         }
      }
   }
}
