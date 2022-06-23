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
         if(_loc8_ || param2)
         {
            §§push(Number(param5));
            §§push(Number(param5));
            if(_loc8_)
            {
               if(!§§pop())
               {
                  if(_loc8_ || this)
                  {
                     §§pop();
                     if(_loc8_ || param2)
                     {
                        §§push(AngryBirdsFP11.§@t§);
                        if(!(_loc9_ && param2))
                        {
                           addr54:
                           §§push(Number(§§pop().getAppWidth()));
                           if(_loc8_)
                           {
                              addr57:
                              §§push(Number(§§pop()));
                              if(!(_loc9_ && this))
                              {
                                 param5 = §§pop();
                                 if(_loc8_ || param1)
                                 {
                                    §§goto(addr109);
                                 }
                                 addr87:
                                 §§push(AngryBirdsFP11.§@t§.getAppHeight());
                                 if(!(_loc9_ && param2))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 addr109:
                                 §§push(param6);
                                 if(_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 param6 = §§pop();
                                 if(_loc8_ || param2)
                                 {
                                    addr117:
                                    super();
                                 }
                                 var _loc7_:ColorTransform;
                                 (_loc7_ = new ColorTransform()).redOffset = param1;
                                 if(_loc8_ || this)
                                 {
                                    _loc7_.greenOffset = param2;
                                    if(_loc8_ || this)
                                    {
                                       _loc7_.blueOffset = param3;
                                       if(!_loc9_)
                                       {
                                          transform.colorTransform = _loc7_;
                                          if(_loc8_ || param3)
                                          {
                                             graphics.beginFill(0,1);
                                             if(_loc8_)
                                             {
                                                §§goto(addr164);
                                             }
                                          }
                                          §§goto(addr208);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr198);
                                 }
                                 addr164:
                                 graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
                                 if(!_loc9_)
                                 {
                                    addr178:
                                    scaleX = 100;
                                    if(_loc8_ || param3)
                                    {
                                       addr198:
                                       scaleY = 100;
                                       graphics.endFill();
                                       if(_loc8_)
                                       {
                                          this.mNewAlpha = param4;
                                          addr208:
                                          alpha = param4;
                                       }
                                    }
                                    §§goto(addr208);
                                 }
                                 this.mouseEnabled = true;
                                 if(!_loc9_)
                                 {
                                    AngryBirdsFP11.§@t§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                 }
                                 return;
                                 §§push(Number(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 §§pop();
                                 if(!(_loc9_ && param3))
                                 {
                                    §§goto(addr87);
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr109);
                        }
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr54);
               }
            }
            §§goto(addr57);
         }
         §§goto(addr117);
      }
      
      public function §%c§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(this.§=O§)
            {
               return;
            }
            §§push(this.§+!7§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(_loc6_ || this)
                  {
                     §§push(this.§+!7§);
                     if(_loc6_)
                     {
                        §§pop().stop();
                        if(!_loc5_)
                        {
                           addr42:
                           this.§%I§ = new ColorTransform();
                           if(!_loc5_)
                           {
                              this.§%I§.redOffset = transform.colorTransform.redOffset;
                           }
                           this.§%I§.greenOffset = transform.colorTransform.greenOffset;
                           if(_loc6_)
                           {
                              this.§%I§.blueOffset = transform.colorTransform.blueOffset;
                              this.§+!7§ = §%!>§.§-]§.§?U§(this.§%I§,{
                                 "redOffset":param1,
                                 "greenOffset":param2,
                                 "blueOffset":param3
                              },null,param4);
                              if(_loc6_ || this)
                              {
                                 addr111:
                                 §§push(this.§+!7§);
                                 if(!_loc5_)
                                 {
                                    addr115:
                                    §§pop().onComplete = this.§4!!§;
                                    if(!_loc6_)
                                    {
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr122);
                              }
                              addr122:
                              §§pop().play();
                              addr123:
                              this.§=O§ = true;
                              return;
                              §§push(this.§+!7§);
                           }
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr123);
               }
               §§goto(addr42);
            }
            §§goto(addr115);
         }
         §§goto(addr111);
      }
      
      public function §`!'§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mNewAlpha = param1;
            if(!_loc2_)
            {
               addr24:
               alpha = param1;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §0C§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§+!7§);
         if(_loc3_)
         {
            if(§§pop() != null)
            {
               if(!_loc4_)
               {
                  §§push(this.§+!7§);
                  if(!_loc4_)
                  {
                     §§goto(addr28);
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr46);
         }
         addr28:
         §§pop().stop();
         if(_loc3_ || this)
         {
            addr46:
            this.§+!7§ = §%!>§.§-]§.§?U§(this,{"mNewAlpha":param1},null,param2);
            if(_loc3_ || _loc3_)
            {
               §§push(this.§+!7§);
               if(_loc3_ || param1)
               {
                  addr83:
                  §§pop().onComplete = this.§%S§;
                  §§goto(addr86);
               }
               §§goto(addr95);
            }
         }
         addr86:
         §§push(this.§+!7§);
         if(!(_loc4_ && this))
         {
            addr95:
            §§pop().§ D§ = false;
            §§push(this.§+!7§);
         }
         §§pop().play();
      }
      
      private function §%S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§"%§));
         }
      }
      
      private function §4!!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§=O§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.§%I§)
         {
            transform.colorTransform = this.§%I§;
            if(!this.§=O§)
            {
               if(_loc3_)
               {
                  this.§%I§ = null;
                  §§goto(addr42);
               }
               §§goto(addr53);
            }
         }
         addr42:
         if(alpha != this.mNewAlpha)
         {
            if(!(_loc2_ && _loc3_))
            {
               addr53:
               alpha = this.mNewAlpha;
            }
         }
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            AngryBirdsFP11.§@t§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(!_loc1_)
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
                        if(_loc2_ || _loc2_)
                        {
                           this.§+!7§ = null;
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr67);
         }
         §§goto(addr53);
      }
   }
}
