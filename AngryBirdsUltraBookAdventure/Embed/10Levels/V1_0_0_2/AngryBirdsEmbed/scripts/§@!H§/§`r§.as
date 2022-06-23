package §@!H§
{
   import §#!;§.§;T§;
   import §9W§.DisplayObject;
   import §?b§.§7!,§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§<e§;
   import starling.events.TouchEvent;
   import starling.events.§^!@§;
   
   public class §`r§ extends EventDispatcher implements §!!1§
   {
       
      
      protected var §4!%§:§7!,§;
      
      private var §0! §:Boolean = false;
      
      public function §`r§(param1:§7!,§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(!_loc2_)
            {
               this.§4!%§ = param1;
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4!%§.update(param1,true);
         }
      }
      
      public function init() : void
      {
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.removeEventListeners();
            if(!(_loc2_ && _loc1_))
            {
               addr52:
               §§push(§;T§.§,H§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        addr61:
                        §;T§.§,H§.stage.addEventListener(TouchEvent.§?6§,this.§1H§);
                        if(!_loc1_)
                        {
                        }
                        §§goto(addr77);
                     }
                  }
                  this.§4!%§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  addr77:
                  return;
               }
            }
            §§goto(addr61);
         }
         §§goto(addr52);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§;T§.§,H§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr53:
                     §;T§.§,H§.stage.removeEventListener(TouchEvent.§?6§,this.§1H§);
                     if(_loc1_ && _loc2_)
                     {
                     }
                     §§goto(addr74);
                  }
               }
               this.§4!%§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
               addr74:
               return;
            }
         }
         §§goto(addr53);
      }
      
      private function §1H§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§^!@§> = null;
         var _loc4_:§^!@§ = null;
         var _loc5_:§^!@§ = null;
         if(!(_loc7_ && param1))
         {
            §§push(this.§0! §);
            if(!(_loc7_ && this))
            {
               §§push(!§§pop());
               if(!_loc7_)
               {
                  if(!§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           §§push(this.§4!%§.mReadyToRun);
                           if(_loc6_ || _loc2_)
                           {
                              addr62:
                              if(!§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    addr66:
                                    var _loc2_:DisplayObject = param1.target as DisplayObject;
                                    if(_loc6_ || _loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          addr81:
                                          _loc3_ = param1.§@5§(_loc2_,§<e§.§!C§);
                                          _loc3_ = _loc3_.concat(param1.§@5§(_loc2_,§<e§.§8;§));
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             if(_loc3_.length > 0)
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                                }
                                             }
                                          }
                                          §§push(Boolean(_loc4_ = param1.§';§(_loc2_,§<e§.§4[§)));
                                          if(!_loc7_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   addr150:
                                                   §§pop();
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      addr162:
                                                      if(_loc4_.§+T§ > 0)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            addr165:
                                                            this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                                         }
                                                      }
                                                      §§push(Boolean(_loc5_ = param1.§';§(_loc2_,§<e§.§"=§)));
                                                      if(!_loc7_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§pop();
                                                               if(!(_loc7_ && _loc2_))
                                                               {
                                                                  addr213:
                                                                  if(_loc5_.§+T§ > 0)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr222);
                                                               }
                                                               this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                                               §§goto(addr222);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   §§goto(addr165);
                                                }
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr150);
                                       }
                                       addr222:
                                       return;
                                    }
                                    §§goto(addr81);
                                 }
                              }
                              §§goto(addr66);
                           }
                           §§goto(addr62);
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr62);
         }
         §§goto(addr66);
      }
      
      protected function handleMouseMove(param1:Number, param2:Number) : void
      {
      }
      
      protected function handleMouseUp(param1:Number, param2:Number) : void
      {
      }
      
      protected function handleMouseDown(param1:Number, param2:Number) : void
      {
      }
      
      protected function onMouseWheel(param1:MouseEvent) : void
      {
      }
      
      public function § &§() : Number
      {
         return this.§4!%§.camera.§ &§();
      }
      
      public function §"O§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§4!%§.camera.§"O§(param1);
         }
      }
      
      public function addScore(param1:int) : void
      {
      }
      
      public function getScore() : int
      {
         return 0;
      }
      
      public function getEagleScore() : int
      {
         return 0;
      }
      
      public function § Z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§0! § = param1;
         }
      }
      
      public function §2g§() : Boolean
      {
         return this.§0! §;
      }
   }
}
