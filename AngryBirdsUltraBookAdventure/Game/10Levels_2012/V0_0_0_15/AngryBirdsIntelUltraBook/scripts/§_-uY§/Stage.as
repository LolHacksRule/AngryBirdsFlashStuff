package §_-uY§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.Event;
   import starling.events.§_-w5§;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §_-ux§:int;
      
      private var §_-09f§:int;
      
      private var §_-Un§:uint;
      
      private var §_-3f§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§_-ux§ = param1;
               addr47:
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               return;
               addr54:
            }
         }
         while(true)
         {
            this.§_-09f§ = param2;
            while(_loc4_ || param1)
            {
               this.§_-Un§ = param3;
               while(!(_loc5_ && this))
               {
                  this.§_-3f§ = new Vector.<DisplayObject>();
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr47);
               }
            }
         }
         §§goto(addr54);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.dispose();
            do
            {
               this.§_-3f§ = null;
            }
            while(!_loc1_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(!(_loc4_ && param2))
         {
            if(param2 == §_-w5§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§_-3f§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || param2)
                        {
                           if(§§pop() < 0)
                           {
                              if(!_loc4_)
                              {
                                 if(!(_loc5_ || this))
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 this.§_-3f§.push(param1);
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!(_loc5_ && _loc3_))
         {
            if(param2 == §_-w5§.ENTER_FRAME)
            {
               if(_loc4_ || param2)
               {
                  addr77:
                  §§push(int(this.§_-3f§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                  }
                  addr82:
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() < 0)
                     {
                        break;
                     }
                     if(!_loc5_)
                     {
                        this.§_-3f§.splice(_loc3_,1);
                     }
                     if(_loc4_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr82);
               }
            }
            return;
         }
         §§goto(addr77);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§_-w5§ = null;
         var _loc3_:DisplayObject = null;
         if(!_loc6_)
         {
            if(this.§_-3f§.length > 0)
            {
               _loc2_ = new §_-w5§(Event.ENTER_FRAME,param1);
               addr40:
               for each(_loc3_ in this.§_-3f§)
               {
                  if(_loc7_)
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc5_ && param2))
                           {
                              return null;
                           }
                           if(_loc4_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(!_loc5_)
                                 {
                                    if(_loc4_ || param2)
                                    {
                                       continue loop1;
                                    }
                                    addr107:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop3;
                                    }
                                 }
                                 else
                                 {
                                    addr77:
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                    addr77:
                                 }
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              if(!(_loc5_ && this))
                              {
                                 §§push(!§_-xd§);
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr108);
                           }
                           continue loop0;
                        }
                        var _loc3_:DisplayObject = super.hitTest(param1,param2);
                        addr31:
                        if(!(_loc5_ && this))
                        {
                           if(_loc3_ == null)
                           {
                              addr125:
                              _loc3_ = this;
                           }
                           return _loc3_;
                        }
                        §§goto(addr125);
                        addr31:
                     }
                  }
               }
               §§goto(addr107);
            }
         }
         §§goto(addr108);
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
         return this.§_-Un§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-Un§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§_-ux§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-ux§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§_-09f§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-09f§ = param1;
         }
      }
   }
}
