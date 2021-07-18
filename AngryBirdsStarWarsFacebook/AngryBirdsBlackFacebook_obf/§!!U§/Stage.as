package §!!U§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§?!3§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §6"?§:int;
      
      private var §[!4§:int;
      
      private var §]H§:uint;
      
      private var §6"j§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super();
            while(true)
            {
               this.§6"?§ = param1;
            }
            addr87:
         }
         loop1:
         while(true)
         {
            this.§[!4§ = param2;
            loop2:
            do
            {
               if(!_loc5_)
               {
                  continue loop1;
               }
               this.§]H§ = param3;
               while(_loc5_)
               {
                  this.§6"j§ = new Vector.<DisplayObject>();
                  if(!_loc4_)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr87);
            }
            while(_loc4_ && param3);
            
            return;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.dispose();
         }
         do
         {
            this.§6"j§ = null;
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            if(param2 == §?!3§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§6"j§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc5_ && this))
                        {
                           if(§§pop() >= 0)
                           {
                              break;
                           }
                           if(_loc4_ || this)
                           {
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              this.§6"j§.push(param1);
                           }
                           if(!(_loc5_ && param1))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
               addr81:
            }
            return;
         }
         §§goto(addr81);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_ || this)
         {
            if(param2 == §?!3§.ENTER_FRAME)
            {
               if(_loc5_ || this)
               {
                  addr88:
                  §§push(int(this.§6"j§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                  }
                  addr93:
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc5_ || param1)
                  {
                     if(§§pop() < 0)
                     {
                        break;
                     }
                     if(_loc5_ || this)
                     {
                        this.§6"j§.splice(_loc3_,1);
                     }
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue;
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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§?!3§ = null;
         var _loc3_:DisplayObject = null;
         if(!(_loc6_ && _loc3_))
         {
            if(this.§6"j§.length > 0)
            {
               addr45:
               _loc2_ = new §?!3§(Event.ENTER_FRAME,param1);
               for each(_loc3_ in this.§6"j§)
               {
                  if(!(_loc6_ && _loc3_))
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
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                    }
                                    loop8:
                                    while(§§pop())
                                    {
                                       if(_loc4_ || param2)
                                       {
                                          if(_loc4_)
                                          {
                                             §§goto(addr49);
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(!§3'§);
                                             if(!(_loc5_ && param1))
                                             {
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop8;
                                                }
                                                continue loop0;
                                             }
                                             addr84:
                                             while(_loc4_ || param1)
                                             {
                                                §§pop();
                                                continue loop7;
                                             }
                                             continue loop3;
                                          }
                                          continue loop1;
                                       }
                                       if(_loc4_ || param1)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       continue loop4;
                                    }
                                    var _loc3_:DisplayObject = super.hitTest(param1,param2);
                                    if(!_loc5_)
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
                                 §§goto(addr84);
                              }
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr38);
                  }
               }
            }
         }
         addr49:
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
         return this.§]H§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]H§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§6"?§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§6"?§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§[!4§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§[!4§ = param1;
         }
      }
   }
}
