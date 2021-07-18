package § M§
{
   import §'4§.§^g§;
   import §5Q§.§^!e§;
   import §7!8§.DisplayObject;
   import §`!j§.§9"!§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§7M§;
   import starling.events.§@M§;
   import starling.events.TouchEvent;
   
   public class §;!!§ extends EventDispatcher implements §`"B§
   {
       
      
      protected var §?>§:§^g§;
      
      protected var §6u§:§9"!§;
      
      private var §;!K§:Boolean = false;
      
      public function §;!!§(param1:§^g§, param2:§9"!§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§?>§ = param1;
               while(!_loc3_)
               {
                  this.§6u§ = param2;
                  if(_loc4_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§?>§.update(param1,true);
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
         }
         loop0:
         do
         {
            §§push(§^!e§.§`?§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(§^!e§.§`?§);
                     addr77:
                     while(true)
                     {
                        §§pop().stage.addEventListener(TouchEvent.§1!X§,this.§&"9§);
                        addr93:
                        while(true)
                        {
                        }
                     }
                     addr39:
                     if(!(_loc2_ && this))
                     {
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  this.§?>§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr39);
               }
               continue;
            }
            §§goto(addr77);
         }
         while(_loc2_ && this);
         
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§^!e§.§`?§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  addr72:
                  while(true)
                  {
                     §§push(§^!e§.§`?§);
                     addr74:
                     while(true)
                     {
                        §§pop().stage.removeEventListener(TouchEvent.§1!X§,this.§&"9§);
                        addr80:
                        while(true)
                        {
                        }
                     }
                  }
                  addr72:
               }
               while(true)
               {
                  this.§?>§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr72);
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr72);
      }
      
      private function §&"9§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§7M§> = null;
         var _loc4_:§7M§ = null;
         var _loc5_:§7M§ = null;
         if(_loc7_ || _loc2_)
         {
            §§push(this.§;!K§);
            if(!_loc6_)
            {
               §§push(!§§pop());
               if(_loc7_)
               {
                  addr40:
                  if(!§§pop())
                  {
                     if(_loc7_ || _loc2_)
                     {
                        §§pop();
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(this.§?>§.mReadyToRun);
                           if(!_loc6_)
                           {
                              addr63:
                              if(!§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    addr67:
                                    var _loc2_:DisplayObject = param1.target as DisplayObject;
                                    if(!_loc6_)
                                    {
                                       if(_loc2_)
                                       {
                                          addr77:
                                          _loc3_ = param1.§4!V§(_loc2_,§@M§.§[!c§);
                                          _loc3_ = _loc3_.concat(param1.§4!V§(_loc2_,§@M§.§2"@§));
                                          if(_loc7_)
                                          {
                                             if(_loc3_.length > 0)
                                             {
                                                if(!_loc6_)
                                                {
                                                   this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                                }
                                             }
                                          }
                                          §§push(Boolean(_loc4_ = param1.§#0§(_loc2_,§@M§.§2_§)));
                                          if(_loc7_ || param1)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§pop();
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      §§goto(addr153);
                                                   }
                                                   §§goto(addr161);
                                                }
                                             }
                                          }
                                          addr153:
                                          if(_loc4_.§@"G§ > 0)
                                          {
                                             if(_loc7_ || this)
                                             {
                                                addr161:
                                                this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                             }
                                          }
                                          §§push(Boolean(_loc5_ = param1.§#0§(_loc2_,§@M§.§>!A§)));
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc7_ || param1)
                                                {
                                                   §§pop();
                                                   §§goto(addr223);
                                                }
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                             }
                                          }
                                          §§goto(addr223);
                                       }
                                       addr223:
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(_loc5_.§@"G§ > 0);
                                       }
                                       return;
                                    }
                                    §§goto(addr77);
                                 }
                              }
                              §§goto(addr67);
                           }
                           §§goto(addr63);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr40);
         }
         §§goto(addr67);
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
      
      public function §=U§() : Number
      {
         return this.§?>§.camera.§=U§();
      }
      
      public function §&"0§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?>§.camera.§&"0§(param1);
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
      
      public function §]W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;!K§ = param1;
         }
      }
      
      public function §3!E§() : Boolean
      {
         return this.§;!K§;
      }
   }
}
