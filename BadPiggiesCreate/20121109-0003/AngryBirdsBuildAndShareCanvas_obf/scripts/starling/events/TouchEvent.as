package starling.events
{
   import §+!-§.DisplayObject;
   import §+!-§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §5!z§:String = "touch";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §5!z§ = "touch";
         }
      }
      
      private var §3`§:Vector.<§;g§>;
      
      private var §?m§:Boolean;
      
      private var §+t§:Boolean;
      
      private var §8^§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§;g§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param2)
         {
            super(param1,param5);
            loop0:
            while(true)
            {
               §§push(this);
               if(_loc8_ || param2)
               {
                  §§pop().§3`§ = !!param2 ? param2 : new Vector.<§;g§>(0);
                  loop1:
                  while(true)
                  {
                     this.§?m§ = param3;
                     loop2:
                     for(; !_loc9_; while(_loc8_ || param2)
                     {
                        this.§8^§ = -1;
                        if(!(_loc9_ && this))
                        {
                           continue loop1;
                        }
                     })
                     {
                        while(true)
                        {
                           do
                           {
                              this.§+t§ = param4;
                              continue loop2;
                           }
                           while(false);
                           
                           var _loc6_:int = param2.length;
                           var _loc7_:int = 0;
                           while(true)
                           {
                              if(_loc7_ >= _loc6_)
                              {
                                 if(!(_loc8_ || param3))
                                 {
                                    continue;
                                 }
                                 if(!(_loc9_ && param1))
                                 {
                                    break;
                                 }
                                 addr159:
                              }
                              else if(param2[_loc7_].timestamp > this.§8^§)
                              {
                                 if(_loc8_)
                                 {
                                    this.§8^§ = param2[_loc7_].timestamp;
                                 }
                                 §§goto(addr159);
                              }
                              _loc7_++;
                           }
                           return;
                        }
                     }
                     continue loop0;
                     if(_loc9_ && param1)
                     {
                        continue;
                     }
                     §§goto(addr42);
                  }
               }
               §§goto(addr84);
            }
         }
         §§goto(addr62);
      }
      
      public function §8[§(param1:DisplayObject, param2:String = null) : Vector.<§;g§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§;g§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§;g§> = new Vector.<§;g§>(0);
         var _loc4_:int = this.§3`§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§3`§[_loc5_]).target == param1);
            if(_loc10_ || param1)
            {
               §§push(§§pop());
               if(!_loc9_)
               {
                  if(!§§pop())
                  {
                     if(!_loc9_)
                     {
                        §§pop();
                        if(!_loc9_)
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
                                    loop3:
                                    while(true)
                                    {
                                       §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          while(!_loc9_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr188:
                                             if(!(_loc10_ || param2))
                                             {
                                                continue;
                                             }
                                             _loc8_ = §§pop();
                                             loop14:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                loop15:
                                                while(true)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     §§pop();
                                                                     break;
                                                                  }
                                                                  addr226:
                                                                  while(true)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     addr227:
                                                                     while(true)
                                                                     {
                                                                        §§push(param2);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == null);
                                                                           addr201:
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              addr202:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc10_ || param1))
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr211:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             §§push(param2);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             §§push(§§pop() == _loc6_.phase);
                                                                                             if(_loc10_ || this)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   continue loop27;
                                                                                                }
                                                                                                §§goto(addr188);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr210:
                                                                                    }
                                                                                    §§goto(addr184);
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           addr98:
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc9_ && _loc3_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           if(!(_loc9_ && param2))
                                                                           {
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    addr132:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue loop24;
                                                                                             }
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                _loc3_.push(_loc6_);
                                                                                                addr144:
                                                                                                loop7:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr68:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_++;
                                                                                                      if(!(_loc10_ || this))
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      if(_loc10_ || param1)
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      §§goto(addr227);
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                                addr144:
                                                                                             }
                                                                                             §§goto(addr211);
                                                                                          }
                                                                                          §§goto(addr144);
                                                                                       }
                                                                                       §§goto(addr68);
                                                                                    }
                                                                                 }
                                                                                 addr131:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr225:
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr226);
                                                                                 }
                                                                                 addr225:
                                                                              }
                                                                              §§goto(addr227);
                                                                           }
                                                                           §§goto(addr186);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr159);
                                                                        }
                                                                     }
                                                                     §§goto(addr98);
                                                                  }
                                                               }
                                                               addr159:
                                                            }
                                                            §§goto(addr131);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                   }
                                                   §§goto(addr201);
                                                }
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr225);
                                 }
                              }
                           }
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr225);
               }
               §§goto(addr209);
            }
            §§goto(addr210);
         }
         return _loc3_;
      }
      
      public function §!m§(param1:DisplayObject, param2:String = null) : §;g§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§;g§> = this.§8[§(param1,param2);
         if(!(_loc5_ && param1))
         {
            if(_loc3_.length > 0)
            {
               if(_loc4_)
               {
                  §§goto(addr55);
               }
            }
            return null;
         }
         addr55:
         return _loc3_[0];
      }
      
      public function §"8§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§;g§> = null;
         var _loc3_:* = 0;
         if(!(_loc5_ && _loc3_))
         {
            if(this.§!m§(param1) == null)
            {
               if(_loc4_)
               {
                  §§goto(addr35);
               }
            }
            _loc2_ = this.§8[§(param1);
            if(!_loc5_)
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            do
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(_loc4_)
                  {
                     if(§§pop() < 0)
                     {
                        if(_loc5_ && _loc2_)
                        {
                           continue;
                        }
                        if(_loc4_ || param1)
                        {
                           §§push(false);
                           if(!_loc5_)
                           {
                              return §§pop();
                           }
                           addr111:
                           return §§pop();
                        }
                     }
                     else if(_loc2_[_loc3_].phase != §-!#§.§&i§)
                     {
                        break;
                     }
                     §§push(_loc3_);
                  }
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
            while(_loc4_);
            
            §§goto(addr111);
            §§push(true);
         }
         addr35:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§8^§;
      }
      
      public function get §5n§() : Vector.<§;g§>
      {
         return this.§3`§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§?m§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§+t§;
      }
   }
}
