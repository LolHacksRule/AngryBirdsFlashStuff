package §[!w§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §4!i§ extends MovieClip
   {
       
      
      private var §1!d§:§3^§;
      
      private var § q§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §1Z§:Boolean = false;
      
      public function §4!i§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param5);
            while(true)
            {
               §§push(Number(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr139:
                           while(true)
                           {
                              §§push(AngryBirdsFP11.§%d§);
                              addr104:
                              while(true)
                              {
                                 §§push(§§pop().getAppWidth());
                                 addr105:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                        }
                        addr128:
                     }
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              if(_loc9_ || param1)
                              {
                                 if(!(_loc9_ || param2))
                                 {
                                    break;
                                 }
                                 param5 = §§pop();
                                 loop10:
                                 while(true)
                                 {
                                    §§push(param6);
                                    if(!_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       §§push(Number(§§pop()));
                                       continue loop8;
                                    }
                                    addr99:
                                    loop15:
                                    while(true)
                                    {
                                       §§pop();
                                       addr100:
                                       loop16:
                                       while(true)
                                       {
                                          addr48:
                                          while(true)
                                          {
                                             §§push(AngryBirdsFP11.§%d§);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop().getAppHeight());
                                                if(_loc9_)
                                                {
                                                   if(!(_loc8_ && this))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc9_)
                                                      {
                                                         addr66:
                                                         if(_loc9_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               §§goto(addr66);
                                                            }
                                                            addr68:
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                   §§goto(addr105);
                                                }
                                                while(true)
                                                {
                                                   if(_loc9_ || param1)
                                                   {
                                                      param6 = §§pop();
                                                      do
                                                      {
                                                         super();
                                                      }
                                                      while(_loc8_);
                                                      
                                                      if(_loc9_ || param2)
                                                      {
                                                         continue loop10;
                                                      }
                                                      continue loop16;
                                                   }
                                                   continue loop15;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr104);
                                             }
                                             §§goto(addr105);
                                          }
                                       }
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr128);
                              §§goto(addr139);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      public function §`<§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            if(!this.§1Z§)
            {
               while(true)
               {
                  §§push(this.§1!d§);
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || param3)
                        {
                           §§push(this.§1!d§);
                           while(true)
                           {
                              §§pop().stop();
                           }
                           addr183:
                        }
                        while(true)
                        {
                        }
                        addr184:
                     }
                     while(true)
                     {
                        this.§ q§ = new ColorTransform();
                        while(!_loc5_)
                        {
                           this.§ q§.redOffset = transform.colorTransform.redOffset;
                           loop6:
                           while(true)
                           {
                              this.§ q§.greenOffset = transform.colorTransform.greenOffset;
                              loop7:
                              while(true)
                              {
                                 this.§ q§.blueOffset = transform.colorTransform.blueOffset;
                                 while(true)
                                 {
                                    this.§1!d§ = §7!E§.§2=§.§<!C§(this.§ q§,{
                                       "redOffset":param1,
                                       "greenOffset":param2,
                                       "blueOffset":param3
                                    },null,param4);
                                    continue loop6;
                                    loop12:
                                    while(_loc6_ || this)
                                    {
                                       if(!_loc6_)
                                       {
                                          return;
                                       }
                                       addr188:
                                       this.§1Z§ = true;
                                       if(_loc6_ || param2)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             addr47:
                                             if(!(_loc5_ && param3))
                                             {
                                                continue loop7;
                                             }
                                             continue loop6;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             §§push(this.§1!d§);
                                             if(_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop().play();
                                                   continue loop12;
                                                }
                                                §§goto(addr183);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop().onComplete = this.§1"-§;
                                                   continue loop11;
                                                }
                                                addr95:
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr184);
                     }
                  }
               }
            }
            §§goto(addr188);
         }
         §§goto(addr61);
      }
      
      public function §]!G§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mNewAlpha = param1;
         }
         do
         {
            alpha = param1;
         }
         while(_loc3_);
         
      }
      
      public function §>=§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§1!d§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§1!d§);
                     addr123:
                     while(true)
                     {
                        §§pop().stop();
                        addr124:
                        while(true)
                        {
                        }
                     }
                  }
                  addr121:
               }
               while(true)
               {
                  this.§1!d§ = §7!E§.§2=§.§<!C§(this,{"mNewAlpha":param1},null,param2);
                  loop5:
                  for(; !(_loc4_ && param2); if(_loc4_ && _loc3_)
                  {
                     continue;
                  })
                  {
                     §§push(this.§1!d§);
                     while(_loc3_)
                     {
                        continue loop0;
                        loop8:
                        while(!(_loc4_ && param2))
                        {
                           §§pop().§?V§ = false;
                           while(true)
                           {
                              if(_loc3_ || this)
                              {
                                 continue loop5;
                              }
                              addr86:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(this.§1!d§);
                                    if(!_loc3_)
                                    {
                                       continue loop8;
                                    }
                                    §§pop().play();
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       §§goto(addr121);
                                    }
                                    else
                                    {
                                       §§goto(addr46);
                                    }
                                 }
                                 return;
                                 continue loop8;
                              }
                           }
                           continue loop5;
                        }
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr124);
               }
            }
         }
         §§goto(addr70);
      }
      
      private function §7!o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§-2§));
         }
      }
      
      private function §1"-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§1Z§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§ q§)
            {
               if(_loc3_)
               {
                  transform.colorTransform = this.§ q§;
               }
               loop0:
               while(true)
               {
                  if(!this.§1Z§)
                  {
                     while(true)
                     {
                        this.§ q§ = null;
                        addr74:
                        addr36:
                        while(true)
                        {
                        }
                        if(!(_loc2_ && _loc3_))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               if(alpha != this.mNewAlpha)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr36);
                  }
                  §§goto(addr64);
               }
               break;
               §§goto(addr74);
            }
            §§goto(addr25);
         }
         §§goto(addr60);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            AngryBirdsFP11.§%d§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         do
         {
            §§push(this.§1!d§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  break;
               }
               if(!(_loc1_ || this))
               {
                  continue;
               }
               §§push(this.§1!d§);
            }
            §§pop().stop();
         }
         while(do
         {
            this.§1!d§ = null;
         }
         while(_loc2_);
         , _loc2_ && this);
         
      }
   }
}
