package §'!6§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§5!E§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §,>§:int;
      
      private var §`;§:int;
      
      private var §+!m§:uint;
      
      private var §&z§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super();
         }
         while(true)
         {
            this.§,>§ = param1;
            loop1:
            for(; !(_loc5_ && param1); if(_loc5_ && param1)
            {
               continue;
            },§§goto(addr71))
            {
               this.§`;§ = param2;
               loop2:
               while(true)
               {
                  this.§+!m§ = param3;
                  while(true)
                  {
                     if(_loc4_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                     addr71:
                     this.§&z§ = new Vector.<DisplayObject>();
                     if(_loc4_)
                     {
                        return;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.dispose();
         }
         do
         {
            this.§&z§ = null;
         }
         while(_loc1_);
         
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_ || this)
         {
            if(param2 == §5!E§.ENTER_FRAME)
            {
               if(_loc4_ || param1)
               {
                  §§push(int(this.§&z§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr87);
                  }
               }
               addr87:
               §§goto(addr26);
            }
            addr26:
            loop1:
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc5_ && param2))
               {
                  if(§§pop() < 0)
                  {
                     if(_loc4_)
                     {
                        while(true)
                        {
                           this.§&z§.push(param1);
                        }
                        addr63:
                     }
                     while(true)
                     {
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr63);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!(_loc5_ && param2))
         {
            if(param2 == §5!E§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§&z§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc5_ && param1)
                        {
                           continue loop1;
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                        if(!_loc4_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           this.§&z§.splice(_loc3_,1);
                           continue loop0;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§5!E§ = null;
         var _loc3_:DisplayObject = null;
         if(_loc7_)
         {
            if(this.§&z§.length > 0)
            {
               _loc2_ = new §5!E§(Event.ENTER_FRAME,param1);
               addr40:
               for each(_loc3_ in this.§&z§)
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(!_loc5_)
                                 {
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop())
                                    {
                                    }
                                    loop8:
                                    while(§§pop())
                                    {
                                       if(_loc5_ && param2)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          return null;
                                          addr42:
                                       }
                                       addr69:
                                       while(true)
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(!§^]§);
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             if(!_loc5_)
                                             {
                                                continue loop8;
                                             }
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr70);
                                       }
                                       addr70:
                                    }
                                    var _loc3_:DisplayObject = super.hitTest(param1,param2);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(_loc3_ == null)
                                       {
                                          addr110:
                                          _loc3_ = this;
                                       }
                                       return _loc3_;
                                    }
                                    §§goto(addr110);
                                 }
                                 §§goto(addr69);
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr26);
                  }
               }
            }
         }
         §§goto(addr42);
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
         return this.§+!m§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§+!m§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§,>§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§,>§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§`;§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`;§ = param1;
         }
      }
   }
}
