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
         if(!(_loc2_ && param1))
         {
            super();
         }
         do
         {
            this.§"!>§ = param1;
         }
         while(!_loc3_);
         
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
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
         if(!(_loc2_ && this))
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(Starling.§!!F§);
               if(!(_loc2_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        this.§"!>§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                        if(_loc1_ || this)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr28:
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(Starling.§!!F§);
                  }
               }
               while(true)
               {
                  §§pop().stage.addEventListener(TouchEvent.§7!;§,this.§%&§);
                  continue loop0;
               }
            }
         }
         §§goto(addr82);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(Starling.§!!F§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr74:
                     Starling.§!!F§.stage.removeEventListener(TouchEvent.§7!;§,this.§%&§);
                  }
                  while(true)
                  {
                     §§goto(addr23);
                  }
               }
               addr23:
               while(true)
               {
                  this.§"!>§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(_loc1_ || _loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr74);
      }
      
      private function §%&§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§]!i§> = null;
         var _loc4_:§]!i§ = null;
         var _loc5_:§]!i§ = null;
         if(!_loc7_)
         {
            §§push(this.§!^§);
            if(!(_loc7_ && this))
            {
               §§push(!§§pop());
               if(_loc6_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc6_)
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && _loc2_))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        if(!_loc7_)
                        {
                           §§goto(addr54);
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr67);
               }
               addr54:
               §§pop();
               if(_loc6_ || _loc2_)
               {
                  addr62:
                  §§push(this.§"!>§.mReadyToRun);
                  if(_loc6_)
                  {
                     addr67:
                     §§push(!§§pop());
                     if(!(_loc7_ && _loc2_))
                     {
                        addr76:
                        addr75:
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr79);
                           }
                        }
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(_loc6_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              addr97:
                              _loc3_ = param1.§2!f§(_loc2_,§!!j§.§4!^§);
                              _loc3_ = _loc3_.concat(param1.§2!f§(_loc2_,§!!j§.§^!R§));
                              if(_loc6_ || param1)
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                              }
                              _loc4_ = param1.§6!6§(_loc2_,§!!j§.§?c§);
                              if(!_loc7_)
                              {
                                 §§push(Boolean(_loc4_));
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§push(§§pop());
                                    if(_loc6_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          addr180:
                                          §§pop();
                                          §§goto(addr203);
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§goto(addr203);
                                       }
                                    }
                                    addr203:
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§push(_loc4_.§else § > 0);
                                       if(_loc6_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                    this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                    _loc5_ = param1.§6!6§(_loc2_,§!!j§.§ 0§);
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(Boolean(_loc5_));
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(§§pop());
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc7_ && param1))
                                             {
                                                §§pop();
                                                §§goto(addr284);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc7_ && _loc2_)
                                             {
                                             }
                                          }
                                          §§goto(addr284);
                                       }
                                       §§goto(addr275);
                                    }
                                    §§goto(addr284);
                                 }
                              }
                              §§goto(addr180);
                           }
                           addr284:
                           if(_loc6_ || _loc2_)
                           {
                              §§push(_loc5_.§else § > 0);
                              if(!_loc7_)
                              {
                                 addr275:
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                           return;
                        }
                        §§goto(addr97);
                     }
                  }
                  §§goto(addr76);
               }
               addr79:
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr62);
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
         if(!_loc3_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
