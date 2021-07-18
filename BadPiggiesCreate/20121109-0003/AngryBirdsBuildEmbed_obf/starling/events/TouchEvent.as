package starling.events
{
   import §-!`§.DisplayObject;
   import §-!`§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §1C§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && TouchEvent))
         {
            §1C§ = "touch";
         }
      }
      
      private var §'<§:Vector.<§,s§>;
      
      private var §5!n§:Boolean;
      
      private var §>f§:Boolean;
      
      private var §-Q§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§,s§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            super(param1,param5);
            if(!_loc8_)
            {
               addr30:
               §§push(this);
               if(!(_loc8_ && param2))
               {
                  §§pop().§'<§ = !!param2 ? param2 : new Vector.<§,s§>(0);
                  if(_loc9_)
                  {
                     this.§5!n§ = param3;
                     if(_loc9_)
                     {
                        this.§>f§ = param4;
                        if(!(_loc8_ && param2))
                        {
                           addr78:
                           this.§-Q§ = -1;
                        }
                     }
                     var _loc6_:int = param2.length;
                     var _loc7_:int = 0;
                     while(_loc7_ < _loc6_)
                     {
                        if(param2[_loc7_].timestamp > this.§-Q§)
                        {
                           if(_loc9_)
                           {
                              this.§-Q§ = param2[_loc7_].timestamp;
                              if(_loc8_ && param1)
                              {
                                 continue;
                              }
                           }
                           break;
                        }
                        _loc7_++;
                        if(_loc8_)
                        {
                           break;
                        }
                     }
                     return;
                  }
                  §§goto(addr78);
               }
               §§goto(addr40);
            }
            §§goto(addr78);
         }
         §§goto(addr30);
      }
      
      public function §'[§(param1:DisplayObject, param2:String = null) : Vector.<§,s§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§,s§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§,s§> = new Vector.<§,s§>(0);
         var _loc4_:int = this.§'<§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§'<§[_loc5_]).target == param1);
            if(_loc10_ || this)
            {
               §§push(§§pop());
               if(!_loc9_)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     if(_loc10_)
                     {
                        §§push(param1 is DisplayObjectContainer);
                        §§push(param1 is DisplayObjectContainer);
                        if(!(_loc9_ && param2))
                        {
                           addr76:
                           if(§§pop())
                           {
                              if(!_loc9_)
                              {
                                 §§pop();
                                 if(!_loc9_)
                                 {
                                    §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                    if(_loc10_ || param1)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc9_)
                                       {
                                          addr108:
                                          §§push(Boolean(§§pop()));
                                          if(!_loc9_)
                                          {
                                             _loc7_ = §§pop();
                                             if(!_loc9_)
                                             {
                                                addr114:
                                                §§push(param2);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() == null);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc9_)
                                                      {
                                                         addr124:
                                                         if(!§§pop())
                                                         {
                                                            §§pop();
                                                            addr130:
                                                            §§push(Boolean(param2 == _loc6_.phase));
                                                            if(_loc10_ || param2)
                                                            {
                                                               addr138:
                                                               _loc8_ = §§pop();
                                                               addr139:
                                                               §§push(_loc7_);
                                                               if(!_loc9_)
                                                               {
                                                                  addr154:
                                                                  §§push(Boolean(§§pop()));
                                                                  if(Boolean(§§pop()))
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        §§pop();
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           addr166:
                                                                           if(_loc8_)
                                                                           {
                                                                              if(!(_loc10_ || param1))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr175:
                                                                              _loc3_.push(_loc6_);
                                                                           }
                                                                        }
                                                                        _loc5_++;
                                                                        continue;
                                                                     }
                                                                     §§goto(addr166);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr166);
                                                         }
                                                         §§goto(addr130);
                                                      }
                                                   }
                                                   §§goto(addr154);
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr139);
                                          }
                                       }
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr108);
               }
               §§goto(addr76);
            }
            §§goto(addr138);
         }
         return _loc3_;
      }
      
      public function § var§(param1:DisplayObject, param2:String = null) : §,s§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§,s§> = this.§'[§(param1,param2);
         if(_loc5_ || this)
         {
            if(_loc3_.length > 0)
            {
               if(_loc5_ || this)
               {
                  return _loc3_[0];
               }
            }
         }
         return null;
      }
      
      public function §]W§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§,s§> = null;
         var _loc3_:* = 0;
         if(!(_loc5_ && param1))
         {
            if(this.§ var§(param1) == null)
            {
               if(!_loc5_)
               {
                  return false;
               }
            }
         }
         _loc2_ = this.§'[§(param1);
         if(!(_loc5_ && param1))
         {
            _loc3_ = int(_loc2_.length - 1);
         }
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() >= 0)
            {
               if(_loc2_[_loc3_].phase != §21§.§<w§)
               {
                  if(!(_loc5_ && this))
                  {
                     §§push(true);
                     if(!(_loc5_ && _loc3_))
                     {
                        return §§pop();
                     }
                     §§goto(addr124);
                  }
                  break;
               }
               §§push(_loc3_);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() - 1);
                  if(_loc4_ || _loc2_)
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
      
      public function get timestamp() : Number
      {
         return this.§-Q§;
      }
      
      public function get §5V§() : Vector.<§,s§>
      {
         return this.§'<§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§5!n§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§>f§;
      }
   }
}
