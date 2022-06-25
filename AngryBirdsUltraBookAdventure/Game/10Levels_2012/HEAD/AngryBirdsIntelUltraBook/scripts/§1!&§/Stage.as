package §1!&§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§!!Z§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §^B§:int;
      
      private var §+!d§:int;
      
      private var §"p§:uint;
      
      private var §0;§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super();
            while(true)
            {
               this.§^B§ = param1;
               §§goto(addr86);
            }
         }
         addr86:
         while(true)
         {
            this.§+!d§ = param2;
            do
            {
               this.§"p§ = param3;
               do
               {
                  this.§0;§ = new Vector.<DisplayObject>();
               }
               while(!_loc5_);
               
            }
            while(!_loc5_);
            
            if(!_loc4_)
            {
               if(_loc5_ || param1)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.dispose();
         }
         do
         {
            this.§0;§ = null;
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_ || this)
         {
            if(param2 == §!!Z§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§0;§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           if(§§pop() >= 0)
                           {
                              break;
                           }
                           if(_loc4_ && param1)
                           {
                              break;
                           }
                           addr83:
                           if(_loc5_ || _loc3_)
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
         §§goto(addr83);
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            if(param2 == §!!Z§.ENTER_FRAME)
            {
               if(_loc4_ || this)
               {
                  §§push(int(this.§0;§.indexOf(param1)));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr85);
                  }
               }
               addr85:
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
                     if(_loc4_ || this)
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                        this.§0;§.splice(_loc3_,1);
                     }
                     break;
                  }
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§!!Z§ = null;
         var _loc3_:DisplayObject = null;
         if(_loc7_)
         {
            if(this.§0;§.length > 0)
            {
               _loc2_ = new §!!Z§(Event.ENTER_FRAME,param1);
               addr40:
               for each(_loc3_ in this.§0;§)
               {
                  if(_loc7_)
                  {
                     _loc3_.dispatchEvent(_loc2_);
                  }
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2);
            if(_loc5_ || param1)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && param2))
               {
                  addr124:
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop0:
                           while(true)
                           {
                              §§pop();
                              addr128:
                              while(true)
                              {
                                 addr60:
                                 while(true)
                                 {
                                    §§push(!visible);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop6:
                                       while(_loc5_ || param2)
                                       {
                                          §§push(§§pop());
                                          if(_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!(_loc5_ || param1))
                                          {
                                             continue loop2;
                                          }
                                          if(!§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§pop();
                                                addr97:
                                                while(true)
                                                {
                                                   §§push(!§9@§);
                                                   if(_loc5_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr41:
                                                   if(_loc4_ && param1)
                                                   {
                                                      continue loop6;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           addr127:
                        }
                        while(§§pop())
                        {
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 return null;
                              }
                              §§goto(addr128);
                           }
                           else if(!_loc4_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr60);
                           }
                           §§goto(addr97);
                        }
                        var _loc3_:DisplayObject = super.hitTest(param1,param2);
                        if(!(_loc4_ && this))
                        {
                           if(_loc3_ == null)
                           {
                              addr145:
                              _loc3_ = this;
                           }
                           return _loc3_;
                        }
                        §§goto(addr145);
                     }
                  }
               }
               §§goto(addr127);
            }
            §§goto(addr124);
         }
         §§goto(addr128);
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
         return this.§"p§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§"p§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§^B§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^B§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§+!d§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+!d§ = param1;
         }
      }
   }
}
