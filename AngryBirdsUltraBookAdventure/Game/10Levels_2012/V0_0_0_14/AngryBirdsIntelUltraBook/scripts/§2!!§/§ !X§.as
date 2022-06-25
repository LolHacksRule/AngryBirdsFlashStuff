package §2!!§
{
   import §+&§.§-!7§;
   import §9E§.DisplayObject;
   import §@4§.§,!]§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§<Q§;
   import starling.events.§=<§;
   import starling.events.TouchEvent;
   
   public class § !X§ extends EventDispatcher implements §[!A§
   {
       
      
      protected var §+!X§:§-!7§;
      
      private var §0![§:Boolean = false;
      
      public function § !X§(param1:§-!7§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
         }
         do
         {
            this.§+!X§ = param1;
         }
         while(!_loc3_);
         
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+!X§.update(param1,true);
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
         if(!(_loc1_ && _loc2_))
         {
            this.removeEventListeners();
            do
            {
               §§push(§,!]§.§!9§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§,!]§.§!9§);
                        addr73:
                        while(true)
                        {
                           §§pop().stage.addEventListener(TouchEvent.§`!t§,this.§<Z§);
                           addr79:
                           while(true)
                           {
                           }
                        }
                     }
                     addr71:
                  }
                  while(true)
                  {
                     this.§+!X§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(_loc1_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr71);
                  }
                  continue;
               }
               §§goto(addr73);
            }
            while(!_loc2_);
            
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§,!]§.§!9§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(§,!]§.§!9§);
                     addr80:
                     while(true)
                     {
                        §§pop().stage.removeEventListener(TouchEvent.§`!t§,this.§<Z§);
                        addr86:
                        while(true)
                        {
                        }
                     }
                     addr60:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     return;
                     addr67:
                  }
               }
               while(true)
               {
                  this.§+!X§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr60);
               }
               §§goto(addr67);
            }
            §§goto(addr80);
         }
         §§goto(addr67);
      }
      
      private function §<Z§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§<Q§> = null;
         var _loc4_:§<Q§ = null;
         var _loc5_:§<Q§ = null;
         if(_loc7_)
         {
            §§push(this.§0![§);
            if(!(_loc6_ && this))
            {
               §§push(!§§pop());
               if(_loc7_ || param1)
               {
                  if(!§§pop())
                  {
                     if(!_loc6_)
                     {
                        addr49:
                        §§pop();
                        if(_loc7_)
                        {
                           §§push(this.§+!X§.mReadyToRun);
                           if(!(_loc6_ && param1))
                           {
                              addr63:
                              if(!§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§goto(addr66);
                                 }
                              }
                           }
                           §§goto(addr63);
                        }
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(!(_loc6_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              addr82:
                              _loc3_ = param1.§0q§(_loc2_,§=<§.§!!x§);
                              _loc3_ = _loc3_.concat(param1.§0q§(_loc2_,§=<§.§+!+§));
                              if(_loc7_ || _loc2_)
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(!_loc6_)
                                    {
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                              }
                              §§push(Boolean(_loc4_ = param1.§+?§(_loc2_,§=<§.§<%§)));
                              if(!_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc7_ || param1)
                                    {
                                       §§pop();
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          addr163:
                                          if(_loc4_.§6n§ > 0)
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                             }
                                          }
                                       }
                                       §§push(Boolean(_loc5_ = param1.§+?§(_loc2_,§=<§.§4c§)));
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc7_ || _loc2_)
                                             {
                                                addr207:
                                                §§pop();
                                                §§goto(addr228);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                             }
                                             §§goto(addr228);
                                          }
                                          addr228:
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(_loc5_.§6n§ > 0);
                                          }
                                          return;
                                       }
                                       §§goto(addr207);
                                    }
                                 }
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr207);
                        }
                        §§goto(addr82);
                     }
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr49);
         }
         addr66:
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
      
      public function §'T§() : Number
      {
         return this.§+!X§.camera.§'T§();
      }
      
      public function §9&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§+!X§.camera.§9&§(param1);
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
      
      public function §3s§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0![§ = param1;
         }
      }
      
      public function §6!#§() : Boolean
      {
         return this.§0![§;
      }
   }
}
