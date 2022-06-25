package §7!B§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§#!W§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §2!d§:int;
      
      private var §@@§:int;
      
      private var §>!§:uint;
      
      private var §8e§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.§2!d§ = param1;
               do
               {
                  this.§@@§ = param2;
                  do
                  {
                     this.§>!§ = param3;
                     continue loop0;
                  }
                  while(!(_loc5_ || param1));
                  
               }
               while(!(_loc5_ || this));
               
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.dispose();
         }
         do
         {
            this.§8e§ = null;
         }
         while(_loc2_);
         
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_ || this)
         {
            if(param2 == §#!W§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§8e§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           if(§§pop() < 0)
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       this.§8e§.push(param1);
                                       addr72:
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue;
                              }
                              §§goto(addr72);
                           }
                           break;
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
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            if(param2 == §#!W§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§8e§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc5_ || param1))
                        {
                           continue loop1;
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        if(_loc4_ && param1)
                        {
                           continue loop0;
                        }
                        if(!(_loc5_ || param1))
                        {
                           continue;
                        }
                        while(true)
                        {
                           this.§8e§.splice(_loc3_,1);
                           continue loop0;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§#!W§ = null;
         var _loc3_:DisplayObject = null;
         if(!(_loc7_ && _loc3_))
         {
            if(this.§8e§.length > 0)
            {
               _loc2_ = new §#!W§(Event.ENTER_FRAME,param1);
               addr44:
               for each(_loc3_ in this.§8e§)
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(param2);
            if(!_loc5_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(!visible);
                              if(_loc4_ || param2)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop());
                                 if(_loc5_ && param2)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop())
                                 {
                                 }
                                 loop6:
                                 while(§§pop())
                                 {
                                    if(!(_loc4_ || this))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    if(_loc4_)
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          return null;
                                       }
                                       continue loop3;
                                    }
                                    addr95:
                                    loop7:
                                    while(true)
                                    {
                                       §§push(!§]!F§);
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop6;
                                          }
                                          continue loop2;
                                       }
                                       addr94:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop7;
                                       }
                                    }
                                 }
                                 var _loc3_:DisplayObject = super.hitTest(param1,param2);
                                 if(_loc4_)
                                 {
                                    if(_loc3_ == null)
                                    {
                                       addr115:
                                       _loc3_ = this;
                                    }
                                    return _loc3_;
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr94);
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr31);
               }
            }
         }
         §§goto(addr95);
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
         return this.§>!§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>!§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§2!d§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§2!d§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§@@§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@@§ = param1;
         }
      }
   }
}
