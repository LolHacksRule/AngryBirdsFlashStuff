package starling.events
{
   import §^V§.DisplayObject;
   import §^V§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §[<§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || TouchEvent)
         {
            §[<§ = "touch";
         }
      }
      
      private var §^!B§:Vector.<§ K§>;
      
      private var §8!8§:Boolean;
      
      private var §5!?§:Boolean;
      
      private var §-!A§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§ K§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param5);
            while(true)
            {
               §§push(this);
               if(!(_loc8_ && param1))
               {
                  §§pop().§^!B§ = !!param2 ? param2 : new Vector.<§ K§>(0);
                  while(!_loc8_)
                  {
                     this.§8!8§ = param3;
                     while(!_loc8_)
                     {
                        loop3:
                        while(true)
                        {
                           this.§5!?§ = param4;
                           do
                           {
                              this.§-!A§ = -1;
                           }
                           while(!_loc9_);
                           
                           if(!(_loc8_ && param1))
                           {
                              while(false)
                              {
                                 continue loop3;
                              }
                              var _loc6_:int = param2.length;
                              var _loc7_:int = 0;
                              while(true)
                              {
                                 if(_loc7_ >= _loc6_)
                                 {
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(_loc9_ || param1)
                                       {
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          addr134:
                                          while(true)
                                          {
                                             this.§-!A§ = param2[_loc7_].timestamp;
                                          }
                                       }
                                       while(true)
                                       {
                                       }
                                    }
                                    continue;
                                    addr115:
                                 }
                                 else if(param2[_loc7_].timestamp > this.§-!A§)
                                 {
                                    §§goto(addr134);
                                 }
                                 while(true)
                                 {
                                    _loc7_++;
                                    §§goto(addr115);
                                 }
                              }
                              return;
                              addr33:
                           }
                           break;
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr68);
            }
         }
         §§goto(addr33);
      }
      
      public function §`o§(param1:DisplayObject, param2:String = null) : Vector.<§ K§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§ K§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§ K§> = new Vector.<§ K§>(0);
         var _loc4_:int = this.§^!B§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§^!B§[_loc5_]).target == param1);
            §§push((_loc6_ = this.§^!B§[_loc5_]).target == param1);
            if(_loc10_)
            {
               if(!§§pop())
               {
                  §§pop();
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(param1 is DisplayObjectContainer);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop());
                        addr219:
                        loop21:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 addr212:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop20:
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       loop13:
                                       while(true)
                                       {
                                          §§push(param2);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop() == null);
                                             if(!(_loc10_ || param2))
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                }
                                                continue loop20;
                                                addr220:
                                             }
                                             §§push(§§pop());
                                             loop11:
                                             while(§§pop())
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      while(true)
                                                      {
                                                         _loc8_ = §§pop();
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               §§push(_loc7_);
                                                               if(!(_loc10_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc10_ || param1))
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(_loc9_ && param2)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     while(!(_loc10_ || param1))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§pop();
                                                                     addr143:
                                                                     while(true)
                                                                     {
                                                                        addr70:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(_loc8_));
                                                                           if(_loc10_)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr135);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr135:
                                                                     addr143:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           if(!(_loc10_ || _loc3_))
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           _loc3_.push(_loc6_);
                                                                           while(!(_loc9_ && param2))
                                                                           {
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 §§push(param2);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() == _loc6_.phase);
                                                                                    continue loop7;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           addr91:
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc5_++;
                                                                        if(_loc10_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr91);
                                                                     }
                                                                     if(true)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr70);
                                                                  }
                                                                  §§goto(addr143);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§pop();
                                             §§goto(addr176);
                                             while(true)
                                             {
                                                §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                                if(_loc10_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop20;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr211:
                           }
                           §§goto(addr220);
                        }
                     }
                  }
                  §§goto(addr143);
               }
               §§goto(addr212);
            }
            §§goto(addr219);
         }
         return _loc3_;
      }
      
      public function §!!?§(param1:DisplayObject, param2:String = null) : § K§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§ K§> = this.§`o§(param1,param2);
         if(_loc4_)
         {
            if(_loc3_.length > 0)
            {
               if(!_loc5_)
               {
                  §§goto(addr40);
               }
            }
            return null;
         }
         addr40:
         return _loc3_[0];
      }
      
      public function §8<§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§ K§> = null;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            if(this.§!!?§(param1) == null)
            {
               if(_loc5_)
               {
                  return false;
               }
            }
         }
         _loc2_ = this.§`o§(param1);
         if(_loc5_)
         {
            _loc3_ = int(_loc2_.length - 1);
         }
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || _loc2_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() < 0)
                  {
                     if(_loc4_ && _loc2_)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        §§push(false);
                        if(!_loc4_)
                        {
                           return §§pop();
                        }
                        addr112:
                        return §§pop();
                     }
                     addr113:
                  }
                  else if(_loc2_[_loc3_].phase != §"e§.§"m§)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     §§goto(addr113);
                  }
                  §§push(_loc3_);
               }
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         §§goto(addr112);
         §§push(true);
      }
      
      public function get timestamp() : Number
      {
         return this.§-!A§;
      }
      
      public function get §@G§() : Vector.<§ K§>
      {
         return this.§^!B§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§8!8§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§5!?§;
      }
   }
}
