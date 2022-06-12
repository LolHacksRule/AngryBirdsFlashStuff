package §1!$§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§3;§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §`w§:int;
      
      private var §%m§:int;
      
      private var §%!6§:uint;
      
      private var §0k§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§`w§ = param1;
            while(true)
            {
               this.§%m§ = param2;
               continue loop0;
               addr69:
               while(_loc4_ || this)
               {
                  this.§0k§ = new Vector.<DisplayObject>();
                  if(!(_loc5_ && param2))
                  {
                     addr47:
                     if(_loc4_ || param1)
                     {
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
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
               this.§0k§ = null;
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_ || param1)
         {
            if(param2 == §3;§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§0k§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr87:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc4_ || param2)
                        {
                           if(§§pop() >= 0)
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              this.§0k§.push(param1);
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
         §§goto(addr87);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            if(param2 == §3;§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§0k§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr89:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           if(_loc4_ && _loc3_)
                           {
                              break;
                           }
                           addr78:
                           if(!(_loc4_ && this))
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
         §§goto(addr89);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§3;§ = null;
         var _loc3_:DisplayObject = null;
         if(!(_loc6_ && _loc2_))
         {
            if(this.§0k§.length > 0)
            {
               _loc2_ = new §3;§(Event.ENTER_FRAME,param1);
               addr45:
               for each(_loc3_ in this.§0k§)
               {
                  if(!_loc6_)
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
         if(!(_loc5_ && param2))
         {
            §§push(param2);
            if(!_loc5_)
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
                        addr98:
                        loop7:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(!visible);
                              if(!(_loc5_ && param2))
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop());
                                 if(_loc5_ && param2)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop())
                                 {
                                 }
                                 while(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             return null;
                                          }
                                          continue loop7;
                                       }
                                       while(true)
                                       {
                                          §§push(!§`!u§);
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          addr77:
                                          while(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          §§pop();
                                       }
                                       continue;
                                    }
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop6;
                                 }
                                 var _loc3_:DisplayObject = super.hitTest(param1,param2);
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(_loc3_ == null)
                                    {
                                       addr115:
                                       _loc3_ = this;
                                    }
                                    return _loc3_;
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr77);
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr29);
               }
            }
         }
         §§goto(addr98);
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
         return this.§%!6§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%!6§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§`w§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`w§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§%m§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§%m§ = param1;
         }
      }
   }
}
