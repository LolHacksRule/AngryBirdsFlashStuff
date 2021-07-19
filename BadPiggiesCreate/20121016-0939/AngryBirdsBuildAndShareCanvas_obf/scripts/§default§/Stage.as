package §default§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§+!<§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §7!T§:int;
      
      private var §>w§:int;
      
      private var §;!`§:uint;
      
      private var §[!q§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§7!T§ = param1;
               while(true)
               {
                  this.§>w§ = param2;
                  loop2:
                  while(!_loc4_)
                  {
                     this.§;!`§ = param3;
                     while(true)
                     {
                        this.§[!q§ = new Vector.<DisplayObject>();
                        if(!(_loc4_ && this))
                        {
                           if(!(_loc4_ && param2))
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.dispose();
            do
            {
               this.§[!q§ = null;
            }
            while(_loc2_);
            
         }
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            if(param2 == §+!<§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§[!q§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || param1)
                        {
                           if(§§pop() >= 0)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              if(!_loc5_)
                              {
                                 continue loop0;
                              }
                              this.§[!q§.push(param1);
                           }
                           if(_loc5_)
                           {
                              break;
                           }
                           continue;
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
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_ || _loc3_)
         {
            if(param2 == §+!<§.ENTER_FRAME)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§[!q§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr84:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || _loc3_)
                        {
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              if(_loc4_)
                              {
                                 continue;
                              }
                              this.§[!q§.splice(_loc3_,1);
                           }
                           if(!_loc4_)
                           {
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
         §§goto(addr84);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§+!<§ = null;
         var _loc3_:DisplayObject = null;
         if(!_loc7_)
         {
            if(this.§[!q§.length > 0)
            {
               _loc2_ = new §+!<§(Event.ENTER_FRAME,param1);
               addr29:
               for each(_loc3_ in this.§[!q§)
               {
                  if(_loc6_ || this)
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
         if(_loc5_)
         {
            §§push(param2);
            if(!_loc4_)
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
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(!visible);
                              loop5:
                              while(!_loc4_)
                              {
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop())
                                 {
                                    loop7:
                                    for(; §§pop(); continue loop0)
                                    {
                                       if(_loc4_ && this)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       if(_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             return null;
                                          }
                                          continue loop3;
                                       }
                                       addr76:
                                       loop8:
                                       while(true)
                                       {
                                          §§push(!§#!1§);
                                          if(!(_loc4_ && this))
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop7;
                                             }
                                             continue loop5;
                                          }
                                          addr75:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop8;
                                          }
                                       }
                                    }
                                    var _loc3_:DisplayObject = super.hitTest(param1,param2);
                                    addr39:
                                    if(_loc5_ || param1)
                                    {
                                       if(_loc3_ == null)
                                       {
                                          addr111:
                                          _loc3_ = this;
                                       }
                                       return _loc3_;
                                    }
                                    §§goto(addr111);
                                    addr39:
                                 }
                                 §§goto(addr75);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr39);
               }
               if(!(_loc5_ || this))
               {
                  continue;
               }
               §§goto(addr39);
            }
         }
         §§goto(addr76);
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
         return this.§;!`§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§;!`§ = param1;
         }
      }
      
      public function get stageWidth() : int
      {
         return this.§7!T§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!T§ = param1;
         }
      }
      
      public function get stageHeight() : int
      {
         return this.§>w§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>w§ = param1;
         }
      }
   }
}
