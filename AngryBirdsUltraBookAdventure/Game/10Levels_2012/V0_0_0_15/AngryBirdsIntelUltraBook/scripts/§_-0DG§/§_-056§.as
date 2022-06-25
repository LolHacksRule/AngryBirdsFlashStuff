package §_-0Dg§
{
   import §_-0Ea§.§_-AY§;
   import §_-TG§.§_-00u§;
   import §_-uY§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§_-06V§;
   import starling.events.§_-tW§;
   
   public class §_-056§ extends EventDispatcher implements §_-0BD§
   {
       
      
      protected var §_-6A§:§_-00u§;
      
      private var §_-tr§:Boolean = false;
      
      public function §_-056§(param1:§_-00u§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
         }
         do
         {
            this.§_-6A§ = param1;
         }
         while(!_loc2_);
         
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-6A§.update(param1,true);
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
         if(!_loc1_)
         {
            this.removeEventListeners();
            loop0:
            do
            {
               §§push(§_-AY§.§_-un§);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr73:
                        §_-AY§.§_-un§.stage.addEventListener(TouchEvent.§_-ed§,this.§_-04d§);
                     }
                     loop1:
                     while(true)
                     {
                        addr24:
                        while(true)
                        {
                           this.§_-6A§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr24);
               }
               §§goto(addr73);
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§_-AY§.§_-un§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr79:
                     §_-AY§.§_-un§.stage.removeEventListener(TouchEvent.§_-ed§,this.§_-04d§);
                  }
                  while(true)
                  {
                     §§goto(addr23);
                  }
               }
               addr23:
               while(true)
               {
                  this.§_-6A§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!(_loc2_ && this))
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
      
      private function §_-04d§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§_-06V§> = null;
         var _loc4_:§_-06V§ = null;
         var _loc5_:§_-06V§ = null;
         if(!_loc6_)
         {
            §§push(this.§_-tr§);
            if(_loc7_)
            {
               §§push(!§§pop());
               if(!_loc6_)
               {
                  addr35:
                  if(!§§pop())
                  {
                     if(_loc7_)
                     {
                        §§pop();
                        if(_loc7_ || _loc2_)
                        {
                           addr47:
                           §§push(this.§_-6A§.mReadyToRun);
                           if(_loc7_)
                           {
                              addr53:
                              if(!§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    return;
                                 }
                              }
                           }
                           §§goto(addr53);
                        }
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(!(_loc6_ && _loc3_))
                        {
                           if(_loc2_)
                           {
                              addr72:
                              _loc3_ = param1.§_-y4§(_loc2_,§_-tW§.§_-Ua§);
                              _loc3_ = _loc3_.concat(param1.§_-y4§(_loc2_,§_-tW§.§for §));
                              if(_loc7_ || _loc3_)
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(_loc7_ || this)
                                    {
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                              }
                              §§push(Boolean(_loc4_ = param1.§_-MV§(_loc2_,§_-tW§.§_-0Cc§)));
                              if(!(_loc6_ && _loc2_))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       §§pop();
                                       if(_loc7_)
                                       {
                                          addr153:
                                          if(_loc4_.§_-Y3§ > 0)
                                          {
                                             if(_loc7_)
                                             {
                                                this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                             }
                                          }
                                       }
                                       §§push(Boolean(_loc5_ = param1.§_-MV§(_loc2_,§_-tW§.§_-h4§)));
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc7_)
                                             {
                                                §§pop();
                                                §§goto(addr208);
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
                                       §§goto(addr208);
                                    }
                                 }
                              }
                              §§goto(addr153);
                           }
                           addr208:
                           if(_loc7_ || _loc3_)
                           {
                              §§push(_loc5_.§_-Y3§ > 0);
                           }
                           return;
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr53);
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr35);
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
      
      public function §_-0A5§() : Number
      {
         return this.§_-6A§.camera.§_-0A5§();
      }
      
      public function §_-IH§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-6A§.camera.§_-IH§(param1);
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
      
      public function §_-Ia§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-tr§ = param1;
         }
      }
      
      public function §_-zL§() : Boolean
      {
         return this.§_-tr§;
      }
   }
}
