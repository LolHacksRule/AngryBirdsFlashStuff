package §_-sT§
{
   import §_-20§.§_-j5§;
   import §_-6v§.§_-In§;
   import §_-mD§.§_-29§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §_-Da§ extends MovieClip
   {
       
      
      private var §_-R3§:§_-j5§;
      
      private var §_-yx§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §_-Da§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            §§push(Number(param5));
            §§push(Number(param5));
            if(!_loc7_)
            {
               if(!§§pop())
               {
                  if(_loc8_)
                  {
                     §§pop();
                     if(_loc8_)
                     {
                        §§push(§_-Qu§.§_-1q§);
                        if(_loc8_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc8_)
                           {
                              addr39:
                              §§push(Number(§§pop()));
                              if(!_loc7_)
                              {
                                 param5 = §§pop();
                                 if(_loc8_ || param2)
                                 {
                                    addr50:
                                    §§push(param6);
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc8_ || this)
                                       {
                                          addr66:
                                          addr67:
                                          if(§§pop())
                                          {
                                          }
                                          addr87:
                                          param6 = §§pop();
                                          addr86:
                                          if(!_loc7_)
                                          {
                                             super();
                                             if(!_loc7_)
                                             {
                                                addr94:
                                                this.§_-yx§ = new ColorTransform();
                                                if(!_loc7_)
                                                {
                                                   this.§_-yx§.redOffset = param1;
                                                   if(_loc8_)
                                                   {
                                                      this.§_-yx§.greenOffset = param2;
                                                      this.§_-yx§.blueOffset = param3;
                                                      addr114:
                                                      graphics.beginFill(0,1);
                                                      if(!_loc7_)
                                                      {
                                                         addr120:
                                                         graphics.drawRect(0,0,param5,param6);
                                                         addr126:
                                                         graphics.endFill();
                                                         if(_loc8_ || param1)
                                                         {
                                                         }
                                                         §§goto(addr147);
                                                      }
                                                      this.mAlpha = param4;
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr147);
                                                      }
                                                      addr147:
                                                      alpha = param4;
                                                      §§goto(addr150);
                                                   }
                                                   addr150:
                                                   addEventListener(Event.ENTER_FRAME,this.onUpdate);
                                                   return;
                                                }
                                                §§goto(addr147);
                                             }
                                             §§goto(addr120);
                                          }
                                          §§goto(addr126);
                                       }
                                       §§pop();
                                       if(!(_loc7_ && param3))
                                       {
                                          addr83:
                                          §§goto(addr86);
                                          §§push(Number(§_-Qu§.§_-SP§));
                                       }
                                       §§goto(addr94);
                                    }
                                    §§goto(addr87);
                                 }
                                 §§goto(addr83);
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr66);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr66);
               }
               §§goto(addr39);
            }
            §§goto(addr67);
         }
         §§goto(addr50);
      }
      
      public function §_-z8§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§_-R3§);
            if(_loc6_ || this)
            {
               if(§§pop() != null)
               {
                  if(!_loc5_)
                  {
                     §§push(this.§_-R3§);
                     if(!(_loc5_ && param2))
                     {
                        addr45:
                        §§pop().stop();
                        if(_loc6_ || param3)
                        {
                           this.§_-R3§ = §_-29§.§_-NW§(this.§_-yx§,{
                              "redOffset":param1,
                              "greenOffset":param2,
                              "blueOffset":param3
                           },null,param4);
                           §§goto(addr53);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr79);
                  }
               }
               addr53:
               if(_loc6_)
               {
                  addr79:
                  this.§_-R3§.play();
                  addr77:
               }
               return;
            }
            §§goto(addr45);
         }
         §§goto(addr79);
      }
      
      public function §_-wk§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.mAlpha = param1;
            if(!(_loc3_ && _loc3_))
            {
               addr44:
               alpha = param1;
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §_-Mv§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§_-R3§);
            if(_loc3_)
            {
               if(§§pop() != null)
               {
                  if(!_loc4_)
                  {
                     §§push(this.§_-R3§);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop().stop();
                        if(!_loc4_)
                        {
                           addr42:
                           this.§_-R3§ = §_-29§.§_-NW§(this,{"mAlpha":param1},null,param2);
                           if(!_loc4_)
                           {
                              addr54:
                              §§push(this.§_-R3§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§pop().addEventListener(§_-In§.COMPLETE,this.§_-E8§);
                                 if(!_loc4_)
                                 {
                                    addr79:
                                    this.§_-R3§.play();
                                 }
                                 return;
                              }
                           }
                           §§goto(addr79);
                        }
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr54);
               }
               §§goto(addr42);
            }
            §§goto(addr79);
         }
         §§goto(addr42);
      }
      
      private function §_-E8§(param1:§_-In§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-R3§.removeEventListener(§_-In§.COMPLETE,this.§_-E8§);
            if(!_loc3_)
            {
               dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§_-F9§));
            }
         }
      }
      
      private function onUpdate(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            transform.colorTransform = this.§_-yx§;
            if(_loc3_ || _loc2_)
            {
               alpha = this.mAlpha;
            }
         }
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            removeEventListener(Event.ENTER_FRAME,this.onUpdate);
         }
      }
   }
}
