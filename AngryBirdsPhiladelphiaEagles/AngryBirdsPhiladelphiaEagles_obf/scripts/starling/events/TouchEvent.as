package starling.events
{
   import § N§.DisplayObject;
   import § N§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §=!?§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || TouchEvent)
         {
            §=!?§ = "touch";
         }
      }
      
      private var §>!8§:Vector.<§!g§>;
      
      private var §;^§:Boolean;
      
      private var §"A§:Boolean;
      
      private var §;!5§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§!g§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            super(param1,param5);
         }
         while(true)
         {
            §§push(this);
            if(_loc9_)
            {
               §§pop().§>!8§ = !!param2 ? param2 : new Vector.<§!g§>(0);
               continue;
            }
            §§goto(addr73);
         }
      }
      
      public function §-!3§(param1:DisplayObject, param2:String = null) : Vector.<§!g§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:§!g§ = null;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§!g§> = new Vector.<§!g§>(0);
         var _loc4_:int = this.§>!8§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§>!8§[_loc5_]).target == param1);
            §§push((_loc6_ = this.§>!8§[_loc5_]).target == param1);
            if(!(_loc10_ && param1))
            {
               if(!§§pop())
               {
                  if(_loc9_)
                  {
                     §§pop();
                     §§push(param1 is DisplayObjectContainer);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop());
                        addr207:
                        loop17:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 loop11:
                                 while(true)
                                 {
                                    §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                    if(_loc9_ || param2)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    addr193:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr194:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          if(!(_loc10_ && this))
                                          {
                                             break;
                                          }
                                          continue loop11;
                                       }
                                       §§push(param2);
                                       loop15:
                                       while(true)
                                       {
                                          §§push(§§pop() == null);
                                          §§push(§§pop() == null);
                                          addr150:
                                          loop13:
                                          while(true)
                                          {
                                             if(_loc9_ || _loc3_)
                                             {
                                                if(!§§pop())
                                                {
                                                   addr158:
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr166:
                                                         while(true)
                                                         {
                                                            §§push(param2);
                                                            if(_loc9_ || this)
                                                            {
                                                               §§push(§§pop() == _loc6_.phase);
                                                               break loop13;
                                                            }
                                                            continue loop15;
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                      addr165:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr194);
                                                   }
                                                }
                                                break;
                                             }
                                             continue loop17;
                                          }
                                          while(true)
                                          {
                                             _loc8_ = §§pop();
                                             loop5:
                                             while(true)
                                             {
                                                §§push(Boolean(_loc7_));
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               _loc3_.push(_loc6_);
                                                            }
                                                         }
                                                         _loc5_++;
                                                         if(_loc9_ || this)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                               addr74:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc9_ || param2)
                                                               {
                                                                  continue loop6;
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop0;
                                                      addr108:
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§pop();
                                                      if(_loc9_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   continue loop17;
                                                }
                                                §§goto(addr150);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr193);
                           }
                        }
                     }
                  }
                  §§goto(addr165);
               }
               §§goto(addr193);
            }
            §§goto(addr207);
         }
         return _loc3_;
      }
      
      public function §,f§(param1:DisplayObject, param2:String = null) : §!g§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§!g§> = this.§-!3§(param1,param2);
         if(_loc4_ || this)
         {
            if(_loc3_.length > 0)
            {
               if(_loc4_)
               {
                  return _loc3_[0];
               }
            }
         }
         return null;
      }
      
      public function §'M§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§!g§> = null;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            if(this.§,f§(param1) == null)
            {
               if(!_loc4_)
               {
                  §§goto(addr31);
               }
            }
            _loc2_ = this.§-!3§(param1);
            if(_loc5_ || this)
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            while(true)
            {
               §§push(_loc3_);
               if(!_loc4_)
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     while(!_loc5_)
                     {
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr91:
                  }
                  else if(_loc2_[_loc3_].phase != §else§.§1!9§)
                  {
                     if(_loc5_)
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr108);
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        §§push(§§pop() - 1);
                     }
                  }
               }
               while(true)
               {
                  _loc3_ = §§pop();
                  §§goto(addr91);
               }
            }
            §§push(false);
            if(_loc5_ || param1)
            {
               return §§pop();
            }
            addr107:
            return true;
         }
         addr31:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§;!5§;
      }
      
      public function get § T§() : Vector.<§!g§>
      {
         return this.§>!8§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§;^§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§"A§;
      }
   }
}
