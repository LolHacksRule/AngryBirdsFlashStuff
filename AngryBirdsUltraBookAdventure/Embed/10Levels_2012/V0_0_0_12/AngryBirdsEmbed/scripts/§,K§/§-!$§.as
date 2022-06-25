package §,K§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §-!$§ extends MovieClip
   {
       
      
      private var §+!7§:§ !5§;
      
      private var §%I§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §=O§:Boolean = false;
      
      public function §-!$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param3))
         {
            §§push(Number(param5));
            §§push(Number(param5));
            if(!_loc9_)
            {
               if(!§§pop())
               {
                  if(!(_loc9_ && param2))
                  {
                     §§pop();
                     if(_loc8_)
                     {
                        addr39:
                        §§push(AngryBirdsFP11.§@t§);
                        if(!(_loc9_ && param2))
                        {
                           §§push(§§pop().getAppWidth());
                           if(_loc8_)
                           {
                              addr52:
                              param5 = Number(§§pop());
                              if(_loc8_)
                              {
                                 addr57:
                                 §§push(Number(param6));
                                 if(!Number(param6))
                                 {
                                    §§pop();
                                    if(_loc8_)
                                    {
                                       addr63:
                                       §§push(AngryBirdsFP11.§@t§.getAppHeight());
                                       if(_loc8_ || param1)
                                       {
                                          addr74:
                                          param6 = Number(§§pop());
                                          if(_loc9_)
                                          {
                                          }
                                          var _loc7_:ColorTransform;
                                          (_loc7_ = new ColorTransform()).redOffset = param1;
                                          _loc7_.greenOffset = param2;
                                          if(!(_loc9_ && this))
                                          {
                                             _loc7_.blueOffset = param3;
                                             if(_loc8_)
                                             {
                                                transform.colorTransform = _loc7_;
                                                graphics.beginFill(0,1);
                                                addr119:
                                                graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
                                                if(!(_loc9_ && param2))
                                                {
                                                   scaleX = 100;
                                                   scaleY = 100;
                                                   if(_loc8_)
                                                   {
                                                      graphics.endFill();
                                                      addr158:
                                                      this.mNewAlpha = param4;
                                                   }
                                                   alpha = param4;
                                                   this.mouseEnabled = true;
                                                   if(_loc8_ || this)
                                                   {
                                                      AngryBirdsFP11.§@t§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr158);
                                             }
                                             addr181:
                                             return;
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr74);
                                    }
                                    super();
                                 }
                                 §§goto(addr74);
                              }
                              §§goto(addr63);
                           }
                           §§goto(addr57);
                        }
                        §§goto(addr63);
                     }
                  }
                  §§goto(addr74);
               }
               §§goto(addr52);
            }
            §§goto(addr57);
         }
         §§goto(addr39);
      }
      
      public function §%c§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(this.§=O§)
         {
            return;
         }
         §§push(this.§+!7§);
         if(_loc5_)
         {
            if(§§pop())
            {
               §§push(this.§+!7§);
               if(_loc5_ || param1)
               {
                  §§pop().stop();
                  if(!_loc6_)
                  {
                     addr37:
                     this.§%I§ = new ColorTransform();
                     if(_loc5_ || param3)
                     {
                        this.§%I§.redOffset = transform.colorTransform.redOffset;
                        if(_loc5_)
                        {
                           addr66:
                           this.§%I§.greenOffset = transform.colorTransform.greenOffset;
                           if(!_loc6_)
                           {
                              this.§%I§.blueOffset = transform.colorTransform.blueOffset;
                              if(_loc5_ || param3)
                              {
                                 this.§+!7§ = §%!>§.§-]§.§?U§(this.§%I§,{
                                    "redOffset":param1,
                                    "greenOffset":param2,
                                    "blueOffset":param3
                                 },null,param4);
                                 addr113:
                                 §§push(this.§+!7§);
                                 if(_loc5_)
                                 {
                                    addr117:
                                    §§pop().onComplete = this.§4!!§;
                                    §§goto(addr125);
                                 }
                                 §§pop().play();
                              }
                              addr125:
                              if(_loc5_)
                              {
                                 addr122:
                                 §§push(this.§+!7§);
                              }
                              this.§=O§ = true;
                              return;
                           }
                           §§goto(addr113);
                        }
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr66);
               }
               §§goto(addr117);
            }
            §§goto(addr37);
         }
         §§goto(addr117);
      }
      
      public function §`!'§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mNewAlpha = param1;
            if(_loc3_)
            {
               alpha = param1;
            }
         }
      }
      
      public function §0C§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§+!7§);
         if(_loc3_ || _loc3_)
         {
            if(§§pop() != null)
            {
               §§push(this.§+!7§);
               if(!_loc4_)
               {
                  §§goto(addr31);
               }
               §§goto(addr88);
            }
            §§goto(addr49);
         }
         addr31:
         §§pop().stop();
         if(_loc3_ || param1)
         {
            this.§+!7§ = §%!>§.§-]§.§?U§(this,{"mNewAlpha":param1},null,param2);
            addr49:
            §§push(this.§+!7§);
            if(!(_loc4_ && param1))
            {
               §§pop().onComplete = this.§%S§;
               if(!_loc4_)
               {
                  §§push(this.§+!7§);
                  if(!_loc4_)
                  {
                     addr88:
                     §§pop().§ D§ = false;
                     addr90:
                     §§push(this.§+!7§);
                  }
                  §§pop().play();
                  §§goto(addr93);
               }
               §§goto(addr90);
            }
            §§goto(addr88);
         }
         addr93:
      }
      
      private function §%S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§"%§));
         }
      }
      
      private function §4!!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§=O§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§%I§)
            {
               if(_loc3_)
               {
                  transform.colorTransform = this.§%I§;
                  if(!(_loc2_ && this))
                  {
                     addr55:
                     if(!this.§=O§)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           this.§%I§ = null;
                           addr68:
                           if(alpha != this.mNewAlpha)
                           {
                              alpha = this.mNewAlpha;
                           }
                        }
                     }
                  }
                  §§goto(addr68);
               }
               return;
            }
            §§goto(addr68);
         }
         §§goto(addr55);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            AngryBirdsFP11.§@t§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(_loc2_ || this)
            {
               addr53:
               §§push(this.§+!7§);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr67:
                        this.§+!7§.stop();
                        addr65:
                        if(_loc1_)
                        {
                        }
                        §§goto(addr73);
                     }
                     this.§+!7§ = null;
                  }
                  addr73:
                  return;
               }
               §§goto(addr67);
            }
            §§goto(addr65);
         }
         §§goto(addr53);
      }
   }
}
