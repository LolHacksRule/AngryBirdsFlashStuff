package §"a§
{
   import §!!U§.DisplayObject;
   import §&#H§.§3#J§;
   import §?m§.§+"2§;
   import §^#>§.§#_§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§5X§;
   import starling.events.TouchEvent;
   import starling.events.§[#W§;
   
   public class §3!z§ extends EventDispatcher implements §?#&§
   {
       
      
      protected var §2#G§:§#_§;
      
      protected var §+!b§:§+"2§;
      
      private var §2I§:Boolean = false;
      
      public function §3!z§(param1:§#_§, param2:§+"2§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super();
         }
         do
         {
            this.§2#G§ = param1;
            do
            {
               this.§+!b§ = param2;
            }
            while(_loc4_ && param1);
            
         }
         while(_loc4_ && param2);
         
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2#G§.update(param1,true);
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
         if(_loc2_ || _loc1_)
         {
            this.removeEventListeners();
         }
         while(true)
         {
            §§push(§3#J§.§2!C§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(!_loc1_)
                  {
                     §§push(§3#J§.§2!C§);
                     while(true)
                     {
                        §§pop().stage.addEventListener(TouchEvent.§;!1§,this.§2#5§);
                        addr84:
                        while(true)
                        {
                        }
                     }
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     return;
                     addr57:
                  }
                  continue;
               }
               while(true)
               {
                  this.§2#G§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr50);
               }
               §§goto(addr57);
            }
            §§goto(addr68);
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§3#J§.§2!C§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr70:
                     §3#J§.§2!C§.stage.removeEventListener(TouchEvent.§;!1§,this.§2#5§);
                  }
                  while(true)
                  {
                  }
                  addr76:
               }
               while(true)
               {
                  this.§2#G§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!_loc1_)
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
      
      private function §2#5§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§[#W§> = null;
         var _loc4_:§[#W§ = null;
         var _loc5_:§[#W§ = null;
         if(_loc6_)
         {
            §§push(this.§2I§);
            if(_loc6_ || _loc3_)
            {
               §§push(!§§pop());
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     if(_loc6_)
                     {
                        addr43:
                        §§pop();
                        if(_loc6_ || param1)
                        {
                           addr51:
                           §§push(this.§2#G§.mReadyToRun);
                           if(!_loc7_)
                           {
                              addr57:
                              if(!§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    return;
                                 }
                              }
                           }
                           §§goto(addr57);
                        }
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(_loc6_)
                        {
                           if(_loc2_)
                           {
                              addr71:
                              _loc3_ = param1.§&!N§(_loc2_,§5X§.§!!Z§);
                              _loc3_ = _loc3_.concat(param1.§&!N§(_loc2_,§5X§.§;!s§));
                              if(!(_loc7_ && _loc3_))
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                              }
                              §§push(Boolean(_loc4_ = param1.§>!6§(_loc2_,§5X§.§"!u§)));
                              if(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§goto(addr145);
                                    }
                                 }
                                 §§goto(addr157);
                              }
                              addr145:
                              §§pop();
                              if(!(_loc7_ && param1))
                              {
                                 addr157:
                                 if(_loc4_.§`l§ > 0)
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                    }
                                 }
                              }
                              §§push(Boolean(_loc5_ = param1.§>!6§(_loc2_,§5X§.§<!A§)));
                              if(!_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || this)
                                    {
                                       §§goto(addr191);
                                    }
                                 }
                                 §§goto(addr203);
                              }
                              addr191:
                              §§pop();
                              if(_loc6_ || _loc3_)
                              {
                                 addr203:
                                 if(_loc5_.§`l§ > 0)
                                 {
                                    if(!_loc6_)
                                    {
                                    }
                                 }
                                 §§goto(addr222);
                              }
                              this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                              §§goto(addr222);
                           }
                           addr222:
                           return;
                        }
                        §§goto(addr71);
                     }
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr43);
         }
         §§goto(addr51);
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
      
      public function §=!L§() : Number
      {
         return this.§2#G§.camera.§=!L§();
      }
      
      public function §+"&§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§2#G§.camera.§+"&§(param1);
         }
      }
      
      public function addScore(param1:int) : void
      {
      }
      
      public function getScore(param1:int) : int
      {
         return 0;
      }
      
      public function getEagleScore() : int
      {
         return 0;
      }
      
      public function §6"<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§2I§ = param1;
         }
      }
      
      public function §5^§() : Boolean
      {
         return this.§2I§;
      }
   }
}
