package § !B§
{
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §-#§ extends MovieClip
   {
       
      
      private var §"!M§:§[!9§;
      
      private var §@d§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §5A§:Boolean = false;
      
      public function §-#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param5);
            loop0:
            while(true)
            {
               §§push(Number(§§pop()));
               §§push(Number(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.§`y§);
                           while(true)
                           {
                              §§push(Number(§§pop().getAppWidth()));
                              addr76:
                              while(_loc9_)
                              {
                              }
                              continue loop2;
                              loop10:
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.§`y§);
                                 if(!(_loc9_ || param1))
                                 {
                                    break;
                                 }
                                 §§push(§§pop().getAppHeight());
                                 if(!_loc8_)
                                 {
                                    if(!_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc8_ && this))
                                       {
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          addr52:
                                       }
                                       while(true)
                                       {
                                          param6 = §§pop();
                                          while(_loc9_)
                                          {
                                             super();
                                             if(!_loc9_)
                                             {
                                                continue;
                                             }
                                             if(!_loc8_)
                                             {
                                                while(false)
                                                {
                                                   continue loop10;
                                                }
                                                var _loc7_:ColorTransform;
                                                (_loc7_ = new ColorTransform()).redOffset = param1;
                                                if(!(_loc8_ && param1))
                                                {
                                                   _loc7_.greenOffset = param2;
                                                   _loc7_.blueOffset = param3;
                                                   transform.colorTransform = _loc7_;
                                                   graphics.beginFill(0,1);
                                                   graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
                                                   scaleX = 100;
                                                   scaleY = 100;
                                                   graphics.endFill();
                                                }
                                                loop15:
                                                while(true)
                                                {
                                                   this.mNewAlpha = param4;
                                                   loop16:
                                                   while(true)
                                                   {
                                                      alpha = param4;
                                                      while(true)
                                                      {
                                                         this.mouseEnabled = true;
                                                         while(!_loc8_)
                                                         {
                                                            continue loop16;
                                                            AngryBirdsFP11.§`y§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  return;
                                                               }
                                                               continue loop15;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr27:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   continue loop10;
                                                }
                                                addr70:
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr76);
                                    }
                                    while(_loc9_ || param1)
                                    {
                                       §§push(param6);
                                       if(_loc9_)
                                       {
                                          if(!_loc9_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       §§push(§§pop());
                                       if(_loc8_)
                                       {
                                          continue loop1;
                                       }
                                       if(!§§pop())
                                       {
                                          §§pop();
                                       }
                                       else
                                       {
                                          §§goto(addr52);
                                       }
                                       §§goto(addr70);
                                    }
                                    continue loop3;
                                    addr81:
                                 }
                                 while(true)
                                 {
                                    param5 = §§pop();
                                    §§goto(addr81);
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr80);
                  }
               }
            }
         }
         §§goto(addr27);
      }
      
      public function § !,§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(this.§5A§)
         {
            if(!_loc6_)
            {
               return;
            }
            while(true)
            {
               loop3:
               while(_loc5_ || param2)
               {
                  §§push(this.§"!M§);
                  loop4:
                  while(true)
                  {
                     §§pop().stop();
                     loop5:
                     while(true)
                     {
                        this.§@d§ = new ColorTransform();
                        this.§@d§.redOffset = transform.colorTransform.redOffset;
                        this.§@d§.greenOffset = transform.colorTransform.greenOffset;
                        while(true)
                        {
                           this.§@d§.blueOffset = transform.colorTransform.blueOffset;
                           this.§"!M§ = §3C§.§>o§.§<t§(this.§@d§,{
                              "redOffset":param1,
                              "greenOffset":param2,
                              "blueOffset":param3
                           },null,param4);
                           loop7:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 continue loop3;
                              }
                              §§push(this.§"!M§);
                              while(!(_loc6_ && param1))
                              {
                                 §§push(this.§"!M§);
                                 continue loop7;
                                 if(!(_loc6_ && param1))
                                 {
                                    continue loop4;
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    continue loop3;
                                 }
                                 continue loop5;
                                 §§goto(addr55);
                              }
                              addr55:
                           }
                           continue loop4;
                           if(_loc6_ && this)
                           {
                              continue;
                           }
                           §§goto(addr89);
                        }
                     }
                     addr50:
                     §§pop().play();
                     addr51:
                     this.§5A§ = true;
                     if(!(_loc5_ || this))
                     {
                        §§goto(addr51);
                     }
                     return;
                  }
               }
            }
            addr171:
         }
         while(true)
         {
            §§goto(addr153);
            §§goto(addr171);
         }
      }
      
      public function §3!@§(param1:Number) : void
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
         while(_loc3_ && _loc3_);
         
      }
      
      public function fadeToAlpha(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§"!M§);
         loop0:
         while(true)
         {
            if(§§pop() != null)
            {
               while(true)
               {
                  §§push(this.§"!M§);
                  addr110:
                  while(true)
                  {
                     §§pop().stop();
                  }
               }
               addr108:
            }
            while(true)
            {
               this.§"!M§ = §3C§.§>o§.§<t§(this,{"mNewAlpha":param1},null,param2);
               §§push(this.§"!M§);
               loop4:
               while(true)
               {
                  §§pop().onComplete = this.§!!;§;
                  addr90:
                  while(true)
                  {
                     §§push(this.§"!M§);
                     for(; _loc3_; §§push(this.§"!M§),if(_loc3_ || param1)
                     {
                        continue loop4;
                     })
                     {
                        §§pop().§`j§ = false;
                        if(_loc3_ || param1)
                        {
                           continue;
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr110);
                  }
                  continue loop0;
                  if(_loc3_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function §!!;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§3n§));
         }
      }
      
      private function §9R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§5A§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§@d§)
            {
               transform.colorTransform = this.§@d§;
               if(!this.§5A§)
               {
                  while(true)
                  {
                     this.§@d§ = null;
                  }
                  addr71:
               }
               addr82:
            }
            while(alpha != this.mNewAlpha)
            {
               if(!_loc3_)
               {
                  alpha = this.mNewAlpha;
               }
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr82);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            AngryBirdsFP11.§`y§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            loop0:
            while(true)
            {
               §§push(this.§"!M§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     continue;
                  }
               }
               else
               {
                  while(true)
                  {
                     §§pop().stop();
                     do
                     {
                        this.§"!M§ = null;
                     }
                     while(_loc1_ && _loc1_);
                     
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  addr78:
               }
               return;
            }
         }
         while(true)
         {
            §§goto(addr78);
         }
      }
   }
}
