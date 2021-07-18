package § N§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§3!"§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §6! §:int;
      
      private var §@g§:int;
      
      private var §1!#§:uint;
      
      private var §^!G§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§6! § = param1;
               while(true)
               {
                  this.§@g§ = param2;
                  while(!_loc4_)
                  {
                     if(!(_loc4_ && param2))
                     {
                        return;
                        addr65:
                     }
                  }
                  continue loop0;
                  addr70:
                  while(!(_loc4_ && param3))
                  {
                     this.§^!G§ = new Vector.<DisplayObject>();
                     if(!_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr48);
                  }
               }
            }
         }
         while(true)
         {
            this.§1!#§ = param3;
            §§goto(addr70);
         }
         §§goto(addr65);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.dispose();
            do
            {
               this.§^!G§ = null;
            }
            while(!_loc2_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            if(param2 == §3!"§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§^!G§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr82:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           if(§§pop() >= 0)
                           {
                              break;
                           }
                           if(!(_loc5_ && param1))
                           {
                              this.§^!G§.push(param1);
                           }
                           if(_loc4_ || param1)
                           {
                              if(!_loc5_)
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
         §§goto(addr82);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(!(_loc4_ && param2))
         {
            if(param2 == §3!"§.ENTER_FRAME)
            {
               if(!(_loc4_ && param2))
               {
                  addr88:
                  §§push(int(this.§^!G§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                  }
                  addr93:
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() >= 0)
                     {
                        if(!(_loc4_ && param2))
                        {
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                           this.§^!G§.splice(_loc3_,1);
                        }
                        break;
                     }
                     break;
                  }
                  §§goto(addr93);
               }
            }
            return;
         }
         §§goto(addr88);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§3!"§ = null;
         var _loc3_:DisplayObject = null;
         if(!_loc7_)
         {
            if(this.§^!G§.length > 0)
            {
               _loc2_ = new §3!"§(Event.ENTER_FRAME,param1);
               addr39:
               for each(_loc3_ in this.§^!G§)
               {
                  if(!_loc7_)
                  {
                     _loc3_.dispatchEvent(_loc2_);
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
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
                        while(true)
                        {
                           §§pop();
                           addr103:
                           while(true)
                           {
                              addr63:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop());
                                 if(_loc5_ && param2)
                                 {
                                    continue loop2;
                                 }
                                 if(!§§pop())
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop1;
                           }
                        }
                        addr102:
                     }
                     loop8:
                     while(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§goto(addr40);
                        }
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              §§push(!§!!"§);
                              if(!(_loc4_ || param2))
                              {
                                 break;
                              }
                              if(_loc4_)
                              {
                                 continue loop8;
                              }
                              §§goto(addr102);
                           }
                           continue loop0;
                           addr97:
                        }
                        if(_loc4_ || _loc3_)
                        {
                           if(true)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr103);
                        }
                        §§goto(addr63);
                        §§goto(addr103);
                     }
                     var _loc3_:DisplayObject = super.hitTest(param1,param2);
                     if(_loc4_ || param2)
                     {
                        if(_loc3_ == null)
                        {
                           addr120:
                           _loc3_ = this;
                        }
                        return _loc3_;
                     }
                     §§goto(addr120);
                  }
               }
            }
         }
         addr40:
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
         return this.§1!#§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§1!#§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§6! §;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§6! § = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§@g§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§@g§ = param1;
         }
      }
   }
}
