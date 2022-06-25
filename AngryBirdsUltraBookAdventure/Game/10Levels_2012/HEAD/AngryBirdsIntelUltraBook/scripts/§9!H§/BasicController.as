package §9!H§
{
   import §"$§.Starling;
   import §1!&§.DisplayObject;
   import §?A§.LevelMain;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§0M§;
   import starling.events.§1B§;
   import starling.events.TouchEvent;
   
   public class BasicController extends EventDispatcher implements §"!L§
   {
       
      
      protected var §6f§:LevelMain;
      
      private var §;$§:Boolean = false;
      
      public function BasicController(param1:LevelMain)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            do
            {
               this.§6f§ = param1;
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6f§.update(param1,true);
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
         while(true)
         {
            §§push(Starling.§'!A§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§6f§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(!(_loc2_ && this))
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return;
                  addr23:
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§push(Starling.§'!A§);
            }
            §§pop().stage.addEventListener(TouchEvent.§@!;§,this.§=o§);
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(Starling.§'!A§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr79:
                     Starling.§'!A§.stage.removeEventListener(TouchEvent.§@!;§,this.§=o§);
                  }
                  while(true)
                  {
                     §§goto(addr23);
                  }
               }
               addr23:
               while(true)
               {
                  this.§6f§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!(_loc2_ && _loc1_))
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr79);
      }
      
      private function §=o§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§1B§> = null;
         var _loc4_:§1B§ = null;
         var _loc5_:§1B§ = null;
         if(!_loc6_)
         {
            §§push(this.§;$§);
            if(_loc7_ || this)
            {
               §§push(!§§pop());
               if(!(_loc6_ && _loc2_))
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc6_ && this))
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
                           §§pop();
                           if(!_loc6_)
                           {
                              §§push(this.§6f§.mReadyToRun);
                              if(!_loc6_)
                              {
                                 addr68:
                                 §§push(!§§pop());
                                 if(!_loc6_)
                                 {
                                    addr72:
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr75);
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
                                 addr88:
                                 _loc3_ = param1.§!!K§(_loc2_,§0M§.§-!Y§);
                                 _loc3_ = _loc3_.concat(param1.§!!K§(_loc2_,§0M§.§'p§));
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
                                 _loc4_ = param1.§2r§(_loc2_,§0M§.§!!C§);
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(Boolean(_loc4_));
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(§§pop());
                                       if(_loc7_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             addr171:
                                             §§pop();
                                             addr194:
                                             if(!_loc6_)
                                             {
                                                §§push(_loc4_.§'!c§ > 0);
                                                if(_loc7_ || this)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                             }
                                             this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                             _loc5_ = param1.§2r§(_loc2_,§0M§.§+!$§);
                                             if(_loc7_ || param1)
                                             {
                                                §§push(Boolean(_loc5_));
                                                if(_loc7_ || _loc2_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            addr250:
                                                            §§push(_loc5_.§'!c§ > 0);
                                                            if(_loc7_ || this)
                                                            {
                                                            }
                                                            addr262:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr277);
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                §§goto(addr262);
                                             }
                                             §§goto(addr250);
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             §§goto(addr194);
                                          }
                                       }
                                       §§goto(addr194);
                                    }
                                 }
                                 §§goto(addr171);
                              }
                              addr277:
                              return;
                           }
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr68);
               }
               §§goto(addr72);
            }
            §§goto(addr68);
         }
         addr75:
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
      
      public function §`!h§() : Number
      {
         return this.§6f§.camera.§`!h§();
      }
      
      public function §`w§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§6f§.camera.§`w§(param1);
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
      
      public function §6!D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§;$§ = param1;
         }
      }
      
      public function §5!j§() : Boolean
      {
         return this.§;$§;
      }
   }
}
