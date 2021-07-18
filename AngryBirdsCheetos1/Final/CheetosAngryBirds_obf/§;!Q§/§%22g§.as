package §;!Q§
{
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §"g§ extends MovieClip
   {
       
      
      private var §1Y§:§&!!§;
      
      private var §8!4§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §"g§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            §§push(param5);
            loop0:
            while(true)
            {
               §§push(Number(§§pop()));
               addr283:
               while(true)
               {
                  §§push(§§pop());
                  addr284:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr286:
                           while(true)
                           {
                              §§push(§#x§.§;#§);
                              addr266:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                        }
                        addr285:
                     }
                     loop3:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr279:
                        while(true)
                        {
                           param5 = §§pop();
                           addr280:
                           while(true)
                           {
                              §§push(param6);
                              addr219:
                              while(!_loc7_)
                              {
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public function §'!G§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§1Y§);
            if(!_loc6_)
            {
               if(§§pop() != null)
               {
                  addr95:
                  while(true)
                  {
                     §§push(this.§1Y§);
                     addr97:
                     while(true)
                     {
                        §§pop().stop();
                        addr98:
                        while(true)
                        {
                        }
                     }
                  }
                  addr95:
               }
               loop0:
               while(true)
               {
                  this.§1Y§ = §';§.§%!O§.§set §(this.§8!4§,{
                     "redOffset":param1,
                     "greenOffset":param2,
                     "blueOffset":param3
                  },null,param4);
                  while(true)
                  {
                     §§push(this.§1Y§);
                     if(!(_loc6_ && this))
                     {
                        §§pop().play();
                        if(_loc6_ && param1)
                        {
                           continue;
                        }
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                        if(!(_loc6_ && this))
                        {
                           break loop0;
                        }
                        §§goto(addr95);
                     }
                     break;
                  }
               }
               return;
            }
            §§goto(addr97);
         }
         §§goto(addr95);
      }
      
      public function §6!Y§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mAlpha = param1;
            do
            {
               alpha = param1;
            }
            while(_loc2_);
            
         }
      }
      
      public function §#R§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§1Y§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§1Y§);
                     addr113:
                     while(true)
                     {
                        §§pop().stop();
                        addr114:
                        while(true)
                        {
                        }
                     }
                  }
                  addr111:
               }
               loop1:
               while(true)
               {
                  this.§1Y§ = §';§.§%!O§.§set §(this,{"mAlpha":param1},null,param2);
                  loop2:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        §§push(this.§1Y§);
                        loop3:
                        while(true)
                        {
                           §§pop().onComplete = this.§^Z§;
                           addr65:
                           while(true)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                     else
                     {
                        §§goto(addr111);
                     }
                  }
               }
            }
            §§goto(addr113);
         }
         §§goto(addr114);
      }
      
      private function §^Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§[!H§));
         }
      }
      
      private function § v§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            transform.colorTransform = this.§8!4§;
         }
         do
         {
            alpha = this.mAlpha;
         }
         while(_loc3_);
         
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            removeEventListener(Event.ENTER_FRAME,this.§ v§);
         }
      }
   }
}
