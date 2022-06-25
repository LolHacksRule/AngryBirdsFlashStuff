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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super();
            while(true)
            {
               this.§'O§ = param1;
               while(true)
               {
                  this.§!!A§ = param2;
                  §§goto(addr84);
               }
            }
         }
         addr84:
         while(true)
         {
            this.§%!v§ = param3;
            do
            {
               this.§6!A§ = new Vector.<DisplayObject>();
            }
            while(!(_loc5_ || param1));
            
            if(_loc5_)
            {
               if(!(_loc4_ && param3))
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.dispose();
            do
            {
               this.§6!A§ = null;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(!(_loc4_ && _loc3_))
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
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           if(§§pop() < 0)
                           {
                              if(_loc5_)
                              {
                                 while(true)
                                 {
                                    this.§6!A§.push(param1);
                                 }
                                 addr59:
                              }
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       break loop2;
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
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
         §§goto(addr59);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!(_loc5_ && _loc3_))
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
                        if(_loc4_)
                        {
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              if(!_loc5_)
                              {
                                 this.§6!A§.splice(_loc3_,1);
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
         §§goto(addr72);
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
                  if(!(_loc7_ && this))
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
         if(_loc5_ || this)
         {
            §§push(param2);
            if(!(_loc4_ && param2))
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
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
                              loop6:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc5_ || param1))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop2:
                                       while(§§pop())
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                return null;
                                             }
                                             while(true)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(!§@!U§);
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   addr76:
                                                   while(_loc4_ && param2)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue;
                                                }
                                                continue loop5;
                                             }
                                             continue loop0;
                                          }
                                          addr50:
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                break loop2;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       var _loc3_:DisplayObject = super.hitTest(param1,param2);
                                       addr37:
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
                                       addr37:
                                    }
                                 }
                                 §§goto(addr76);
                              }
                              continue loop1;
                           }
                        }
                        addr113:
                     }
                     §§goto(addr37);
                  }
               }
            }
            §§goto(addr113);
         }
         §§goto(addr50);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
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
         if(!(_loc2_ && this))
         {
            this.§!!A§ = param1;
         }
      }
   }
}
