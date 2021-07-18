package §^!3§
{
   import §6![§.DisplayObject;
   import §8!K§.§5!Y§;
   import §@L§.§?!'§;
   import §`!a§.§1"&§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§"",§;
   import starling.events.§4!#§;
   import starling.events.TouchEvent;
   
   public class §%z§ extends EventDispatcher implements §6!z§
   {
       
      
      protected var §<Y§:§?!'§;
      
      protected var §&" §:§5!Y§;
      
      private var §1!E§:Boolean = false;
      
      public function §%z§(param1:§?!'§, param2:§5!Y§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super();
            while(true)
            {
               this.§<Y§ = param1;
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§&" § = param2;
                     if(!(_loc4_ && param1))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§<Y§.update(param1,true);
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
         while(true)
         {
            §§push(§1"&§.§1i§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §1"&§.§1i§.stage.addEventListener(TouchEvent.§77§,this.§&r§);
                     addr65:
                  }
                  loop1:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§<Y§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
                  continue;
               }
               §§goto(addr23);
            }
            §§goto(addr65);
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§1"&§.§1i§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr80:
                     §1"&§.§1i§.stage.removeEventListener(TouchEvent.§77§,this.§&r§);
                  }
                  while(true)
                  {
                     §§goto(addr24);
                  }
               }
               addr24:
               §§goto(addr50);
            }
            §§goto(addr80);
         }
         addr50:
         while(true)
         {
            this.§<Y§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
            if(_loc2_ || _loc2_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      private function §&r§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§4!#§> = null;
         var _loc4_:§4!#§ = null;
         var _loc5_:§4!#§ = null;
         if(!(_loc7_ && this))
         {
            §§push(this.§1!E§);
            if(_loc6_)
            {
               §§push(!§§pop());
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     if(_loc6_)
                     {
                        §§pop();
                        addr71:
                        if(!(_loc7_ && param1))
                        {
                           §§push(this.§<Y§.mReadyToRun);
                           if(!(_loc7_ && _loc3_))
                           {
                              addr61:
                              §§push(!§§pop());
                           }
                        }
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(_loc6_)
                        {
                           if(_loc2_)
                           {
                              addr81:
                              _loc3_ = param1.§!",§(_loc2_,§"",§.§#D§);
                              _loc3_ = _loc3_.concat(param1.§!",§(_loc2_,§"",§.HOVER));
                              if(_loc6_)
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                              }
                              §§push(Boolean(_loc4_ = param1.§?5§(_loc2_,§"",§.§5!=§)));
                              if(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§pop();
                                       if(_loc6_)
                                       {
                                          addr157:
                                          if(_loc4_.§7!L§ > 0)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                             }
                                          }
                                       }
                                       §§push(Boolean(_loc5_ = param1.§?5§(_loc2_,§"",§.§"!A§)));
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                §§pop();
                                                §§goto(addr227);
                                             }
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                          }
                                       }
                                       §§goto(addr227);
                                    }
                                 }
                              }
                              §§goto(addr157);
                           }
                           addr227:
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(_loc5_.§7!L§ > 0);
                           }
                           return;
                        }
                        §§goto(addr81);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc6_ || _loc3_)
                     {
                        return;
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr71);
               }
            }
            §§goto(addr61);
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
      
      public function §!!<§() : Number
      {
         return this.§<Y§.camera.§!!<§();
      }
      
      public function §0! §(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§<Y§.camera.§0! §(param1);
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
      
      public function §&!E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§1!E§ = param1;
         }
      }
      
      public function §8I§() : Boolean
      {
         return this.§1!E§;
      }
   }
}
