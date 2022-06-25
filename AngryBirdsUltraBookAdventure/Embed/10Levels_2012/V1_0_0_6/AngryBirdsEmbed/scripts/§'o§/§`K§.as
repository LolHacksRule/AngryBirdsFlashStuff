package §'o§
{
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §`K§ extends MovieClip
   {
       
      
      private var §#O§:§3_§;
      
      private var §+o§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §,j§:Boolean = false;
      
      public function §`K§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            §§push(param5);
            if(!(_loc8_ && param2))
            {
               §§push(Number(§§pop()));
               if(_loc9_ || param2)
               {
                  §§push(§§pop());
                  if(!_loc8_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc8_ && this))
                        {
                           §§pop();
                           if(!(_loc8_ && param2))
                           {
                              §§push(AngryBirdsFP11.§0P§);
                              if(_loc9_)
                              {
                                 §§push(§§pop().getAppWidth());
                                 if(!(_loc8_ && this))
                                 {
                                    addr66:
                                    §§push(Number(§§pop()));
                                    if(_loc9_)
                                    {
                                       addr69:
                                       §§push(Number(§§pop()));
                                       if(!(_loc8_ && param3))
                                       {
                                          param5 = §§pop();
                                          if(_loc9_ || param3)
                                          {
                                             addr85:
                                             §§push(param6);
                                             if(!_loc8_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc9_)
                                                {
                                                   §§goto(addr92);
                                                }
                                                §§goto(addr110);
                                             }
                                          }
                                          §§goto(addr113);
                                       }
                                       §§goto(addr110);
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr110);
                              }
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr69);
                  }
                  addr92:
                  if(!§§pop())
                  {
                     if(!(_loc8_ && param3))
                     {
                        addr110:
                        §§pop();
                        if(_loc9_)
                        {
                           addr113:
                           §§push(Number(AngryBirdsFP11.§0P§.getAppHeight()));
                           if(!_loc8_)
                           {
                              §§goto(addr120);
                           }
                           addr120:
                           param6 = §§pop();
                           §§goto(addr119);
                        }
                        §§goto(addr123);
                     }
                  }
                  addr119:
                  if(_loc9_)
                  {
                     addr123:
                     super();
                  }
                  var _loc7_:ColorTransform;
                  (_loc7_ = new ColorTransform()).redOffset = param1;
                  if(_loc9_ || param1)
                  {
                     _loc7_.greenOffset = param2;
                  }
                  _loc7_.blueOffset = param3;
                  transform.colorTransform = _loc7_;
                  if(_loc9_ || this)
                  {
                     graphics.beginFill(0,1);
                     if(!_loc8_)
                     {
                        graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
                        if(!_loc8_)
                        {
                           scaleX = 100;
                        }
                        scaleY = 100;
                        if(_loc9_)
                        {
                           graphics.endFill();
                           this.mNewAlpha = param4;
                           if(_loc9_ || this)
                           {
                              alpha = param4;
                              if(!_loc9_)
                              {
                              }
                              §§goto(addr213);
                           }
                           this.mouseEnabled = true;
                           §§goto(addr213);
                        }
                     }
                     §§goto(addr213);
                  }
                  addr213:
                  AngryBirdsFP11.§0P§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  return;
               }
               §§goto(addr66);
            }
            §§goto(addr120);
         }
         §§goto(addr85);
      }
      
      public function §69§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            if(this.§,j§)
            {
               if(_loc5_ || param3)
               {
                  return;
               }
               this.§#O§ = §,!G§.§@j§.§47§(this.§+o§,{
                  "redOffset":param1,
                  "greenOffset":param2,
                  "blueOffset":param3
               },null,param4);
               addr99:
            }
            else
            {
               §§push(this.§#O§);
               if(!(_loc6_ && this))
               {
                  if(§§pop())
                  {
                     §§push(this.§#O§);
                     if(_loc5_)
                     {
                        addr48:
                        §§pop().stop();
                        if(_loc5_)
                        {
                           §§goto(addr51);
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr129);
                  }
                  addr51:
                  this.§+o§ = new ColorTransform();
                  this.§+o§.redOffset = transform.colorTransform.redOffset;
                  if(!_loc6_)
                  {
                     addr73:
                     this.§+o§.greenOffset = transform.colorTransform.greenOffset;
                     if(_loc5_ || this)
                     {
                     }
                     addr125:
                     §§push(this.§#O§);
                     if(_loc5_)
                     {
                        addr129:
                        §§pop().onComplete = this.§-3§;
                        §§push(this.§#O§);
                     }
                     §§pop().play();
                     if(!_loc6_)
                     {
                        this.§,j§ = true;
                     }
                     §§goto(addr140);
                  }
                  this.§+o§.blueOffset = transform.colorTransform.blueOffset;
                  if(_loc5_ || param3)
                  {
                     §§goto(addr99);
                  }
                  addr140:
                  return;
               }
               §§goto(addr48);
            }
            §§goto(addr125);
         }
         §§goto(addr129);
      }
      
      public function §!!6§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mNewAlpha = param1;
            if(!(_loc3_ && _loc2_))
            {
               alpha = param1;
            }
         }
      }
      
      public function §?`§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§#O§);
         if(_loc4_ || param2)
         {
            if(§§pop() != null)
            {
               §§push(this.§#O§);
               if(!(_loc3_ && this))
               {
                  §§pop().stop();
                  this.§#O§ = §,!G§.§@j§.§47§(this,{"mNewAlpha":param1},null,param2);
                  addr48:
                  §§push(this.§#O§);
                  if(!(_loc3_ && param1))
                  {
                     addr78:
                     §§pop().onComplete = this.§=!<§;
                     if(_loc4_)
                     {
                        §§push(this.§#O§);
                        if(_loc4_ || param1)
                        {
                           addr92:
                           §§pop().§'<§ = false;
                        }
                        §§goto(addr96);
                     }
                     addr96:
                     §§pop().play();
                     return;
                     §§push(this.§#O§);
                  }
                  §§goto(addr92);
               }
               §§goto(addr78);
            }
            §§goto(addr48);
         }
         §§goto(addr96);
      }
      
      private function §=!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§&Y§));
         }
      }
      
      private function §-3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§,j§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§+o§)
            {
               transform.colorTransform = this.§+o§;
               if(!_loc2_)
               {
                  if(!this.§,j§)
                  {
                     if(_loc3_)
                     {
                        addr53:
                        this.§+o§ = null;
                     }
                  }
                  §§goto(addr56);
               }
               §§goto(addr67);
            }
            addr56:
            if(alpha != this.mNewAlpha)
            {
               if(_loc3_ || this)
               {
                  addr67:
                  alpha = this.mNewAlpha;
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            AngryBirdsFP11.§0P§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(!_loc2_)
            {
               §§push(this.§#O§);
               if(!(_loc2_ && _loc1_))
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr72);
               }
               §§pop().stop();
               if(!_loc2_)
               {
                  addr69:
                  this.§#O§ = null;
               }
            }
            addr72:
            if(!(_loc2_ && this))
            {
               §§push(this.§#O§);
            }
            return;
         }
         §§goto(addr69);
      }
   }
}
