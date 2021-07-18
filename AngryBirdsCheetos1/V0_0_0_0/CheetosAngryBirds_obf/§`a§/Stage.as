package §`a§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§7a§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §?l§:int;
      
      private var §+G§:int;
      
      private var §^0§:uint;
      
      private var §^!4§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               this.§?l§ = param1;
               do
               {
                  this.§+G§ = param2;
                  continue loop0;
               }
               while(!(_loc4_ || this));
               
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.dispose();
         }
         do
         {
            this.§^!4§ = null;
         }
         while(_loc2_);
         
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            if(param2 == §7a§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§^!4§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && param2))
                        {
                           if(§§pop() < 0)
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(!(_loc5_ || param1))
                                 {
                                    continue;
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 this.§^!4§.push(param1);
                              }
                              break;
                           }
                           break;
                        }
                        continue loop1;
                     }
                  }
               }
               addr82:
            }
            return;
         }
         §§goto(addr82);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            if(param2 == §7a§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§^!4§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr84:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && param1))
                        {
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              this.§^!4§.splice(_loc3_,1);
                           }
                           if(_loc5_ || _loc3_)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr84);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§7a§ = null;
         var _loc3_:DisplayObject = null;
         if(!_loc6_)
         {
            if(this.§^!4§.length > 0)
            {
               addr40:
               _loc2_ = new §7a§(Event.ENTER_FRAME,param1);
               for each(_loc3_ in this.§^!4§)
               {
                  if(!_loc6_)
                  {
                     _loc3_.dispatchEvent(_loc2_);
                  }
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param2);
            if(_loc5_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           addr109:
                           while(true)
                           {
                              addr81:
                              while(true)
                              {
                                 §§push(!visible);
                                 addr84:
                                 while(_loc4_ && param1)
                                 {
                                    continue loop7;
                                 }
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 if(!§§pop())
                                 {
                                    addr95:
                                    §§pop();
                                    while(true)
                                    {
                                       §§push(!§=!;§);
                                       if(_loc4_ && param2)
                                       {
                                          continue;
                                       }
                                       if(!(_loc4_ && param1))
                                       {
                                          break;
                                       }
                                       §§goto(addr84);
                                    }
                                    continue loop0;
                                    addr96:
                                 }
                              }
                              continue loop7;
                           }
                        }
                        addr108:
                     }
                     addr44:
                     loop2:
                     while(§§pop())
                     {
                        if(_loc5_ || param1)
                        {
                           if(_loc5_ || param1)
                           {
                              if(_loc5_ || param1)
                              {
                                 return null;
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr96);
                        }
                        else
                        {
                           while(true)
                           {
                              if(true)
                              {
                                 break loop2;
                              }
                           }
                           addr79:
                        }
                        §§goto(addr81);
                     }
                     var _loc3_:DisplayObject = super.hitTest(param1,param2);
                     if(!_loc4_)
                     {
                        if(_loc3_ == null)
                        {
                           addr131:
                           _loc3_ = this;
                        }
                        return _loc3_;
                     }
                     §§goto(addr131);
                  }
               }
            }
            §§goto(addr108);
         }
         §§goto(addr79);
      }
      
      override public function set width(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot set width of stage");
      }
      
      override public function set height(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot set height of stage");
      }
      
      override public function set x(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot set x-coordinate of stage");
      }
      
      override public function set y(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot set y-coordinate of stage");
      }
      
      override public function set scaleX(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot scale stage");
      }
      
      override public function set scaleY(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot scale stage");
      }
      
      override public function set rotation(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot rotate stage");
      }
      
      override public function get color() : uint
      {
         return this.§^0§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^0§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§?l§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?l§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§+G§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+G§ = param1;
         }
      }
   }
}
