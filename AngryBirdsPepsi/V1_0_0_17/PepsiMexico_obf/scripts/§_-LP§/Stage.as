package §_-LP§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.Event;
   import starling.events.§_-fx§;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §_-sa§:int;
      
      private var §_-cr§:int;
      
      private var §_-T-§:uint;
      
      private var §_-bY§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super();
            if(_loc4_ || param3)
            {
               this.§_-sa§ = param1;
               if(!_loc5_)
               {
                  this.§_-cr§ = param2;
                  if(_loc4_)
                  {
                     this.§_-T-§ = param3;
                     if(_loc5_ && param1)
                     {
                     }
                     §§goto(addr69);
                  }
                  this.§_-bY§ = new Vector.<DisplayObject>();
               }
            }
         }
         addr69:
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.dispose();
            if(_loc2_ || _loc1_)
            {
               this.§_-bY§ = null;
            }
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_ || param1)
         {
            if(param2 == §_-fx§.ENTER_FRAME)
            {
               if(_loc4_)
               {
                  §§push(int(this.§_-bY§.indexOf(param1)));
                  if(!(_loc5_ && this))
                  {
                     _loc3_ = §§pop();
                     §§goto(addr71);
                  }
                  if(§§pop() < 0)
                  {
                     if(!_loc5_)
                     {
                        addr67:
                        this.§_-bY§.push(param1);
                     }
                  }
                  §§goto(addr71);
               }
               §§goto(addr62);
            }
            addr71:
            if(_loc4_ || param1)
            {
               addr62:
               §§push(_loc3_);
            }
            return;
         }
         §§goto(addr67);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            if(param2 == §_-fx§.ENTER_FRAME)
            {
               if(!_loc5_)
               {
                  addr23:
                  §§push(int(this.§_-bY§.indexOf(param1)));
                  if(_loc4_ || this)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr67);
                  }
                  if(§§pop() >= 0)
                  {
                     if(_loc4_)
                     {
                        this.§_-bY§.splice(_loc3_,1);
                     }
                  }
                  §§goto(addr67);
               }
               §§goto(addr50);
            }
            addr67:
            if(!(_loc5_ && _loc3_))
            {
               addr50:
               §§push(_loc3_);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function §_-IE§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§_-fx§ = null;
         var _loc3_:DisplayObject = null;
         if(!(_loc7_ && _loc2_))
         {
            if(this.§_-bY§.length > 0)
            {
               _loc2_ = new §_-fx§(Event.ENTER_FRAME,param1);
               addr31:
               for each(_loc3_ in this.§_-bY§)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     _loc3_.dispatchEvent(_loc2_);
                  }
               }
            }
            return;
         }
         §§goto(addr31);
      }
      
      override public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §§push(param2);
            if(_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(!(_loc5_ && this))
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§pop();
                           if(_loc4_ || this)
                           {
                              §§push(!visible);
                              if(!(_loc5_ && this))
                              {
                                 addr67:
                                 if(!§§pop())
                                 {
                                    if(_loc4_ || param2)
                                    {
                                    }
                                    addr85:
                                    if(§§pop())
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§goto(addr93);
                                       }
                                    }
                                    var _loc3_:DisplayObject = super.hitTestPoint(param1,param2);
                                    if(!(_loc5_ && param1))
                                    {
                                       if(_loc3_ == null)
                                       {
                                          addr118:
                                          _loc3_ = this;
                                       }
                                       return _loc3_;
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr85);
                              }
                              §§pop();
                              if(_loc4_ || this)
                              {
                                 addr83:
                                 §§goto(addr85);
                                 §§push(!§_-pE§);
                              }
                              §§goto(addr85);
                           }
                           §§goto(addr83);
                        }
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr67);
               }
            }
            §§goto(addr67);
         }
         addr93:
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
      
      public function get color() : uint
      {
         return this.§_-T-§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-T-§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§_-sa§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-sa§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§_-cr§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-cr§ = param1;
         }
      }
   }
}
