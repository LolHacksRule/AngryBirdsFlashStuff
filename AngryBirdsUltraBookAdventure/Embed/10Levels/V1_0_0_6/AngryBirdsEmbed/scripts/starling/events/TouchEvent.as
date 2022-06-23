package starling.events
{
   import §,_§.DisplayObject;
   import §,_§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §8m§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §8m§ = "touch";
         }
      }
      
      private var §2D§:Vector.<§+!§>;
      
      private var §1!;§:Boolean;
      
      private var §"!J§:Boolean;
      
      private var §58§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§+!§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param1))
         {
            super(param1,param5);
            if(!_loc9_)
            {
               §§push(this);
               if(!(_loc9_ && param1))
               {
                  §§pop().§2D§ = !!param2 ? param2 : new Vector.<§+!§>(0);
                  if(_loc8_)
                  {
                     addr62:
                     this.§1!;§ = param3;
                     if(!(_loc9_ && param3))
                     {
                        this.§"!J§ = param4;
                        if(!_loc9_)
                        {
                           addr77:
                           this.§58§ = -1;
                        }
                     }
                     §§goto(addr77);
                  }
                  var _loc6_:int = param2.length;
                  var _loc7_:int = 0;
                  while(_loc7_ < _loc6_)
                  {
                     if(param2[_loc7_].timestamp > this.§58§)
                     {
                        if(_loc9_)
                        {
                           continue;
                        }
                        this.§58§ = param2[_loc7_].timestamp;
                        if(_loc9_ && param1)
                        {
                           continue;
                        }
                     }
                     _loc7_++;
                     if(_loc9_ && param3)
                     {
                        break;
                     }
                  }
                  return;
               }
               §§goto(addr39);
            }
            §§goto(addr62);
         }
         §§goto(addr77);
      }
      
      public function §1!'§(param1:DisplayObject, param2:String = null) : Vector.<§+!§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:§+!§ = null;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§+!§> = new Vector.<§+!§>(0);
         var _loc4_:int = this.§2D§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§2D§[_loc5_]).target == param1);
            if(_loc9_)
            {
               §§push(§§pop());
               if(_loc9_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(!_loc10_)
                     {
                        §§pop();
                        if(_loc9_ || param1)
                        {
                           addr74:
                           §§push(param1 is DisplayObjectContainer);
                           §§push(param1 is DisplayObjectContainer);
                           if(_loc9_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 §§push(Boolean((param1 as DisplayObjectContainer).contains(_loc6_.target)));
                                 if(_loc9_ || param1)
                                 {
                                    addr108:
                                    §§push(Boolean(§§pop()));
                                    if(_loc9_ || param1)
                                    {
                                       _loc7_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          continue;
                                       }
                                       addr119:
                                       §§push(param2);
                                       if(_loc9_ || this)
                                       {
                                          §§push(§§pop() == null);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop());
                                             if(_loc9_ || _loc3_)
                                             {
                                                addr139:
                                                if(!§§pop())
                                                {
                                                   if(_loc9_ || param2)
                                                   {
                                                      §§pop();
                                                      addr149:
                                                      §§push(param2 == _loc6_.phase);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         addr159:
                                                         _loc8_ = §§pop();
                                                         if(!(_loc10_ && this))
                                                         {
                                                            addr179:
                                                            §§push(Boolean(_loc7_));
                                                            if(!(_loc10_ && this))
                                                            {
                                                               addr188:
                                                               if(§§pop())
                                                               {
                                                                  addr194:
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr191:
                                                                     §§pop();
                                                                     §§push(_loc8_);
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     _loc3_.push(_loc6_);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         _loc5_++;
                                                         continue;
                                                      }
                                                   }
                                                   §§goto(addr179);
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr188);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr108);
               }
               §§goto(addr139);
            }
            §§goto(addr74);
         }
         return _loc3_;
      }
      
      public function §5x§(param1:DisplayObject, param2:String = null) : §+!§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§+!§> = this.§1!'§(param1,param2);
         if(!_loc5_)
         {
            if(_loc3_.length > 0)
            {
               if(_loc4_ || param2)
               {
                  §§goto(addr45);
               }
            }
            return null;
         }
         addr45:
         return _loc3_[0];
      }
      
      public function §`s§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§+!§> = null;
         var _loc3_:* = 0;
         if(_loc4_ || param1)
         {
            if(this.§5x§(param1) == null)
            {
               if(_loc4_ || this)
               {
                  §§goto(addr40);
               }
            }
            _loc2_ = this.§1!'§(param1);
            if(_loc4_ || _loc2_)
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            loop0:
            while(true)
            {
               §§push(_loc3_);
               while(§§pop() >= 0)
               {
                  if(_loc2_[_loc3_].phase != §9j§.§@q§)
                  {
                     if(!_loc5_)
                     {
                        §§push(true);
                        if(_loc4_ || this)
                        {
                           return §§pop();
                        }
                        §§goto(addr124);
                     }
                     continue loop0;
                  }
                  §§push(_loc3_);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc5_)
                     {
                        _loc3_ = §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
               addr124:
               return §§pop();
            }
         }
         addr40:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§58§;
      }
      
      public function get §5!G§() : Vector.<§+!§>
      {
         return this.§2D§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§1!;§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§"!J§;
      }
   }
}
