package §87§
{
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §<8§ extends MovieClip
   {
       
      
      private var §0!=§:§?!3§;
      
      private var §=J§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §9j§:Boolean = false;
      
      public function §<8§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
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
                        §§push(AngryBirdsFP11.§,s§);
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
                                 §§push(AngryBirdsFP11.§,s§.getAppHeight());
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
                                    AngryBirdsFP11.§,s§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
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
      
      public function §+J§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(this.§9j§)
            {
               return;
            }
            §§push(this.§0!=§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(_loc6_ || this)
                  {
                     §§push(this.§0!=§);
                     if(_loc6_)
                     {
                        §§pop().stop();
                        if(!_loc5_)
                        {
                           addr42:
                           this.§=J§ = new ColorTransform();
                           if(!_loc5_)
                           {
                              this.§=J§.redOffset = transform.colorTransform.redOffset;
                           }
                           this.§=J§.greenOffset = transform.colorTransform.greenOffset;
                           if(_loc6_)
                           {
                              this.§=J§.blueOffset = transform.colorTransform.blueOffset;
                              this.§0!=§ = §,B§.§^n§.§2E§(this.§=J§,{
                                 "redOffset":param1,
                                 "greenOffset":param2,
                                 "blueOffset":param3
                              },null,param4);
                              if(_loc6_ || this)
                              {
                                 addr111:
                                 §§push(this.§0!=§);
                                 if(!_loc5_)
                                 {
                                    addr115:
                                    §§pop().onComplete = this.§4!9§;
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
                              this.§9j§ = true;
                              return;
                              §§push(this.§0!=§);
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
      
      public function §?n§(param1:Number) : void
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
      
      public function §4J§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§0!=§);
         if(_loc3_)
         {
            if(§§pop() != null)
            {
               if(!_loc4_)
               {
                  §§push(this.§0!=§);
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
            this.§0!=§ = §,B§.§^n§.§2E§(this,{"mNewAlpha":param1},null,param2);
            if(_loc3_ || _loc3_)
            {
               §§push(this.§0!=§);
               if(_loc3_ || param1)
               {
                  addr83:
                  §§pop().onComplete = this.§+A§;
                  §§goto(addr86);
               }
               §§goto(addr95);
            }
         }
         addr86:
         §§push(this.§0!=§);
         if(!(_loc4_ && this))
         {
            addr95:
            §§pop().§?!+§ = false;
            §§push(this.§0!=§);
         }
         §§pop().play();
      }
      
      private function §+A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§9a§));
         }
      }
      
      private function §4!9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§9j§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.§=J§)
         {
            transform.colorTransform = this.§=J§;
            if(!this.§9j§)
            {
               if(_loc3_)
               {
                  this.§=J§ = null;
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
            AngryBirdsFP11.§,s§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(!_loc1_)
            {
               addr53:
               §§push(this.§0!=§);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr67:
                        this.§0!=§.stop();
                        if(_loc2_ || _loc2_)
                        {
                           this.§0!=§ = null;
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
