package §3![§
{
   import §'6§.§"]§;
   import §1!$§.DisplayObject;
   import §9"!§.§9"3§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§"U§;
   import starling.events.§6!V§;
   import starling.events.TouchEvent;
   
   public class §#y§ extends EventDispatcher implements §5!@§
   {
       
      
      protected var §@O§:§9"3§;
      
      private var §<!O§:Boolean = false;
      
      public function §#y§(param1:§9"3§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            do
            {
               this.§@O§ = param1;
            }
            while(!_loc3_);
            
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@O§.update(param1,true);
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
         if(!(_loc1_ && _loc1_))
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(§"]§.§!X§);
               if(!(_loc1_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        this.§@O§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr29:
                  }
                  if(_loc1_)
                  {
                     continue;
                  }
                  §§push(§"]§.§!X§);
               }
               §§pop().stage.addEventListener(TouchEvent.§2t§,this.§]!p§);
            }
         }
         while(true)
         {
            §§goto(addr29);
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§"]§.§!X§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr70:
                     §"]§.§!X§.stage.removeEventListener(TouchEvent.§2t§,this.§]!p§);
                  }
                  while(true)
                  {
                  }
                  addr76:
               }
               while(true)
               {
                  this.§@O§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr76);
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      private function §]!p§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§6!V§> = null;
         var _loc4_:§6!V§ = null;
         var _loc5_:§6!V§ = null;
         if(!(_loc6_ && _loc3_))
         {
            §§push(this.§<!O§);
            if(!_loc6_)
            {
               §§push(!§§pop());
               if(!_loc6_)
               {
                  addr40:
                  if(!§§pop())
                  {
                     if(_loc7_)
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           addr47:
                           §§push(this.§@O§.mReadyToRun);
                           if(!_loc6_)
                           {
                              addr53:
                              addr52:
                              if(!§§pop())
                              {
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§goto(addr61);
                                 }
                              }
                              var _loc2_:DisplayObject = param1.target as DisplayObject;
                              if(_loc7_ || this)
                              {
                                 if(_loc2_)
                                 {
                                    addr77:
                                    _loc3_ = param1.§4_§(_loc2_,§"U§.§#1§);
                                    _loc3_ = _loc3_.concat(param1.§4_§(_loc2_,§"U§.§<$§));
                                    if(!_loc6_)
                                    {
                                       if(_loc3_.length > 0)
                                       {
                                          if(!_loc6_)
                                          {
                                             this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                          }
                                       }
                                    }
                                    §§push(Boolean(_loc4_ = param1.§&f§(_loc2_,§"U§.§&!I§)));
                                    if(!_loc6_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             addr141:
                                             §§pop();
                                             if(_loc7_ || _loc2_)
                                             {
                                                §§goto(addr153);
                                             }
                                             §§goto(addr156);
                                          }
                                       }
                                       addr153:
                                       if(_loc4_.§!P§ > 0)
                                       {
                                          if(_loc7_)
                                          {
                                             addr156:
                                             this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                          }
                                       }
                                       §§push(Boolean(_loc5_ = param1.§&f§(_loc2_,§"U§.§&a§)));
                                       if(_loc7_ || this)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc7_ || param1)
                                             {
                                                §§pop();
                                                §§goto(addr218);
                                             }
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                          }
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr141);
                                 }
                                 addr218:
                                 if(!_loc6_)
                                 {
                                    §§push(_loc5_.§!P§ > 0);
                                 }
                                 return;
                              }
                              §§goto(addr77);
                           }
                           §§goto(addr53);
                        }
                        addr61:
                        return;
                     }
                  }
                  §§goto(addr53);
               }
               §§goto(addr52);
            }
            §§goto(addr40);
         }
         §§goto(addr47);
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
      
      public function §"!o§() : Number
      {
         return this.§@O§.camera.§"!o§();
      }
      
      public function §03§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§@O§.camera.§03§(param1);
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
      
      public function §#!F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!O§ = param1;
         }
      }
      
      public function §2"@§() : Boolean
      {
         return this.§<!O§;
      }
   }
}
