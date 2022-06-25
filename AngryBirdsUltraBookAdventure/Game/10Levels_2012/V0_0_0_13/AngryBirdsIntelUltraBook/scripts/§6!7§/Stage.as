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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
         }
         while(true)
         {
            this.§[v§ = param1;
            loop1:
            while(_loc4_ || param1)
            {
               this.§5%§ = param2;
               loop2:
               while(true)
               {
                  this.§1!T§ = param3;
                  while(true)
                  {
                     if(!(_loc5_ && this))
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.dispose();
         }
         do
         {
            this.§^!§ = null;
         }
         while(!_loc1_);
         
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            if(param2 == §<!@§.ENTER_FRAME)
            {
               if(_loc5_)
               {
                  §§push(int(this.§^!§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr85);
                  }
               }
               addr85:
               §§goto(addr22);
            }
            addr22:
            while(true)
            {
               §§push(_loc3_);
               if(_loc5_ || this)
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc4_)
                     {
                        if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        }
                        this.§^!§.push(param1);
                     }
                     break;
                  }
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr66);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
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
                        if(!(_loc4_ && param2))
                        {
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                              this.§^!§.splice(_loc3_,1);
                           }
                           if(_loc5_ || _loc3_)
                           {
                              addr79:
                              break;
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
         §§goto(addr79);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§<!@§ = null;
         var _loc3_:DisplayObject = null;
         if(!_loc7_)
         {
            if(this.§^!§.length > 0)
            {
               _loc2_ = new §<!@§(Event.ENTER_FRAME,param1);
               addr39:
               for each(_loc3_ in this.§^!§)
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
         if(!_loc4_)
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
                  if(_loc5_ || _loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr133:
                           while(true)
                           {
                              addr80:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(_loc5_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc5_ || param2)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 addr108:
                                 while(true)
                                 {
                                    §§pop();
                                    addr109:
                                    while(true)
                                    {
                                       §§push(!§<!4§);
                                       if(!(_loc4_ && this))
                                       {
                                          if(_loc4_ && param2)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       addr46:
                                       if(_loc4_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     addr48:
                     loop8:
                     while(§§pop())
                     {
                        if(!_loc4_)
                        {
                           if(_loc5_ || param1)
                           {
                              if(!(_loc4_ && this))
                              {
                                 return null;
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr109);
                        }
                        else
                        {
                           while(true)
                           {
                              if(true)
                              {
                                 break loop8;
                              }
                           }
                           addr78:
                        }
                        §§goto(addr80);
                     }
                     var _loc3_:DisplayObject = super.hitTest(param1,param2);
                     if(_loc5_ || this)
                     {
                        if(_loc3_ == null)
                        {
                           addr150:
                           _loc3_ = this;
                        }
                        return _loc3_;
                     }
                     §§goto(addr150);
                  }
               }
            }
         }
         §§goto(addr78);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
         if(_loc3_ || _loc2_)
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
         if(_loc3_ || this)
         {
            this.§5%§ = param1;
         }
      }
   }
}
