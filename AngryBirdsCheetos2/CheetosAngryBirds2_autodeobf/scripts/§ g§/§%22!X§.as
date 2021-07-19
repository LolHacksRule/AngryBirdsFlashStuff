package § g§
{
   import §,§.§ p§;
   import §6;§.§%[§;
   import §^a§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§#v§;
   import starling.events.§?!E§;
   import starling.events.TouchEvent;
   
   public class §"!X§ extends EventDispatcher implements §;!N§
   {
       
      
      protected var §^!I§:§ p§;
      
      private var §0!d§:Boolean = false;
      
      public function §"!X§(param1:§ p§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            do
            {
               this.§^!I§ = param1;
            }
            while(!_loc2_);
            
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^!I§.update(param1,true);
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
            while(true)
            {
               §§push(§%[§.§`1§);
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc1_ || this)
                     {
                        §%[§.§`1§.stage.addEventListener(TouchEvent.§5a§,this.§#!f§);
                        addr70:
                     }
                     loop1:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     continue;
                     addr86:
                  }
                  while(true)
                  {
                     this.§^!I§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     §§goto(addr86);
                  }
                  return;
               }
               §§goto(addr70);
            }
         }
         §§goto(addr88);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§%[§.§`1§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr84:
                     §%[§.§`1§.stage.removeEventListener(TouchEvent.§5a§,this.§#!f§);
                     addr90:
                     while(true)
                     {
                     }
                     addr90:
                  }
                  §§goto(addr90);
               }
               while(true)
               {
                  this.§^!I§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr90);
               }
               return;
            }
         }
         §§goto(addr84);
      }
      
      private function §#!f§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§#v§> = null;
         var _loc4_:§#v§ = null;
         var _loc5_:§#v§ = null;
         if(!(_loc7_ && _loc3_))
         {
            §§push(this.§0!d§);
            if(_loc6_)
            {
               §§push(!§§pop());
               if(_loc6_ || this)
               {
                  if(!§§pop())
                  {
                     if(_loc7_ && this)
                     {
                     }
                     addr67:
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           return;
                        }
                        addr71:
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(!(_loc7_ && _loc3_))
                        {
                           if(_loc2_)
                           {
                              addr86:
                              _loc3_ = param1.§=P§(_loc2_,§?!E§.§-!"§);
                              _loc3_ = _loc3_.concat(param1.§=P§(_loc2_,§?!E§.§4R§));
                              if(_loc6_ || param1)
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(_loc6_)
                                    {
                                       addr125:
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                                 §§push(Boolean(_loc4_ = param1.§`C§(_loc2_,§?!E§.§'s§)));
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_ || this)
                                       {
                                          §§pop();
                                          if(_loc6_ || this)
                                          {
                                             addr172:
                                             if(_loc4_.§=!i§ > 0)
                                             {
                                                if(_loc6_)
                                                {
                                                   this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                                }
                                             }
                                          }
                                          §§push(Boolean(_loc5_ = param1.§`C§(_loc2_,§?!E§.§^2§)));
                                          if(_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc6_ || this)
                                                {
                                                   §§pop();
                                                   §§goto(addr227);
                                                }
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                             }
                                          }
                                          §§goto(addr227);
                                       }
                                    }
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr125);
                           }
                           addr227:
                           if(_loc6_)
                           {
                              §§push(_loc5_.§=!i§ > 0);
                           }
                           return;
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr67);
               }
               §§pop();
               if(_loc6_)
               {
                  §§push(this.§^!I§.mReadyToRun);
                  if(_loc6_ || _loc2_)
                  {
                     §§push(!§§pop());
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr67);
         }
         §§goto(addr71);
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
      
      public function §]%§() : Number
      {
         return this.§^!I§.camera.§]%§();
      }
      
      public function §,!H§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§^!I§.camera.§,!H§(param1);
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
      
      public function §+F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0!d§ = param1;
         }
      }
      
      public function §@z§() : Boolean
      {
         return this.§0!d§;
      }
   }
}
