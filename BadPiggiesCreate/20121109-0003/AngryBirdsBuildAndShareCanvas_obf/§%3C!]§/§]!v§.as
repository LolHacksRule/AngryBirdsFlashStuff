package §<!]§
{
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §]!v§ extends MovieClip
   {
       
      
      private var §8"0§:§=!r§;
      
      private var §6!l§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §"!f§:Boolean = false;
      
      public function §]!v§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            §§push(param5);
            loop0:
            while(true)
            {
               §§push(Number(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(AngryBirdsFP11.§@"7§);
                              while(true)
                              {
                                 §§push(§§pop().getAppWidth());
                                 if(!_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                    }
                                    addr125:
                                 }
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       param5 = §§pop();
                                       while(true)
                                       {
                                          §§push(param6);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr91:
                                             while(_loc9_ || param3)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc8_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr56:
                                                         while(true)
                                                         {
                                                            if(_loc9_ || param1)
                                                            {
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                      addr54:
                                                   }
                                                   while(!_loc8_)
                                                   {
                                                      continue loop0;
                                                      §§goto(addr56);
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop2;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr125);
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public function §8"8§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(!this.§"!f§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§8"0§);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && param2))
                        {
                           addr182:
                           §§push(this.§8"0§);
                           while(true)
                           {
                              §§pop().stop();
                           }
                           addr182:
                        }
                        while(true)
                        {
                        }
                        addr183:
                     }
                     while(true)
                     {
                        this.§6!l§ = new ColorTransform();
                        loop3:
                        while(!(_loc6_ && param3))
                        {
                           this.§6!l§.redOffset = transform.colorTransform.redOffset;
                           loop4:
                           while(!(_loc6_ && this))
                           {
                              this.§6!l§.greenOffset = transform.colorTransform.greenOffset;
                              while(true)
                              {
                                 this.§6!l§.blueOffset = transform.colorTransform.blueOffset;
                                 loop6:
                                 for(; !(_loc6_ && param2); loop9:
                                 for(; !(_loc6_ && this); if(_loc6_ && param3)
                                 {
                                    continue;
                                 },if(_loc6_)
                                 {
                                    continue loop3;
                                 },if(_loc6_)
                                 {
                                    continue loop0;
                                 },§§goto(addr59))
                                 {
                                    §§push(this.§8"0§);
                                    loop10:
                                    while(_loc5_)
                                    {
                                       §§pop().onComplete = this.§#!R§;
                                       loop11:
                                       while(_loc5_)
                                       {
                                          continue loop10;
                                          while(true)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                continue loop9;
                                             }
                                             continue loop11;
                                             addr59:
                                             this.§"!f§ = true;
                                             if(_loc5_ || param2)
                                             {
                                                return;
                                             }
                                          }
                                          §§push(this.§8"0§);
                                          if(_loc6_)
                                          {
                                             continue loop10;
                                          }
                                          §§pop().play();
                                          §§goto(addr41);
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr182);
                                 })
                                 {
                                    while(true)
                                    {
                                       this.§8"0§ = §7I§.§[E§.§ ";§(this.§6!l§,{
                                          "redOffset":param1,
                                          "greenOffset":param2,
                                          "blueOffset":param3
                                       },null,param4);
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr183);
                     }
                  }
                  §§goto(addr182);
               }
            }
            §§goto(addr187);
         }
         §§goto(addr120);
      }
      
      public function §0"+§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mNewAlpha = param1;
         }
         do
         {
            alpha = param1;
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function §[!r§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§8"0§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§8"0§);
                     addr129:
                     while(true)
                     {
                        §§pop().stop();
                        addr130:
                        while(true)
                        {
                        }
                     }
                  }
                  addr127:
               }
               while(true)
               {
                  this.§8"0§ = §7I§.§[E§.§ ";§(this,{"mNewAlpha":param1},null,param2);
                  loop5:
                  while(true)
                  {
                     if(!(_loc3_ && this))
                     {
                        §§push(this.§8"0§);
                        loop6:
                        while(true)
                        {
                           if(_loc3_ && _loc3_)
                           {
                              break loop5;
                           }
                           §§pop().onComplete = this.§0<§;
                           while(_loc4_ || this)
                           {
                              §§push(this.§8"0§);
                              loop8:
                              while(_loc4_)
                              {
                                 §§pop().§5"6§ = false;
                                 while(true)
                                 {
                                    §§push(this.§8"0§);
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop8;
                                 }
                                 return;
                              }
                              continue loop6;
                              if(_loc3_ && _loc3_)
                              {
                                 continue;
                              }
                              if(_loc3_)
                              {
                                 continue loop5;
                              }
                              §§goto(addr53);
                           }
                           §§goto(addr130);
                        }
                     }
                     else
                     {
                        §§goto(addr127);
                     }
                  }
                  §§goto(addr129);
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §0<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§;x§));
         }
      }
      
      private function §#!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§"!f§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§6!l§)
            {
               loop0:
               while(true)
               {
                  transform.colorTransform = this.§6!l§;
                  while(true)
                  {
                     if(!this.§"!f§)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           continue loop0;
                        }
                        addr68:
                        while(_loc2_ || _loc3_)
                        {
                           if(_loc2_)
                           {
                              alpha = this.mNewAlpha;
                           }
                           if(!_loc3_)
                           {
                              addr19:
                              return;
                              addr36:
                           }
                        }
                        continue;
                     }
                  }
               }
            }
            while(alpha != this.mNewAlpha)
            {
               §§goto(addr28);
            }
            §§goto(addr19);
         }
         §§goto(addr36);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            AngryBirdsFP11.§@"7§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         loop0:
         while(true)
         {
            §§push(this.§8"0§);
            if(_loc1_ || _loc2_)
            {
               if(!§§pop())
               {
                  break;
               }
               if(_loc1_ || this)
               {
                  addr70:
                  this.§8"0§.stop();
               }
               while(!_loc2_)
               {
                  this.§8"0§ = null;
                  if(!(_loc2_ && this))
                  {
                     break loop0;
                  }
               }
               continue;
            }
            §§goto(addr70);
         }
      }
   }
}
