package §_-ox§
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
         if(!(_loc7_ && this))
         {
            §§push(param5);
            if(_loc8_ || param3)
            {
               §§push(Number(§§pop()));
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     if(!_loc7_)
                     {
                        §§push(§_-Qu§.§_-1q§);
                        if(!_loc7_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc7_)
                           {
                              addr44:
                              param5 = §§pop();
                              §§push(param6);
                              if(_loc8_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc8_ || param2)
                                 {
                                    addr57:
                                    §§push(§§pop() || Number(§_-Qu§.§_-SP§));
                                 }
                                 param6 = §§pop();
                                 super();
                                 if(_loc8_ || this)
                                 {
                                    this.§_-yx§ = new ColorTransform();
                                    this.§_-yx§.redOffset = param1;
                                 }
                                 this.§_-yx§.greenOffset = param2;
                                 addr93:
                                 this.§_-yx§.blueOffset = param3;
                                 graphics.beginFill(0,1);
                                 graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
                                 scaleX = 100;
                                 scaleY = 100;
                                 if(!(_loc7_ && this))
                                 {
                                    graphics.endFill();
                                    this.mAlpha = param4;
                                    if(!_loc7_)
                                    {
                                       addr133:
                                       alpha = param4;
                                       if(_loc8_ || param1)
                                       {
                                          addEventListener(Event.ENTER_FRAME,this.onUpdate);
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr133);
                              }
                           }
                           §§goto(addr57);
                        }
                        §§goto(addr62);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr44);
               }
               §§goto(addr57);
            }
            §§goto(addr59);
         }
         §§goto(addr133);
      }
      
      public function §_-z8§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§_-R3§);
            if(!_loc6_)
            {
               if(§§pop() != null)
               {
                  if(_loc5_ || param2)
                  {
                     addr28:
                     §§push(this.§_-R3§);
                     if(_loc5_ || param3)
                     {
                        §§pop().stop();
                        if(_loc5_)
                        {
                           §§goto(addr47);
                        }
                     }
                  }
                  §§goto(addr78);
               }
               addr47:
               this.§_-R3§ = §_-29§.§_-NW§(this.§_-yx§,{
                  "redOffset":param1,
                  "greenOffset":param2,
                  "blueOffset":param3
               },null,param4);
               if(_loc5_ || param1)
               {
                  addr78:
                  this.§_-R3§.play();
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr28);
      }
      
      public function §_-wk§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mAlpha = param1;
            if(!(_loc3_ && this))
            {
               alpha = param1;
            }
         }
      }
      
      public function §_-Mv§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§_-R3§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() != null)
               {
                  if(_loc4_)
                  {
                     addr29:
                     §§push(this.§_-R3§);
                     if(_loc4_ || this)
                     {
                        §§pop().stop();
                        if(!_loc3_)
                        {
                           §§goto(addr48);
                        }
                     }
                     §§goto(addr85);
                  }
               }
               addr48:
               this.§_-R3§ = §_-29§.§_-NW§(this,{"mAlpha":param1},null,param2);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this.§_-R3§);
                  if(_loc4_)
                  {
                     §§pop().addEventListener(§_-In§.COMPLETE,this.§_-E8§);
                     if(!_loc3_)
                     {
                        addr85:
                        this.§_-R3§.play();
                     }
                  }
                  §§goto(addr85);
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr29);
      }
      
      private function §_-E8§(param1:§_-In§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-R3§.removeEventListener(§_-In§.COMPLETE,this.§_-E8§);
            if(_loc3_ || this)
            {
               addr44:
               dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§_-F9§));
            }
            return;
         }
         §§goto(addr44);
      }
      
      private function onUpdate(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            transform.colorTransform = this.§_-yx§;
            if(!(_loc2_ && this))
            {
               addr46:
               alpha = this.mAlpha;
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            removeEventListener(Event.ENTER_FRAME,this.onUpdate);
         }
      }
   }
}
