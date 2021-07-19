package §!F§
{
   import §-Z§.§?h§;
   import §[x§.§2^§;
   import §^V§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§ K§;
   import starling.events.§"e§;
   import starling.events.TouchEvent;
   
   public class §`!&§ extends EventDispatcher implements §!h§
   {
       
      
      protected var §1! §:§2^§;
      
      private var §;!,§:Boolean = false;
      
      public function §`!&§(param1:§2^§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            do
            {
               this.§1! § = param1;
            }
            while(!_loc2_);
            
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1! §.update(param1,true);
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
            do
            {
               §§push(§?h§.§ n§);
               if(_loc1_ || this)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§?h§.§ n§);
                        addr82:
                        while(true)
                        {
                           §§pop().stage.addEventListener(TouchEvent.§[<§,this.§&=§);
                           addr88:
                           while(true)
                           {
                           }
                        }
                     }
                     addr80:
                  }
                  while(true)
                  {
                     this.§1! §.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§goto(addr80);
                  }
                  continue;
               }
               §§goto(addr82);
            }
            while(!_loc1_);
            
            return;
         }
         §§goto(addr88);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§?h§.§ n§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(§?h§.§ n§);
                     addr65:
                     while(true)
                     {
                        §§pop().stage.removeEventListener(TouchEvent.§[<§,this.§&=§);
                        addr71:
                        while(true)
                        {
                        }
                     }
                  }
                  addr63:
               }
               while(true)
               {
                  this.§1! §.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(_loc1_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr63);
               }
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr71);
      }
      
      private function §&=§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§ K§> = null;
         var _loc4_:§ K§ = null;
         var _loc5_:§ K§ = null;
         if(!(_loc6_ && param1))
         {
            §§push(this.§;!,§);
            if(!_loc6_)
            {
               §§push(!§§pop());
               if(!_loc6_)
               {
                  if(!§§pop())
                  {
                     if(_loc7_ || param1)
                     {
                        addr49:
                        §§pop();
                        if(!_loc6_)
                        {
                           addr52:
                           §§push(this.§1! §.mReadyToRun);
                           if(_loc7_ || _loc2_)
                           {
                              addr63:
                              if(!§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    return;
                                 }
                              }
                           }
                           §§goto(addr63);
                        }
                        var _loc2_:DisplayObject = param1.target as DisplayObject;
                        if(_loc7_)
                        {
                           if(_loc2_)
                           {
                              addr77:
                              _loc3_ = param1.§`o§(_loc2_,§"e§.§76§);
                              _loc3_ = _loc3_.concat(param1.§`o§(_loc2_,§"e§.§2!7§));
                              if(!(_loc6_ && this))
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       addr121:
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                                 §§push(Boolean(_loc4_ = param1.§!!?§(_loc2_,§"e§.§"m§)));
                                 if(_loc7_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_ || param1)
                                       {
                                          §§pop();
                                          if(!(_loc6_ && this))
                                          {
                                             §§goto(addr168);
                                          }
                                          §§goto(addr176);
                                       }
                                    }
                                 }
                                 addr168:
                                 if(_loc4_.§#'§ > 0)
                                 {
                                    if(_loc7_ || this)
                                    {
                                       addr176:
                                       this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                    }
                                 }
                                 §§push(Boolean(_loc5_ = param1.§!!?§(_loc2_,§"e§.§'D§)));
                                 if(_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_ || this)
                                       {
                                          §§pop();
                                          §§goto(addr233);
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc7_ || this)
                                    {
                                       this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                    }
                                 }
                                 §§goto(addr233);
                              }
                              §§goto(addr121);
                           }
                           addr233:
                           if(_loc7_)
                           {
                              §§push(_loc5_.§#'§ > 0);
                           }
                           return;
                        }
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr63);
               }
               §§goto(addr49);
            }
            §§goto(addr63);
         }
         §§goto(addr52);
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
      
      public function §77§() : Number
      {
         return this.§1! §.camera.§77§();
      }
      
      public function §6X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§1! §.camera.§6X§(param1);
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
      
      public function §@T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§;!,§ = param1;
         }
      }
      
      public function §=,§() : Boolean
      {
         return this.§;!,§;
      }
   }
}
