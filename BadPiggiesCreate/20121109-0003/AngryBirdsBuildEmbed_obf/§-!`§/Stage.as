package §-!`§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§&e§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §4!L§:int;
      
      private var §"!C§:int;
      
      private var §+h§:uint;
      
      private var §2!=§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            if(!_loc4_)
            {
               this.§4!L§ = param1;
               §§goto(addr33);
            }
            §§goto(addr68);
         }
         addr33:
         if(!(_loc4_ && param2))
         {
            this.§"!C§ = param2;
            if(_loc5_)
            {
               this.§+h§ = param3;
               if(!(_loc4_ && this))
               {
                  addr68:
                  this.§2!=§ = new Vector.<DisplayObject>();
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.dispose();
            if(!_loc1_)
            {
               this.§2!=§ = null;
            }
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            if(param2 == §&e§.ENTER_FRAME)
            {
               if(!_loc4_)
               {
                  §§push(int(this.§2!=§.indexOf(param1)));
                  if(!_loc4_)
                  {
                     _loc3_ = §§pop();
                     if(_loc5_ || param1)
                     {
                        addr63:
                        if(_loc3_ < 0)
                        {
                           if(_loc5_ || _loc3_)
                           {
                           }
                        }
                        §§goto(addr76);
                     }
                     this.§2!=§.push(param1);
                     §§goto(addr76);
                  }
               }
               §§goto(addr63);
            }
            addr76:
            return;
         }
         §§goto(addr63);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            if(param2 == §&e§.ENTER_FRAME)
            {
               if(_loc5_)
               {
                  addr37:
                  §§push(int(this.§2!=§.indexOf(param1)));
                  if(_loc5_ || param2)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr77);
                  }
                  if(§§pop() >= 0)
                  {
                     if(_loc4_ && this)
                     {
                     }
                  }
               }
               §§goto(addr77);
            }
            addr77:
            if(_loc5_)
            {
               §§push(_loc3_);
            }
            this.§2!=§.splice(_loc3_,1);
            return;
         }
         §§goto(addr37);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§&e§ = null;
         var _loc3_:DisplayObject = null;
         if(!_loc6_)
         {
            if(this.§2!=§.length > 0)
            {
               _loc2_ = new §&e§(Event.ENTER_FRAME,param1);
               addr40:
               for each(_loc3_ in this.§2!=§)
               {
                  if(!(_loc6_ && param1))
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
         if(_loc5_ || _loc3_)
         {
            §§push(param2);
            if(_loc5_ || this)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && this))
               {
                  §§push(§§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(_loc5_ || this)
                           {
                              §§push(!visible);
                              if(_loc5_)
                              {
                                 addr73:
                                 if(!§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       addr77:
                                       §§pop();
                                       if(_loc5_)
                                       {
                                          addr92:
                                          if(!§[,§)
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr95);
                                             }
                                          }
                                       }
                                       var _loc3_:DisplayObject = super.hitTest(param1,param2);
                                       if(_loc5_ || this)
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
                                 §§goto(addr92);
                              }
                              §§goto(addr77);
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr73);
               }
               §§goto(addr77);
            }
            §§goto(addr73);
         }
         addr95:
         return null;
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
         return this.§+h§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§+h§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§4!L§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§4!L§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§"!C§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§"!C§ = param1;
         }
      }
   }
}
