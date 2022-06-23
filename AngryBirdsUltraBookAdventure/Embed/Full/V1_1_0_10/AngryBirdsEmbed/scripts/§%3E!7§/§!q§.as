package §>!7§
{
   import §&o§.DisplayObject;
   import §6A§.§ !§;
   import §=!0§.§>I§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§7+§;
   import starling.events.§>;§;
   import starling.events.TouchEvent;
   
   public class §!q§ extends EventDispatcher implements §;b§
   {
       
      
      protected var §?V§:§ !§;
      
      private var §`'§:Boolean = false;
      
      public function §!q§(param1:§ !§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
            if(_loc3_)
            {
               addr28:
               this.§?V§ = param1;
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?V§.update(param1,true);
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
         if(_loc1_ || this)
         {
            this.removeEventListeners();
            if(_loc1_ || this)
            {
               §§push(§>I§.§`S§);
               if(_loc1_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        addr71:
                        §>I§.§`S§.stage.addEventListener(TouchEvent.§7!4§,this.§2h§);
                        addr69:
                        if(_loc1_ || _loc1_)
                        {
                        }
                     }
                     §§goto(addr92);
                  }
                  this.§?V§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  addr92:
                  return;
               }
            }
            §§goto(addr71);
         }
         §§goto(addr69);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(§>I§.§`S§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     addr62:
                     §>I§.§`S§.stage.removeEventListener(TouchEvent.§7!4§,this.§2h§);
                     if(_loc1_ || _loc2_)
                     {
                     }
                  }
                  §§goto(addr83);
               }
               this.§?V§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
               addr83:
               return;
            }
         }
         §§goto(addr62);
      }
      
      private function §2h§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§7+§> = null;
         var _loc4_:§7+§ = null;
         var _loc5_:§7+§ = null;
         if(_loc7_)
         {
            §§push(this.§`'§);
            if(_loc7_)
            {
               §§push(!§§pop());
               if(_loc7_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           addr47:
                           §§push(this.§?V§.mReadyToRun);
                           if(!_loc6_)
                           {
                              addr53:
                              addr52:
                              if(!§§pop())
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    §§goto(addr61);
                                 }
                              }
                              var _loc2_:DisplayObject = param1.target as DisplayObject;
                              if(!_loc6_)
                              {
                                 if(_loc2_)
                                 {
                                    addr72:
                                    _loc3_ = param1.§?!&§(_loc2_,§>;§.§"%§);
                                    _loc3_ = _loc3_.concat(param1.§?!&§(_loc2_,§>;§.§+S§));
                                    if(_loc7_ || this)
                                    {
                                       if(_loc3_.length > 0)
                                       {
                                          if(!_loc6_)
                                          {
                                             addr111:
                                             this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                          }
                                       }
                                       §§push(Boolean(_loc4_ = param1.§#^§(_loc2_,§>;§.§1!@§)));
                                       if(!(_loc6_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                §§goto(addr146);
                                             }
                                          }
                                          §§goto(addr158);
                                       }
                                       addr146:
                                       §§pop();
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          addr158:
                                          if(_loc4_.§?[§ > 0)
                                          {
                                             if(_loc7_ || _loc3_)
                                             {
                                                this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                             }
                                          }
                                       }
                                       §§push(Boolean(_loc5_ = param1.§#^§(_loc2_,§>;§.§7!=§)));
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                §§pop();
                                                §§goto(addr223);
                                             }
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                          }
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr111);
                                 }
                                 addr223:
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(_loc5_.§?[§ > 0);
                                 }
                                 return;
                              }
                              §§goto(addr72);
                           }
                           §§goto(addr53);
                        }
                        addr61:
                        return;
                     }
                     §§goto(addr52);
                  }
                  §§goto(addr53);
               }
            }
            §§goto(addr53);
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
      
      public function §[$§() : Number
      {
         return this.§?V§.camera.§[$§();
      }
      
      public function §]!K§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§?V§.camera.§]!K§(param1);
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
      
      public function §4u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`'§ = param1;
         }
      }
      
      public function §!6§() : Boolean
      {
         return this.§`'§;
      }
   }
}
