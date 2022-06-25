package §-%§
{
   import §!!K§.§else§;
   import §2_§.§'u§;
   import §7!B§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§9!t§;
   import starling.events.TouchEvent;
   import starling.events.§^K§;
   
   public class §+c§ extends EventDispatcher implements §#!J§
   {
       
      
      protected var §#!3§:§'u§;
      
      private var §7_§:Boolean = false;
      
      public function §+c§(param1:§'u§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         do
         {
            this.§#!3§ = param1;
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#!3§.update(param1,true);
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
         }
         loop0:
         while(true)
         {
            §§push(§else§.§^!A§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§#!3§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(!(_loc2_ && this))
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return;
                  addr23:
               }
               if(_loc2_)
               {
                  continue;
               }
               §§push(§else§.§^!A§);
            }
            §§pop().stage.addEventListener(TouchEvent.§^!>§,this.§`!D§);
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§else§.§^!A§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr74:
                     §else§.§^!A§.stage.removeEventListener(TouchEvent.§^!>§,this.§`!D§);
                     addr80:
                     while(true)
                     {
                     }
                     addr80:
                  }
                  §§goto(addr80);
               }
               while(true)
               {
                  this.§#!3§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr80);
               }
               return;
            }
         }
         §§goto(addr74);
      }
      
      private function §`!D§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§9!t§> = null;
         var _loc4_:§9!t§ = null;
         var _loc5_:§9!t§ = null;
         if(_loc7_ || _loc3_)
         {
            §§push(this.§7_§);
            if(!(_loc6_ && _loc2_))
            {
               §§push(!§§pop());
               if(!(_loc6_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(_loc7_ || this)
                     {
                        §§pop();
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(this.§#!3§.mReadyToRun);
                           if(_loc6_ && _loc3_)
                           {
                           }
                           addr78:
                           if(§§pop())
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§goto(addr86);
                              }
                           }
                           var _loc2_:DisplayObject = param1.target as DisplayObject;
                           if(!(_loc6_ && _loc3_))
                           {
                              if(_loc2_)
                              {
                                 addr112:
                                 _loc3_ = param1.§-g§(_loc2_,§^K§.§6!A§);
                                 _loc3_ = _loc3_.concat(param1.§-g§(_loc2_,§^K§.§[!7§));
                                 if(!_loc6_)
                                 {
                                    if(_loc3_.length > 0)
                                    {
                                       if(_loc7_)
                                       {
                                          this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                       }
                                    }
                                 }
                                 §§push(Boolean(_loc4_ = param1.§4!,§(_loc2_,§^K§.§3!p§)));
                                 if(_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§pop();
                                          if(_loc7_ || param1)
                                          {
                                             addr173:
                                             if(_loc4_.§8_§ > 0)
                                             {
                                                if(_loc7_ || this)
                                                {
                                                   this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                                }
                                             }
                                          }
                                          §§push(Boolean(_loc5_ = param1.§4!,§(_loc2_,§^K§.§5i§)));
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   §§goto(addr217);
                                                }
                                             }
                                             §§goto(addr224);
                                          }
                                          addr217:
                                          §§pop();
                                          if(_loc7_)
                                          {
                                             addr224:
                                             if(_loc5_.§8_§ > 0)
                                             {
                                                if(!_loc7_)
                                                {
                                                }
                                             }
                                             §§goto(addr233);
                                          }
                                          this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                          §§goto(addr233);
                                       }
                                    }
                                 }
                                 §§goto(addr173);
                              }
                              addr233:
                              return;
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr86);
                     }
                     §§push(!§§pop());
                  }
               }
            }
            §§goto(addr78);
         }
         addr86:
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
      
      public function §4!U§() : Number
      {
         return this.§#!3§.camera.§4!U§();
      }
      
      public function §5]§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#!3§.camera.§5]§(param1);
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
      
      public function §76§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7_§ = param1;
         }
      }
      
      public function §7!h§() : Boolean
      {
         return this.§7_§;
      }
   }
}
