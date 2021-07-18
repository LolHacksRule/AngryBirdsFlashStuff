package §3!J§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§'!k§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §!a§:int;
      
      private var §2!y§:int;
      
      private var §[#§:uint;
      
      private var §1;§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
         }
         loop0:
         do
         {
            this.§!a§ = param1;
            while(true)
            {
               this.§2!y§ = param2;
               while(!_loc4_)
               {
                  this.§[#§ = param3;
                  do
                  {
                     this.§1;§ = new Vector.<DisplayObject>();
                  }
                  while(_loc4_ && param1);
                  
                  if(_loc5_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc4_ && param3);
         
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.dispose();
            do
            {
               this.§1;§ = null;
            }
            while(!_loc2_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(!(_loc4_ && _loc3_))
         {
            if(param2 == §'!k§.ENTER_FRAME)
            {
               if(_loc5_)
               {
                  §§push(int(this.§1;§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr88);
                  }
               }
               addr88:
               §§goto(addr27);
            }
            addr27:
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc4_ && this))
               {
                  if(§§pop() >= 0)
                  {
                     break;
                  }
                  if(!_loc4_)
                  {
                     this.§1;§.push(param1);
                  }
                  if(!(_loc4_ && _loc3_))
                  {
                     addr65:
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr65);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_ || param2)
         {
            if(param2 == §'!k§.ENTER_FRAME)
            {
               if(!_loc5_)
               {
                  addr87:
                  §§push(int(this.§1;§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                  }
                  addr92:
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc4_ || param2)
                  {
                     if(§§pop() < 0)
                     {
                        break;
                     }
                     if(_loc4_ || param1)
                     {
                        this.§1;§.splice(_loc3_,1);
                     }
                     if(_loc4_ || this)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr92);
               }
            }
            return;
         }
         §§goto(addr87);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§'!k§ = null;
         var _loc3_:DisplayObject = null;
         if(!(_loc6_ && _loc3_))
         {
            if(this.§1;§.length > 0)
            {
               addr45:
               _loc2_ = new §'!k§(Event.ENTER_FRAME,param1);
               for each(_loc3_ in this.§1;§)
               {
                  if(!_loc6_)
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
         if(!_loc4_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && param2))
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(§§pop())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              if(!(_loc4_ && param2))
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr45);
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(!§6!U§);
                                    if(_loc4_)
                                    {
                                       while(!_loc5_)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§pop();
                                             addr89:
                                             while(true)
                                             {
                                                addr60:
                                                while(true)
                                                {
                                                   §§push(!visible);
                                                }
                                                continue loop8;
                                             }
                                          }
                                       }
                                       continue;
                                       addr73:
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop2;
                                    }
                                    while(!_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop0;
                                 }
                              }
                              §§goto(addr89);
                           }
                           else if(true)
                           {
                              break;
                           }
                           §§goto(addr60);
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
                        addr27:
                     }
                  }
               }
               §§goto(addr88);
            }
         }
         addr45:
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
         return this.§[#§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§[#§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§!a§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§!a§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§2!y§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2!y§ = param1;
         }
      }
   }
}
