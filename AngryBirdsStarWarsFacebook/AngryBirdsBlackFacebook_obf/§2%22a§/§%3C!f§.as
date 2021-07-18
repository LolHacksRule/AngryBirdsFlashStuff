package §2"a§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §7!F§.§7§;
   
   public class §<!f§ extends §,^§
   {
      
      public static const §%N§:Number = 1024;
      
      public static const §>#O§:Number = 658;
      
      public static const §#! §:Number = 55;
      
      public static const §]!&§:String = "cubic_in_out";
      
      public static const §6#]§:String = "sin_in_out";
      
      public static const §5#D§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%N§ = 1024;
            while(true)
            {
               §>#O§ = 658;
               while(true)
               {
                  §#! § = 55;
                  addr65:
                  while(!_loc2_)
                  {
                  }
               }
            }
            addr86:
         }
         loop3:
         while(true)
         {
            §]!&§ = "cubic_in_out";
            while(_loc1_)
            {
               §6#]§ = "sin_in_out";
               while(!(_loc2_ && _loc1_))
               {
                  §5#D§ = "none";
                  if(!_loc1_)
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     break loop3;
                  }
                  §§goto(addr86);
               }
            }
            §§goto(addr65);
         }
      }
      
      private var §-!`§:String;
      
      private var §8!+§:Number;
      
      private var §=!Z§:Number;
      
      private var §6"?§:Number;
      
      private var §[!4§:Number;
      
      private var §61§:Boolean = true;
      
      private var §;"-§:String = "cubic_in_out";
      
      public function §<!f§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            super(param1,param2);
            loop0:
            do
            {
               this.§-!`§ = param3;
               while(true)
               {
                  this.§8!+§ = param4;
                  while(_loc7_)
                  {
                     this.§=!Z§ = param5;
                     while(!_loc8_)
                     {
                        this.§;"-§ = param6;
                        if(!(_loc8_ && param3))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(!(_loc7_ || this));
            
         }
      }
      
      public function set §[S§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§61§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7#5§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!_loc5_)
                  {
                     §§push(Number(this.time + duration));
                     if(!_loc5_)
                     {
                        addr39:
                        param1 = §§pop();
                        if(!_loc5_)
                        {
                           addr42:
                           §§push(param1);
                           if(!(_loc5_ && this))
                           {
                              addr50:
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    addr60:
                                    if(_loc4_ = param2.getChildByName(this.§-!`§))
                                    {
                                       if(_loc6_ || param3)
                                       {
                                          if(_loc4_.name == §%#`§.§1R§)
                                          {
                                             if(_loc6_)
                                             {
                                                if(this.§61§)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      addr87:
                                                      §§push(_loc4_);
                                                      §§push(this.§"o§());
                                                      if(_loc6_ || param3)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc6_ || param3)
                                                         {
                                                            addr115:
                                                            §§push(§§pop() * this.§="a§(param1));
                                                         }
                                                         §§pop().x = §§pop();
                                                         if(!(_loc5_ && param3))
                                                         {
                                                            addr178:
                                                            if(param1 >= this.time + duration)
                                                            {
                                                               if(!(_loc5_ && param3))
                                                               {
                                                                  addr191:
                                                                  §§push(false);
                                                                  if(_loc6_ || param3)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr210:
                                                                  return true;
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr210);
                                                            addr147:
                                                            addr127:
                                                         }
                                                         else
                                                         {
                                                            addr145:
                                                            if(false)
                                                            {
                                                               §§goto(addr147);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      §§goto(addr115);
                                                   }
                                                   §§goto(addr145);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§"o§());
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      §§push(§§pop() * this.§="a§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                   addr177:
                                                }
                                                §§goto(addr178);
                                             }
                                             §§goto(addr127);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() - this.§8!+§);
                                             }
                                             §§pop().x = §§pop();
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue;
                                                }
                                             }
                                             §§goto(addr178);
                                          }
                                       }
                                       §§goto(addr87);
                                    }
                                 }
                                 §§goto(addr191);
                              }
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr50);
                  }
               }
               §§goto(addr42);
            }
            §§goto(addr39);
         }
         §§goto(addr60);
      }
      
      private function §="a§(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() - this.time);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() / duration);
               if(_loc5_ || this)
               {
                  addr39:
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§;"-§;
            if(_loc5_ || param1)
            {
               §§push(§]!&§);
               if(!(_loc4_ && param1))
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                           if(_loc5_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr239:
                           §§push(1);
                           if(_loc4_ && param1)
                           {
                           }
                        }
                        addr262:
                        loop9:
                        switch(§§pop())
                        {
                           case 0:
                              addr189:
                              §§push(_loc2_);
                              §§push(2);
                              loop0:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                    loop1:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       loop2:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc4_)
                                          {
                                             §§push(1);
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   break loop2;
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   break loop1;
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc4_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!(_loc5_ || _loc3_))
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            addr265:
                                                            §§goto(addr142);
                                                         }
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop1;
                                             }
                                             addr168:
                                          }
                                          §§goto(addr184);
                                       }
                                       continue loop0;
                                    }
                                    if(_loc4_ && this)
                                    {
                                       break loop9;
                                    }
                                    addr184:
                                    return §§pop();
                                    §§push(Math.pow(_loc2_,3) / 2);
                                 }
                                 addr142:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc4_ && _loc3_)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 return §§pop();
                              }
                              break;
                              addr190:
                           case 1:
                              §§push(Math.cos(Math.PI * _loc2_) - 1);
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(-§§pop());
                                       if(_loc5_ || param1)
                                       {
                                          §§push(2);
                                          if(!(_loc4_ && param1))
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc5_ || param1)
                                                {
                                                   §§goto(addr87);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr168);
                                             }
                                             §§goto(addr265);
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr87);
                                    }
                                    else
                                    {
                                       §§goto(addr189);
                                    }
                                 }
                                 §§goto(addr108);
                              }
                              addr87:
                              return §§pop();
                        }
                        §§goto(addr265);
                        §§push(_loc2_);
                     }
                     else
                     {
                        addr237:
                        §§push(§6#]§);
                        §§push(_loc3_);
                     }
                     §§goto(addr239);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr239);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr262);
               }
               §§goto(addr237);
            }
            §§goto(addr239);
         }
         §§goto(addr39);
      }
      
      protected function §"o§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§61§)
            {
               if(_loc2_)
               {
                  §§push(this.§6"?§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§%N§);
                     if(_loc2_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc2_ || _loc1_)
                        {
                           return §§pop();
                        }
                        addr74:
                        §§push(§>#O§);
                     }
                     return §§pop() - §§pop();
                  }
               }
               else
               {
                  addr55:
                  §§push(this.§[!4§);
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr74);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr55);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§6"?§ = param1;
            do
            {
               this.§[!4§ = param2;
            }
            while(_loc4_ && param1);
            
         }
      }
      
      override public function clone() : §,^§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§<!f§ = new §<!f§(time,duration,this.§-!`§,this.§8!+§,this.§=!Z§,this.§;"-§);
         if(!_loc3_)
         {
            _loc1_.§6"?§ = this.§6"?§;
            while(true)
            {
               _loc1_.§[!4§ = this.§[!4§;
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            _loc1_.§61§ = this.§61§;
            if(_loc2_)
            {
               if(_loc2_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
         return _loc1_;
      }
   }
}
