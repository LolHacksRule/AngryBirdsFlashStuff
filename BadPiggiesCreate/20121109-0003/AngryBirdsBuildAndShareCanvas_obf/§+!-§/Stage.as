package §+!-§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§0k§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §",§:int;
      
      private var §%"0§:int;
      
      private var §?3§:uint;
      
      private var §'!v§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super();
            loop0:
            do
            {
               this.§",§ = param1;
               while(true)
               {
                  this.§%"0§ = param2;
                  while(!(_loc4_ && param3))
                  {
                     this.§?3§ = param3;
                     do
                     {
                        this.§'!v§ = new Vector.<DisplayObject>();
                     }
                     while(_loc4_ && this);
                     
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc5_ || param3));
            
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.dispose();
            do
            {
               this.§'!v§ = null;
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_ || this)
         {
            if(param2 == §0k§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§'!v§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr93:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && param2))
                        {
                           if(§§pop() >= 0)
                           {
                              break;
                           }
                           if(!(_loc4_ && this))
                           {
                              this.§'!v§.push(param1);
                           }
                           if(_loc5_ || param2)
                           {
                              if(!_loc4_)
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
         §§goto(addr93);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_ || this)
         {
            if(param2 == §0k§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§'!v§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              break;
                           }
                           addr67:
                           if(_loc4_ || param1)
                           {
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
         §§goto(addr62);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§0k§ = null;
         var _loc3_:DisplayObject = null;
         if(_loc7_)
         {
            if(this.§'!v§.length > 0)
            {
               addr40:
               _loc2_ = new §0k§(Event.ENTER_FRAME,param1);
               for each(_loc3_ in this.§'!v§)
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param2);
            if(_loc5_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_)
               {
                  §§push(§§pop());
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §§pop();
                           addr89:
                           while(true)
                           {
                              addr47:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 addr71:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§pop();
                                       continue;
                                    }
                                    continue loop5;
                                 }
                                 continue loop5;
                              }
                              continue loop0;
                           }
                        }
                        addr88:
                     }
                     addr25:
                     while(§§pop())
                     {
                        if(_loc5_ || param1)
                        {
                           if(_loc5_ || param1)
                           {
                              return null;
                           }
                           §§goto(addr74);
                        }
                        else if(!_loc4_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr47);
                        }
                        §§goto(addr89);
                     }
                     var _loc3_:DisplayObject = super.hitTest(param1,param2);
                     if(_loc5_)
                     {
                        if(_loc3_ == null)
                        {
                           addr111:
                           _loc3_ = this;
                        }
                        return _loc3_;
                     }
                     §§goto(addr111);
                  }
               }
            }
            §§goto(addr88);
         }
         §§goto(addr74);
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
         return this.§?3§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?3§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§",§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§",§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§%"0§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%"0§ = param1;
         }
      }
   }
}
