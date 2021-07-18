package §8a§
{
   import §4W§.§!]§;
   import §`a§.DisplayObject;
   import §`a§.Sprite;
   
   public class §?W§ extends §'!U§
   {
      
      public static const §"L§:Number = 1024;
      
      public static const §#S§:Number = 658;
      
      public static const §-!%§:Number = 55;
      
      public static const §6!!§:String = "cubic_in_out";
      
      public static const §?-§:String = "sin_in_out";
      
      public static const §-!A§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §"L§ = 1024;
            while(true)
            {
               §#S§ = 658;
               addr60:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §?-§ = "sin_in_out";
               loop4:
               while(!_loc2_)
               {
                  §-!A§ = "none";
                  if(_loc1_ || _loc2_)
                  {
                     addr34:
                     if(!_loc1_)
                     {
                        while(true)
                        {
                           §-!%§ = 55;
                           addr82:
                           while(true)
                           {
                              §6!!§ = "cubic_in_out";
                              break loop4;
                           }
                           §§goto(addr34);
                        }
                        addr87:
                     }
                     return;
                  }
               }
               while(!_loc2_)
               {
                  §§goto(addr60);
               }
               §§goto(addr82);
            }
         }
         §§goto(addr87);
      }
      
      private var §8k§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §?l§:Number;
      
      private var §+G§:Number;
      
      private var §5!O§:Boolean = true;
      
      private var §&!9§:String = "cubic_in_out";
      
      public function §?W§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            super(param1,param2);
            loop0:
            do
            {
               this.§8k§ = param3;
               while(true)
               {
                  this.mX = param4;
                  while(!_loc8_)
                  {
                     this.mY = param5;
                     while(_loc7_)
                     {
                        this.§&!9§ = param6;
                        if(_loc7_ || this)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(!_loc7_);
            
         }
      }
      
      public function set §#^§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§5!O§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!]§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc6_ && param1))
                  {
                     §§push(Number(this.time + duration));
                     if(!(_loc6_ && this))
                     {
                        addr48:
                        param1 = §§pop();
                        if(_loc5_ || this)
                        {
                           addr56:
                           §§push(param1);
                           if(_loc5_ || this)
                           {
                              addr64:
                              if(§§pop() > this.time)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§8k§))
                                    {
                                       if(_loc5_ || param2)
                                       {
                                          if(_loc4_.name == §do§.§5!%§)
                                          {
                                             if(_loc5_)
                                             {
                                                if(this.§5!O§)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§<!7§());
                                                      if(_loc5_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() * this.§+r§(param1));
                                                         }
                                                      }
                                                      §§pop().x = §§pop();
                                                      if(_loc6_)
                                                      {
                                                         addr181:
                                                      }
                                                      addr182:
                                                      if(param1 >= this.time + duration)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(false);
                                                            if(_loc5_ || param1)
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr209:
                                                            return true;
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr209);
                                                      addr146:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         §§push(_loc4_.y);
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§push(§§pop() - this.mY);
                                                         }
                                                         §§pop().y = §§pop();
                                                         if(!(_loc5_ || param3))
                                                         {
                                                            continue;
                                                         }
                                                         if(false)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§<!7§());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() * this.§+r§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                                §§goto(addr181);
                                             }
                                             §§goto(addr144);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(_loc5_ || param3)
                                             {
                                                §§push(§§pop() - this.mX);
                                             }
                                             §§pop().x = §§pop();
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr144);
                                    }
                                 }
                                 §§goto(addr209);
                              }
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr209);
               }
               §§goto(addr56);
            }
            §§goto(addr48);
         }
         §§goto(addr209);
      }
      
      private function §+r§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() - this.time);
            if(_loc4_ || _loc2_)
            {
               addr34:
               §§push(§§pop() / duration);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§&!9§;
            if(_loc4_ || _loc3_)
            {
               §§push(§6!!§);
               if(_loc4_)
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           addr231:
                           §§push(0);
                           if(_loc5_)
                           {
                              addr256:
                           }
                        }
                        else
                        {
                           addr238:
                           §§push(1);
                           if(_loc4_ || _loc3_)
                           {
                              §§goto(addr256);
                           }
                        }
                        §§goto(addr261);
                     }
                     else
                     {
                        §§goto(addr237);
                     }
                  }
                  §§goto(addr237);
               }
               addr237:
               if(§?-§ === _loc3_)
               {
                  §§goto(addr238);
               }
               else
               {
                  §§push(2);
               }
               addr261:
               loop6:
               switch(§§pop())
               {
                  case 0:
                     §§push(_loc2_);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(2);
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                           }
                           break loop6;
                        }
                        break;
                        addr199:
                     }
                     loop1:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§push(_loc2_);
                        loop2:
                        while(true)
                        {
                           §§push(1);
                           loop3:
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 §§push(Math.pow(_loc2_,3) / 2);
                                 break;
                              }
                              addr133:
                              §§push(_loc2_);
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(2);
                                 while(true)
                                 {
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       continue loop3;
                                    }
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc4_)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc5_)
                                             {
                                             }
                                             break loop6;
                                          }
                                          break loop3;
                                       }
                                       if(_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§goto(addr108);
                                          }
                                          else
                                          {
                                             addr263:
                                          }
                                          §§push(_loc2_);
                                          break loop6;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr199);
                                 }
                              }
                           }
                           return §§pop();
                        }
                     }
                     break;
                  case 1:
                     §§push(Math.cos(Math.PI * _loc2_) - 1);
                     if(_loc4_ || this)
                     {
                        §§push(-§§pop());
                        if(_loc5_)
                        {
                        }
                        break;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        if(!_loc5_)
                        {
                           §§push(2);
                           if(_loc4_ || this)
                           {
                              §§push(§§pop() / §§pop());
                              if(_loc4_ || _loc3_)
                              {
                                 return §§pop();
                              }
                              break;
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr133);
                     }
                     addr108:
                     return (Math.pow(_loc2_,3) + 2) / 2;
                  default:
                     §§goto(addr263);
               }
               return §§pop();
            }
            §§goto(addr231);
         }
         §§goto(addr34);
      }
      
      protected function §<!7§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§5!O§)
            {
               if(!(_loc1_ && this))
               {
                  addr44:
                  §§push(this.§?l§);
                  if(!_loc1_)
                  {
                     §§push(§"L§);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc1_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr80:
                        return §§pop() - §§pop();
                     }
                  }
               }
               else
               {
                  addr60:
                  §§push(this.§+G§);
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr80);
                     return §#S§;
                  }
               }
               return §§pop();
            }
            §§goto(addr60);
         }
         §§goto(addr44);
      }
      
      public function §,L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§?l§ = param1;
            do
            {
               this.§+G§ = param2;
            }
            while(!_loc3_);
            
         }
      }
      
      override public function clone() : §'!U§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§?W§ = new §?W§(time,duration,this.§8k§,this.mX,this.mY,this.§&!9§);
         if(_loc3_ || _loc2_)
         {
            _loc1_.§?l§ = this.§?l§;
         }
         while(true)
         {
            _loc1_.§+G§ = this.§+G§;
            while(_loc3_)
            {
               _loc1_.§5!O§ = this.§5!O§;
               if(_loc3_ || _loc1_)
               {
                  return _loc1_;
               }
            }
         }
      }
   }
}
