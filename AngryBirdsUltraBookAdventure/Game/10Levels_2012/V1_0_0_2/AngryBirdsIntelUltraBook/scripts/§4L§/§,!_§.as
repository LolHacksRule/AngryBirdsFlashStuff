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
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              if(_loc9_ || param1)
                              {
                                 param5 = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(param6);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr99:
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                addr70:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr71:
                                                   while(true)
                                                   {
                                                      if(!(_loc8_ && this))
                                                      {
                                                         if(_loc9_ || this)
                                                         {
                                                            continue loop9;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                             }
                                             addr69:
                                          }
                                          while(true)
                                          {
                                             if(_loc9_)
                                             {
                                                §§pop();
                                                continue loop8;
                                             }
                                             continue loop0;
                                             §§goto(addr71);
                                          }
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 addr143:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§pop();
                                 }
                                 addr148:
                              }
                              while(true)
                              {
                                 §§goto(addr117);
                              }
                           }
                        }
                     }
                     §§goto(addr148);
                  }
               }
            }
         }
         §§goto(addr143);
      }
      
      public function §"!h§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            if(!this.§-<§)
            {
               loop0:
               while(true)
               {
                  §§push(this.get);
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        addr181:
                        while(true)
                        {
                           §§push(this.get);
                           addr183:
                           while(true)
                           {
                              §§pop().stop();
                              addr184:
                              while(true)
                              {
                              }
                           }
                        }
                        addr181:
                     }
                     loop1:
                     while(true)
                     {
                        this.§]u§ = new ColorTransform();
                        while(true)
                        {
                           this.§]u§.redOffset = transform.colorTransform.redOffset;
                           loop3:
                           while(true)
                           {
                              this.§]u§.greenOffset = transform.colorTransform.greenOffset;
                              loop4:
                              while(true)
                              {
                                 this.§]u§.blueOffset = transform.colorTransform.blueOffset;
                                 loop5:
                                 while(!(_loc5_ && param3))
                                 {
                                    this.get = §,!b§.§<d§.§>a§(this.§]u§,{
                                       "redOffset":param1,
                                       "greenOffset":param2,
                                       "blueOffset":param3
                                    },null,param4);
                                    loop6:
                                    for(; _loc6_; while(true)
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          continue loop5;
                                       }
                                       continue loop6;
                                       §§goto(addr40);
                                    },continue loop5)
                                    {
                                       §§push(this.get);
                                       while(!_loc5_)
                                       {
                                          §§pop().onComplete = this.§4d§;
                                          §§push(this.get);
                                          continue loop6;
                                          if(_loc6_ || param1)
                                          {
                                             §§pop().play();
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc6_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      return;
                                                   }
                                                   addr188:
                                                   continue;
                                                }
                                                §§goto(addr181);
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                    continue loop3;
                                    if(!(_loc6_ || this))
                                    {
                                       continue;
                                    }
                                    §§goto(addr107);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr183);
               }
            }
            §§goto(addr188);
         }
         §§goto(addr181);
      }
      
      public function §]f§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mNewAlpha = param1;
            do
            {
               alpha = param1;
            }
            while(!_loc3_);
            
         }
      }
      
      public function §7!+§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.get);
            if(_loc4_ || param2)
            {
               if(§§pop() != null)
               {
                  addr127:
                  while(true)
                  {
                     §§push(this.get);
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
               loop0:
               while(true)
               {
                  this.get = §,!b§.§<d§.§>a§(this,{"mNewAlpha":param1},null,param2);
                  while(true)
                  {
                     §§push(this.get);
                     while(true)
                     {
                        §§pop().onComplete = this.§-!t§;
                        loop3:
                        while(!(_loc3_ && _loc3_))
                        {
                           §§push(this.get);
                           loop4:
                           while(true)
                           {
                              §§pop().§-3§ = false;
                              addr69:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc4_ || _loc3_)
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr127);
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr129);
         }
         §§goto(addr127);
      }
      
      private function §-!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§5!t§));
         }
      }
      
      private function §4d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§-<§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§]u§)
            {
               while(true)
               {
                  transform.colorTransform = this.§]u§;
                  loop1:
                  while(true)
                  {
                     if(!this.§-<§)
                     {
                        while(true)
                        {
                           this.§]u§ = null;
                           addr84:
                           while(!_loc2_)
                           {
                           }
                           continue loop1;
                        }
                        addr81:
                     }
                  }
                  addr53:
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     alpha = this.mNewAlpha;
                     addr74:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr81);
                        }
                        §§goto(addr25);
                     }
                  }
                  addr70:
               }
            }
            while(alpha != this.mNewAlpha)
            {
               if(!(_loc2_ && this))
               {
                  if(!_loc2_)
                  {
                     §§goto(addr53);
                  }
                  §§goto(addr84);
               }
               §§goto(addr74);
            }
            addr25:
            return;
         }
         §§goto(addr70);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            AngryBirdsFP11.§3!a§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            while(true)
            {
               §§push(this.get);
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc1_ || this)
                     {
                        if(!_loc2_)
                        {
                           §§push(this.get);
                           break;
                        }
                        continue;
                     }
                     do
                     {
                        this.get = null;
                     }
                     while(_loc2_);
                     
                     addr78:
                  }
                  return;
               }
               break;
            }
            §§pop().stop();
         }
         §§goto(addr78);
      }
   }
}
