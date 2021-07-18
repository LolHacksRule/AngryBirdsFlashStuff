package §-!@§
{
   import §!X§.§86§;
   import §]@§.DisplayObject;
   import §`C§.§9!'§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§3M§;
   import starling.events.§5v§;
   import starling.events.TouchEvent;
   
   public class §=0§ extends EventDispatcher implements §<!D§
   {
       
      
      protected var §>`§:§86§;
      
      private var §1W§:Boolean = false;
      
      public function §=0§(param1:§86§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
         }
         do
         {
            this.§>`§ = param1;
         }
         while(_loc3_);
         
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§>`§.update(param1,true);
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
            while(true)
            {
               §§push(§9!'§.§7!Z§);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     addr93:
                     if(_loc1_ || _loc1_)
                     {
                        if(_loc1_)
                        {
                           addr75:
                           §§push(§9!'§.§7!Z§);
                           break;
                        }
                        continue;
                     }
                     while(true)
                     {
                     }
                     addr93:
                  }
                  while(true)
                  {
                     this.§>`§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     §§goto(addr93);
                  }
                  return;
               }
               break;
            }
            §§pop().stage.addEventListener(TouchEvent.§"M§,this.§4u§);
            §§goto(addr93);
         }
         §§goto(addr75);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§9!'§.§7!Z§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr79:
                     §9!'§.§7!Z§.stage.removeEventListener(TouchEvent.§"M§,this.§4u§);
                  }
                  while(true)
                  {
                     §§goto(addr28);
                  }
               }
               addr28:
               §§goto(addr54);
            }
            §§goto(addr79);
         }
         addr54:
         while(true)
         {
            this.§>`§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
            if(!(_loc2_ && _loc2_))
            {
               break;
            }
            continue loop0;
         }
      }
      
      private function §4u§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§5v§> = null;
         var _loc4_:§5v§ = null;
         var _loc5_:§5v§ = null;
         if(_loc7_ || this)
         {
            §§push(this.§1W§);
            if(_loc7_)
            {
               §§push(!§§pop());
               if(!(_loc6_ && this))
               {
                  if(!§§pop())
                  {
                     if(_loc7_)
                     {
                        addr49:
                        §§pop();
                        if(!(_loc6_ && param1))
                        {
                           addr57:
                           §§push(this.§>`§.mReadyToRun);
                           if(_loc7_)
                           {
                              addr63:
                              if(!§§pop())
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    return;
                                 }
                              }
                           }
                           §§goto(addr63);
                        }
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(_loc7_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              addr87:
                              _loc3_ = param1.§7S§(_loc2_,§3M§.§@!,§);
                              _loc3_ = _loc3_.concat(param1.§7S§(_loc2_,§3M§.§3!$§));
                              if(!_loc6_)
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(!_loc6_)
                                    {
                                       addr121:
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                                 §§push(Boolean(_loc4_ = param1.§<!8§(_loc2_,§3M§.§"!,§)));
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          addr146:
                                          §§pop();
                                          if(!(_loc6_ && this))
                                          {
                                             §§goto(addr158);
                                          }
                                          §§goto(addr161);
                                       }
                                    }
                                    addr158:
                                    if(_loc4_.§!!8§ > 0)
                                    {
                                       if(!_loc6_)
                                       {
                                          addr161:
                                          this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                       }
                                    }
                                    §§push(Boolean(_loc5_ = param1.§<!8§(_loc2_,§3M§.§+c§)));
                                    if(!(_loc6_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§pop();
                                             §§goto(addr218);
                                          }
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc7_ || this)
                                       {
                                          this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                       }
                                    }
                                    §§goto(addr218);
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr121);
                           }
                           addr218:
                           if(_loc7_)
                           {
                              §§push(_loc5_.§!!8§ > 0);
                           }
                           return;
                        }
                        §§goto(addr87);
                     }
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr49);
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
      
      public function §'!?§() : Number
      {
         return this.§>`§.camera.§'!?§();
      }
      
      public function §^!G§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>`§.camera.§^!G§(param1);
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
      
      public function §&!#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§1W§ = param1;
         }
      }
      
      public function §1l§() : Boolean
      {
         return this.§1W§;
      }
   }
}
