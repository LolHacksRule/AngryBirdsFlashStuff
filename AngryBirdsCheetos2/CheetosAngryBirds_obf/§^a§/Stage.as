package §^a§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§2y§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §]>§:int;
      
      private var §7w§:int;
      
      private var §^!0§:uint;
      
      private var §;r§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§]>§ = param1;
               while(true)
               {
                  this.§7w§ = param2;
                  continue loop0;
                  addr49:
                  if(_loc4_ || param3)
                  {
                     loop4:
                     while(true)
                     {
                        this.§;r§ = new Vector.<DisplayObject>();
                        if(!_loc5_)
                        {
                           break;
                        }
                        addr47:
                        while(_loc4_)
                        {
                           §§goto(addr49);
                           continue loop4;
                        }
                        continue loop0;
                     }
                     return;
                     addr56:
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.dispose();
            do
            {
               this.§;r§ = null;
            }
            while(_loc1_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!(_loc5_ && this))
         {
            if(param2 == §2y§.ENTER_FRAME)
            {
               if(!_loc5_)
               {
                  §§push(int(this.§;r§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr82);
                  }
               }
               addr82:
               §§goto(addr26);
            }
            addr26:
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc5_ && param1))
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc5_)
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                        this.§;r§.push(param1);
                     }
                     break;
                  }
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr82);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            if(param2 == §2y§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§;r§.indexOf(param1)));
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
                              if(_loc4_ || this)
                              {
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 this.§;r§.splice(_loc3_,1);
                              }
                              break;
                           }
                           break;
                        }
                        continue loop1;
                     }
                  }
               }
               addr72:
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§2y§ = null;
         var _loc3_:DisplayObject = null;
         if(_loc7_ || this)
         {
            if(this.§;r§.length > 0)
            {
               addr45:
               _loc2_ = new §2y§(Event.ENTER_FRAME,param1);
               for each(_loc3_ in this.§;r§)
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param2);
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop());
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           loop5:
                           while(true)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(!visible);
                                 loop3:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop7;
                                    }
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             §§push(!§;o§);
                                             if(_loc4_ && this)
                                             {
                                                continue;
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop3;
                                             }
                                             while(§§pop())
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   §§goto(addr41);
                                                }
                                                if(!_loc4_)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop6;
                                             }
                                             var _loc3_:DisplayObject = super.hitTest(param1,param2);
                                             if(_loc5_)
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
                                       }
                                    }
                                 }
                                 continue loop7;
                              }
                           }
                        }
                        addr88:
                     }
                     §§goto(addr32);
                  }
               }
            }
            §§goto(addr88);
         }
         addr41:
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
         return this.§^!0§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§^!0§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§]>§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§]>§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§7w§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§7w§ = param1;
         }
      }
   }
}
