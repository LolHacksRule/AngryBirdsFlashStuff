package §3!b§
{
   import §"!I§.§^!2§;
   import §"^§.§+!'§;
   import §2Y§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§9i§;
   import starling.events.§?X§;
   import starling.events.TouchEvent;
   
   public class §^!N§ extends EventDispatcher implements §;!7§
   {
       
      
      protected var §=!V§:§^!2§;
      
      private var §8!S§:Boolean = false;
      
      public function §^!N§(param1:§^!2§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
         }
         do
         {
            this.§=!V§ = param1;
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§=!V§.update(param1,true);
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
         }
         loop0:
         do
         {
            §§push(§+!'§.§2d§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §+!'§.§2d§.stage.addEventListener(TouchEvent.§]!-§,this.§%!+§);
                     addr77:
                  }
                  loop1:
                  while(true)
                  {
                     addr23:
                     while(true)
                     {
                        this.§=!V§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                        if(!(_loc2_ && this))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr23);
            }
            §§goto(addr77);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§+!'§.§2d§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  addr78:
                  while(true)
                  {
                     §§push(§+!'§.§2d§);
                     addr80:
                     while(true)
                     {
                        §§pop().stage.removeEventListener(TouchEvent.§]!-§,this.§%!+§);
                        addr86:
                        while(true)
                        {
                        }
                     }
                  }
                  addr78:
               }
               while(true)
               {
                  this.§=!V§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  §§goto(addr78);
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr78);
      }
      
      private function §%!+§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§?X§> = null;
         var _loc4_:§?X§ = null;
         var _loc5_:§?X§ = null;
         if(_loc6_ || _loc3_)
         {
            §§push(this.§8!S§);
            if(!(_loc7_ && _loc2_))
            {
               §§push(!§§pop());
               if(!(_loc7_ && this))
               {
                  if(!§§pop())
                  {
                     if(!_loc7_)
                     {
                        addr53:
                        §§pop();
                        if(!_loc7_)
                        {
                           §§push(this.§=!V§.mReadyToRun);
                           if(!_loc7_)
                           {
                              addr62:
                              if(!§§pop())
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§goto(addr70);
                                 }
                              }
                           }
                           §§goto(addr62);
                        }
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(_loc6_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              addr86:
                              _loc3_ = param1.§?0§(_loc2_,§9i§.§]W§);
                              _loc3_ = _loc3_.concat(param1.§?0§(_loc2_,§9i§.§'+§));
                              if(!(_loc7_ && _loc2_))
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(_loc6_)
                                    {
                                       addr125:
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                                 §§push(Boolean(_loc4_ = param1.§>!P§(_loc2_,§9i§.§9a§)));
                                 if(!_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          §§pop();
                                          if(!_loc7_)
                                          {
                                             §§goto(addr162);
                                          }
                                          §§goto(addr165);
                                       }
                                    }
                                 }
                                 addr162:
                                 if(_loc4_.§#X§ > 0)
                                 {
                                    if(!_loc7_)
                                    {
                                       addr165:
                                       this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                    }
                                 }
                                 §§push(Boolean(_loc5_ = param1.§>!P§(_loc2_,§9i§.§%J§)));
                                 if(!_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          §§goto(addr191);
                                       }
                                    }
                                    §§goto(addr198);
                                 }
                                 addr191:
                                 §§pop();
                                 if(!_loc7_)
                                 {
                                    addr198:
                                    if(_loc5_.§#X§ > 0)
                                    {
                                       if(_loc7_)
                                       {
                                       }
                                    }
                                    §§goto(addr217);
                                 }
                                 this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                 §§goto(addr217);
                              }
                              §§goto(addr125);
                           }
                           addr217:
                           return;
                        }
                        §§goto(addr86);
                     }
                  }
                  §§goto(addr62);
               }
            }
            §§goto(addr53);
         }
         addr70:
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
      
      public function §[5§() : Number
      {
         return this.§=!V§.camera.§[5§();
      }
      
      public function §&2§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=!V§.camera.§&2§(param1);
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
      
      public function §&&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§8!S§ = param1;
         }
      }
      
      public function §!0§() : Boolean
      {
         return this.§8!S§;
      }
   }
}
