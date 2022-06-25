package starling.events
{
   import §7!B§.DisplayObject;
   import §7!B§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §^!>§:String = "touch";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §^!>§ = "touch";
         }
      }
      
      private var §1^§:Vector.<§9!t§>;
      
      private var §95§:Boolean;
      
      private var §1!-§:Boolean;
      
      private var §96§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§9!t§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,param5);
            loop0:
            while(true)
            {
               §§push(this);
               if(_loc8_ || param3)
               {
                  §§pop().§1^§ = !!param2 ? param2 : new Vector.<§9!t§>(0);
                  loop1:
                  while(true)
                  {
                     this.§95§ = param3;
                     addr45:
                     while(_loc8_)
                     {
                        while(true)
                        {
                           this.§1!-§ = param4;
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               §§goto(addr69);
            }
         }
         §§goto(addr40);
      }
      
      public function §-g§(param1:DisplayObject, param2:String = null) : Vector.<§9!t§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§9!t§ = null;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§9!t§> = new Vector.<§9!t§>(0);
         var _loc4_:int = this.§1^§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§1^§[_loc5_]).target == param1);
            if(!(_loc9_ && this))
            {
               §§push(§§pop());
               if(_loc10_)
               {
                  if(!§§pop())
                  {
                     if(_loc10_)
                     {
                        §§pop();
                        if(_loc10_ || this)
                        {
                           §§push(param1 is DisplayObjectContainer);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              loop2:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr264:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          addr253:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr263:
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    addr255:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop11:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          addr257:
                                          while(true)
                                          {
                                             §§push(param2);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop() == null);
                                                addr223:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   addr224:
                                                   while(_loc10_ || param1)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§pop();
                                                               continue loop12;
                                                            }
                                                            §§goto(addr253);
                                                         }
                                                         addr242:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            addr195:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr196:
                                                               while(true)
                                                               {
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue loop11;
                                                            }
                                                         }
                                                         addr194:
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr186);
                     }
                     §§goto(addr253);
                  }
                  §§goto(addr255);
               }
               §§goto(addr166);
            }
            §§goto(addr163);
         }
         return _loc3_;
      }
      
      public function §4!,§(param1:DisplayObject, param2:String = null) : §9!t§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§9!t§> = this.§-g§(param1,param2);
         if(_loc5_ || _loc3_)
         {
            if(_loc3_.length > 0)
            {
               if(!_loc4_)
               {
                  §§goto(addr46);
               }
            }
            return null;
         }
         addr46:
         return _loc3_[0];
      }
      
      public function §;L§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§9!t§> = null;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            if(this.§4!,§(param1) == null)
            {
               if(_loc5_ || _loc2_)
               {
                  return false;
               }
            }
         }
         _loc2_ = this.§-g§(param1);
         if(!_loc4_)
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
                  while(_loc4_)
                  {
                     while(true)
                     {
                     }
                  }
                  continue;
                  addr91:
               }
               else if(_loc2_[_loc3_].phase != §^K§.§3!p§)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     §§goto(addr112);
                  }
                  §§goto(addr113);
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc5_ || param1)
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
         if(_loc5_)
         {
            return §§pop();
         }
         addr112:
         return true;
      }
      
      public function get timestamp() : Number
      {
         return this.§96§;
      }
      
      public function get §'F§() : Vector.<§9!t§>
      {
         return this.§1^§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§95§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§1!-§;
      }
   }
}
