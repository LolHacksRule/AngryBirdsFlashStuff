package §"!&§
{
   import §,6§.§!o§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   
   public class §,w§ extends §!!%§
   {
      
      public static const §]m§:Number = 1024;
      
      public static const §0N§:Number = 658;
      
      public static const §]@§:Number = 55;
      
      public static const §<g§:String = "cubic_in_out";
      
      public static const §=!W§:String = "sin_in_out";
      
      public static const §5!L§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §,w§)
         {
            §]m§ = 1024;
            loop0:
            while(true)
            {
               §0N§ = 658;
               loop1:
               while(true)
               {
                  §]@§ = 55;
                  while(true)
                  {
                     §<g§ = "cubic_in_out";
                     continue loop1;
                     addr61:
                     if(!(_loc2_ && _loc1_))
                     {
                        if(_loc1_)
                        {
                           §5!L§ = "none";
                           addr80:
                           if(_loc1_ || §,w§)
                           {
                              addr54:
                              return;
                              addr54:
                           }
                           while(_loc1_ || §,w§)
                           {
                              §§goto(addr61);
                              §§goto(addr80);
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §=!W§ = "sin_in_out";
            §§goto(addr54);
         }
      }
      
      private var §0!T§:String;
      
      private var §;!@§:Number;
      
      private var §3L§:Number;
      
      private var §>!D§:Number;
      
      private var §7!3§:Number;
      
      private var §#!h§:Boolean = true;
      
      private var §2§:String = "cubic_in_out";
      
      public function §,w§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2);
            while(true)
            {
               this.§0!T§ = param3;
               loop2:
               for(; _loc7_ || this; if(_loc7_ || param3)
               {
                  return;
               })
               {
                  this.§3L§ = param5;
                  while(!(_loc8_ && param1))
                  {
                     this.§2§ = param6;
                     if(_loc7_)
                     {
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     this.§;!@§ = param4;
                     continue loop2;
                     §§goto(addr61);
                  }
                  addr61:
               }
            }
         }
         §§goto(addr85);
      }
      
      public function set §!&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#!h§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!o§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(_loc5_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(Number(this.time + duration));
                     if(_loc5_)
                     {
                        param1 = §§pop();
                        if(_loc5_)
                        {
                           addr46:
                           §§push(param1);
                           if(!(_loc6_ && param3))
                           {
                              addr54:
                              if(§§pop() > this.time)
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    addr64:
                                    if(_loc4_ = param2.getChildByName(this.§0!T§))
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc4_.name == §+l§.§82§)
                                          {
                                             if(_loc5_)
                                             {
                                                if(this.§#!h§)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      addr86:
                                                      §§push(_loc4_);
                                                      §§push(this.§6!0§());
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc5_ || param3)
                                                         {
                                                            addr114:
                                                            §§push(§§pop() * this.§<!M§(param1));
                                                         }
                                                         §§pop().x = §§pop();
                                                         if(_loc6_)
                                                         {
                                                            addr186:
                                                         }
                                                         addr187:
                                                         if(param1 >= this.time + duration)
                                                         {
                                                            if(!(_loc6_ && this))
                                                            {
                                                               addr200:
                                                               §§push(false);
                                                               if(!_loc6_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr204:
                                                               return true;
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr204);
                                                         addr148:
                                                      }
                                                      §§goto(addr114);
                                                   }
                                                   else
                                                   {
                                                      do
                                                      {
                                                         §§push(_loc4_);
                                                         §§push(_loc4_.y);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§push(§§pop() - this.§3L§);
                                                         }
                                                         §§pop().y = §§pop();
                                                      }
                                                      while(_loc6_);
                                                      
                                                      if(_loc5_ || param1)
                                                      {
                                                         if(false)
                                                         {
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr186);
                                                      }
                                                      addr159:
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§6!0§());
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      §§push(§§pop() * this.§<!M§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                                §§goto(addr186);
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() - this.§;!@§);
                                             }
                                             §§pop().x = §§pop();
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr86);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr204);
                              }
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr64);
               }
               §§goto(addr46);
            }
            §§goto(addr54);
         }
         §§goto(addr64);
      }
      
      private function §<!M§(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(§§pop() - this.time);
            if(!_loc4_)
            {
               addr30:
               §§push(§§pop() / duration);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§2§;
            if(_loc5_ || param1)
            {
               §§push(§<g§);
               if(_loc5_ || _loc2_)
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && this))
                        {
                           addr252:
                           §§push(0);
                           if(_loc4_)
                           {
                              addr267:
                           }
                        }
                        else
                        {
                           addr259:
                           §§push(1);
                           if(_loc5_ || this)
                           {
                              §§goto(addr267);
                           }
                        }
                        addr272:
                        loop5:
                        switch(§§pop())
                        {
                           case 0:
                              addr203:
                              §§push(_loc2_);
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr202:
                                 §§push(§§pop() * 2);
                              }
                              §§push(Number(§§pop()));
                              loop0:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 loop1:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr163:
                                    while(true)
                                    {
                                       §§push(1);
                                       loop2:
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             §§push(_loc2_);
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(2);
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc5_ || param1)
                                                      {
                                                         break loop0;
                                                      }
                                                      addr157:
                                                      _loc2_ = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr117);
                                                      }
                                                      break loop5;
                                                   }
                                                   continue loop2;
                                                }
                                                addr146:
                                             }
                                          }
                                          if(_loc4_)
                                          {
                                             break loop5;
                                          }
                                          if(_loc5_ || _loc2_)
                                          {
                                             break loop1;
                                          }
                                          continue loop1;
                                       }
                                       break loop5;
                                    }
                                 }
                                 §§push(Math.pow(_loc2_,3) / 2);
                                 if(!_loc5_)
                                 {
                                    return §§pop();
                                 }
                                 addr275:
                                 if(_loc5_ || param1)
                                 {
                                    return §§pop();
                                 }
                              }
                              §§goto(addr157);
                           case 1:
                              §§push(Number(§§pop()));
                              §§push(Math.cos(Math.PI * _loc2_) - 1);
                              if(!(_loc4_ && _loc2_))
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(-§§pop());
                                       if(_loc5_ || param1)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(2);
                                                if(!_loc4_)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr91);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr202);
                                                   }
                                                   §§goto(addr275);
                                                }
                                                §§goto(addr146);
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr157);
                                       }
                                       §§goto(addr91);
                                    }
                                    §§goto(addr203);
                                 }
                                 addr117:
                                 return (Math.pow(_loc2_,3) + 2) / 2;
                              }
                              addr91:
                              return §§pop();
                        }
                        §§goto(addr275);
                        §§push(_loc2_);
                     }
                     else
                     {
                        addr258:
                        if(§=!W§ === _loc3_)
                        {
                           §§goto(addr259);
                        }
                        else
                        {
                           §§push(2);
                        }
                        §§goto(addr272);
                     }
                     §§goto(addr259);
                  }
               }
               §§goto(addr258);
            }
            §§goto(addr252);
         }
         §§goto(addr30);
      }
      
      protected function §6!0§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§#!h§)
            {
               if(_loc2_ || _loc1_)
               {
                  §§push(this.§>!D§);
                  if(!_loc1_)
                  {
                     §§push(§]m§);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc2_ || _loc1_))
                        {
                           §§goto(addr76);
                        }
                     }
                     else
                     {
                        addr75:
                        addr76:
                        return §§pop();
                        §§push(§§pop() - §§pop());
                     }
                     §§goto(addr76);
                  }
                  return §§pop();
               }
               addr70:
               §§push(this.§7!3§);
               if(_loc2_)
               {
                  §§goto(addr75);
                  §§push(§0N§);
               }
               §§goto(addr76);
            }
         }
         §§goto(addr70);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§>!D§ = param1;
         }
         do
         {
            this.§7!3§ = param2;
         }
         while(_loc3_ && param2);
         
      }
      
      override public function clone() : §!!%§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§,w§ = new §,w§(time,duration,this.§0!T§,this.§;!@§,this.§3L§,this.§2§);
         if(!_loc3_)
         {
            _loc1_.§>!D§ = this.§>!D§;
            while(true)
            {
               _loc1_.§7!3§ = this.§7!3§;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     _loc1_.§#!h§ = this.§#!h§;
                     if(!(_loc3_ && this))
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
