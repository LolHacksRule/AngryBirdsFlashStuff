package §?!D§
{
   import §%x§.§#;§;
   import §&p§.§'_§;
   import §?^§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§,R§;
   import starling.events.§?l§;
   import starling.events.TouchEvent;
   
   public class §]x§ extends EventDispatcher implements §@!$§
   {
       
      
      protected var §7C§:§#;§;
      
      private var §;N§:Boolean = false;
      
      public function §]x§(param1:§#;§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               this.§7C§ = param1;
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7C§.update(param1,true);
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
         if(_loc1_)
         {
            this.removeEventListeners();
            if(!(_loc2_ && this))
            {
               §§push(§'_§.§17§);
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr61:
                        §'_§.§17§.stage.addEventListener(TouchEvent.§!r§,this.§'k§);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr74:
                           this.§7C§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                        }
                     }
                     return;
                  }
                  §§goto(addr74);
               }
               §§goto(addr61);
            }
            §§goto(addr74);
         }
         §§goto(addr61);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(§'_§.§17§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr51);
            }
            addr43:
            §'_§.§17§.stage.removeEventListener(TouchEvent.§!r§,this.§'k§);
            §§goto(addr41);
         }
         addr41:
         if(!_loc1_)
         {
            addr51:
            this.§7C§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         }
      }
      
      private function §'k§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§?l§> = null;
         var _loc4_:§?l§ = null;
         var _loc5_:§?l§ = null;
         if(!_loc7_)
         {
            §§push(this.§;N§);
            if(!(_loc7_ && this))
            {
               §§push(!§§pop());
               if(_loc6_ || this)
               {
                  if(!§§pop())
                  {
                     if(_loc6_)
                     {
                        addr48:
                        §§pop();
                        addr71:
                        if(!_loc7_)
                        {
                           §§push(this.§7C§.mReadyToRun);
                           if(!(_loc7_ && param1))
                           {
                              addr61:
                              §§push(!§§pop());
                           }
                        }
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(!_loc7_)
                        {
                           if(_loc2_)
                           {
                              _loc3_ = param1.§#8§(_loc2_,§,R§.§&5§);
                              _loc3_ = _loc3_.concat(param1.§#8§(_loc2_,§,R§.§+!8§));
                              addr81:
                              if(_loc6_)
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(!_loc7_)
                                    {
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                              }
                              §§push(Boolean(_loc4_ = param1.§5Y§(_loc2_,§,R§.§?!>§)));
                              if(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§goto(addr140);
                                    }
                                 }
                                 §§goto(addr147);
                              }
                              addr140:
                              §§pop();
                              if(_loc6_)
                              {
                                 addr147:
                                 if(_loc4_.§5!G§ > 0)
                                 {
                                    if(_loc6_)
                                    {
                                       this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                    }
                                 }
                              }
                              §§push(Boolean(_loc5_ = param1.§5Y§(_loc2_,§,R§.§99§)));
                              if(!_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§pop();
                                       §§goto(addr202);
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
                              §§goto(addr202);
                           }
                           addr202:
                           if(_loc6_)
                           {
                              §§push(_loc5_.§5!G§ > 0);
                           }
                           return;
                        }
                        §§goto(addr81);
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        return;
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr71);
               }
               §§goto(addr61);
            }
         }
         §§goto(addr48);
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
      
      public function §8!0§() : Number
      {
         return this.§7C§.camera.§8!0§();
      }
      
      public function §1!&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7C§.camera.§1!&§(param1);
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
      
      public function §;!!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;N§ = param1;
         }
      }
      
      public function §'!7§() : Boolean
      {
         return this.§;N§;
      }
   }
}
