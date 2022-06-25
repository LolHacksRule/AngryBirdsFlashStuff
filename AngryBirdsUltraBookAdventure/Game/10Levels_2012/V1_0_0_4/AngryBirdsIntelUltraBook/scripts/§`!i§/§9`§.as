package §`!i§
{
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   
   public class §9`§ extends §8d§
   {
      
      public static const §[o§:Number = 1024;
      
      public static const §-S§:Number = 658;
      
      public static const §@0§:Number = 55;
      
      public static const §%!S§:String = "cubic_in_out";
      
      public static const §5z§:String = "sin_in_out";
      
      public static const §3!V§:String = "none";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §9`§))
         {
            §[o§ = 1024;
            while(true)
            {
               §-S§ = 658;
               loop1:
               for(; !_loc1_; while(_loc2_ || §9`§)
               {
                  for(; !_loc1_; §3!V§ = "none",if(!_loc1_)
                  {
                     return;
                  })
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr81);
                  }
               })
               {
                  §@0§ = 55;
                  while(true)
                  {
                     §%!S§ = "cubic_in_out";
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §5z§ = "sin_in_out";
            §§goto(addr50);
         }
      }
      
      private var §!0§:String;
      
      private var §,G§:Number;
      
      private var §78§:Number;
      
      private var §'O§:Number;
      
      private var §!!A§:Number;
      
      private var §8v§:Boolean = true;
      
      private var §,s§:String = "cubic_in_out";
      
      public function §9`§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§!0§ = param3;
               loop1:
               while(true)
               {
                  this.§,G§ = param4;
                  while(true)
                  {
                     this.§78§ = param5;
                     loop3:
                     while(_loc8_ || param3)
                     {
                        if(!_loc7_)
                        {
                           if(_loc8_)
                           {
                              while(true)
                              {
                                 this.§,s§ = param6;
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              return;
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function set §1!P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8v§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,Q§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_ || this)
         {
            §§push(param1);
            if(!_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!_loc5_)
                  {
                     addr37:
                     §§push(Number(this.time + duration));
                     if(_loc6_)
                     {
                        param1 = §§pop();
                        if(_loc6_)
                        {
                           addr47:
                           §§push(param1);
                           if(!(_loc5_ && param3))
                           {
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§!0§))
                                    {
                                       if(_loc6_)
                                       {
                                          if(_loc4_.name == §;!@§.§ 1§)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(this.§8v§)
                                                {
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§%!J§());
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(-§§pop());
                                                         if(!_loc5_)
                                                         {
                                                            addr110:
                                                            §§push(§§pop() * this.§'X§(param1));
                                                         }
                                                         §§pop().x = §§pop();
                                                         if(_loc6_ || this)
                                                         {
                                                            addr183:
                                                            if(param1 >= this.time + duration)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  addr191:
                                                                  §§push(false);
                                                                  if(!_loc5_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr195:
                                                                  return true;
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr195);
                                                            addr144:
                                                            addr122:
                                                         }
                                                         else
                                                         {
                                                            addr142:
                                                            if(false)
                                                            {
                                                               §§goto(addr144);
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                      §§goto(addr110);
                                                   }
                                                   §§goto(addr122);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§%!J§());
                                                   if(_loc6_ || param3)
                                                   {
                                                      §§push(§§pop() * this.§'X§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                   addr182:
                                                }
                                                §§goto(addr183);
                                             }
                                             §§goto(addr182);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() - this.§,G§);
                                             }
                                             §§pop().x = §§pop();
                                          }
                                          do
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.y);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() - this.§78§);
                                             }
                                             §§pop().y = §§pop();
                                          }
                                          while(!(_loc6_ || param2));
                                          
                                          if(_loc6_)
                                          {
                                             §§goto(addr142);
                                          }
                                          else
                                          {
                                             §§goto(addr182);
                                          }
                                       }
                                       §§goto(addr182);
                                    }
                                 }
                                 §§goto(addr191);
                              }
                           }
                           §§goto(addr183);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr183);
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr183);
         }
         §§goto(addr37);
      }
      
      private function §'X§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() - this.time);
            if(!_loc5_)
            {
               addr29:
               §§push(§§pop() / duration);
               if(!_loc5_)
               {
                  addr33:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               var _loc3_:* = this.§,s§;
               if(!_loc5_)
               {
                  §§push(§%!S§);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(_loc3_);
                     if(_loc4_ || this)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc4_)
                           {
                              addr231:
                              §§push(0);
                              if(_loc5_)
                              {
                                 addr246:
                              }
                           }
                           else
                           {
                              addr238:
                              §§push(1);
                              if(!(_loc5_ && this))
                              {
                                 §§goto(addr246);
                              }
                           }
                           §§goto(addr251);
                        }
                        else
                        {
                           §§goto(addr237);
                        }
                     }
                     §§goto(addr237);
                  }
                  addr237:
                  if(§5z§ === _loc3_)
                  {
                     §§goto(addr238);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr251:
                  loop10:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(_loc2_);
                        loop0:
                        while(true)
                        {
                           §§push(2);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              loop2:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr193:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    §§push(_loc2_);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(1);
                                       loop5:
                                       while(!(_loc5_ && _loc3_))
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             §§push(Math.pow(_loc2_,3) / 2);
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   break loop2;
                                                }
                                                continue loop2;
                                             }
                                             addr183:
                                          }
                                          else
                                          {
                                             §§push(_loc2_);
                                             if(_loc5_ && this)
                                             {
                                                break loop10;
                                             }
                                             §§push(2);
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc5_ && this)
                                                   {
                                                      break loop4;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                    continue loop0;
                                 }
                                 continue loop0;
                              }
                              return §§pop();
                           }
                        }
                        break;
                     case 1:
                        §§push(Math.cos(Math.PI * _loc2_) - 1);
                        if(_loc4_)
                        {
                           if(!(_loc5_ && this))
                           {
                              if(!(_loc5_ && param1))
                              {
                                 §§push(-§§pop());
                                 if(!_loc5_)
                                 {
                                    §§push(2);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(_loc4_)
                                       {
                                          addr69:
                                          if(_loc4_ || _loc3_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr157);
                                       }
                                       break;
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr69);
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr69);
                  }
                  return _loc2_;
               }
               §§goto(addr231);
            }
            §§goto(addr33);
         }
         §§goto(addr29);
      }
      
      protected function §%!J§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§8v§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr49:
                  §§push(this.§'O§);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(§[o§);
                     if(!_loc1_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc1_)
                        {
                           return §§pop();
                        }
                        addr74:
                        §§push(§-S§);
                     }
                     return §§pop() - §§pop();
                  }
               }
               else
               {
                  addr65:
                  §§push(this.§!!A§);
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr74);
                  }
               }
               return §§pop();
            }
            §§goto(addr65);
         }
         §§goto(addr49);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§'O§ = param1;
            do
            {
               this.§!!A§ = param2;
            }
            while(_loc3_ && param1);
            
         }
      }
      
      override public function clone() : §8d§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9`§ = new §9`§(time,duration,this.§!0§,this.§,G§,this.§78§,this.§,s§);
         if(!(_loc3_ && this))
         {
            _loc1_.§'O§ = this.§'O§;
            do
            {
               _loc1_.§!!A§ = this.§!!A§;
               do
               {
                  _loc1_.§8v§ = this.§8v§;
               }
               while(_loc3_ && _loc2_);
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
         return _loc1_;
      }
   }
}
