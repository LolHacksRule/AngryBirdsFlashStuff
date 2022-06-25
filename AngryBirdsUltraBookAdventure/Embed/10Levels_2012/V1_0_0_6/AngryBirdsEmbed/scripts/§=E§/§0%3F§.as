package §=E§
{
   import §,_§.DisplayObject;
   import §3G§.§!E§;
   import §catch§.§4@§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§+!§;
   import starling.events.§9j§;
   import starling.events.TouchEvent;
   
   public class §0?§ extends EventDispatcher implements §"!5§
   {
       
      
      protected var §33§:§!E§;
      
      private var §+J§:Boolean = false;
      
      public function §0?§(param1:§!E§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               addr23:
               this.§33§ = param1;
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§33§.update(param1,true);
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
         if(_loc2_ || _loc2_)
         {
            this.removeEventListeners();
            if(_loc2_)
            {
               §§push(§4@§.§0W§);
               if(!(_loc1_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        addr67:
                        §4@§.§0W§.stage.addEventListener(TouchEvent.§8m§,this.§3R§);
                        addr65:
                        if(_loc1_ && this)
                        {
                        }
                        §§goto(addr88);
                     }
                  }
                  this.§33§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  addr88:
                  return;
               }
            }
            §§goto(addr67);
         }
         §§goto(addr65);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(§4@§.§0W§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr42:
                     §4@§.§0W§.stage.removeEventListener(TouchEvent.§8m§,this.§3R§);
                     if(!_loc2_)
                     {
                        addr50:
                        this.§33§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     }
                  }
                  return;
               }
               §§goto(addr50);
            }
         }
         §§goto(addr42);
      }
      
      private function §3R§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§+!§> = null;
         var _loc4_:§+!§ = null;
         var _loc5_:§+!§ = null;
         if(!(_loc7_ && param1))
         {
            §§push(this.§+J§);
            if(_loc6_)
            {
               §§push(!§§pop());
               if(!(_loc7_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(_loc6_)
                     {
                        §§pop();
                        if(_loc6_)
                        {
                           §§push(this.§33§.mReadyToRun);
                           if(!(_loc7_ && _loc2_))
                           {
                              addr62:
                              if(!§§pop())
                              {
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    addr71:
                                    var _loc2_:DisplayObject = param1.target as DisplayObject;
                                    if(_loc6_)
                                    {
                                       if(_loc2_)
                                       {
                                          addr81:
                                          _loc3_ = param1.§1!'§(_loc2_,§9j§.§#U§);
                                          _loc3_ = _loc3_.concat(param1.§1!'§(_loc2_,§9j§.§"s§));
                                          if(_loc6_)
                                          {
                                             if(_loc3_.length > 0)
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                                }
                                             }
                                          }
                                          §§push(Boolean(_loc4_ = param1.§5x§(_loc2_,§9j§.§@q§)));
                                          if(_loc6_ || this)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   §§pop();
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr167:
                                                      if(_loc4_.§1!B§ > 0)
                                                      {
                                                         if(!(_loc7_ && this))
                                                         {
                                                            addr175:
                                                            this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                                         }
                                                      }
                                                      §§push(Boolean(_loc5_ = param1.§5x§(_loc2_,§9j§.§3L§)));
                                                      if(!_loc7_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§pop();
                                                               if(!_loc7_)
                                                               {
                                                                  addr218:
                                                                  if(_loc5_.§1!B§ > 0)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                               this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                                               §§goto(addr227);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   §§goto(addr175);
                                                }
                                             }
                                          }
                                          §§goto(addr167);
                                       }
                                       addr227:
                                       return;
                                    }
                                    §§goto(addr81);
                                 }
                              }
                              §§goto(addr71);
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
         §§goto(addr71);
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
      
      public function §1r§() : Number
      {
         return this.§33§.camera.§1r§();
      }
      
      public function §>2§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§33§.camera.§>2§(param1);
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
      
      public function §7#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§+J§ = param1;
         }
      }
      
      public function §2z§() : Boolean
      {
         return this.§+J§;
      }
   }
}
