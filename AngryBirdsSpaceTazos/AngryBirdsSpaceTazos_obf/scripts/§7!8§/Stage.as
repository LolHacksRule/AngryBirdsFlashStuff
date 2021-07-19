package §7!8§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§1"A§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §<!f§:int;
      
      private var §8>§:int;
      
      private var §4"%§:uint;
      
      private var §"!f§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
         }
         while(true)
         {
            this.§<!f§ = param1;
            loop1:
            while(_loc5_)
            {
               this.§8>§ = param2;
               while(true)
               {
                  this.§4"%§ = param3;
                  while(!(_loc4_ && param1))
                  {
                     this.§"!f§ = new Vector.<DisplayObject>();
                     if(!(_loc4_ && param2))
                     {
                        if(!_loc4_)
                        {
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
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
            this.§"!f§ = null;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            if(param2 == §1"A§.ENTER_FRAME)
            {
               if(!(_loc5_ && param1))
               {
                  §§push(int(this.§"!f§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr87);
                  }
               }
               addr87:
               §§goto(addr21);
            }
            addr21:
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc5_ && param1))
               {
                  if(§§pop() < 0)
                  {
                     if(_loc4_)
                     {
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        this.§"!f§.push(param1);
                     }
                     break;
                  }
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr87);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            if(param2 == §1"A§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§"!f§.indexOf(param1)));
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
                           if(_loc5_ || param2)
                           {
                              if(_loc4_ && param1)
                              {
                                 continue;
                              }
                              this.§"!f§.splice(_loc3_,1);
                           }
                           if(!_loc4_)
                           {
                              addr68:
                              break;
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
         §§goto(addr68);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§1"A§ = null;
         var _loc3_:DisplayObject = null;
         if(_loc7_ || this)
         {
            if(this.§"!f§.length > 0)
            {
               addr45:
               _loc2_ = new §1"A§(Event.ENTER_FRAME,param1);
               for each(_loc3_ in this.§"!f§)
               {
                  if(_loc7_ || this)
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
         if(_loc5_)
         {
            §§push(param2);
            if(!(_loc4_ && param1))
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
                        addr104:
                        while(true)
                        {
                           addr69:
                           while(true)
                           {
                              §§push(!visible);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(_loc5_ || _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§pop();
                                          while(true)
                                          {
                                             §§push(!§]!D§);
                                             if(_loc4_ && param1)
                                             {
                                                continue loop6;
                                             }
                                             if(_loc4_ && param2)
                                             {
                                                break;
                                             }
                                             addr41:
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                return null;
                                             }
                                          }
                                          continue loop5;
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  loop8:
                  while(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§goto(addr41);
                     }
                     else if(!(_loc4_ && param2))
                     {
                        while(true)
                        {
                           if(true)
                           {
                              break loop8;
                           }
                           §§goto(addr69);
                        }
                        addr67:
                     }
                     §§goto(addr104);
                  }
                  var _loc3_:DisplayObject = super.hitTest(param1,param2);
                  if(_loc5_)
                  {
                     if(_loc3_ == null)
                     {
                        addr126:
                        _loc3_ = this;
                     }
                     return _loc3_;
                  }
                  §§goto(addr126);
               }
            }
         }
         §§goto(addr67);
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
         return this.§4"%§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4"%§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§<!f§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!f§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§8>§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§8>§ = param1;
         }
      }
   }
}
