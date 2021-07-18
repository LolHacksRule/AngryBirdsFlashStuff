package §2Y§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.Event;
   import starling.events.§]!D§;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §@!-§:int;
      
      private var §3S§:int;
      
      private var §`!G§:uint;
      
      private var §4;§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            do
            {
               this.§@!-§ = param1;
               loop1:
               do
               {
                  this.§3S§ = param2;
                  while(true)
                  {
                     this.§`!G§ = param3;
                     while(_loc5_ || param2)
                     {
                        this.§4;§ = new Vector.<DisplayObject>();
                        if(!(_loc4_ && param3))
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(!(_loc5_ || param3));
               
            }
            while(_loc4_);
            
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.dispose();
            do
            {
               this.§4;§ = null;
            }
            while(!_loc1_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            if(param2 == §]!D§.ENTER_FRAME)
            {
               if(!_loc4_)
               {
                  addr77:
                  §§push(int(this.§4;§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                  }
                  addr82:
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop() < 0)
                     {
                        if(_loc5_ || this)
                        {
                           if(!_loc5_)
                           {
                              continue;
                           }
                           this.§4;§.push(param1);
                        }
                        break;
                     }
                     break;
                  }
                  §§goto(addr82);
               }
            }
            return;
         }
         §§goto(addr77);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!(_loc5_ && param1))
         {
            if(param2 == §]!D§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§4;§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           if(!(_loc4_ || param1))
                           {
                              break;
                           }
                           addr72:
                           if(_loc4_ || this)
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
         §§goto(addr72);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§]!D§ = null;
         var _loc3_:DisplayObject = null;
         if(!(_loc7_ && this))
         {
            if(this.§4;§.length > 0)
            {
               addr44:
               _loc2_ = new §]!D§(Event.ENTER_FRAME,param1);
               for each(_loc3_ in this.§4;§)
               {
                  if(_loc6_)
                  {
                     _loc3_.dispatchEvent(_loc2_);
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr93:
                        loop6:
                        while(true)
                        {
                           §§pop();
                           addr94:
                           loop3:
                           while(true)
                           {
                              addr49:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(!(_loc5_ || param2))
                                 {
                                    continue loop0;
                                 }
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    break loop3;
                                 }
                                 if(!§§pop())
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop6;
                           }
                           continue loop1;
                        }
                        addr93:
                     }
                     loop2:
                     while(§§pop())
                     {
                        if(_loc5_ || this)
                        {
                           return null;
                        }
                        if(_loc5_)
                        {
                           if(_loc5_ || this)
                           {
                              while(true)
                              {
                                 if(true)
                                 {
                                    break loop2;
                                 }
                              }
                              addr47:
                           }
                           else
                           {
                              §§goto(addr94);
                           }
                           §§goto(addr49);
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(!§0!3§);
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                              if(!_loc4_)
                              {
                                 continue loop2;
                              }
                              §§goto(addr93);
                           }
                           addr81:
                        }
                        §§goto(addr94);
                     }
                     var _loc3_:DisplayObject = super.hitTest(param1,param2);
                     if(_loc5_ || this)
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
               §§goto(addr93);
            }
         }
         §§goto(addr47);
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
         return this.§`!G§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§`!G§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§@!-§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@!-§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§3S§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§3S§ = param1;
         }
      }
   }
}
