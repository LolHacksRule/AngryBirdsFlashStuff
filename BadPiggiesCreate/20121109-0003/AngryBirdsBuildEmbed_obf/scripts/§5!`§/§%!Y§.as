package §5!`§
{
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §%!Y§ extends MovieClip
   {
       
      
      private var §?-§:§0Y§;
      
      private var §<-§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §^!S§:Boolean = false;
      
      public function §%!Y§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param1))
         {
            §§push(param5);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
               §§push(Number(§§pop()));
               if(_loc8_ || param2)
               {
                  if(!§§pop())
                  {
                     if(!_loc9_)
                     {
                        §§pop();
                        if(!(_loc9_ && param1))
                        {
                           §§push(AngryBirdsFP11.§`!d§);
                           if(!(_loc9_ && param3))
                           {
                              §§push(Number(§§pop().getAppWidth()));
                              if(_loc8_)
                              {
                                 §§goto(addr59);
                              }
                              §§goto(addr64);
                           }
                           §§goto(addr77);
                        }
                        §§goto(addr63);
                     }
                  }
                  addr59:
                  param5 = §§pop();
                  if(_loc8_)
                  {
                     addr64:
                     addr63:
                     addr66:
                     addr65:
                     §§push(Number(param6));
                     if(!Number(param6))
                     {
                        §§pop();
                        §§goto(addr93);
                     }
                     param6 = §§pop();
                     if(!_loc8_)
                     {
                     }
                     §§goto(addr93);
                  }
                  addr93:
                  if(_loc8_ || this)
                  {
                     addr77:
                     §§push(Number(AngryBirdsFP11.§`!d§.getAppHeight()));
                  }
                  super();
                  var _loc7_:ColorTransform;
                  (_loc7_ = new ColorTransform()).redOffset = param1;
                  if(_loc8_)
                  {
                     _loc7_.greenOffset = param2;
                     if(_loc8_ || this)
                     {
                        _loc7_.blueOffset = param3;
                        if(!(_loc9_ && this))
                        {
                           transform.colorTransform = _loc7_;
                           graphics.beginFill(0,1);
                           graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
                           scaleX = 100;
                           if(!(_loc9_ && this))
                           {
                              scaleY = 100;
                              graphics.endFill();
                              if(_loc8_ || param2)
                              {
                                 this.mNewAlpha = param4;
                                 alpha = param4;
                                 if(!_loc8_)
                                 {
                                 }
                                 §§goto(addr186);
                              }
                           }
                        }
                        this.mouseEnabled = true;
                     }
                  }
                  addr186:
                  AngryBirdsFP11.§`!d§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  return;
               }
               §§goto(addr66);
            }
            §§goto(addr65);
         }
         §§goto(addr64);
      }
      
      public function §+8§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(this.§^!S§)
         {
            return;
         }
         §§push(this.§?-§);
         if(_loc6_)
         {
            if(§§pop())
            {
               §§push(this.§?-§);
               if(_loc6_ || param3)
               {
                  §§pop().stop();
                  addr36:
                  this.§<-§ = new ColorTransform();
                  this.§<-§.redOffset = transform.colorTransform.redOffset;
                  if(_loc6_ || this)
                  {
                     this.§<-§.greenOffset = transform.colorTransform.greenOffset;
                     if(_loc6_ || this)
                     {
                        this.§<-§.blueOffset = transform.colorTransform.blueOffset;
                        if(!_loc5_)
                        {
                           this.§?-§ = §@!T§.§`!t§.§8!"§(this.§<-§,{
                              "redOffset":param1,
                              "greenOffset":param2,
                              "blueOffset":param3
                           },null,param4);
                        }
                     }
                  }
                  §§push(this.§?-§);
                  if(_loc5_)
                  {
                  }
                  §§goto(addr119);
               }
               §§pop().onComplete = this.§'! §;
               addr119:
               §§pop().play();
               this.§^!S§ = true;
               return;
               §§push(this.§?-§);
            }
         }
         §§goto(addr36);
      }
      
      public function §@!J§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mNewAlpha = param1;
            if(_loc2_)
            {
               addr23:
               alpha = param1;
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function §#[§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§?-§);
            if(_loc4_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc3_ && param1))
                  {
                     §§push(this.§?-§);
                     if(_loc4_)
                     {
                        §§pop().stop();
                        this.§?-§ = §@!T§.§`!t§.§8!"§(this,{"mNewAlpha":param1},null,param2);
                        addr52:
                        §§push(this.§?-§);
                        if(_loc4_)
                        {
                           §§pop().onComplete = this.§[k§;
                           §§push(this.§?-§);
                           if(_loc4_ || param2)
                           {
                              addr89:
                              §§pop().§0! § = false;
                              addr91:
                              §§push(this.§?-§);
                           }
                        }
                     }
                     §§pop().play();
                     §§goto(addr94);
                  }
                  §§goto(addr91);
               }
               §§goto(addr52);
            }
            §§goto(addr89);
         }
         addr94:
      }
      
      private function §[k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§1!4§));
         }
      }
      
      private function §'! §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§^!S§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§<-§)
            {
               if(_loc3_ || param1)
               {
                  transform.colorTransform = this.§<-§;
                  if(!this.§^!S§)
                  {
                     this.§<-§ = null;
                  }
               }
               §§goto(addr57);
            }
            if(alpha != this.mNewAlpha)
            {
               alpha = this.mNewAlpha;
            }
         }
         addr57:
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            AngryBirdsFP11.§`!d§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(_loc1_ || this)
            {
               §§push(this.§?-§);
               if(_loc1_ || _loc1_)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr87);
               }
               §§pop().stop();
               if(_loc1_ || _loc1_)
               {
                  this.§?-§ = null;
               }
            }
            addr87:
            if(_loc1_ || _loc2_)
            {
               addr74:
               §§push(this.§?-§);
            }
            return;
         }
         §§goto(addr74);
      }
   }
}
