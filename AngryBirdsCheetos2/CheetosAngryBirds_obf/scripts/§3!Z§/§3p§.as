package §3!Z§
{
   import §9t§.§=!>§;
   import §^a§.DisplayObject;
   import §^a§.Sprite;
   
   public class §3p§ extends §!'§
   {
      
      public static const §?!L§:Number = 1024;
      
      public static const §"r§:Number = 658;
      
      public static const §=!7§:Number = 55;
      
      public static const §!A§:String = "cubic_in_out";
      
      public static const §'!E§:String = "sin_in_out";
      
      public static const §2`§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?!L§ = 1024;
            loop0:
            while(true)
            {
               §"r§ = 658;
               loop1:
               while(true)
               {
                  §=!7§ = 55;
                  loop2:
                  do
                  {
                     §!A§ = "cubic_in_out";
                     while(true)
                     {
                        §'!E§ = "sin_in_out";
                        while(_loc1_)
                        {
                           continue loop1;
                           §2`§ = "none";
                           if(_loc1_ || §3p§)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(!_loc1_);
                  
                  if(!_loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private var §#W§:String;
      
      private var §7F§:Number;
      
      private var §6_§:Number;
      
      private var §]>§:Number;
      
      private var §7w§:Number;
      
      private var §[!5§:Boolean = true;
      
      private var § !H§:String = "cubic_in_out";
      
      public function §3p§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            super(param1,param2);
            while(true)
            {
               this.§#W§ = param3;
               while(true)
               {
                  this.§7F§ = param4;
                  §§goto(addr66);
               }
            }
         }
         addr66:
         while(true)
         {
            this.§6_§ = param5;
            do
            {
               this.§ !H§ = param6;
            }
            while(!_loc8_);
            
            if(_loc8_)
            {
               if(!_loc7_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr56:
      }
      
      public function set §%0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§[!5§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=!>§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_ || this)
         {
            §§push(param1);
            if(!(_loc5_ && param3))
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_)
                     {
                        addr49:
                        param1 = §§pop();
                        if(_loc6_ || param1)
                        {
                           addr57:
                           §§push(param1);
                           if(_loc6_ || this)
                           {
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§#W§))
                                    {
                                       if(_loc6_ || param3)
                                       {
                                          if(_loc4_.name == §+M§.§,z§)
                                          {
                                             if(_loc6_)
                                             {
                                                if(this.§[!5§)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§!!B§());
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() * this.§<m§(param1));
                                                         }
                                                      }
                                                      §§pop().x = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         addr147:
                                                         if(false)
                                                         {
                                                         }
                                                         addr173:
                                                         if(param1 >= this.time + duration)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr181:
                                                               §§push(false);
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  return §§pop();
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr200:
                                                               return true;
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   else
                                                   {
                                                      addr172:
                                                   }
                                                   addr149:
                                                   §§goto(addr173);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§!!B§());
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() * this.§<m§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                   §§goto(addr172);
                                                }
                                             }
                                             §§goto(addr147);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() - this.§7F§);
                                             }
                                             §§pop().x = §§pop();
                                             do
                                             {
                                                §§push(_loc4_);
                                                §§push(_loc4_.y);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() - this.§6_§);
                                                }
                                                §§pop().y = §§pop();
                                             }
                                             while(_loc5_);
                                             
                                             if(!(_loc5_ && param2))
                                             {
                                                §§goto(addr147);
                                             }
                                             else
                                             {
                                                §§goto(addr172);
                                             }
                                             addr160:
                                          }
                                          §§goto(addr172);
                                       }
                                       §§goto(addr160);
                                    }
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr147);
                           }
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr181);
               }
               §§goto(addr57);
            }
            §§goto(addr49);
         }
         §§goto(addr57);
      }
      
      private function §<m§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(§§pop() - this.time);
            if(_loc4_ || param1)
            {
               §§push(§§pop() / duration);
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = this.§ !H§;
         if(_loc4_)
         {
            §§push(§!A§);
            if(_loc4_ || param1)
            {
               §§push(_loc3_);
               if(!(_loc5_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && param1))
                     {
                        addr206:
                        §§push(0);
                        if(_loc5_)
                        {
                           addr226:
                        }
                     }
                     else
                     {
                        addr213:
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§goto(addr226);
                        }
                     }
                     §§goto(addr231);
                  }
                  else
                  {
                     §§goto(addr212);
                  }
               }
               §§goto(addr212);
            }
            addr212:
            if(§'!E§ === _loc3_)
            {
               §§goto(addr213);
            }
            else
            {
               §§push(2);
            }
            addr231:
            loop9:
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
                        addr172:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop2:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(1);
                                    loop5:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             break loop3;
                                          }
                                          continue loop3;
                                       }
                                       addr105:
                                       §§push(_loc2_);
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(2);
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         break loop9;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc4_ || _loc2_))
                                                      {
                                                         break loop9;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         break loop5;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop5;
                                             }
                                             addr149:
                                             _loc2_ = §§pop();
                                             return (Math.pow(_loc2_,3) + 2) / 2;
                                             addr118:
                                          }
                                          continue loop2;
                                       }
                                    }
                                    §§goto(addr163);
                                 }
                                 break loop9;
                              }
                              addr163:
                              return §§pop();
                           }
                        }
                     }
                  }
                  break;
               case 1:
                  §§push(Math.cos(Math.PI * _loc2_) - 1);
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        §§push(-§§pop());
                        if(!_loc5_)
                        {
                           if(_loc4_ || this)
                           {
                              if(_loc4_)
                              {
                                 §§push(2);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§goto(addr71);
                                 }
                                 else
                                 {
                                    §§goto(addr118);
                                 }
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr149);
                        }
                        addr71:
                        return §§pop();
                     }
                     §§goto(addr172);
                  }
            }
            return _loc2_;
         }
         §§goto(addr206);
      }
      
      protected function §!!B§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§[!5§)
            {
               if(_loc1_)
               {
                  addr23:
                  §§push(this.§]>§);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(§?!L§);
                     if(!(_loc2_ && this))
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc1_ || this)
                        {
                           return §§pop();
                        }
                        addr73:
                        §§push(§"r§);
                     }
                     return §§pop() - §§pop();
                  }
               }
               else
               {
                  addr69:
                  §§push(this.§7w§);
                  if(!_loc2_)
                  {
                     §§goto(addr73);
                  }
               }
               return §§pop();
            }
            §§goto(addr69);
         }
         §§goto(addr23);
      }
      
      public function §?<§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§]>§ = param1;
            do
            {
               this.§7w§ = param2;
            }
            while(_loc4_);
            
         }
      }
      
      override public function clone() : §!'§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3p§ = new §3p§(time,duration,this.§#W§,this.§7F§,this.§6_§,this.§ !H§);
         if(_loc3_ || _loc2_)
         {
            _loc1_.§]>§ = this.§]>§;
            while(true)
            {
               _loc1_.§7w§ = this.§7w§;
               loop1:
               while(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     _loc1_.§[!5§ = this.§[!5§;
                     if(_loc3_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr89);
      }
   }
}
