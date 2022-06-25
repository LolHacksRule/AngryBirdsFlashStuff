package §`g§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§&Z§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §3!8§:int;
      
      private var §0!Q§:int;
      
      private var §4t§:uint;
      
      private var §>!r§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§3!8§ = param1;
               loop2:
               while(!(_loc4_ && this))
               {
                  this.§4t§ = param3;
                  do
                  {
                     this.§>!r§ = new Vector.<DisplayObject>();
                  }
                  while(!(_loc5_ || this));
                  
                  if(!(_loc4_ && param2))
                  {
                     addr65:
                     if(!_loc5_)
                     {
                        while(true)
                        {
                           this.§0!Q§ = param2;
                           continue loop2;
                           §§goto(addr65);
                        }
                        addr89:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr89);
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
               this.§>!r§ = null;
            }
            while(!_loc2_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            if(param2 == §&Z§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§>!r§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           continue loop1;
                        }
                        if(§§pop() >= 0)
                        {
                           break;
                        }
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              this.§>!r§.push(param1);
                           }
                           addr44:
                        }
                        while(true)
                        {
                           if(_loc5_ || this)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            if(param2 == §&Z§.ENTER_FRAME)
            {
               if(_loc4_)
               {
                  §§push(int(this.§>!r§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr78);
                  }
               }
               addr78:
               §§goto(addr21);
            }
            addr21:
            while(true)
            {
               §§push(_loc3_);
               if(_loc4_ || param2)
               {
                  if(§§pop() >= 0)
                  {
                     if(_loc4_)
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                        this.§>!r§.splice(_loc3_,1);
                     }
                     addr65:
                     break;
                  }
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§&Z§ = null;
         var _loc3_:DisplayObject = null;
         if(!_loc7_)
         {
            if(this.§>!r§.length > 0)
            {
               _loc2_ = new §&Z§(Event.ENTER_FRAME,param1);
               addr39:
               for each(_loc3_ in this.§>!r§)
               {
                  if(_loc6_)
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
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
                              addr62:
                              addr100:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(!(_loc5_ || this))
                                 {
                                    break;
                                 }
                                 if(_loc5_ || param1)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop0;
                                 }
                                 continue loop7;
                              }
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 addr101:
                                 while(true)
                                 {
                                    §§push(!§&!U§);
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop7;
                           }
                        }
                        addr108:
                     }
                     addr30:
                     while(§§pop())
                     {
                        if(_loc5_ || this)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              if(_loc5_)
                              {
                                 return null;
                                 addr48:
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr101);
                        }
                        else if(true)
                        {
                           break;
                        }
                        §§goto(addr62);
                     }
                     var _loc3_:DisplayObject = super.hitTest(param1,param2);
                     if(!_loc4_)
                     {
                        if(_loc3_ == null)
                        {
                           addr121:
                           _loc3_ = this;
                        }
                        return _loc3_;
                     }
                     §§goto(addr121);
                  }
               }
               §§goto(addr108);
            }
         }
         §§goto(addr48);
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
         return this.§4t§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4t§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§3!8§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3!8§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§0!Q§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§0!Q§ = param1;
         }
      }
   }
}
