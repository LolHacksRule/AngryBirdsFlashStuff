package §9W§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§8X§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var § l§:int;
      
      private var §4N§:int;
      
      private var §,X§:uint;
      
      private var §"z§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            if(!(_loc4_ && param1))
            {
               this.§ l§ = param1;
               if(_loc4_ && param2)
               {
               }
               §§goto(addr84);
            }
            this.§4N§ = param2;
            if(!(_loc4_ && param2))
            {
               this.§,X§ = param3;
               if(_loc5_ || this)
               {
               }
               §§goto(addr84);
            }
            this.§"z§ = new Vector.<DisplayObject>();
         }
         addr84:
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.dispose();
            if(_loc1_)
            {
               addr22:
               this.§"z§ = null;
            }
            return;
         }
         §§goto(addr22);
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            if(param2 == §8X§.ENTER_FRAME)
            {
               if(_loc5_)
               {
                  §§push(int(this.§"z§.indexOf(param1)));
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc3_ = §§pop();
                     if(_loc5_)
                     {
                        addr63:
                        if(_loc3_ < 0)
                        {
                           if(_loc4_)
                           {
                           }
                        }
                        §§goto(addr71);
                     }
                     this.§"z§.push(param1);
                     §§goto(addr71);
                  }
               }
               §§goto(addr63);
            }
         }
         addr71:
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            if(param2 == §8X§.ENTER_FRAME)
            {
               if(!_loc5_)
               {
                  §§push(int(this.§"z§.indexOf(param1)));
                  if(_loc4_ || param2)
                  {
                     _loc3_ = §§pop();
                     if(_loc4_)
                     {
                        addr62:
                        if(_loc3_ >= 0)
                        {
                           if(_loc4_ || this)
                           {
                           }
                        }
                        §§goto(addr76);
                     }
                     this.§"z§.splice(_loc3_,1);
                     §§goto(addr76);
                  }
               }
               §§goto(addr62);
            }
         }
         addr76:
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§8X§ = null;
         var _loc3_:DisplayObject = null;
         if(!(_loc6_ && _loc2_))
         {
            if(this.§"z§.length > 0)
            {
               _loc2_ = new §8X§(Event.ENTER_FRAME,param1);
               addr45:
               for each(_loc3_ in this.§"z§)
               {
                  if(_loc7_ || _loc2_)
                  {
                     _loc3_.dispatchEvent(_loc2_);
                  }
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            §§push(param2);
            if(_loc5_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_ || param2)
               {
                  §§push(§§pop());
                  if(_loc5_ || this)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              §§push(!visible);
                              if(_loc5_)
                              {
                                 addr68:
                                 if(!§§pop())
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       addr77:
                                       §§pop();
                                       if(!(_loc4_ && this))
                                       {
                                          addr97:
                                          if(!§=O§)
                                          {
                                             if(_loc5_ || param2)
                                             {
                                                §§goto(addr105);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr77);
                           }
                           var _loc3_:DisplayObject = super.hitTest(param1,param2);
                           if(!_loc4_)
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
                        §§goto(addr68);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr68);
               }
               §§goto(addr77);
            }
            §§goto(addr68);
         }
         addr105:
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
         return this.§,X§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§,X§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§ l§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§ l§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§4N§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4N§ = param1;
         }
      }
   }
}
