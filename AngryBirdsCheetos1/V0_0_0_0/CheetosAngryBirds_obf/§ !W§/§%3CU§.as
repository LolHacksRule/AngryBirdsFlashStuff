package § !W§
{
   import § ;§.§3!$§;
   import § ;§.§4N§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §<U§ extends MovieClip
   {
       
      
      private var §%!,§:§3!$§;
      
      private var §0!-§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §<U§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
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
                        loop3:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop4:
                           while(true)
                           {
                              param5 = §§pop();
                              addr240:
                              while(true)
                              {
                                 §§push(param6);
                                 if(!(_loc7_ && this))
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(Number(§§pop()));
                                    loop9:
                                    for(; !_loc7_; if(!(_loc8_ || param1))
                                    {
                                       continue;
                                    },param6 = §§pop(),while(true)
                                    {
                                       super();
                                       loop13:
                                       while(true)
                                       {
                                          this.§0!-§ = new ColorTransform();
                                          addr156:
                                          while(true)
                                          {
                                             this.§0!-§.redOffset = param1;
                                             continue loop13;
                                          }
                                       }
                                    })
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§§pop());
                                       if(!(_loc8_ || param2))
                                       {
                                          continue loop2;
                                       }
                                       if(!§§pop())
                                       {
                                          loop25:
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                continue loop4;
                                             }
                                             §§pop();
                                             while(true)
                                             {
                                                §§push(§,l§.§#S§);
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                                §§push(Number(§§pop()));
                                                if(!(_loc7_ && param2))
                                                {
                                                   addr174:
                                                   if(_loc7_ && this)
                                                   {
                                                      continue loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      §§goto(addr174);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop25;
                                                }
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          addr219:
                                       }
                                       §§goto(addr181);
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr246);
                                    }
                                 }
                                 §§goto(addr219);
                              }
                           }
                        }
                     }
                     §§goto(addr245);
                  }
               }
            }
         }
         §§goto(addr240);
      }
      
      public function §]N§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§%!,§);
            if(_loc5_)
            {
               if(§§pop() != null)
               {
                  if(_loc5_ || param1)
                  {
                     §§push(this.§%!,§);
                     while(true)
                     {
                        §§pop().stop();
                        addr103:
                        while(true)
                        {
                        }
                     }
                     addr102:
                  }
                  §§goto(addr103);
               }
               loop0:
               while(true)
               {
                  this.§%!,§ = §4N§.§!!L§.§5!N§(this.§0!-§,{
                     "redOffset":param1,
                     "greenOffset":param2,
                     "blueOffset":param3
                  },null,param4);
                  while(true)
                  {
                     §§push(this.§%!,§);
                     if(!(_loc6_ && param2))
                     {
                        §§pop().play();
                        if(_loc5_ || param3)
                        {
                           if(_loc5_ || param3)
                           {
                              break loop0;
                           }
                           break;
                        }
                        continue;
                     }
                  }
                  §§goto(addr103);
               }
               return;
            }
            §§goto(addr102);
         }
         §§goto(addr103);
      }
      
      public function §5!<§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mAlpha = param1;
            do
            {
               alpha = param1;
            }
            while(!_loc2_);
            
         }
      }
      
      public function §9>§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§%!,§);
            while(true)
            {
               if(§§pop() != null)
               {
                  if(_loc4_ || param2)
                  {
                     §§push(this.§%!,§);
                     loop1:
                     while(true)
                     {
                        §§pop().stop();
                        addr115:
                        while(true)
                        {
                        }
                        loop4:
                        while(true)
                        {
                           if(_loc3_ && param1)
                           {
                              continue loop1;
                           }
                           §§pop().onComplete = this.§&!K§;
                           while(!(_loc3_ && param1))
                           {
                              continue loop4;
                              §§pop().play();
                              if(_loc4_ || param2)
                              {
                                 if(_loc4_)
                                 {
                                    return;
                                    addr46:
                                 }
                                 break loop4;
                              }
                           }
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                        §§goto(addr115);
                     }
                  }
                  §§goto(addr115);
               }
               while(true)
               {
                  this.§%!,§ = §4N§.§!!L§.§5!N§(this,{"mAlpha":param1},null,param2);
                  §§goto(addr90);
               }
               §§goto(addr46);
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               §§goto(addr36);
            }
         }
         §§goto(addr115);
      }
      
      private function §&!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§?#§));
         }
      }
      
      private function §?'§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            transform.colorTransform = this.§0!-§;
            do
            {
               alpha = this.mAlpha;
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            removeEventListener(Event.ENTER_FRAME,this.§?'§);
         }
      }
   }
}
