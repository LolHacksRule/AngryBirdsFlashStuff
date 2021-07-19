package §^V§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§;0§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §?!#§:int;
      
      private var §26§:int;
      
      private var §^!7§:uint;
      
      private var §7k§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§?!#§ = param1;
            }
            addr87:
         }
         loop1:
         while(true)
         {
            this.§26§ = param2;
            while(!_loc4_)
            {
               this.§^!7§ = param3;
               do
               {
                  this.§7k§ = new Vector.<DisplayObject>();
               }
               while(!(_loc5_ || param1));
               
               if(!(_loc5_ || param2))
               {
                  continue;
               }
               if(!_loc4_)
               {
                  break loop1;
               }
               §§goto(addr87);
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.dispose();
         }
         do
         {
            this.§7k§ = null;
         }
         while(!_loc2_);
         
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            if(param2 == §;0§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§7k§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           if(§§pop() >= 0)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              break;
                           }
                           addr71:
                           if(!(_loc5_ && param2))
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
         §§goto(addr67);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            if(param2 == §;0§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§7k§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr83:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc5_ && param2))
                        {
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 this.§7k§.splice(_loc3_,1);
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr83);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§;0§ = null;
         var _loc3_:DisplayObject = null;
         if(_loc6_)
         {
            if(this.§7k§.length > 0)
            {
               _loc2_ = new §;0§(Event.ENTER_FRAME,param1);
               addr39:
               for each(_loc3_ in this.§7k§)
               {
                  if(!(_loc7_ && param1))
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
         if(!_loc5_)
         {
            §§push(param2);
            if(_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop());
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§pop();
                           loop7:
                           while(true)
                           {
                              addr68:
                              while(true)
                              {
                                 §§push(!visible);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    if(!§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§pop();
                                          addr76:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                §§push(!§<!<§);
                                                if(_loc4_ || param2)
                                                {
                                                   if(_loc4_ || param2)
                                                   {
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         break;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr102:
                     }
                     loop1:
                     while(§§pop())
                     {
                        if(!_loc5_)
                        {
                           if(_loc4_ || param2)
                           {
                              return null;
                           }
                           §§goto(addr76);
                        }
                        else
                        {
                           while(true)
                           {
                              if(true)
                              {
                                 break loop1;
                              }
                           }
                           addr66:
                        }
                        §§goto(addr68);
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
            §§goto(addr102);
         }
         §§goto(addr66);
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
         return this.§^!7§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§^!7§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§?!#§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!#§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§26§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§26§ = param1;
         }
      }
   }
}
