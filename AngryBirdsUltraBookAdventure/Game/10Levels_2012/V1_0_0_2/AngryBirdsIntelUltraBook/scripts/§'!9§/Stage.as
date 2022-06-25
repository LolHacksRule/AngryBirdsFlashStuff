package §'!9§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§2!j§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §'O§:int;
      
      private var §!!A§:int;
      
      private var §%!v§:uint;
      
      private var §6!A§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.§'O§ = param1;
               while(true)
               {
                  this.§!!A§ = param2;
                  loop2:
                  while(_loc4_)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§6!A§ = new Vector.<DisplayObject>();
                        if(_loc4_ || this)
                        {
                           if(!(_loc5_ && param1))
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.dispose();
            do
            {
               this.§6!A§ = null;
            }
            while(!_loc1_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_ || param2)
         {
            if(param2 == §2!j§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§6!A§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           if(§§pop() >= 0)
                           {
                              break;
                           }
                           if(_loc4_ || _loc3_)
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              this.§6!A§.push(param1);
                           }
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
               addr76:
            }
            return;
         }
         §§goto(addr76);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            if(param2 == §2!j§.ENTER_FRAME)
            {
               if(_loc4_ || param1)
               {
                  §§push(int(this.§6!A§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr88);
                  }
               }
               addr88:
               §§goto(addr21);
            }
            addr21:
            while(true)
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  if(§§pop() >= 0)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(!(_loc4_ || this))
                        {
                           continue;
                        }
                        this.§6!A§.splice(_loc3_,1);
                     }
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
         var _loc2_:§2!j§ = null;
         var _loc3_:DisplayObject = null;
         if(_loc6_)
         {
            if(this.§6!A§.length > 0)
            {
               _loc2_ = new §2!j§(Event.ENTER_FRAME,param1);
               addr39:
               for each(_loc3_ in this.§6!A§)
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
                                 if(_loc5_)
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop())
                                    {
                                    }
                                    loop7:
                                    while(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          return null;
                                       }
                                       if(_loc5_ || param1)
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          continue loop4;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          §§push(!§@!U§);
                                          if(!(_loc4_ && param1))
                                          {
                                             continue loop7;
                                          }
                                          addr73:
                                          while(_loc5_)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§pop();
                                                continue loop8;
                                             }
                                             continue loop1;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    var _loc3_:DisplayObject = super.hitTest(param1,param2);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(_loc3_ == null)
                                       {
                                          addr111:
                                          _loc3_ = this;
                                       }
                                       return _loc3_;
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr73);
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr30);
                  }
               }
            }
         }
         §§goto(addr88);
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
         return this.§%!v§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%!v§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§'O§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§'O§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§!!A§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§!!A§ = param1;
         }
      }
   }
}
