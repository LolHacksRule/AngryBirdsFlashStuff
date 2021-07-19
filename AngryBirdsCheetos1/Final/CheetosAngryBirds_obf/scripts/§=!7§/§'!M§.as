package §=!7§
{
   import § `§.§2w§;
   import §]@§.DisplayObject;
   import §]@§.Sprite;
   
   public class §'!M§ extends §%f§
   {
      
      public static const §;#§:Number = 1024;
      
      public static const §0h§:Number = 658;
      
      public static const §'w§:Number = 55;
      
      public static const §]!3§:String = "cubic_in_out";
      
      public static const §@!A§:String = "sin_in_out";
      
      public static const §2H§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;#§ = 1024;
            loop0:
            while(true)
            {
               §0h§ = 658;
               loop1:
               while(true)
               {
                  §'w§ = 55;
                  addr75:
                  while(!_loc2_)
                  {
                     §]!3§ = "cubic_in_out";
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr58);
      }
      
      private var §8?§:String;
      
      private var §<!Y§:Number;
      
      private var § l§:Number;
      
      private var §^!I§:Number;
      
      private var §,!X§:Number;
      
      private var §=!H§:Boolean = true;
      
      private var §`Z§:String = "cubic_in_out";
      
      public function §'!M§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§8?§ = param3;
            loop1:
            do
            {
               this.§<!Y§ = param4;
               while(!_loc8_)
               {
                  this.§ l§ = param5;
                  do
                  {
                     this.§`Z§ = param6;
                  }
                  while(_loc8_ && param1);
                  
                  if(_loc7_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!(_loc7_ || param2));
            
            return;
         }
      }
      
      public function set §9![§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=!H§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2w§) : Boolean
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
                     §§push(Number(this.time + duration));
                     if(_loc6_ || param1)
                     {
                        param1 = §§pop();
                        if(!_loc5_)
                        {
                           addr52:
                           §§push(param1);
                           if(!(_loc5_ && param2))
                           {
                              if(§§pop() > this.time)
                              {
                                 if(!_loc5_)
                                 {
                                    addr65:
                                    if(_loc4_ = param2.getChildByName(this.§8?§))
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          if(_loc4_.name == §3&§.§[!M§)
                                          {
                                             if(!_loc5_)
                                             {
                                                addr87:
                                                if(this.§=!H§)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§4]§());
                                                      if(_loc6_ || param3)
                                                      {
                                                         §§push(-§§pop());
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() * this.§"!<§(param1));
                                                         }
                                                      }
                                                      §§pop().x = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         addr167:
                                                      }
                                                      addr168:
                                                      if(param1 >= this.time + duration)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            addr176:
                                                            §§push(false);
                                                            if(!(_loc5_ && param2))
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
                                                      addr142:
                                                   }
                                                   else
                                                   {
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         §§push(_loc4_.y);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() - this.§ l§);
                                                         }
                                                         §§pop().y = §§pop();
                                                         if(_loc6_ || param2)
                                                         {
                                                            if(false)
                                                            {
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr167);
                                                               continue loop1;
                                                            }
                                                            addr153:
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§4]§());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() * this.§"!<§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                             }
                                             §§goto(addr167);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() - this.§<!Y§);
                                             }
                                             §§pop().x = §§pop();
                                          }
                                          §§goto(addr153);
                                       }
                                       §§goto(addr87);
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr176);
                              }
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr195);
                     }
                     §§goto(addr168);
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr168);
         }
         §§goto(addr65);
      }
      
      private function §"!<§(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || this)
         {
            §§push(§§pop() - this.time);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() / duration);
               if(_loc5_ || this)
               {
                  addr44:
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§`Z§;
            if(_loc5_)
            {
               §§push(§]!3§);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                           if(_loc4_ && this)
                           {
                           }
                        }
                        else
                        {
                           addr239:
                           §§push(1);
                           if(!_loc5_)
                           {
                           }
                        }
                        addr257:
                        loop12:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(_loc2_);
                              loop0:
                              while(true)
                              {
                                 §§push(2);
                                 addr197:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop1:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr199:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          loop2:
                                          do
                                          {
                                             §§push(_loc2_);
                                             loop3:
                                             do
                                             {
                                                §§push(1);
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         break loop12;
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§push(_loc2_);
                                                   loop4:
                                                   for(; !_loc4_; if(_loc5_ || this)
                                                   {
                                                      continue loop3;
                                                   })
                                                   {
                                                      §§push(2);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr161:
                                                            loop9:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  break loop5;
                                                               }
                                                               _loc2_ = §§pop();
                                                               if(!(_loc5_ || _loc2_))
                                                               {
                                                                  break loop12;
                                                               }
                                                               §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             while(!_loc5_);
                                             
                                             return §§pop();
                                          }
                                          while(_loc4_ && _loc2_);
                                          
                                          §§goto(addr191);
                                       }
                                    }
                                 }
                              }
                              break;
                           case 1:
                              §§push(Math.cos(Math.PI * _loc2_) - 1);
                              if(!(_loc4_ && _loc2_))
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       §§push(-§§pop());
                                       if(_loc5_)
                                       {
                                          if(_loc5_ || this)
                                          {
                                             §§push(2);
                                             if(_loc5_ || this)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         addr106:
                                                         if(_loc5_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr139);
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr175);
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr106);
                                    }
                                    §§goto(addr199);
                                 }
                                 addr191:
                                 return Math.pow(_loc2_,3) / 2;
                              }
                              §§goto(addr260);
                        }
                        addr260:
                        return §§pop();
                        §§push(_loc2_);
                     }
                     else
                     {
                        addr237:
                        §§push(§@!A§);
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
                  §§goto(addr257);
               }
               §§goto(addr237);
            }
            §§goto(addr239);
         }
         §§goto(addr44);
      }
      
      protected function §4]§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§=!H§)
            {
               if(!_loc2_)
               {
                  addr33:
                  §§push(this.§^!I§);
                  if(_loc1_)
                  {
                     §§push(§;#§);
                     if(_loc1_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc2_ && this))
                        {
                           return §§pop();
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr65);
                  }
                  else
                  {
                     addr63:
                     §§push(§0h§);
                  }
                  §§push(§§pop() - §§pop());
               }
               else
               {
                  addr59:
                  §§push(this.§,!X§);
                  if(_loc1_)
                  {
                     §§goto(addr63);
                  }
               }
               addr65:
               return §§pop();
            }
            §§goto(addr59);
         }
         §§goto(addr33);
      }
      
      public function §%r§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§^!I§ = param1;
         }
         do
         {
            this.§,!X§ = param2;
         }
         while(_loc3_);
         
      }
      
      override public function clone() : §%f§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§'!M§ = new §'!M§(time,duration,this.§8?§,this.§<!Y§,this.§ l§,this.§`Z§);
         if(!_loc2_)
         {
            _loc1_.§^!I§ = this.§^!I§;
         }
         while(true)
         {
            _loc1_.§,!X§ = this.§,!X§;
            while(_loc3_)
            {
               _loc1_.§=!H§ = this.§=!H§;
               if(_loc3_)
               {
                  return _loc1_;
               }
            }
         }
      }
   }
}
