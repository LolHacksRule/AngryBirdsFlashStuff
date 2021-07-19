package §7Z§
{
   import §2Y§.DisplayObject;
   import §2Y§.Sprite;
   import §=!<§.§>a§;
   
   public class §"q§ extends §^!§
   {
      
      public static const §3i§:Number = 1024;
      
      public static const §!!d§:Number = 658;
      
      public static const §`!0§:Number = 55;
      
      public static const §"U§:String = "cubic_in_out";
      
      public static const §,!e§:String = "sin_in_out";
      
      public static const §>&§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §"q§))
         {
            §3i§ = 1024;
            loop0:
            do
            {
               §!!d§ = 658;
               while(true)
               {
                  §`!0§ = 55;
                  loop2:
                  while(_loc1_)
                  {
                     §"U§ = "cubic_in_out";
                     do
                     {
                        §,!e§ = "sin_in_out";
                        while(!(_loc2_ && §"q§))
                        {
                           §>&§ = "none";
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr34);
                        }
                        continue loop2;
                     }
                     while(!_loc1_);
                     
                     continue loop0;
                  }
               }
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private var §,!E§:String;
      
      private var §"!d§:Number;
      
      private var §,!W§:Number;
      
      private var §@!-§:Number;
      
      private var §3S§:Number;
      
      private var §7!,§:Boolean = true;
      
      private var §>A§:String = "cubic_in_out";
      
      public function §"q§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            super(param1,param2);
            while(true)
            {
               this.§,!E§ = param3;
               while(!_loc7_)
               {
                  this.§"!d§ = param4;
                  loop2:
                  while(_loc8_ || param2)
                  {
                     while(true)
                     {
                        this.§,!W§ = param5;
                        while(!_loc7_)
                        {
                           this.§>A§ = param6;
                           if(!_loc7_)
                           {
                              return;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function set § !,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7!,§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>a§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(_loc5_ || param3)
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc6_ && param1))
                  {
                     §§push(Number(this.time + duration));
                     if(!(_loc6_ && param3))
                     {
                        param1 = §§pop();
                        if(!(_loc6_ && param3))
                        {
                           addr61:
                           §§push(param1);
                           if(!_loc5_)
                           {
                           }
                           addr183:
                           if(§§pop() >= this.time + duration)
                           {
                              if(!(_loc6_ && param3))
                              {
                                 §§push(false);
                                 if(!(_loc6_ && param1))
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr214:
                                 return true;
                              }
                              return §§pop();
                           }
                           §§goto(addr214);
                        }
                        addr74:
                        if(_loc4_ = param2.getChildByName(this.§,!E§))
                        {
                           if(_loc5_)
                           {
                              if(_loc4_.name == §&!Q§.§<!b§)
                              {
                                 if(_loc5_)
                                 {
                                    if(this.§7!,§)
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§2!f§());
                                          if(!_loc6_)
                                          {
                                             §§push(-§§pop());
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() * this.§'O§(param1));
                                             }
                                          }
                                          §§pop().x = §§pop();
                                          if(_loc6_)
                                          {
                                             addr181:
                                          }
                                          addr182:
                                          §§goto(addr183);
                                          §§push(param1);
                                          addr146:
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc4_);
                                       §§push(this.§2!f§());
                                       if(_loc5_ || param3)
                                       {
                                          §§push(§§pop() * this.§'O§(param1));
                                       }
                                       §§pop().y = §§pop();
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(_loc4_);
                                 §§push(_loc4_.x);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() - this.§"!d§);
                                 }
                                 §§pop().x = §§pop();
                                 while(true)
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr182);
                     }
                     if(§§pop() > this.time)
                     {
                        if(_loc5_ || this)
                        {
                           §§goto(addr74);
                        }
                        §§goto(addr214);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr214);
               }
            }
            §§goto(addr61);
         }
         §§goto(addr74);
      }
      
      private function §'O§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() - this.time);
            if(_loc4_)
            {
               §§push(§§pop() / duration);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = this.§>A§;
         if(!_loc5_)
         {
            §§push(§"U§);
            if(!(_loc5_ && _loc3_))
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           addr281:
                        }
                     }
                     else
                     {
                        addr263:
                        §§push(1);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§goto(addr281);
                        }
                     }
                     addr286:
                     loop10:
                     switch(§§pop())
                     {
                        case 0:
                           addr225:
                           §§push(_loc2_);
                           §§push(2);
                           loop0:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr227:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr228:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    §§push(_loc2_);
                                    addr205:
                                    while(true)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           if(§§pop() < §§pop())
                           {
                              §§goto(addr220);
                           }
                           else
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 while(true)
                                 {
                                    §§push(2);
                                    addr185:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push((Math.pow(_loc2_,3) + 2) / 2);
                                             break loop10;
                                          }
                                          break;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           break;
                           addr226:
                        case 1:
                           §§push(Math.cos(Math.PI * _loc2_) - 1);
                           if(!(_loc5_ && param1))
                           {
                              if(_loc4_ || param1)
                              {
                                 §§push(-§§pop());
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                §§push(2);
                                                if(!_loc5_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(!(_loc5_ && this))
                                                      {
                                                         addr107:
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            return §§pop();
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr206);
                                                   }
                                                }
                                                §§goto(addr185);
                                             }
                                             else
                                             {
                                                §§goto(addr225);
                                             }
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr205);
                                    }
                                    addr220:
                                    return Math.pow(_loc2_,3) / 2;
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr107);
                        default:
                           addr289:
                           return §§pop();
                     }
                     §§push(_loc2_);
                     continue loop9;
                  }
                  addr261:
                  §§push(§,!e§);
                  §§push(_loc3_);
                  §§goto(addr263);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr263);
               }
               else
               {
                  §§push(2);
               }
               §§goto(addr286);
            }
            §§goto(addr261);
         }
         §§goto(addr263);
      }
      
      protected function §2!f§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§7!,§)
            {
               if(_loc1_ || this)
               {
                  §§push(this.§@!-§);
                  if(_loc1_ || this)
                  {
                     §§goto(addr85);
                  }
                  §§goto(addr83);
               }
               else
               {
                  addr64:
                  §§push(this.§3S§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr83);
                  }
               }
               addr85:
               §§push(§3i§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() - §§pop());
                  if(_loc1_ || this)
                  {
                     return §§pop();
                  }
                  addr83:
                  §§push(§!!d§);
               }
               return §§pop() - §§pop();
            }
         }
         §§goto(addr64);
      }
      
      public function §1n§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§@!-§ = param1;
         }
         do
         {
            this.§3S§ = param2;
         }
         while(_loc3_);
         
      }
      
      override public function clone() : §^!§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§"q§ = new §"q§(time,duration,this.§,!E§,this.§"!d§,this.§,!W§,this.§>A§);
         if(_loc2_ || _loc1_)
         {
            _loc1_.§@!-§ = this.§@!-§;
            while(true)
            {
               _loc1_.§3S§ = this.§3S§;
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     _loc1_.§7!,§ = this.§7!,§;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr78);
      }
   }
}
