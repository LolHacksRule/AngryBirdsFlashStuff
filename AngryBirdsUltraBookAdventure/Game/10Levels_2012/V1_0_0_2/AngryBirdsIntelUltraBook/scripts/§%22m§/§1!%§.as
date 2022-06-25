package §"m§
{
   import §'!9§.DisplayObject;
   import §,!5§.§^g§;
   import §<&§.§^b§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§;@§;
   import starling.events.TouchEvent;
   import starling.events.§`i§;
   
   public class §1!%§ extends EventDispatcher implements §3!`§
   {
       
      
      protected var §?l§:§^g§;
      
      private var §#o§:Boolean = false;
      
      public function §1!%§(param1:§^g§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
         }
         do
         {
            this.§?l§ = param1;
         }
         while(_loc3_);
         
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?l§.update(param1,true);
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
         if(_loc2_)
         {
            this.removeEventListeners();
         }
         loop0:
         while(true)
         {
            §§push(§^b§.§9E§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§?l§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return;
                  addr24:
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §§push(§^b§.§9E§);
            }
            §§pop().stage.addEventListener(TouchEvent.§2!6§,this.§0,§);
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§^b§.§9E§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr70:
                     §^b§.§9E§.stage.removeEventListener(TouchEvent.§2!6§,this.§0,§);
                  }
                  while(true)
                  {
                     §§goto(addr34);
                  }
               }
               addr34:
               §§goto(addr60);
            }
            §§goto(addr70);
         }
         addr60:
         while(true)
         {
            this.§?l§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
            if(!(_loc1_ && this))
            {
               break;
            }
            continue loop0;
         }
      }
      
      private function §0,§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§`i§> = null;
         var _loc4_:§`i§ = null;
         var _loc5_:§`i§ = null;
         if(_loc6_)
         {
            §§push(this.§#o§);
            if(_loc6_ || _loc2_)
            {
               §§push(!§§pop());
               if(!_loc7_)
               {
                  addr39:
                  if(!§§pop())
                  {
                     if(!(_loc7_ && param1))
                     {
                        addr48:
                        §§pop();
                        §§goto(addr60);
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        addr60:
                        if(!_loc7_)
                        {
                           §§push(this.§?l§.mReadyToRun);
                           if(_loc6_)
                           {
                              §§push(!§§pop());
                           }
                        }
                        return;
                     }
                  }
                  var _loc2_:DisplayObject = param1.target as DisplayObject;
                  if(_loc6_ || _loc2_)
                  {
                     if(_loc2_)
                     {
                        addr76:
                        _loc3_ = param1.§=!R§(_loc2_,§;@§.§ 8§);
                        _loc3_ = _loc3_.concat(param1.§=!R§(_loc2_,§;@§.§ ]§));
                        if(!(_loc7_ && _loc3_))
                        {
                           if(_loc3_.length > 0)
                           {
                              if(_loc6_)
                              {
                                 addr115:
                                 this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                              }
                           }
                           §§push(Boolean(_loc4_ = param1.§8!p§(_loc2_,§;@§.§>!q§)));
                           if(!_loc7_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §§pop();
                                    if(_loc6_)
                                    {
                                       addr147:
                                       if(_loc4_.§>+§ > 0)
                                       {
                                          if(!_loc7_)
                                          {
                                             addr150:
                                             this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                          }
                                       }
                                       §§push(Boolean(_loc5_ = param1.§8!p§(_loc2_,§;@§.§`O§)));
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_ || _loc2_)
                                             {
                                                §§pop();
                                                if(!(_loc7_ && param1))
                                                {
                                                   addr203:
                                                   if(_loc5_.§>+§ > 0)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr217);
                                                }
                                                this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                                §§goto(addr217);
                                             }
                                          }
                                       }
                                       §§goto(addr203);
                                    }
                                    §§goto(addr150);
                                 }
                              }
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr115);
                     }
                     addr217:
                     return;
                  }
                  §§goto(addr76);
               }
               §§goto(addr48);
            }
            §§goto(addr39);
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
      
      public function §,!c§() : Number
      {
         return this.§?l§.camera.§,!c§();
      }
      
      public function §#!Q§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?l§.camera.§#!Q§(param1);
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
      
      public function §#!X§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§#o§ = param1;
         }
      }
      
      public function §!h§() : Boolean
      {
         return this.§#o§;
      }
   }
}
