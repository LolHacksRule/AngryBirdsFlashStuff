package §?#§
{
   import § N§.DisplayObject;
   import §5Z§.§[Z§;
   import §9T§.§1r§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§!g§;
   import starling.events.TouchEvent;
   import starling.events.§else§;
   
   public class §1q§ extends EventDispatcher implements §,H§
   {
       
      
      protected var §;§:§1r§;
      
      private var §'!M§:Boolean = false;
      
      public function §1q§(param1:§1r§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
         }
         do
         {
            this.§;§ = param1;
         }
         while(_loc2_ && this);
         
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;§.update(param1,true);
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
         if(!_loc2_)
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(§[Z§.§%m§);
               if(_loc1_ || this)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§;§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        addr83:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
                  else
                  {
                     addr46:
                  }
                  continue;
                  return;
               }
               addr77:
               while(true)
               {
                  §§pop().stage.addEventListener(TouchEvent.§=!?§,this.§;!1§);
               }
               §§goto(addr83);
            }
         }
         §§goto(addr46);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§[Z§.§%m§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  addr68:
                  while(true)
                  {
                     §§push(§[Z§.§%m§);
                     addr70:
                     while(true)
                     {
                        §§pop().stage.removeEventListener(TouchEvent.§=!?§,this.§;!1§);
                        addr76:
                        while(true)
                        {
                        }
                     }
                  }
                  addr68:
               }
               while(true)
               {
                  this.§;§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr68);
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr68);
      }
      
      private function §;!1§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§!g§> = null;
         var _loc4_:§!g§ = null;
         var _loc5_:§!g§ = null;
         if(_loc6_ || _loc2_)
         {
            §§push(this.§'!M§);
            if(!_loc7_)
            {
               §§push(!§§pop());
               if(_loc6_)
               {
                  addr39:
                  if(!§§pop())
                  {
                     if(_loc6_)
                     {
                        §§pop();
                        §§goto(addr65);
                     }
                     §§goto(addr61);
                  }
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr65);
                     }
                  }
                  var _loc2_:DisplayObject = param1.target as DisplayObject;
                  if(!_loc7_)
                  {
                     if(_loc2_)
                     {
                        addr76:
                        _loc3_ = param1.§-!3§(_loc2_,§else§.§&i§);
                        _loc3_ = _loc3_.concat(param1.§-!3§(_loc2_,§else§.§+N§));
                        if(!_loc7_)
                        {
                           if(_loc3_.length > 0)
                           {
                              if(_loc6_ || this)
                              {
                                 this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                              }
                           }
                        }
                        §§push(Boolean(_loc4_ = param1.§,f§(_loc2_,§else§.§1!9§)));
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§pop();
                                 if(!_loc7_)
                                 {
                                    addr147:
                                    if(_loc4_.§4e§ > 0)
                                    {
                                       if(!_loc7_)
                                       {
                                          this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                       }
                                    }
                                 }
                                 §§push(Boolean(_loc5_ = param1.§,f§(_loc2_,§else§.§ R§)));
                                 if(_loc6_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          §§pop();
                                          if(_loc6_ || _loc2_)
                                          {
                                             addr203:
                                             if(_loc5_.§4e§ > 0)
                                             {
                                                if(!_loc6_)
                                                {
                                                }
                                             }
                                             §§goto(addr212);
                                          }
                                          this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                          §§goto(addr212);
                                       }
                                    }
                                 }
                                 §§goto(addr203);
                              }
                           }
                        }
                        §§goto(addr147);
                     }
                     addr212:
                     return;
                  }
                  §§goto(addr76);
               }
               §§goto(addr61);
            }
            §§goto(addr39);
         }
         addr65:
         if(_loc6_ || param1)
         {
            §§push(this.§;§.mReadyToRun);
            if(!(_loc7_ && this))
            {
               addr61:
               §§push(!§§pop());
            }
         }
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
      
      public function §4_§() : Number
      {
         return this.§;§.camera.§4_§();
      }
      
      public function §-+§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;§.camera.§-+§(param1);
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
      
      public function §?!!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§'!M§ = param1;
         }
      }
      
      public function §"y§() : Boolean
      {
         return this.§'!M§;
      }
   }
}
