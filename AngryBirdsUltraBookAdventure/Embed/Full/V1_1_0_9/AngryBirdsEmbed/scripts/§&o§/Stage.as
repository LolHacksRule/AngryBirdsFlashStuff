package §&o§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§8h§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §[s§:int;
      
      private var §8!&§:int;
      
      private var §2!;§:uint;
      
      private var §1d§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            if(!_loc4_)
            {
               this.§[s§ = param1;
               if(_loc5_)
               {
                  addr38:
                  this.§8!&§ = param2;
                  if(!(_loc4_ && param3))
                  {
                     §§goto(addr48);
                  }
                  §§goto(addr53);
               }
               addr48:
               this.§2!;§ = param3;
               if(_loc5_)
               {
                  addr53:
                  this.§1d§ = new Vector.<DisplayObject>();
               }
               return;
            }
         }
         §§goto(addr38);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.dispose();
            if(_loc1_ || _loc2_)
            {
               addr42:
               this.§1d§ = null;
            }
            return;
         }
         §§goto(addr42);
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(!(_loc4_ && param2))
         {
            if(param2 == §8h§.ENTER_FRAME)
            {
               if(_loc5_)
               {
                  addr42:
                  §§push(int(this.§1d§.indexOf(param1)));
                  if(_loc5_ || _loc3_)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr86);
                  }
                  if(§§pop() < 0)
                  {
                     if(_loc5_ || param2)
                     {
                        this.§1d§.push(param1);
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr72);
            }
            addr86:
            if(_loc5_ || this)
            {
               addr72:
               §§push(_loc3_);
            }
            return;
         }
         §§goto(addr42);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            if(param2 == §8h§.ENTER_FRAME)
            {
               if(_loc4_ || _loc3_)
               {
                  §§push(int(this.§1d§.indexOf(param1)));
                  if(_loc4_ || param1)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc5_ && this))
                     {
                        addr72:
                        if(_loc3_ >= 0)
                        {
                           if(_loc5_)
                           {
                           }
                        }
                        §§goto(addr81);
                     }
                     this.§1d§.splice(_loc3_,1);
                     §§goto(addr81);
                  }
               }
               §§goto(addr72);
            }
            addr81:
            return;
         }
         §§goto(addr72);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§8h§ = null;
         var _loc3_:DisplayObject = null;
         if(_loc7_)
         {
            if(this.§1d§.length > 0)
            {
               _loc2_ = new §8h§(Event.ENTER_FRAME,param1);
               addr40:
               for each(_loc3_ in this.§1d§)
               {
                  if(!(_loc6_ && _loc3_))
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
         if(_loc5_ || param2)
         {
            §§push(param2);
            if(_loc5_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr56:
                           §§pop();
                           if(_loc5_ || param1)
                           {
                              §§push(!visible);
                              if(_loc5_)
                              {
                                 addr69:
                                 if(!§§pop())
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§pop();
                                       if(_loc5_ || param2)
                                       {
                                          addr97:
                                          if(!§3!D§)
                                          {
                                             if(_loc5_)
                                             {
                                                return null;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr97);
                           }
                           var _loc3_:DisplayObject = super.hitTest(param1,param2);
                           if(!_loc4_)
                           {
                              if(_loc3_ == null)
                              {
                                 addr113:
                                 _loc3_ = this;
                              }
                              return _loc3_;
                           }
                           §§goto(addr113);
                        }
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr56);
         }
         §§goto(addr97);
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
         return this.§2!;§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§2!;§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§[s§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[s§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§8!&§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§8!&§ = param1;
         }
      }
   }
}
