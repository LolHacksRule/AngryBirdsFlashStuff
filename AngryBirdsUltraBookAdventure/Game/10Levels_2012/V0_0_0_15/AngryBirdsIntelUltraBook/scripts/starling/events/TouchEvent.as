package starling.events
{
   import §_-uY§.DisplayObject;
   import §_-uY§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §_-ed§:String = "touch";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && TouchEvent))
         {
            §_-ed§ = "touch";
         }
      }
      
      private var §_-Lx§:Vector.<§_-06V§>;
      
      private var §_-8a§:Boolean;
      
      private var §_-05K§:Boolean;
      
      private var §_-0CR§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§_-06V§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param5);
            loop0:
            while(true)
            {
               §§push(this);
               if(_loc9_)
               {
                  §§pop().§_-Lx§ = !!param2 ? param2 : new Vector.<§_-06V§>(0);
                  while(true)
                  {
                     this.§_-8a§ = param3;
                     addr48:
                     while(true)
                     {
                        addr32:
                        while(true)
                        {
                           this.§_-05K§ = param4;
                           continue loop0;
                        }
                     }
                  }
                  addr76:
               }
               §§goto(addr65);
            }
         }
         while(true)
         {
            this.§_-0CR§ = -1;
            if(!_loc8_)
            {
               if(!_loc8_)
               {
                  if(!_loc8_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr32);
                  }
                  §§goto(addr76);
               }
               §§goto(addr48);
            }
            §§goto(addr36);
         }
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(true)
         {
            if(_loc7_ >= _loc6_)
            {
               if(!(_loc8_ && this))
               {
                  break;
               }
               while(true)
               {
                  if(!_loc8_)
                  {
                     if(_loc9_)
                     {
                        break;
                     }
                     addr129:
                     while(true)
                     {
                        this.§_-0CR§ = param2[_loc7_].timestamp;
                     }
                  }
                  while(true)
                  {
                  }
               }
               continue;
               addr115:
            }
            else if(param2[_loc7_].timestamp > this.§_-0CR§)
            {
               §§goto(addr129);
            }
            while(true)
            {
               _loc7_++;
               §§goto(addr115);
            }
         }
      }
      
      public function §_-y4§(param1:DisplayObject, param2:String = null) : Vector.<§_-06V§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§_-06V§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§_-06V§> = new Vector.<§_-06V§>(0);
         var _loc4_:int = this.§_-Lx§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§_-Lx§[_loc5_]).target == param1);
            if(_loc10_)
            {
               §§push(§§pop());
               if(!_loc9_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc9_ && param2))
                     {
                        §§pop();
                        if(!_loc9_)
                        {
                           §§push(param1 is DisplayObjectContainer);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              addr257:
                              loop14:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       §§pop();
                                       loop16:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          loop17:
                                          while(_loc10_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc9_ && param1)
                                             {
                                             }
                                             loop19:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                loop20:
                                                while(_loc10_)
                                                {
                                                   §§push(param2);
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == null);
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop23:
                                                         while(_loc10_ || this)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     loop29:
                                                                     while(!_loc9_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc10_ || param2))
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 if(!(_loc10_ || _loc3_))
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 if(_loc9_ && param1)
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       addr134:
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop10:
                                                                                             while(!(_loc9_ && this))
                                                                                             {
                                                                                                if(_loc9_ && param1)
                                                                                                {
                                                                                                   continue loop29;
                                                                                                }
                                                                                                _loc3_.push(_loc6_);
                                                                                                loop11:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr68:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_++;
                                                                                                      if(_loc10_ || this)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               break loop9;
                                                                                                               addr81:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc10_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc9_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                                  if(!(_loc10_ || param1))
                                                                                                                  {
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                               addr107:
                                                                                                               if(!(_loc9_ && param2))
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               addr247:
                                                                                                               addr195:
                                                                                                               addr179:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     break loop10;
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  §§goto(addr107);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr248:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr81);
                                                                                                §§goto(addr135);
                                                                                             }
                                                                                             addr135:
                                                                                          }
                                                                                          §§goto(addr68);
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr133:
                                                                                 }
                                                                                 §§goto(addr179);
                                                                              }
                                                                              continue loop22;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(!_loc9_)
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     continue loop20;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                }
                                                continue loop16;
                                             }
                                          }
                                          continue loop15;
                                       }
                                    }
                                 }
                                 §§goto(addr247);
                              }
                           }
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr248);
               }
               §§goto(addr257);
            }
            §§goto(addr249);
         }
         return _loc3_;
      }
      
      public function §_-MV§(param1:DisplayObject, param2:String = null) : §_-06V§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§_-06V§> = this.§_-y4§(param1,param2);
         if(_loc4_)
         {
            if(_loc3_.length > 0)
            {
               if(_loc4_ || this)
               {
                  §§goto(addr45);
               }
            }
            return null;
         }
         addr45:
         return _loc3_[0];
      }
      
      public function §_-Se§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§_-06V§> = null;
         var _loc3_:* = 0;
         if(!(_loc4_ && this))
         {
            if(this.§_-MV§(param1) == null)
            {
               if(!_loc4_)
               {
                  return false;
               }
            }
         }
         _loc2_ = this.§_-y4§(param1);
         if(_loc5_ || _loc2_)
         {
            _loc3_ = int(_loc2_.length - 1);
         }
         do
         {
            §§push(_loc3_);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  if(_loc5_ || param1)
                  {
                     §§push(false);
                     if(_loc5_)
                     {
                        return §§pop();
                     }
                     addr127:
                     return §§pop();
                  }
                  loop1:
                  while(_loc4_ && _loc3_)
                  {
                     while(true)
                     {
                        _loc3_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               if(_loc2_[_loc3_].phase != §_-tW§.§_-0Cc§)
               {
                  break;
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
            §§goto(addr90);
         }
         while(_loc5_ || param1);
         
         §§goto(addr127);
         §§push(true);
      }
      
      public function get timestamp() : Number
      {
         return this.§_-0CR§;
      }
      
      public function get §_-zX§() : Vector.<§_-06V§>
      {
         return this.§_-Lx§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-8a§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-05K§;
      }
   }
}
