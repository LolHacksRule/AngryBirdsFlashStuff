package §2!?§
{
   import §0P§.Starling;
   import §2!H§.LevelMain;
   import §6!7§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§!!j§;
   import starling.events.TouchEvent;
   import starling.events.§]!i§;
   
   public class BasicController extends EventDispatcher implements §7!W§
   {
       
      
      protected var §"!>§:LevelMain;
      
      private var §!^§:Boolean = false;
      
      public function BasicController(param1:LevelMain)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
            do
            {
               this.§"!>§ = param1;
            }
            while(_loc2_);
            
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"!>§.update(param1,true);
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
            loop0:
            while(true)
            {
               §§push(Starling.§!!F§);
               if(_loc1_ || _loc1_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(Starling.§!!F§);
                        addr80:
                        while(true)
                        {
                           §§pop().stage.addEventListener(TouchEvent.§7!;§,this.§%&§);
                           addr88:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr77:
                  }
                  while(true)
                  {
                     this.§"!>§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(_loc1_ || _loc1_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr88);
                     §§goto(addr90);
                  }
                  return;
               }
               §§goto(addr80);
            }
         }
         §§goto(addr90);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(Starling.§!!F§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(Starling.§!!F§);
                     addr80:
                     while(true)
                     {
                        §§pop().stage.removeEventListener(TouchEvent.§7!;§,this.§%&§);
                        addr88:
                        while(true)
                        {
                        }
                     }
                     addr62:
                     if(_loc1_ && _loc1_)
                     {
                        continue;
                     }
                     return;
                     addr69:
                  }
               }
               while(true)
               {
                  this.§"!>§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  §§goto(addr62);
               }
               §§goto(addr69);
            }
            §§goto(addr80);
         }
         §§goto(addr69);
      }
      
      private function §%&§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§]!i§> = null;
         var _loc4_:§]!i§ = null;
         var _loc5_:§]!i§ = null;
         if(_loc7_)
         {
            §§push(this.§!^§);
            if(!(_loc6_ && this))
            {
               §§push(!§§pop());
               if(!(_loc6_ && _loc2_))
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        if(_loc7_)
                        {
                           addr55:
                           §§pop();
                           if(_loc7_)
                           {
                              §§push(this.§"!>§.mReadyToRun);
                              if(!(_loc6_ && this))
                              {
                                 addr68:
                                 §§push(!§§pop());
                                 if(!_loc6_)
                                 {
                                    addr72:
                                    if(§§pop())
                                    {
                                       if(_loc7_ || _loc2_)
                                       {
                                          §§goto(addr80);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr72);
                           }
                           var _loc2_:DisplayObject = param1.target as DisplayObject;
                           if(!_loc6_)
                           {
                              if(_loc2_)
                              {
                                 addr93:
                                 _loc3_ = param1.§2!f§(_loc2_,§!!j§.§4!^§);
                                 _loc3_ = _loc3_.concat(param1.§2!f§(_loc2_,§!!j§.§^!R§));
                                 if(_loc7_ || param1)
                                 {
                                    if(_loc3_.length > 0)
                                    {
                                       if(_loc7_)
                                       {
                                          this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                       }
                                    }
                                 }
                                 _loc4_ = param1.§6!6§(_loc2_,§!!j§.§?c§);
                                 if(_loc7_ || this)
                                 {
                                    §§push(Boolean(_loc4_));
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             addr176:
                                             §§pop();
                                             if(_loc7_ || this)
                                             {
                                                addr184:
                                                §§push(_loc4_.§else § > 0);
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr191);
                                                }
                                                addr191:
                                                §§goto(addr190);
                                             }
                                             §§goto(addr199);
                                          }
                                          addr190:
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                addr199:
                                                this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                             }
                                          }
                                          _loc5_ = param1.§6!6§(_loc2_,§!!j§.§ 0§);
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(Boolean(_loc5_));
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc6_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc7_ || this)
                                                   {
                                                      §§goto(addr237);
                                                   }
                                                }
                                                §§goto(addr267);
                                             }
                                             addr237:
                                             §§pop();
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(_loc5_.§else § > 0);
                                                if(_loc7_ || param1)
                                                {
                                                   §§goto(addr267);
                                                }
                                                addr267:
                                                if(§§pop())
                                                {
                                                   if(_loc6_ && param1)
                                                   {
                                                   }
                                                }
                                                §§goto(addr282);
                                             }
                                             this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                          }
                                          §§goto(addr282);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr184);
                              }
                              addr282:
                              return;
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr55);
               }
               §§goto(addr72);
            }
            §§goto(addr55);
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
      
      public function §-n§() : Number
      {
         return this.§"!>§.camera.§-n§();
      }
      
      public function §implements§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!>§.camera.§implements§(param1);
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
      
      public function §0!H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!^§ = param1;
         }
      }
      
      public function §9!G§() : Boolean
      {
         return this.§!^§;
      }
   }
}
