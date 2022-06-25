package §6!7§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§<!@§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §[v§:int;
      
      private var §5%§:int;
      
      private var §1!T§:uint;
      
      private var §^!§:Vector.<DisplayObject>;
      
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
               this.§[v§ = param1;
               loop1:
               do
               {
                  this.§5%§ = param2;
                  while(_loc5_)
                  {
                     this.§1!T§ = param3;
                     do
                     {
                        this.§^!§ = new Vector.<DisplayObject>();
                     }
                     while(_loc4_ && this);
                     
                     if(!(_loc4_ && param1))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc4_);
               
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.dispose();
            do
            {
               this.§^!§ = null;
            }
            while(!_loc1_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(!(_loc4_ && param2))
         {
            if(param2 == §<!@§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§^!§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           if(§§pop() < 0)
                           {
                              if(_loc5_)
                              {
                                 if(!(_loc5_ || param1))
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 this.§^!§.push(param1);
                              }
                              break;
                           }
                           break;
                        }
                        continue loop1;
                     }
                  }
               }
               addr79:
            }
            return;
         }
         §§goto(addr79);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_ || param1)
         {
            if(param2 == §<!@§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§^!§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc5_ && _loc3_))
                        {
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              this.§^!§.splice(_loc3_,1);
                           }
                           if(!_loc5_)
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
         §§goto(addr78);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§<!@§ = null;
         var _loc3_:DisplayObject = null;
         if(!_loc6_)
         {
            if(this.§^!§.length > 0)
            {
               _loc2_ = new §<!@§(Event.ENTER_FRAME,param1);
               addr40:
               for each(_loc3_ in this.§^!§)
               {
                  if(_loc7_)
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
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
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr127:
                              while(true)
                              {
                                 addr91:
                                 while(true)
                                 {
                                    §§push(!visible);
                                    loop7:
                                    while(_loc4_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc5_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          if(_loc5_)
                                          {
                                             continue loop2;
                                          }
                                          if(!§§pop())
                                          {
                                             loop9:
                                             while(!_loc5_)
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   §§push(!§<!4§);
                                                   if(_loc4_ || param2)
                                                   {
                                                      if(_loc5_ && param1)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(_loc5_ && param2)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§goto(addr50);
                                                      §§push(Boolean(§§pop()));
                                                      continue loop7;
                                                   }
                                                   addr50:
                                                   if(_loc5_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      continue loop8;
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        while(§§pop())
                        {
                           if(!(_loc5_ && this))
                           {
                              if(_loc4_ || this)
                              {
                                 return null;
                              }
                              §§goto(addr127);
                           }
                           else if(!(_loc5_ && _loc3_))
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr120);
                        }
                        var _loc3_:DisplayObject = super.hitTest(param1,param2);
                        if(!(_loc5_ && _loc3_))
                        {
                           if(_loc3_ == null)
                           {
                              addr144:
                              _loc3_ = this;
                           }
                           return _loc3_;
                        }
                        §§goto(addr144);
                     }
                  }
               }
            }
         }
         §§goto(addr127);
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
         return this.§1!T§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1!T§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§[v§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[v§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§5%§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5%§ = param1;
         }
      }
   }
}
