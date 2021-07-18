package §5#§
{
   import §-!`§.DisplayObject;
   import §<!<§.§7E§;
   import §@!X§.§7j§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§,s§;
   import starling.events.§21§;
   import starling.events.TouchEvent;
   
   public class §?o§ extends EventDispatcher implements §5k§
   {
       
      
      protected var §-n§:§7E§;
      
      private var §-!s§:Boolean = false;
      
      public function §?o§(param1:§7E§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc2_ || this)
            {
               addr27:
               this.§-n§ = param1;
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§-n§.update(param1,true);
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.removeEventListeners();
            if(!_loc1_)
            {
               §§push(§7j§.§else§);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        addr67:
                        §7j§.§else§.stage.addEventListener(TouchEvent.§1C§,this.§6!j§);
                        if(_loc1_ && _loc2_)
                        {
                        }
                        §§goto(addr88);
                     }
                  }
                  this.§-n§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  addr88:
                  return;
               }
               §§goto(addr67);
            }
         }
         §§goto(addr67);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(§7j§.§else§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr57:
                     §7j§.§else§.stage.removeEventListener(TouchEvent.§1C§,this.§6!j§);
                     if(_loc1_ || _loc1_)
                     {
                     }
                     §§goto(addr78);
                  }
               }
               this.§-n§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
               addr78:
               return;
            }
         }
         §§goto(addr57);
      }
      
      private function §6!j§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§,s§> = null;
         var _loc4_:§,s§ = null;
         var _loc5_:§,s§ = null;
         if(!(_loc6_ && this))
         {
            §§push(this.§-!s§);
            if(_loc7_ || this)
            {
               §§push(!§§pop());
               if(_loc7_ || this)
               {
                  if(!§§pop())
                  {
                     if(_loc7_)
                     {
                        §§goto(addr54);
                     }
                  }
                  §§goto(addr63);
               }
            }
            addr54:
            §§pop();
            if(_loc7_)
            {
               §§push(this.§-n§.mReadyToRun);
               if(!_loc6_)
               {
                  addr63:
                  if(!§§pop())
                  {
                     if(!_loc7_)
                     {
                        addr67:
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(!(_loc6_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              addr82:
                              _loc3_ = param1.§'[§(_loc2_,§21§.§#!`§);
                              _loc3_ = _loc3_.concat(param1.§'[§(_loc2_,§21§.§&i§));
                              if(_loc7_ || param1)
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(_loc7_)
                                    {
                                       addr121:
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                                 §§push(Boolean(_loc4_ = param1.§ var§(_loc2_,§21§.§<w§)));
                                 if(_loc7_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          addr156:
                                          §§pop();
                                          if(!_loc6_)
                                          {
                                             addr163:
                                             if(_loc4_.§=!u§ > 0)
                                             {
                                                if(_loc7_)
                                                {
                                                   this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                                }
                                             }
                                          }
                                          §§push(Boolean(_loc5_ = param1.§ var§(_loc2_,§21§.§%@§)));
                                          if(!_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc7_ || _loc2_)
                                                {
                                                   §§pop();
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      addr214:
                                                      if(_loc5_.§=!u§ > 0)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                   this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                                   §§goto(addr223);
                                                }
                                             }
                                          }
                                          §§goto(addr214);
                                       }
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr121);
                           }
                           addr223:
                           return;
                        }
                        §§goto(addr82);
                     }
                  }
                  §§goto(addr67);
               }
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr67);
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
      
      public function getZoomRatio() : Number
      {
         return this.§-n§.camera.getZoomRatio();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§-n§.camera.setZoomRatio(param1);
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
      
      public function §05§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-!s§ = param1;
         }
      }
      
      public function §9!S§() : Boolean
      {
         return this.§-!s§;
      }
   }
}
