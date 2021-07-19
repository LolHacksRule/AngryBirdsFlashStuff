package §#!`§
{
   import §!!!§.§6!l§;
   import §%!B§.§0![§;
   import §3!J§.DisplayObject;
   import §@V§.§#=§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§,g§;
   import starling.events.§4&§;
   import starling.events.TouchEvent;
   
   public class §+!i§ extends EventDispatcher implements §1V§
   {
       
      
      protected var §!`§:§#=§;
      
      protected var §4a§:§0![§;
      
      private var §2!G§:Boolean = false;
      
      public function §+!i§(param1:§#=§, param2:§0![§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super();
            while(true)
            {
               this.§!`§ = param1;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§4a§ = param2;
            if(_loc4_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§!`§.update(param1,true);
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
            loop0:
            while(true)
            {
               §§push(§6!l§.§+J§);
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        this.§!`§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr28:
                  }
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  §§push(§6!l§.§+J§);
               }
               §§pop().stage.addEventListener(TouchEvent.§>P§,this.§]!'§);
            }
         }
         while(true)
         {
            §§goto(addr28);
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§6!l§.§+J§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr74:
                     §6!l§.§+J§.stage.removeEventListener(TouchEvent.§>P§,this.§]!'§);
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
                  this.§!`§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!_loc2_)
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
      
      private function §]!'§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§4&§> = null;
         var _loc4_:§4&§ = null;
         var _loc5_:§4&§ = null;
         if(_loc6_ || this)
         {
            §§push(this.§2!G§);
            if(!_loc7_)
            {
               §§push(!§§pop());
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        addr48:
                        §§pop();
                        if(_loc6_)
                        {
                           addr51:
                           §§push(this.§!`§.mReadyToRun);
                           if(_loc6_)
                           {
                              addr57:
                              if(!§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    return;
                                 }
                              }
                           }
                           §§goto(addr57);
                        }
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(!_loc7_)
                        {
                           if(_loc2_)
                           {
                              addr71:
                              _loc3_ = param1.§!q§(_loc2_,§,g§.§"=§);
                              _loc3_ = _loc3_.concat(param1.§!q§(_loc2_,§,g§.HOVER));
                              if(!_loc7_)
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       addr110:
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                                 §§push(Boolean(_loc4_ = param1.§,!7§(_loc2_,§,g§.§&!]§)));
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§pop();
                                          if(_loc6_ || this)
                                          {
                                             addr152:
                                             if(_loc4_.§ >§ > 0)
                                             {
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                                }
                                             }
                                          }
                                          §§push(Boolean(_loc5_ = param1.§,!7§(_loc2_,§,g§.§,!4§)));
                                          if(_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   §§goto(addr181);
                                                }
                                             }
                                             §§goto(addr193);
                                          }
                                          addr181:
                                          §§pop();
                                          if(!(_loc7_ && param1))
                                          {
                                             addr193:
                                             if(_loc5_.§ >§ > 0)
                                             {
                                                if(!_loc6_)
                                                {
                                                }
                                             }
                                             §§goto(addr212);
                                          }
                                          this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                          §§goto(addr212);
                                       }
                                    }
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr110);
                           }
                           addr212:
                           return;
                        }
                        §§goto(addr71);
                     }
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr48);
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
      
      public function §8>§() : Number
      {
         return this.§!`§.camera.§8>§();
      }
      
      public function §[!f§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!`§.camera.§[!f§(param1);
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
      
      public function §,P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§2!G§ = param1;
         }
      }
      
      public function §<3§() : Boolean
      {
         return this.§2!G§;
      }
   }
}
