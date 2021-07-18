package §]C§
{
   import § !+§.§0Z§;
   import §9N§.§9!%§;
   import §`a§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§!q§;
   import starling.events.§"!D§;
   import starling.events.TouchEvent;
   
   public class §5_§ extends EventDispatcher implements §9!S§
   {
       
      
      protected var §8@§:§9!%§;
      
      private var §!V§:Boolean = false;
      
      public function §5_§(param1:§9!%§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            do
            {
               this.§8@§ = param1;
            }
            while(!_loc2_);
            
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8@§.update(param1,true);
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
         if(!(_loc1_ && this))
         {
            this.removeEventListeners();
            while(true)
            {
               §§push(§0Z§.§4J§);
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop())
                  {
                     while(!_loc1_)
                     {
                        §§push(§0Z§.§4J§);
                        while(true)
                        {
                           §§pop().stage.addEventListener(TouchEvent.§4F§,this.§66§);
                           addr84:
                           while(true)
                           {
                           }
                        }
                     }
                     continue;
                     addr64:
                  }
                  while(true)
                  {
                     this.§8@§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(_loc1_)
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§goto(addr64);
                  }
                  return;
                  addr52:
               }
               §§goto(addr68);
            }
         }
         §§goto(addr52);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(§0Z§.§4J§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr85:
                     §0Z§.§4J§.stage.removeEventListener(TouchEvent.§4F§,this.§66§);
                  }
                  while(true)
                  {
                     §§goto(addr29);
                  }
               }
               addr29:
               while(true)
               {
                  this.§8@§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr85);
      }
      
      private function §66§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§"!D§> = null;
         var _loc4_:§"!D§ = null;
         var _loc5_:§"!D§ = null;
         if(!_loc7_)
         {
            §§push(this.§!V§);
            if(_loc6_ || param1)
            {
               §§push(!§§pop());
               if(_loc6_ || param1)
               {
                  addr44:
                  if(!§§pop())
                  {
                     if(!(_loc7_ && param1))
                     {
                        addr53:
                        §§pop();
                        if(_loc6_ || this)
                        {
                           §§push(this.§8@§.mReadyToRun);
                           if(_loc6_ || _loc2_)
                           {
                              addr72:
                              if(!§§pop())
                              {
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§goto(addr80);
                                 }
                              }
                           }
                           §§goto(addr72);
                        }
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(!(_loc7_ && this))
                        {
                           if(_loc2_)
                           {
                              addr96:
                              _loc3_ = param1.§<q§(_loc2_,§!q§.§%X§);
                              _loc3_ = _loc3_.concat(param1.§<q§(_loc2_,§!q§.§ !G§));
                              if(_loc6_)
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                              }
                              §§push(Boolean(_loc4_ = param1.§>6§(_loc2_,§!q§.§#Z§)));
                              if(_loc6_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       addr170:
                                       §§pop();
                                       if(!(_loc7_ && param1))
                                       {
                                          §§goto(addr182);
                                       }
                                       §§goto(addr185);
                                    }
                                 }
                                 addr182:
                                 if(_loc4_.§+!%§ > 0)
                                 {
                                    if(!_loc7_)
                                    {
                                       addr185:
                                       this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                    }
                                 }
                                 §§push(Boolean(_loc5_ = param1.§>6§(_loc2_,§!q§.§4c§)));
                                 if(_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§pop();
                                          §§goto(addr237);
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                    }
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr170);
                           }
                           addr237:
                           if(!(_loc7_ && this))
                           {
                              §§push(_loc5_.§+!%§ > 0);
                           }
                           return;
                        }
                        §§goto(addr96);
                     }
                  }
                  §§goto(addr72);
               }
               §§goto(addr53);
            }
            §§goto(addr44);
         }
         addr80:
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
      
      public function §#!3§() : Number
      {
         return this.§8@§.camera.§#!3§();
      }
      
      public function §;1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8@§.camera.§;1§(param1);
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
      
      public function §4!Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§!V§ = param1;
         }
      }
      
      public function §71§() : Boolean
      {
         return this.§!V§;
      }
   }
}
