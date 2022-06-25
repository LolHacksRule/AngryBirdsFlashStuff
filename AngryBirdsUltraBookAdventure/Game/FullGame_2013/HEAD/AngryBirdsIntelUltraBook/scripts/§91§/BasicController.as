package §91§
{
   import §#!,§.DisplayObject;
   import §7!>§.Starling;
   import §]!@§.LevelMain;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§?'§;
   import starling.events.TouchEvent;
   import starling.events.§]!B§;
   
   public class BasicController extends EventDispatcher implements §else§
   {
       
      
      protected var §`s§:LevelMain;
      
      private var §-!&§:Boolean = false;
      
      public function BasicController(param1:LevelMain)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
            do
            {
               this.§`s§ = param1;
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§`s§.update(param1,true);
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
            loop0:
            while(true)
            {
               §§push(Starling.§7!+§);
               if(!(_loc2_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§`s§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                        if(_loc1_ || this)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        addr95:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     return;
                  }
                  continue;
               }
               addr87:
               while(true)
               {
                  §§pop().stage.addEventListener(TouchEvent.§1!P§,this.§2c§);
               }
               §§goto(addr95);
            }
         }
         while(true)
         {
            §§goto(addr87);
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(Starling.§7!+§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(Starling.§7!+§);
                     addr79:
                     while(true)
                     {
                        §§pop().stage.removeEventListener(TouchEvent.§1!P§,this.§2c§);
                        addr87:
                        while(true)
                        {
                        }
                     }
                  }
                  addr76:
               }
               while(true)
               {
                  this.§`s§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr76);
               }
               return;
               addr63:
            }
            §§goto(addr79);
         }
         §§goto(addr63);
      }
      
      private function §2c§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§]!B§> = null;
         var _loc4_:§]!B§ = null;
         var _loc5_:§]!B§ = null;
         if(!_loc7_)
         {
            §§push(this.§-!&§);
            if(_loc6_)
            {
               §§push(!§§pop());
               if(!(_loc7_ && _loc2_))
               {
                  §§push(Boolean(§§pop()));
                  if(_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           addr54:
                           §§pop();
                           if(_loc6_ || _loc2_)
                           {
                              §§push(this.§`s§.mReadyToRun);
                              if(!_loc7_)
                              {
                                 addr67:
                                 §§push(!§§pop());
                                 if(_loc6_)
                                 {
                                    addr70:
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              §§goto(addr70);
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr67);
                     }
                     if(§§pop())
                     {
                        if(_loc6_ || this)
                        {
                           addr79:
                           return;
                        }
                     }
                     var _loc2_:DisplayObject = param1.target as DisplayObject;
                     if(_loc6_ || param1)
                     {
                        if(_loc2_)
                        {
                           addr97:
                           _loc3_ = param1.§8b§(_loc2_,§?'§.§2r§);
                           _loc3_ = _loc3_.concat(param1.§8b§(_loc2_,§?'§.§[!_§));
                           if(!_loc7_)
                           {
                              if(_loc3_.length > 0)
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                 }
                              }
                           }
                           _loc4_ = param1.§%!C§(_loc2_,§?'§.§&>§);
                           if(_loc6_ || this)
                           {
                              §§push(Boolean(_loc4_));
                              if(!(_loc7_ && this))
                              {
                                 §§push(§§pop());
                                 if(_loc6_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§pop();
                                       addr215:
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          §§push(_loc4_.§8!C§ > 0);
                                          if(_loc6_)
                                          {
                                             addr199:
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                       _loc5_ = param1.§%!C§(_loc2_,§?'§.§%!7§);
                                       if(_loc6_ || this)
                                       {
                                          §§push(Boolean(_loc5_));
                                          if(_loc6_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc7_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   addr251:
                                                   §§pop();
                                                   §§goto(addr276);
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                                }
                                                §§goto(addr276);
                                             }
                                             addr276:
                                             if(_loc6_)
                                             {
                                                addr254:
                                                §§push(_loc5_.§8!C§ > 0);
                                                if(!(_loc7_ && this))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr251);
                                       }
                                       §§goto(addr254);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc6_ || this)
                                    {
                                       this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                    }
                                 }
                                 §§goto(addr215);
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr251);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr70);
               }
               §§goto(addr67);
            }
         }
         §§goto(addr54);
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
      
      public function §#W§() : Number
      {
         return this.§`s§.camera.§#W§();
      }
      
      public function § <§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`s§.camera.§ <§(param1);
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
      
      public function §@!?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-!&§ = param1;
         }
      }
      
      public function §=S§() : Boolean
      {
         return this.§-!&§;
      }
   }
}
