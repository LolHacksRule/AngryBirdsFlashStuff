package §6v§
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
         if(_loc8_ || param3)
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
                              loop5:
                              while(true)
                              {
                                 §§push(param6);
                                 if(!(_loc7_ && param2))
                                 {
                                    §§push(Number(§§pop()));
                                    loop6:
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          §§push(§§pop());
                                          if(_loc7_)
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc7_ && param2)
                                                   {
                                                      continue loop1;
                                                   }
                                                   param6 = §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(§#x§.§0h§);
                                                            if(!(_loc8_ || param1))
                                                            {
                                                               break loop9;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            if(_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc7_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            addr219:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop10;
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                      while(true)
                                                      {
                                                         super();
                                                         loop16:
                                                         while(!_loc7_)
                                                         {
                                                            this.§8!4§ = new ColorTransform();
                                                            loop17:
                                                            while(true)
                                                            {
                                                               this.§8!4§.redOffset = param1;
                                                               while(true)
                                                               {
                                                                  this.§8!4§.greenOffset = param2;
                                                                  do
                                                                  {
                                                                     this.§8!4§.blueOffset = param3;
                                                                     while(true)
                                                                     {
                                                                        graphics.beginFill(0,1);
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              graphics.drawRect(0,0,param5,param6);
                                                                              continue;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        continue loop9;
                                                                        if(_loc7_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        graphics.endFill();
                                                                        §§goto(addr89);
                                                                     }
                                                                  }
                                                                  while(_loc7_ && param3);
                                                                  
                                                                  return;
                                                                  if(_loc8_ || param3)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc7_)
                                                      {
                                                         break loop8;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             continue loop0;
                                             addr186:
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             break loop6;
                                          }
                                          addr245:
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr224);
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
         §§goto(addr202);
      }
      
      public function §'!G§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            §§push(this.§1Y§);
            while(true)
            {
               if(§§pop() != null)
               {
                  if(!_loc5_)
                  {
                     §§push(this.§1Y§);
                     while(true)
                     {
                        §§pop().stop();
                        §§goto(addr74);
                     }
                  }
                  §§goto(addr94);
               }
               §§goto(addr57);
            }
         }
         addr74:
         loop4:
         while(true)
         {
            §§push(this.§1Y§);
            if(!(_loc6_ || this))
            {
               continue loop1;
            }
            if(!_loc6_)
            {
               continue loop0;
            }
            §§pop().play();
            if(!_loc6_)
            {
               continue;
            }
            if(!_loc5_)
            {
               break;
            }
            addr94:
            while(true)
            {
               addr57:
               while(true)
               {
                  this.§1Y§ = §';§.§%!O§.§set §(this.§8!4§,{
                     "redOffset":param1,
                     "greenOffset":param2,
                     "blueOffset":param3
                  },null,param4);
                  continue loop4;
               }
            }
         }
      }
      
      public function §6!Y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mAlpha = param1;
         }
         do
         {
            alpha = param1;
         }
         while(_loc3_ && this);
         
      }
      
      public function §#R§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§1Y§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§1Y§);
                     addr108:
                     while(true)
                     {
                        §§pop().stop();
                        addr109:
                        while(true)
                        {
                        }
                     }
                  }
                  addr106:
               }
               while(true)
               {
                  this.§1Y§ = §';§.§%!O§.§set §(this,{"mAlpha":param1},null,param2);
                  loop4:
                  while(_loc3_)
                  {
                     if(_loc3_ || this)
                     {
                        §§push(this.§1Y§);
                        while(_loc3_ || _loc3_)
                        {
                           if(!_loc4_)
                           {
                              §§pop().onComplete = this.§^Z§;
                              while(true)
                              {
                                 §§push(this.§1Y§);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§pop().play();
                                 if(!(_loc4_ && this))
                                 {
                                    if(_loc3_ || this)
                                    {
                                       return;
                                    }
                                    continue loop4;
                                 }
                              }
                              continue;
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr106);
                     }
                     §§goto(addr108);
                  }
               }
            }
         }
         §§goto(addr109);
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
         if(!(_loc3_ && this))
         {
            transform.colorTransform = this.§8!4§;
            do
            {
               alpha = this.mAlpha;
            }
            while(_loc3_);
            
         }
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            removeEventListener(Event.ENTER_FRAME,this.§ v§);
         }
      }
   }
}
