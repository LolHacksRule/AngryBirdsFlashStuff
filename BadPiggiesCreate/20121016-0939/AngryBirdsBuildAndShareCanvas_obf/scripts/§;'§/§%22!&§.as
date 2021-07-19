package §;'§
{
   import §5!V§.§!w§;
   import §6p§.§?%§;
   import §default§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§1[§;
   import starling.events.§<!h§;
   import starling.events.TouchEvent;
   
   public class §"!&§ extends EventDispatcher implements §return§
   {
       
      
      protected var §9q§:§!w§;
      
      private var § !2§:Boolean = false;
      
      public function §"!&§(param1:§!w§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            do
            {
               this.§9q§ = param1;
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9q§.update(param1,true);
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
         if(_loc1_ || this)
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(§?%§.§%b§);
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     addr68:
                     while(true)
                     {
                        §§push(§?%§.§%b§);
                        addr70:
                        while(true)
                        {
                           §§pop().stage.addEventListener(TouchEvent.§9>§,this.§9R§);
                           addr86:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                     addr68:
                  }
                  while(true)
                  {
                     this.§9q§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(!_loc1_)
                     {
                        continue;
                     }
                     if(!(_loc2_ && _loc1_))
                     {
                        return;
                     }
                     §§goto(addr68);
                  }
                  continue;
               }
               §§goto(addr70);
            }
         }
         §§goto(addr68);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§?%§.§%b§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr79:
                     §?%§.§%b§.stage.removeEventListener(TouchEvent.§9>§,this.§9R§);
                     addr85:
                     while(true)
                     {
                     }
                     addr85:
                  }
                  §§goto(addr85);
               }
               while(true)
               {
                  this.§9q§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr85);
               }
               return;
            }
         }
         §§goto(addr79);
      }
      
      private function §9R§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§1[§> = null;
         var _loc4_:§1[§ = null;
         var _loc5_:§1[§ = null;
         if(_loc7_ || _loc2_)
         {
            §§push(this.§ !2§);
            if(_loc7_)
            {
               §§push(!§§pop());
               if(_loc7_)
               {
                  addr40:
                  if(!§§pop())
                  {
                     if(_loc7_ || param1)
                     {
                        §§goto(addr49);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr68);
               }
               addr49:
               §§pop();
               if(!(_loc6_ && param1))
               {
                  addr57:
                  §§push(this.§9q§.mReadyToRun);
                  if(_loc7_ || _loc2_)
                  {
                     addr68:
                     addr67:
                     if(!§§pop())
                     {
                        if(_loc7_ || this)
                        {
                           §§goto(addr76);
                        }
                     }
                     var _loc2_:DisplayObject = param1.target as DisplayObject;
                     if(!(_loc6_ && _loc2_))
                     {
                        if(_loc2_)
                        {
                           addr92:
                           _loc3_ = param1.§<C§(_loc2_,§<!h§.§-!V§);
                           _loc3_ = _loc3_.concat(param1.§<C§(_loc2_,§<!h§.§"W§));
                           if(_loc7_)
                           {
                              if(_loc3_.length > 0)
                              {
                                 if(_loc7_)
                                 {
                                    addr126:
                                    this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                 }
                              }
                              §§push(Boolean(_loc4_ = param1.§package§(_loc2_,§<!h§.§,"#§)));
                              if(_loc7_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       §§goto(addr161);
                                    }
                                 }
                                 §§goto(addr173);
                              }
                              addr161:
                              §§pop();
                              if(!(_loc6_ && this))
                              {
                                 addr173:
                                 if(_loc4_.§0!T§ > 0)
                                 {
                                    if(!_loc6_)
                                    {
                                       this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                    }
                                 }
                              }
                              §§push(Boolean(_loc5_ = param1.§package§(_loc2_,§<!h§.§?!o§)));
                              if(_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§goto(addr202);
                                    }
                                 }
                                 §§goto(addr209);
                              }
                              addr202:
                              §§pop();
                              if(!_loc6_)
                              {
                                 addr209:
                                 if(_loc5_.§0!T§ > 0)
                                 {
                                    if(!_loc7_)
                                    {
                                    }
                                 }
                                 §§goto(addr228);
                              }
                              this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                              §§goto(addr228);
                           }
                           §§goto(addr126);
                        }
                        addr228:
                        return;
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr68);
               }
               addr76:
               return;
            }
            §§goto(addr40);
         }
         §§goto(addr57);
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
         return this.§9q§.camera.getZoomRatio();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9q§.camera.setZoomRatio(param1);
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
      
      public function §;"3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ !2§ = param1;
         }
      }
      
      public function §2!B§() : Boolean
      {
         return this.§ !2§;
      }
   }
}
