package §0,§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §4V§ extends MovieClip
   {
       
      
      private var §?9§:§ !=§;
      
      private var §,-§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §"C§:Boolean = false;
      
      public function §4V§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            §§push(param5);
            if(_loc8_ || param2)
            {
               §§push(Number(§§pop()));
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  if(!§§pop())
                  {
                     if(_loc8_ || this)
                     {
                        §§pop();
                        if(!_loc9_)
                        {
                           §§push(AngryBirdsFP11.§ y§);
                           if(_loc8_)
                           {
                              §§push(§§pop().getAppWidth());
                              if(_loc8_)
                              {
                                 addr48:
                                 §§push(Number(§§pop()));
                                 if(!_loc9_)
                                 {
                                    addr52:
                                    param5 = §§pop();
                                    if(!(_loc9_ && param2))
                                    {
                                       addr60:
                                       §§push(param6);
                                       if(!(_loc9_ && this))
                                       {
                                          addr70:
                                          §§push(Number(§§pop()));
                                          if(!Number(§§pop()))
                                          {
                                             if(!(_loc9_ && param1))
                                             {
                                                §§pop();
                                                if(!(_loc9_ && this))
                                                {
                                                   addr100:
                                                   param6 = Number(AngryBirdsFP11.§ y§.getAppHeight());
                                                   addr99:
                                                   if(!_loc9_)
                                                   {
                                                      super();
                                                   }
                                                }
                                                var _loc7_:ColorTransform;
                                                (_loc7_ = new ColorTransform()).redOffset = param1;
                                                _loc7_.greenOffset = param2;
                                                _loc7_.blueOffset = param3;
                                                transform.colorTransform = _loc7_;
                                                graphics.beginFill(0,1);
                                                graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
                                                if(!(_loc9_ && this))
                                                {
                                                   scaleX = 100;
                                                   if(_loc8_)
                                                   {
                                                      scaleY = 100;
                                                      if(_loc8_)
                                                      {
                                                         graphics.endFill();
                                                         this.mNewAlpha = param4;
                                                         alpha = param4;
                                                         if(_loc8_ || param1)
                                                         {
                                                            addr180:
                                                            this.mouseEnabled = true;
                                                         }
                                                         AngryBirdsFP11.§ y§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                                         return;
                                                      }
                                                   }
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr99);
                                          }
                                       }
                                    }
                                    §§goto(addr99);
                                 }
                                 §§goto(addr52);
                              }
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr48);
                  }
                  §§goto(addr52);
               }
               §§goto(addr70);
            }
            §§goto(addr52);
         }
         §§goto(addr100);
      }
      
      public function §@!?§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(this.§"C§)
            {
               return;
            }
            §§push(this.§?9§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     §§push(this.§?9§);
                     if(!_loc6_)
                     {
                        addr33:
                        §§pop().stop();
                        addr34:
                        this.§,-§ = new ColorTransform();
                        §§goto(addr38);
                     }
                     §§goto(addr115);
                  }
                  addr38:
                  this.§,-§.redOffset = transform.colorTransform.redOffset;
                  if(_loc5_ || param1)
                  {
                     this.§,-§.greenOffset = transform.colorTransform.greenOffset;
                     this.§,-§.blueOffset = transform.colorTransform.blueOffset;
                     this.§?9§ = §@7§.§@6§.§3!%§(this.§,-§,{
                        "redOffset":param1,
                        "greenOffset":param2,
                        "blueOffset":param3
                     },null,param4);
                     addr73:
                     if(_loc5_ || param2)
                     {
                        §§push(this.§?9§);
                        if(!(_loc6_ && param3))
                        {
                           addr115:
                           §§pop().onComplete = this.§5<§;
                           §§goto(addr123);
                        }
                        §§pop().play();
                     }
                     §§goto(addr123);
                  }
                  addr123:
                  if(!_loc6_)
                  {
                     §§push(this.§?9§);
                  }
                  this.§"C§ = true;
                  return;
               }
               §§goto(addr34);
            }
            §§goto(addr33);
         }
         §§goto(addr73);
      }
      
      public function §0z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.mNewAlpha = param1;
            if(_loc2_ || _loc3_)
            {
               alpha = param1;
            }
         }
      }
      
      public function §[!'§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§?9§);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() != null)
               {
                  §§push(this.§?9§);
                  if(_loc4_)
                  {
                     addr49:
                     §§pop().stop();
                     addr50:
                     this.§?9§ = §@7§.§@6§.§3!%§(this,{"mNewAlpha":param1},null,param2);
                     if(_loc4_)
                     {
                        §§push(this.§?9§);
                        if(!(_loc3_ && param2))
                        {
                           §§goto(addr82);
                        }
                     }
                     §§goto(addr89);
                  }
                  addr82:
                  §§pop().onComplete = this.§ M§;
                  §§push(this.§?9§);
                  if(_loc4_)
                  {
                     addr89:
                     §§pop().§'%§ = false;
                     §§goto(addr101);
                  }
                  §§pop().play();
                  addr101:
                  if(_loc4_ || _loc3_)
                  {
                     §§push(this.§?9§);
                  }
                  return;
               }
               §§goto(addr50);
            }
         }
         §§goto(addr49);
      }
      
      private function § M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§?!5§));
         }
      }
      
      private function §5<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§"C§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(this.§,-§)
         {
            if(!_loc3_)
            {
               transform.colorTransform = this.§,-§;
               if(!this.§"C§)
               {
                  if(_loc2_)
                  {
                     this.§,-§ = null;
                     addr43:
                     if(alpha != this.mNewAlpha)
                     {
                        addr47:
                        alpha = this.mNewAlpha;
                     }
                  }
                  return;
               }
               §§goto(addr43);
            }
            §§goto(addr47);
         }
         §§goto(addr43);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            AngryBirdsFP11.§ y§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(_loc1_ || this)
            {
               §§push(this.§?9§);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr71:
                        this.§?9§.stop();
                        if(_loc1_ || _loc1_)
                        {
                           addr79:
                           this.§?9§ = null;
                        }
                     }
                     §§goto(addr79);
                  }
                  return;
               }
            }
            §§goto(addr71);
         }
         §§goto(addr79);
      }
   }
}
