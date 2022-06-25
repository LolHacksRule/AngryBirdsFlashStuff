package §48§
{
   import §2m§.§<!?§;
   import §40§.§5G§;
   import §`g§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§;K§;
   import starling.events.§<A§;
   import starling.events.TouchEvent;
   
   public class §?x§ extends EventDispatcher implements §5Y§
   {
       
      
      protected var §#!U§:§5G§;
      
      private var §6o§:Boolean = false;
      
      public function §?x§(param1:§5G§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.§#!U§ = param1;
         }
         while(_loc3_);
         
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#!U§.update(param1,true);
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
         if(!(_loc2_ && _loc2_))
         {
            this.removeEventListeners();
            loop0:
            do
            {
               §§push(§<!?§.§,=§);
               if(_loc1_ || this)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§<!?§.§,=§);
                        addr87:
                        while(true)
                        {
                           §§pop().stage.addEventListener(TouchEvent.§7!L§,this.§3!6§);
                           addr93:
                           while(true)
                           {
                           }
                        }
                        addr49:
                        if(_loc1_ || _loc1_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     this.§#!U§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr49);
                  }
                  continue;
               }
               §§goto(addr87);
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§<!?§.§,=§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr79:
                     §<!?§.§,=§.stage.removeEventListener(TouchEvent.§7!L§,this.§3!6§);
                  }
                  while(true)
                  {
                     §§goto(addr38);
                  }
               }
               addr38:
               while(true)
               {
                  this.§#!U§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(_loc1_ || _loc1_)
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
      
      private function §3!6§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§;K§> = null;
         var _loc4_:§;K§ = null;
         var _loc5_:§;K§ = null;
         if(!_loc6_)
         {
            §§push(this.§6o§);
            if(_loc7_ || param1)
            {
               §§push(!§§pop());
               if(!_loc6_)
               {
                  if(!§§pop())
                  {
                     if(_loc7_)
                     {
                        addr44:
                        §§pop();
                        if(_loc7_)
                        {
                           §§push(this.§#!U§.mReadyToRun);
                           if(!_loc7_)
                           {
                           }
                           addr53:
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 return;
                              }
                              addr57:
                              var _loc2_:DisplayObject = param1.target as DisplayObject;
                              if(_loc7_)
                              {
                                 if(_loc2_)
                                 {
                                    addr67:
                                    _loc3_ = param1.§@!s§(_loc2_,§<A§.§0!;§);
                                    _loc3_ = _loc3_.concat(param1.§@!s§(_loc2_,§<A§.§0!U§));
                                    if(!_loc6_)
                                    {
                                       if(_loc3_.length > 0)
                                       {
                                          if(_loc7_)
                                          {
                                             addr101:
                                             this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                          }
                                       }
                                       §§push(Boolean(_loc4_ = param1.§9=§(_loc2_,§<A§.§2!R§)));
                                       if(_loc7_ || param1)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc7_)
                                             {
                                                addr131:
                                                §§pop();
                                                if(!(_loc6_ && this))
                                                {
                                                   addr143:
                                                   if(_loc4_.§9!7§ > 0)
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                                      }
                                                   }
                                                }
                                                §§push(Boolean(_loc5_ = param1.§9=§(_loc2_,§<A§.§"![§)));
                                                if(_loc7_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr182:
                                                         §§pop();
                                                         §§goto(addr208);
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                   addr208:
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§push(_loc5_.§9!7§ > 0);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr182);
                                             }
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr101);
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr67);
                           }
                        }
                        §§goto(addr57);
                     }
                     §§goto(addr53);
                     §§push(!§§pop());
                  }
                  §§goto(addr53);
               }
               §§goto(addr44);
            }
            §§goto(addr53);
         }
         §§goto(addr57);
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
      
      public function §;!n§() : Number
      {
         return this.§#!U§.camera.§;!n§();
      }
      
      public function §2!P§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#!U§.camera.§2!P§(param1);
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
      
      public function § !J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§6o§ = param1;
         }
      }
      
      public function §]P§() : Boolean
      {
         return this.§6o§;
      }
   }
}
