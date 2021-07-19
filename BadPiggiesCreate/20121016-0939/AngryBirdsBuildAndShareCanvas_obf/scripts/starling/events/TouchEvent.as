package starling.events
{
   import §default§.DisplayObject;
   import §default§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §9>§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9>§ = "touch";
         }
      }
      
      private var §^!v§:Vector.<§1[§>;
      
      private var §<!!§:Boolean;
      
      private var §47§:Boolean;
      
      private var §->§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§1[§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param2)
         {
            super(param1,param5);
            loop0:
            while(true)
            {
               §§push(this);
               if(_loc9_ || this)
               {
                  §§pop().§^!v§ = !!param2 ? param2 : new Vector.<§1[§>(0);
                  while(true)
                  {
                     this.§<!!§ = param3;
                     while(_loc9_)
                     {
                        continue loop0;
                        loop5:
                        while(_loc9_ || this)
                        {
                           this.§->§ = -1;
                           if(!_loc8_)
                           {
                              addr31:
                              if(false)
                              {
                                 while(true)
                                 {
                                    this.§47§ = param4;
                                    continue loop5;
                                    §§goto(addr31);
                                 }
                                 addr97:
                                 var _loc6_:int = param2.length;
                                 var _loc7_:int = 0;
                                 addr33:
                              }
                              else
                              {
                                 §§goto(addr97);
                              }
                              while(true)
                              {
                                 if(_loc7_ >= _loc6_)
                                 {
                                    if(_loc9_ || this)
                                    {
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          addr120:
                                          while(true)
                                          {
                                             _loc7_++;
                                          }
                                          addr144:
                                          while(true)
                                          {
                                             this.§->§ = param2[_loc7_].timestamp;
                                             continue loop8;
                                          }
                                       }
                                    }
                                    while(!_loc9_)
                                    {
                                       §§goto(addr144);
                                    }
                                    continue;
                                 }
                                 if(param2[_loc7_].timestamp > this.§->§)
                                 {
                                    §§goto(addr144);
                                 }
                                 §§goto(addr120);
                              }
                              return;
                           }
                        }
                     }
                  }
               }
               §§goto(addr80);
            }
         }
         while(true)
         {
            §§goto(addr33);
         }
      }
      
      public function §<C§(param1:DisplayObject, param2:String = null) : Vector.<§1[§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§1[§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§1[§> = new Vector.<§1[§>(0);
         var _loc4_:int = this.§^!v§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§^!v§[_loc5_]).target == param1);
            if(!_loc9_)
            {
               §§push(§§pop());
               if(!(_loc9_ && param1))
               {
                  if(!§§pop())
                  {
                     if(_loc10_)
                     {
                        §§pop();
                        if(!(_loc9_ && param2))
                        {
                           §§push(param1 is DisplayObjectContainer);
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
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr144:
                                             if(!(_loc10_ || this))
                                             {
                                                continue;
                                             }
                                             §§pop();
                                             loop21:
                                             while(true)
                                             {
                                                if(_loc10_)
                                                {
                                                   addr154:
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc10_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               addr88:
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc10_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           if(!_loc9_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 _loc3_.push(_loc6_);
                                                                              }
                                                                              addr100:
                                                                           }
                                                                           else
                                                                           {
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc10_ || param1))
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§push(param2);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(§§pop() == _loc6_.phase);
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc10_ || _loc3_))
                                                                                       {
                                                                                          addr210:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             addr211:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                addr212:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param2);
                                                                                                   addr184:
                                                                                                   loop15:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == null);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr189:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  break loop15;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr210:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc9_ && param1))
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                }
                                                                                                addr130:
                                                                                                §§push(Boolean(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc9_);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr137:
                                                                                                      if(this)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            §§goto(addr144);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr189);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr137);
                                                                                                   §§goto(addr130);
                                                                                                }
                                                                                                loop9:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_++;
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   addr103:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                }
                                                                                                continue loop0;
                                                                                                addr73:
                                                                                                addr131:
                                                                                                addr174:
                                                                                             }
                                                                                             §§goto(addr211);
                                                                                             §§goto(addr212);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr184);
                                                                              }
                                                                           }
                                                                           §§goto(addr73);
                                                                        }
                                                                        §§goto(addr103);
                                                                     }
                                                                     §§goto(addr130);
                                                                  }
                                                               }
                                                               §§goto(addr106);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr131);
                                                            }
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                      §§goto(addr88);
                                                   }
                                                }
                                                §§goto(addr174);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr210);
                                 }
                              }
                              if(!(_loc10_ || this))
                              {
                                 continue;
                              }
                              §§goto(addr130);
                           }
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr210);
               }
               §§goto(addr191);
            }
            §§goto(addr211);
         }
         return _loc3_;
      }
      
      public function §package§(param1:DisplayObject, param2:String = null) : §1[§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§1[§> = this.§<C§(param1,param2);
         if(!_loc4_)
         {
            if(_loc3_.length > 0)
            {
               if(_loc5_ || this)
               {
                  §§goto(addr56);
               }
            }
            return null;
         }
         addr56:
         return _loc3_[0];
      }
      
      public function §]%§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§1[§> = null;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            if(this.§package§(param1) == null)
            {
               if(_loc4_)
               {
                  §§goto(addr30);
               }
            }
            _loc2_ = this.§<C§(param1);
            if(_loc4_ || this)
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            while(true)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     if(§§pop() < 0)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        loop2:
                        while(!(_loc4_ || _loc2_))
                        {
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        continue;
                        addr75:
                     }
                     else if(_loc2_[_loc3_].phase != §<!h§.§,"#§)
                     {
                        if(_loc4_)
                        {
                           §§goto(addr106);
                        }
                        §§goto(addr107);
                     }
                     while(true)
                     {
                        §§push(_loc3_);
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() - 1);
                  }
               }
               while(true)
               {
                  _loc3_ = §§pop();
                  §§goto(addr75);
               }
            }
            §§push(false);
            if(!_loc5_)
            {
               return §§pop();
            }
            addr106:
            return true;
         }
         addr30:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§->§;
      }
      
      public function get §[!d§() : Vector.<§1[§>
      {
         return this.§^!v§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§<!!§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§47§;
      }
   }
}
