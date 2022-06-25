package §#!,§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.Event;
   import starling.events.§]!"§;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §,<§:int;
      
      private var §5,§:int;
      
      private var §>!M§:uint;
      
      private var §&P§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
            while(true)
            {
               this.§,<§ = param1;
               while(_loc4_ || param1)
               {
                  this.§5,§ = param2;
                  loop2:
                  while(!(_loc5_ && this))
                  {
                     while(true)
                     {
                        this.§>!M§ = param3;
                        while(!_loc5_)
                        {
                           this.§&P§ = new Vector.<DisplayObject>();
                           if(!_loc5_)
                           {
                              return;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.dispose();
         }
         do
         {
            this.§&P§ = null;
         }
         while(!_loc1_);
         
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_ || this)
         {
            if(param2 == §]!"§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§&P§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc4_ || param2)
                        {
                           if(§§pop() >= 0)
                           {
                              break;
                           }
                           if(_loc5_ && param1)
                           {
                              break;
                           }
                           addr82:
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
         §§goto(addr77);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!(_loc5_ && _loc3_))
         {
            if(param2 == §]!"§.ENTER_FRAME)
            {
               if(_loc4_ || param1)
               {
                  §§push(int(this.§&P§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr100);
                  }
               }
               addr100:
               §§goto(addr26);
            }
            addr26:
            while(true)
            {
               §§push(_loc3_);
               if(_loc4_ || param2)
               {
                  if(§§pop() < 0)
                  {
                     break;
                  }
                  if(!(_loc5_ && this))
                  {
                     this.§&P§.splice(_loc3_,1);
                  }
                  if(!(_loc5_ && param1))
                  {
                     addr81:
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr81);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§]!"§ = null;
         var _loc3_:DisplayObject = null;
         if(!(_loc7_ && param1))
         {
            if(this.§&P§.length > 0)
            {
               addr44:
               _loc2_ = new §]!"§(Event.ENTER_FRAME,param1);
               for each(_loc3_ in this.§&P§)
               {
                  if(_loc6_ || param1)
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
         if(!(_loc5_ && this))
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
                  if(!(_loc5_ && param2))
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
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(_loc4_ || param1)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc4_)
                                    {
                                       loop6:
                                       while(!_loc5_)
                                       {
                                          §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             §§push(!§<@§);
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(_loc5_ && this)
                                             {
                                                continue loop6;
                                             }
                                             if(_loc5_ && this)
                                             {
                                                break;
                                             }
                                             while(§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop7;
                                                }
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             var _loc3_:DisplayObject = super.hitTest(param1,param2);
                                             if(_loc4_)
                                             {
                                                if(_loc3_ == null)
                                                {
                                                   addr154:
                                                   _loc3_ = this;
                                                }
                                                return _loc3_;
                                             }
                                             §§goto(addr154);
                                          }
                                          continue loop1;
                                       }
                                       continue loop0;
                                       addr115:
                                    }
                                 }
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr50);
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
         return this.§>!M§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§>!M§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§,<§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,<§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§5,§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§5,§ = param1;
         }
      }
   }
}
