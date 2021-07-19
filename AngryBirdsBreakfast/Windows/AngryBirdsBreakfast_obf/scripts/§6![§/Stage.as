package §6![§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§7$§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §<`§:int;
      
      private var §#!A§:int;
      
      private var §@=§:uint;
      
      private var §[!v§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§<`§ = param1;
            while(true)
            {
               this.§#!A§ = param2;
               while(!_loc5_)
               {
                  continue loop0;
                  this.§@=§ = param3;
                  do
                  {
                     this.§[!v§ = new Vector.<DisplayObject>();
                  }
                  while(!(_loc4_ || param3));
                  
                  if(!(_loc5_ && param3))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.dispose();
         }
         do
         {
            this.§[!v§ = null;
         }
         while(_loc1_ && this);
         
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            if(param2 == §7$§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§[!v§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc4_ || param1)
                        {
                           if(§§pop() >= 0)
                           {
                              break;
                           }
                           if(!(_loc5_ && _loc3_))
                           {
                              if(_loc5_)
                              {
                                 continue;
                              }
                              this.§[!v§.push(param1);
                           }
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop0;
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
         if(_loc4_ || _loc3_)
         {
            if(param2 == §7$§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§[!v§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr88:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           if(_loc4_ || param2)
                           {
                              continue loop0;
                           }
                           addr65:
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
            }
            return;
         }
         §§goto(addr88);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§7$§ = null;
         var _loc3_:DisplayObject = null;
         if(_loc7_ || param1)
         {
            if(this.§[!v§.length > 0)
            {
               addr45:
               _loc2_ = new §7$§(Event.ENTER_FRAME,param1);
               for each(_loc3_ in this.§[!v§)
               {
                  if(!(_loc6_ && param1))
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
         if(!_loc5_)
         {
            §§push(param2);
            if(!(_loc5_ && param1))
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  addr81:
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
                              addr41:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 addr67:
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    addr68:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop7;
                                       }
                                       while(true)
                                       {
                                          §§push(!§!!9§);
                                          if(_loc5_)
                                          {
                                             continue loop5;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop6;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                        addr82:
                     }
                     addr26:
                     while(§§pop())
                     {
                        if(_loc4_)
                        {
                           if(_loc4_ || this)
                           {
                              return null;
                           }
                           §§goto(addr68);
                        }
                        else if(true)
                        {
                           break;
                        }
                        §§goto(addr41);
                     }
                     var _loc3_:DisplayObject = super.hitTest(param1,param2);
                     if(_loc4_ || param2)
                     {
                        if(_loc3_ == null)
                        {
                           addr110:
                           _loc3_ = this;
                        }
                        return _loc3_;
                     }
                     §§goto(addr110);
                  }
               }
            }
            §§goto(addr82);
         }
         §§goto(addr70);
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
         return this.§@=§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@=§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§<`§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§<`§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§#!A§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#!A§ = param1;
         }
      }
   }
}
