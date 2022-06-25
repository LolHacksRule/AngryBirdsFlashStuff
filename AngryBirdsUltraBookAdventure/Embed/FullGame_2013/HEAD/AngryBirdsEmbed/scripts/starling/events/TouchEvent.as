package starling.events
{
   import §&o§.DisplayObject;
   import §&o§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §7!4§:String = "touch";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §7!4§ = "touch";
         }
      }
      
      private var §?2§:Vector.<§7+§>;
      
      private var §5[§:Boolean;
      
      private var §^!J§:Boolean;
      
      private var §[!L§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§7+§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            super(param1,param5);
            if(_loc9_)
            {
               §§push(this);
               if(_loc9_)
               {
                  §§pop().§?2§ = !!param2 ? param2 : new Vector.<§7+§>(0);
                  if(_loc9_)
                  {
                     this.§5[§ = param3;
                     if(_loc9_ || this)
                     {
                        addr68:
                        this.§^!J§ = param4;
                        if(_loc9_ || param2)
                        {
                        }
                        §§goto(addr81);
                     }
                  }
                  this.§[!L§ = -1;
                  addr81:
                  var _loc6_:int = param2.length;
                  var _loc7_:int = 0;
                  while(_loc7_ < _loc6_)
                  {
                     if(param2[_loc7_].timestamp > this.§[!L§)
                     {
                        if(!(_loc8_ && param1))
                        {
                           this.§[!L§ = param2[_loc7_].timestamp;
                           if(!_loc9_)
                           {
                              break;
                           }
                        }
                     }
                     _loc7_++;
                     if(!(_loc9_ || param2))
                     {
                        break;
                     }
                  }
                  return;
               }
               §§goto(addr35);
            }
         }
         §§goto(addr68);
      }
      
      public function §?!&§(param1:DisplayObject, param2:String = null) : Vector.<§7+§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§7+§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§7+§> = new Vector.<§7+§>(0);
         var _loc4_:int = this.§?2§.length;
         var _loc5_:int = 0;
         for(; _loc5_ < _loc4_; if(§§pop())
         {
            if(_loc10_ || _loc3_)
            {
               _loc3_.push(_loc6_);
            }
         },_loc5_++)
         {
            §§push((_loc6_ = this.§?2§[_loc5_]).target == param1);
            if(!(_loc9_ && _loc3_))
            {
               §§push(§§pop());
               if(!(_loc9_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     if(_loc10_ || param2)
                     {
                        §§pop();
                        §§push(param1 is DisplayObjectContainer);
                        if(!_loc9_)
                        {
                           §§push(§§pop());
                           if(_loc10_)
                           {
                              addr93:
                              if(§§pop())
                              {
                                 if(_loc10_)
                                 {
                                    §§pop();
                                    addr104:
                                    _loc7_ = Boolean((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                    §§push(param2);
                                    if(_loc10_ || param1)
                                    {
                                       §§push(§§pop() == null);
                                       if(!(_loc9_ && this))
                                       {
                                          addr123:
                                          §§push(§§pop());
                                          if(!(_loc9_ && this))
                                          {
                                             addr131:
                                             if(!§§pop())
                                             {
                                                if(_loc10_)
                                                {
                                                   addr134:
                                                   §§pop();
                                                   addr136:
                                                   §§push(param2 == _loc6_.phase);
                                                }
                                             }
                                             _loc8_ = §§pop();
                                             if(_loc10_)
                                             {
                                                addr146:
                                                §§push(Boolean(_loc7_));
                                                if(Boolean(_loc7_))
                                                {
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      §§pop();
                                                   }
                                                   addr173:
                                                   §§push(Boolean(§§pop()));
                                                }
                                                continue;
                                             }
                                             §§push(_loc8_);
                                             if(!(_loc10_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             §§goto(addr173);
                                          }
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr104);
               }
               §§goto(addr93);
            }
            §§goto(addr173);
         }
         return _loc3_;
      }
      
      public function §#^§(param1:DisplayObject, param2:String = null) : §7+§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§7+§> = this.§?!&§(param1,param2);
         if(_loc5_ || param2)
         {
            if(_loc3_.length > 0)
            {
               if(!(_loc4_ && param2))
               {
                  return _loc3_[0];
               }
            }
         }
         return null;
      }
      
      public function §&Q§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§7+§> = null;
         var _loc3_:int = 0;
         if(_loc4_)
         {
            if(this.§#^§(param1) == null)
            {
               if(_loc4_)
               {
                  §§goto(addr30);
               }
            }
            _loc2_ = this.§?!&§(param1);
            if(!(_loc5_ && param1))
            {
               _loc3_ = _loc2_.length - 1;
            }
            loop0:
            while(true)
            {
               §§push(_loc3_);
               while(§§pop() >= 0)
               {
                  if(_loc2_[_loc3_].phase != §>;§.§1!@§)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(true);
                        if(_loc4_)
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
                     if(!(_loc5_ && _loc2_))
                     {
                        continue loop0;
                     }
                  }
               }
               addr123:
               addr124:
               return §§pop();
            }
         }
         addr30:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§[!L§;
      }
      
      public function get §^b§() : Vector.<§7+§>
      {
         return this.§?2§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§5[§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§^!J§;
      }
   }
}
