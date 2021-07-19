package §]§
{
   import §%!0§.§,4§;
   import §%!j§.§%K§;
   import §+!-§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§-!#§;
   import starling.events.§;g§;
   import starling.events.TouchEvent;
   
   public class §`!7§ extends EventDispatcher implements §7!K§
   {
       
      
      protected var §`!G§:§,4§;
      
      private var §=n§:Boolean = false;
      
      public function §`!7§(param1:§,4§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
         }
         do
         {
            this.§`!G§ = param1;
         }
         while(_loc2_ && param1);
         
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§`!G§.update(param1,true);
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
         if(!(_loc2_ && _loc1_))
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(§%K§.§`9§);
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§%K§.§`9§);
                        addr70:
                        while(true)
                        {
                           §§pop().stage.addEventListener(TouchEvent.§5!z§,this.§1!f§);
                           addr86:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              addr88:
                           }
                        }
                     }
                     addr68:
                  }
                  while(true)
                  {
                     this.§`!G§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(_loc1_ || _loc1_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr86);
                     §§goto(addr88);
                  }
                  return;
                  addr56:
               }
               §§goto(addr70);
            }
         }
         §§goto(addr56);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§%K§.§`9§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr79:
                     §%K§.§`9§.stage.removeEventListener(TouchEvent.§5!z§,this.§1!f§);
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
                  this.§`!G§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!(_loc2_ && _loc1_))
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
      
      private function §1!f§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§;g§> = null;
         var _loc4_:§;g§ = null;
         var _loc5_:§;g§ = null;
         if(!(_loc6_ && _loc3_))
         {
            §§push(this.§=n§);
            if(_loc7_)
            {
               §§push(!§§pop());
               if(_loc7_ || this)
               {
                  addr45:
                  if(!§§pop())
                  {
                     if(_loc7_)
                     {
                        addr49:
                        §§pop();
                        if(_loc7_)
                        {
                           §§push(this.§`!G§.mReadyToRun);
                           if(_loc7_ || _loc2_)
                           {
                              addr63:
                              if(!§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    §§goto(addr66);
                                 }
                              }
                           }
                           §§goto(addr63);
                        }
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(_loc7_)
                        {
                           if(_loc2_)
                           {
                              addr77:
                              _loc3_ = param1.§8[§(_loc2_,§-!#§.§8!U§);
                              _loc3_ = _loc3_.concat(param1.§8[§(_loc2_,§-!#§.§#-§));
                              if(_loc7_)
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(_loc7_)
                                    {
                                       addr111:
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                                 §§push(Boolean(_loc4_ = param1.§!m§(_loc2_,§-!#§.§&i§)));
                                 if(_loc7_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_ || _loc2_)
                                       {
                                          §§pop();
                                          if(_loc7_)
                                          {
                                             §§goto(addr153);
                                          }
                                          §§goto(addr161);
                                       }
                                    }
                                 }
                                 addr153:
                                 if(_loc4_.§=w§ > 0)
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       addr161:
                                       this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                    }
                                 }
                                 §§push(Boolean(_loc5_ = param1.§!m§(_loc2_,§-!#§.§-""§)));
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§goto(addr187);
                                       }
                                    }
                                    §§goto(addr199);
                                 }
                                 addr187:
                                 §§pop();
                                 if(_loc7_ || param1)
                                 {
                                    addr199:
                                    if(_loc5_.§=w§ > 0)
                                    {
                                       if(!_loc7_)
                                       {
                                       }
                                    }
                                    §§goto(addr218);
                                 }
                                 this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                 §§goto(addr218);
                              }
                              §§goto(addr111);
                           }
                           addr218:
                           return;
                        }
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr63);
               }
               §§goto(addr49);
            }
            §§goto(addr45);
         }
         addr66:
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
         return this.§`!G§.camera.getZoomRatio();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!G§.camera.setZoomRatio(param1);
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
      
      public function §;!;§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=n§ = param1;
         }
      }
      
      public function §8!g§() : Boolean
      {
         return this.§=n§;
      }
   }
}
