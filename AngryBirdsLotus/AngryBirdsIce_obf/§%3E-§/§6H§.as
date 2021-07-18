package §>-§
{
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §6H§ extends MovieClip
   {
       
      
      private var §6!>§:§?A§;
      
      private var §<q§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §<0§:Boolean = false;
      
      public function §6H§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param3))
         {
            §§push(Number(param5));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     addr122:
                     while(true)
                     {
                        §§push(AngryBirdsFP11.§?L§);
                        addr101:
                        while(true)
                        {
                           §§push(Number(§§pop().getAppWidth()));
                        }
                     }
                     addr122:
                  }
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop3:
                     while(true)
                     {
                        param5 = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(param6);
                           if(!(_loc8_ && param3))
                           {
                              continue loop0;
                           }
                           loop9:
                           while(true)
                           {
                              §§pop();
                              loop10:
                              while(true)
                              {
                                 if(!(_loc8_ && param3))
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§push(AngryBirdsFP11.§?L§);
                                       if(!(_loc8_ && this))
                                       {
                                          §§push(Number(§§pop().getAppHeight()));
                                          if(_loc9_)
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             addr60:
                                          }
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                while(_loc9_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc8_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      continue loop9;
                                                   }
                                                   §§goto(addr60);
                                                }
                                                continue loop3;
                                                addr83:
                                             }
                                             param6 = §§pop();
                                             do
                                             {
                                                super();
                                             }
                                             while(!(_loc9_ || param1));
                                             
                                             if(_loc8_ && param3)
                                             {
                                                continue loop10;
                                             }
                                             if(_loc8_)
                                             {
                                                continue loop4;
                                             }
                                             if(false)
                                             {
                                                continue loop11;
                                             }
                                             var _loc7_:ColorTransform;
                                             (_loc7_ = new ColorTransform()).redOffset = param1;
                                             _loc7_.greenOffset = param2;
                                             _loc7_.blueOffset = param3;
                                             transform.colorTransform = _loc7_;
                                             graphics.beginFill(0,1);
                                             graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
                                             scaleX = 100;
                                             addr227:
                                             addr243:
                                             addr247:
                                             if(_loc9_ || param2)
                                             {
                                                if(!_loc8_)
                                                {
                                                   scaleY = 100;
                                                   graphics.endFill();
                                                   addr189:
                                                   if(_loc9_)
                                                   {
                                                      this.mNewAlpha = param4;
                                                      alpha = param4;
                                                      addr162:
                                                      if(_loc9_)
                                                      {
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               this.mouseEnabled = true;
                                                               AngryBirdsFP11.§?L§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                                               if(!(_loc8_ && param3))
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§goto(addr162);
                                                                  }
                                                                  return;
                                                               }
                                                               addr157:
                                                               §§goto(addr157);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         §§goto(addr189);
                                                      }
                                                      addr178:
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr247);
                                             }
                                             addr238:
                                             §§goto(addr238);
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr122);
                                 }
                                 §§goto(addr101);
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      public function § !%§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(this.§<0§)
         {
            return;
         }
         loop0:
         while(true)
         {
            §§push(this.§6!>§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§6!>§);
                     addr149:
                     while(true)
                     {
                        §§pop().stop();
                     }
                  }
                  addr147:
               }
               loop2:
               while(true)
               {
                  this.§<q§ = new ColorTransform();
                  this.§<q§.redOffset = transform.colorTransform.redOffset;
                  while(true)
                  {
                     this.§<q§.greenOffset = transform.colorTransform.greenOffset;
                     if(!_loc6_)
                     {
                        break;
                     }
                     this.§<q§.blueOffset = transform.colorTransform.blueOffset;
                     this.§6!>§ = §";§.§[8§.§6!$§(this.§<q§,{
                        "redOffset":param1,
                        "greenOffset":param2,
                        "blueOffset":param3
                     },null,param4);
                     loop4:
                     while(true)
                     {
                        §§push(this.§6!>§);
                        while(!(_loc5_ && this))
                        {
                           §§pop().onComplete = this.§`0§;
                           while(true)
                           {
                              §§push(this.§6!>§);
                              if(_loc5_ && param1)
                              {
                                 break;
                              }
                              §§pop().play();
                              if(_loc6_)
                              {
                                 continue loop4;
                              }
                           }
                        }
                        continue loop2;
                     }
                     if(_loc5_ && param3)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        return;
                     }
                     §§goto(addr147);
                  }
                  continue loop0;
               }
            }
            §§goto(addr149);
         }
      }
      
      public function §,`§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.mNewAlpha = param1;
         }
         do
         {
            alpha = param1;
         }
         while(!(_loc3_ || this));
         
      }
      
      public function §@2§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§6!>§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  addr119:
                  while(true)
                  {
                     §§push(this.§6!>§);
                     addr121:
                     while(true)
                     {
                        §§pop().stop();
                        addr122:
                        while(true)
                        {
                        }
                     }
                  }
                  addr119:
               }
               while(true)
               {
                  this.§6!>§ = §";§.§[8§.§6!$§(this,{"mNewAlpha":param1},null,param2);
                  addr114:
                  while(true)
                  {
                     §§push(this.§6!>§);
                     while(_loc3_)
                     {
                        §§pop().onComplete = this.§4z§;
                        loop4:
                        while(true)
                        {
                           §§push(this.§6!>§);
                           while(true)
                           {
                              §§pop().§+&§ = false;
                              if(!_loc4_)
                              {
                                 if(_loc4_ && this)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop4;
                           }
                           §§goto(addr122);
                        }
                        if(_loc3_ || param1)
                        {
                           continue loop0;
                        }
                     }
                     §§goto(addr121);
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      private function §4z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§+!>§));
         }
      }
      
      private function §`0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§<0§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§<q§)
            {
               addr80:
               while(true)
               {
                  transform.colorTransform = this.§<q§;
                  if(!this.§<0§)
                  {
                     this.§<q§ = null;
                     while(true)
                     {
                     }
                     addr76:
                  }
               }
               addr80:
            }
            while(alpha != this.mNewAlpha)
            {
               if(_loc2_ || _loc2_)
               {
                  alpha = this.mNewAlpha;
               }
               if(!_loc3_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr80);
               }
               §§goto(addr76);
            }
            return;
         }
         §§goto(addr80);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            AngryBirdsFP11.§?L§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            loop0:
            while(true)
            {
               §§push(this.§6!>§);
               if(_loc1_ || this)
               {
                  if(!§§pop())
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     addr65:
                     this.§6!>§.stop();
                  }
                  while(!_loc2_)
                  {
                     this.§6!>§ = null;
                     if(_loc1_)
                     {
                        addr49:
                        break loop0;
                     }
                  }
                  continue;
               }
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr49);
      }
   }
}
