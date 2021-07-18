package §-p§
{
   import §"a§.§!"J§;
   import §'!6§.DisplayObject;
   import §4!<§.§'!S§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§'! §;
   import starling.events.§;!G§;
   import starling.events.TouchEvent;
   
   public class §+"N§ extends EventDispatcher implements §7"4§
   {
       
      
      protected var mLevelMain:§'!S§;
      
      private var §3!&§:Boolean = false;
      
      public function §+"N§(param1:§'!S§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
         }
         do
         {
            this.mLevelMain = param1;
         }
         while(!_loc2_);
         
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.mLevelMain.update(param1,true);
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
            loop0:
            while(true)
            {
               §§push(§!"J§.§1&§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§!"J§.§1&§);
                        addr70:
                        while(true)
                        {
                           §§pop().stage.addEventListener(TouchEvent.§<!M§,this.§4@§);
                           addr76:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                              }
                           }
                        }
                        addr54:
                        if(_loc1_ || this)
                        {
                           return;
                        }
                     }
                  }
                  while(true)
                  {
                     this.mLevelMain.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(!_loc2_)
                     {
                        §§goto(addr54);
                     }
                     §§goto(addr76);
                     §§goto(addr78);
                  }
                  continue;
               }
               §§goto(addr70);
            }
         }
         §§goto(addr78);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(§!"J§.§1&§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr80:
                     §!"J§.§1&§.stage.removeEventListener(TouchEvent.§<!M§,this.§4@§);
                     addr86:
                     while(true)
                     {
                     }
                     addr86:
                  }
                  §§goto(addr86);
               }
               while(true)
               {
                  this.mLevelMain.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(!(_loc1_ && this))
                  {
                     break;
                  }
                  §§goto(addr86);
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      private function §4@§(param1:TouchEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§;!G§> = null;
         var _loc4_:§;!G§ = null;
         var _loc5_:§;!G§ = null;
         if(!_loc7_)
         {
            §§push(this.§3!&§);
            if(_loc6_ || _loc3_)
            {
               §§push(!§§pop());
               if(_loc6_)
               {
                  addr39:
                  if(!§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§pop();
                        if(_loc6_ || param1)
                        {
                           addr51:
                           §§push(this.mLevelMain.mReadyToRun);
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
                        if(!(_loc7_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              addr76:
                              _loc3_ = param1.§&F§(_loc2_,§'! §.§8!Y§);
                              _loc3_ = _loc3_.concat(param1.§&F§(_loc2_,§'! §.§5"G§));
                              if(!(_loc7_ && _loc2_))
                              {
                                 if(_loc3_.length > 0)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr120:
                                       this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
                                    }
                                 }
                                 §§push(Boolean(_loc4_ = param1.§=+§(_loc2_,§'! §.§2!3§)));
                                 if(!(_loc7_ && this))
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          addr155:
                                          §§pop();
                                          if(_loc6_)
                                          {
                                             addr162:
                                             if(_loc4_.§]!<§ > 0)
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   addr170:
                                                   this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
                                                }
                                             }
                                             §§push(Boolean(_loc5_ = param1.§=+§(_loc2_,§'! §.§?""§)));
                                             if(_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      addr206:
                                                      §§pop();
                                                      §§goto(addr232);
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
                                                   }
                                                   §§goto(addr232);
                                                }
                                                addr232:
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   §§push(_loc5_.§]!<§ > 0);
                                                }
                                                return;
                                             }
                                             §§goto(addr206);
                                          }
                                          §§goto(addr170);
                                       }
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr206);
                        }
                        §§goto(addr76);
                     }
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr39);
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
      
      public function §>!U§() : Number
      {
         return this.mLevelMain.camera.§>!U§();
      }
      
      public function §?"P§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mLevelMain.camera.§?"P§(param1);
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
      
      public function §>!C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§3!&§ = param1;
         }
      }
      
      public function §9U§() : Boolean
      {
         return this.§3!&§;
      }
   }
}
