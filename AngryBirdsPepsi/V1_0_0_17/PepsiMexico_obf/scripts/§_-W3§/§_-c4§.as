package §_-W3§
{
   import §_-LP§.DisplayObject;
   import §_-OJ§.§_-tL§;
   import §_-gY§.§_-Vu§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§_-5K§;
   import starling.events.§_-aG§;
   
   public class §_-c4§ implements §_-qz§
   {
       
      
      protected var §_-Ag§:§_-tL§;
      
      private var §_-FM§:Boolean = false;
      
      public function §_-c4§(param1:§_-tL§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
            if(_loc3_)
            {
               addr32:
               this.§_-Ag§ = param1;
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-Ag§.update(param1,true);
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
         if(!(_loc2_ && _loc1_))
         {
            this.removeEventListeners();
            if(_loc1_)
            {
               §§push(§_-Vu§.§_-dq§);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr45:
                        §_-Vu§.§_-dq§.stage.addEventListener(TouchEvent.§_-AT§,this.§_-Bb§);
                        addr43:
                        if(!_loc1_)
                        {
                        }
                     }
                     §§goto(addr68);
                  }
                  this.§_-Ag§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  addr68:
                  return;
               }
            }
            §§goto(addr45);
         }
         §§goto(addr43);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(§_-Vu§.§_-dq§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr42:
                     §_-Vu§.§_-dq§.stage.removeEventListener(TouchEvent.§_-AT§,this.§_-Bb§);
                     if(_loc2_)
                     {
                        addr57:
                        this.§_-Ag§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     }
                  }
                  return;
               }
               §§goto(addr57);
            }
         }
         §§goto(addr42);
      }
      
      private function §_-Bb§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§_-aG§> = null;
         var _loc4_:§_-aG§ = null;
         var _loc5_:§_-aG§ = null;
         if(_loc7_)
         {
            §§push(this.§_-FM§);
            if(_loc7_ || param1)
            {
               §§push(!§§pop());
               if(_loc7_ || this)
               {
                  if(!§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr46);
                     }
                     §§goto(addr64);
                  }
               }
               §§goto(addr65);
            }
            addr46:
            §§pop();
            if(!(_loc6_ && _loc2_))
            {
               addr54:
               §§push(this.§_-Ag§.§_-57§);
               if(_loc7_ || _loc2_)
               {
                  addr65:
                  addr64:
                  if(!§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr68);
                     }
                  }
                  var _loc2_:DisplayObject = param1.target as DisplayObject;
                  if(!(_loc6_ && _loc2_))
                  {
                     if(_loc2_)
                     {
                        addr84:
                        _loc3_ = param1.§_-OT§(_loc2_,§_-5K§.§_-qP§);
                        _loc3_ = _loc3_.concat(param1.§_-OT§(_loc2_,§_-5K§.§_-d2§));
                        if(_loc7_)
                        {
                           if(_loc3_.length > 0)
                           {
                              if(_loc7_ || _loc2_)
                              {
                                 addr120:
                                 this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                              }
                           }
                           §§push(Boolean(_loc4_ = param1.§_-QB§(_loc2_,§_-5K§.§_-an§)));
                           if(!_loc6_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    addr145:
                                    §§pop();
                                    if(_loc7_ || _loc2_)
                                    {
                                       addr157:
                                       if(_loc4_.§_-Y7§ > 0)
                                       {
                                          if(_loc7_)
                                          {
                                             this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                          }
                                       }
                                    }
                                    §§push(Boolean(_loc5_ = param1.§_-QB§(_loc2_,§_-5K§.§_-RF§)));
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§pop();
                                             if(_loc7_ || param1)
                                             {
                                                addr210:
                                                if(_loc5_.§_-Y7§ > 0)
                                                {
                                                   if(_loc6_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr219);
                                             }
                                             this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                             §§goto(addr219);
                                          }
                                       }
                                    }
                                    §§goto(addr210);
                                 }
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr120);
                     }
                     addr219:
                     return;
                  }
                  §§goto(addr84);
               }
               §§goto(addr65);
            }
            addr68:
            return;
         }
         §§goto(addr54);
      }
      
      public function handleMouseMove(param1:Number, param2:Number) : void
      {
      }
      
      public function handleMouseUp(param1:Number, param2:Number) : void
      {
      }
      
      public function handleMouseDown(param1:Number, param2:Number) : void
      {
      }
      
      public function onMouseWheel(param1:MouseEvent) : void
      {
      }
      
      public function addScore(param1:int) : void
      {
      }
      
      public function getScore() : int
      {
         return 0;
      }
      
      public function §_-WT§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-FM§ = param1;
         }
      }
      
      public function §_-Md§() : Boolean
      {
         return this.§_-FM§;
      }
   }
}
