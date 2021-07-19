package
{
   import §_-9§.§_-0W§;
   import §_-IV§.§_-qW§;
   import §_-Qx§.§_-Sf§;
   import §_-gY§.§_-Vu§;
   import §_-hU§.§_-MB§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CustomAngryBirdsCanvas extends §_-0W§
   {
      
      public static const VERSION:String = "1.0.0.14";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            VERSION = "1.0.0.14";
         }
      }
      
      private var §_-hg§:Boolean = false;
      
      public function CustomAngryBirdsCanvas()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               addr32:
               if(stage)
               {
                  if(_loc2_)
                  {
                     this.init();
                     if(_loc1_)
                     {
                     }
                     §§goto(addr54);
                  }
               }
               else
               {
                  addEventListener(Event.ADDED_TO_STAGE,this.§_-h§);
               }
            }
            addr54:
            return;
         }
         §§goto(addr32);
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
            {
               if(_loc2_ || _loc1_)
               {
                  addr40:
                  loaderInfo.addEventListener(Event.COMPLETE,this.§_-38§);
                  if(_loc2_ || this)
                  {
                  }
                  §§goto(addr63);
               }
            }
            else
            {
               this.§_-7v§();
            }
            addr63:
            return;
         }
         §§goto(addr40);
      }
      
      private function §_-h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§_-h§);
            if(_loc3_)
            {
               addr43:
               this.init();
            }
            return;
         }
         §§goto(addr43);
      }
      
      private function §_-38§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§_-38§);
            if(!(_loc2_ && this))
            {
               this.§_-7v§();
            }
         }
      }
      
      private function §_-7v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§_-5M§);
            if(!_loc2_)
            {
               new §_-Qu§(this);
            }
         }
      }
      
      private function §_-5M§(param1:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:* = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         if(!(_loc13_ && this))
         {
            if(!this.§_-hg§)
            {
               if(!(_loc13_ && _loc2_))
               {
                  this.§_-hg§ = true;
                  if(!_loc13_)
                  {
                     _loc2_ = 0;
                     if(_loc13_ && this)
                     {
                     }
                     addr81:
                     _loc4_ = "";
                     addr83:
                     _loc5_ = "-";
                     if(!_loc13_)
                     {
                        _loc6_ = Math.round(getTimer() / 1000);
                        if(_loc14_)
                        {
                           addr97:
                           §§push(param1.error is Error);
                           if(_loc14_)
                           {
                              if(§§pop())
                              {
                                 if(_loc14_)
                                 {
                                    addr106:
                                    _loc2_ = (_loc10_ = param1.error as Error).errorID;
                                    _loc5_ = _loc10_.message;
                                    _loc3_ = _loc10_.getStackTrace();
                                 }
                                 else
                                 {
                                    addr130:
                                    _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
                                 }
                              }
                              else
                              {
                                 addr129:
                                 if(param1.error is ErrorEvent)
                                 {
                                    §§goto(addr130);
                                 }
                              }
                              §_-qW§.§_-6h§(§_-qW§.§_-Ub§,_loc2_.toString());
                              §§push(§_-MB§.§_-gw§);
                              if(_loc14_ || _loc3_)
                              {
                                 if(§§pop() != null)
                                 {
                                    if(_loc14_)
                                    {
                                       addr161:
                                       §§push(§_-MB§.§_-gw§.§_-9j§());
                                       if(_loc14_ || param1)
                                       {
                                          _loc4_ = §§pop();
                                          addr178:
                                          §§push(_loc4_);
                                          if(!(_loc13_ && param1))
                                          {
                                             §§push(null);
                                             if(!(_loc13_ && this))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc13_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         addr206:
                                                         §§pop();
                                                         §§push(_loc4_.length == 0);
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         _loc4_ = "NoState";
                                                         addr216:
                                                         addr222:
                                                         addr221:
                                                         addr218:
                                                         if((_loc7_ = §_-Sf§.§_-vj§) == null)
                                                         {
                                                            addr223:
                                                            _loc7_ = "";
                                                         }
                                                         _loc8_ = "GPU";
                                                         if(§_-Vu§.§_-wB§)
                                                         {
                                                            _loc8_ = "CPU";
                                                         }
                                                         §§push(_loc2_.toString() + "::");
                                                         §§push(_loc4_);
                                                         if(!(_loc13_ && param1))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc14_)
                                                            {
                                                               §§push("::");
                                                               if(_loc14_ || this)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(_loc5_);
                                                                  if(!(_loc13_ && this))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push("::");
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc14_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() + _loc8_);
                                                                           §§push("::");
                                                                           if(_loc14_ || this)
                                                                           {
                                                                              §§goto(addr342);
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        §§push(VERSION);
                                                                        if(_loc14_ || _loc2_)
                                                                        {
                                                                           addr301:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc14_)
                                                                           {
                                                                              _loc9_ = §§pop();
                                                                              if(_loc14_)
                                                                              {
                                                                                 §_-qW§.§_-6h§(§_-qW§.§_-bn§,_loc9_,_loc6_);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    addr316:
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       addr319:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc13_ && _loc3_))
                                                                                          {
                                                                                             addr327:
                                                                                             §§push(_loc9_);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                §§push(§§pop() + "::");
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   addr342:
                                                                                                   addr343:
                                                                                                   addr344:
                                                                                                   addr286:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      addr292:
                                                                                                      §§push(§§pop() + §§pop() + "::");
                                                                                                   }
                                                                                                   _loc12_ = §§pop() + §§pop();
                                                                                                   §_-qW§.§_-6h§(§_-qW§.§_-ZT§,_loc12_,_loc6_);
                                                                                                   return;
                                                                                                   §§push(_loc3_);
                                                                                                }
                                                                                                §§goto(addr343);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    §§goto(addr344);
                                                                                 }
                                                                                 §§goto(addr327);
                                                                              }
                                                                              §§goto(addr316);
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        §§goto(addr342);
                                                                     }
                                                                     §§goto(addr292);
                                                                  }
                                                                  §§goto(addr342);
                                                               }
                                                               §§goto(addr286);
                                                            }
                                                            §§goto(addr342);
                                                         }
                                                         §§goto(addr301);
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr221);
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr97);
                  }
                  _loc3_ = null;
                  if(_loc13_)
                  {
                  }
                  §§goto(addr83);
               }
               §§goto(addr81);
            }
            §§goto(addr342);
         }
         §§goto(addr81);
      }
   }
}
