package §]@§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§!t§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §^!I§:int;
      
      private var §,!X§:int;
      
      private var §^!W§:uint;
      
      private var §@A§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
         }
         loop0:
         do
         {
            this.§^!I§ = param1;
            loop1:
            while(true)
            {
               this.§,!X§ = param2;
               do
               {
                  this.§^!W§ = param3;
                  continue loop1;
               }
               while(_loc5_ && param2);
               
               continue loop0;
            }
         }
         while(_loc5_ && param3);
         
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.dispose();
            do
            {
               this.§@A§ = null;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            if(param2 == §!t§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§@A§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           if(§§pop() >= 0)
                           {
                              break;
                           }
                           if(_loc5_ || param1)
                           {
                              this.§@A§.push(param1);
                           }
                           if(_loc5_ || param2)
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
               addr82:
            }
            return;
         }
         §§goto(addr82);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            if(param2 == §!t§.ENTER_FRAME)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(int(this.§@A§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr89);
                  }
               }
               addr89:
               §§goto(addr22);
            }
            addr22:
            while(true)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop() < 0)
                  {
                     break;
                  }
                  if(!(_loc4_ && param1))
                  {
                     this.§@A§.splice(_loc3_,1);
                  }
                  if(!(_loc4_ && param2))
                  {
                     addr61:
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§!t§ = null;
         var _loc3_:DisplayObject = null;
         if(_loc6_)
         {
            if(this.§@A§.length > 0)
            {
               _loc2_ = new §!t§(Event.ENTER_FRAME,param1);
               addr29:
               for each(_loc3_ in this.§@A§)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     _loc3_.dispatchEvent(_loc2_);
                  }
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
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
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(!visible);
                                 loop6:
                                 while(!_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc5_ || this))
                                    {
                                       continue loop2;
                                    }
                                    if(!§§pop())
                                    {
                                       loop7:
                                       while(_loc5_ || param2)
                                       {
                                          §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(!§^f§);
                                             if(_loc4_)
                                             {
                                                continue loop7;
                                             }
                                             if(!(_loc5_ || param1))
                                             {
                                                continue loop6;
                                             }
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             while(§§pop())
                                             {
                                                if(!(_loc4_ && param2))
                                                {
                                                   §§goto(addr48);
                                                }
                                                continue loop8;
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
                                          continue loop1;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr39);
                  }
               }
            }
         }
         addr48:
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
         return this.§^!W§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^!W§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§^!I§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^!I§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§,!X§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§,!X§ = param1;
         }
      }
   }
}
