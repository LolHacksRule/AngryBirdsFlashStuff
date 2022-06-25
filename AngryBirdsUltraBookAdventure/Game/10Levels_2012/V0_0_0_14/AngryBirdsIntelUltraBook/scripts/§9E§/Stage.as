package §9E§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§83§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §>!D§:int;
      
      private var §7!3§:int;
      
      private var §'!k§:uint;
      
      private var §+z§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§>!D§ = param1;
               while(true)
               {
                  this.§7!3§ = param2;
                  continue loop0;
                  addr74:
                  while(_loc4_ || param2)
                  {
                     this.§+z§ = new Vector.<DisplayObject>();
                     if(!(_loc5_ && param2))
                     {
                        addr52:
                        if(_loc4_ || param3)
                        {
                           return;
                           addr59:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§'!k§ = param3;
            §§goto(addr74);
         }
         §§goto(addr59);
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
               this.§+z§ = null;
            }
            while(!_loc1_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!(_loc5_ && _loc3_))
         {
            if(param2 == §83§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§+z§.indexOf(param1)));
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
                           if(_loc4_)
                           {
                              if(!_loc5_)
                              {
                                 this.§+z§.push(param1);
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
         §§goto(addr71);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            if(param2 == §83§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§+z§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr88:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc4_ || param1)
                        {
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           if(!_loc5_)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 this.§+z§.splice(_loc3_,1);
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
         §§goto(addr88);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§83§ = null;
         var _loc3_:DisplayObject = null;
         if(!(_loc7_ && _loc3_))
         {
            if(this.§+z§.length > 0)
            {
               _loc2_ = new §83§(Event.ENTER_FRAME,param1);
               addr44:
               for each(_loc3_ in this.§+z§)
               {
                  if(_loc6_ || _loc2_)
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
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
                                 if(_loc5_ || param1)
                                 {
                                    if(!_loc5_)
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
                                       loop8:
                                       while(§§pop())
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             addr39:
                                             if(_loc5_ || _loc3_)
                                             {
                                                return null;
                                             }
                                             addr86:
                                             addr76:
                                             while(true)
                                             {
                                                if(!(_loc4_ && param2))
                                                {
                                                   §§push(!§<V§);
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop8;
                                                   addr103:
                                                }
                                                continue loop4;
                                                §§goto(addr39);
                                             }
                                             while(!_loc4_)
                                             {
                                                continue loop0;
                                                §§goto(addr103);
                                             }
                                             continue loop3;
                                          }
                                          addr48:
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                break loop8;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       var _loc3_:DisplayObject = super.hitTest(param1,param2);
                                       if(!_loc4_)
                                       {
                                          if(_loc3_ == null)
                                          {
                                             addr121:
                                             _loc3_ = this;
                                          }
                                          return _loc3_;
                                       }
                                       §§goto(addr121);
                                       addr30:
                                    }
                                 }
                                 §§goto(addr76);
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr30);
                  }
               }
            }
         }
         §§goto(addr48);
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
         return this.§'!k§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'!k§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§>!D§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§>!D§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§7!3§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!3§ = param1;
         }
      }
   }
}
