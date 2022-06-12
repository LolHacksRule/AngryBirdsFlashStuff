package §`!]§
{
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §6!D§.§0Y§;
   
   public class §9"-§ extends §>!D§
   {
      
      public static const §;H§:Number = 1024;
      
      public static const §+P§:Number = 658;
      
      public static const §0!4§:Number = 55;
      
      public static const §;"B§:String = "cubic_in_out";
      
      public static const §6+§:String = "sin_in_out";
      
      public static const §-%§:String = "none";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §9"-§))
         {
            §;H§ = 1024;
            loop0:
            do
            {
               §+P§ = 658;
               loop1:
               while(true)
               {
                  §0!4§ = 55;
                  do
                  {
                     §;"B§ = "cubic_in_out";
                     continue loop1;
                  }
                  while(_loc1_ && _loc2_);
                  
                  continue loop0;
               }
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private var §5!s§:String;
      
      private var §,!k§:Number;
      
      private var §!Q§:Number;
      
      private var §`w§:Number;
      
      private var §%m§:Number;
      
      private var §2!F§:Boolean = true;
      
      private var §%8§:String = "cubic_in_out";
      
      public function §9"-§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2);
            while(true)
            {
               this.§5!s§ = param3;
               addr81:
               while(true)
               {
                  this.§,!k§ = param4;
               }
               addr64:
               if(!(_loc8_ || param2))
               {
                  continue;
               }
               this.§%8§ = param6;
               addr71:
               if(!_loc7_)
               {
                  addr40:
                  if(_loc7_ && param1)
                  {
                     while(true)
                     {
                        this.§!Q§ = param5;
                        addr62:
                        while(!_loc7_)
                        {
                           §§goto(addr64);
                           §§goto(addr71);
                        }
                        §§goto(addr81);
                        §§goto(addr40);
                     }
                     addr76:
                  }
                  return;
               }
               §§goto(addr62);
            }
         }
         §§goto(addr76);
      }
      
      public function set §!!0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2!F§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0Y§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_ || this)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_ || param2)
                     {
                        addr49:
                        param1 = §§pop();
                        if(_loc6_ || this)
                        {
                           addr57:
                           §§push(param1);
                           if(_loc6_)
                           {
                              addr60:
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§5!s§))
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc4_.name == §>!H§.§>J§)
                                          {
                                             if(_loc6_)
                                             {
                                                if(this.§2!F§)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§,!$§());
                                                      if(_loc6_ || param3)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() * this.§7!<§(param1));
                                                         }
                                                      }
                                                      §§pop().x = §§pop();
                                                      if(_loc6_ || param2)
                                                      {
                                                         addr198:
                                                         if(param1 >= this.time + duration)
                                                         {
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               addr211:
                                                               §§push(false);
                                                               if(!_loc5_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr215:
                                                               return true;
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr215);
                                                         addr159:
                                                         addr127:
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   else
                                                   {
                                                      do
                                                      {
                                                         §§push(_loc4_);
                                                         §§push(_loc4_.y);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§push(§§pop() - this.§!Q§);
                                                         }
                                                         §§pop().y = §§pop();
                                                      }
                                                      while(!(_loc6_ || param1));
                                                      
                                                      if(!(_loc5_ && param3))
                                                      {
                                                         addr157:
                                                         if(false)
                                                         {
                                                         }
                                                         §§goto(addr198);
                                                      }
                                                      else
                                                      {
                                                         addr197:
                                                      }
                                                      §§goto(addr159);
                                                      addr170:
                                                   }
                                                   §§goto(addr157);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§,!$§());
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§push(§§pop() * this.§7!<§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr127);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() - this.§,!k§);
                                             }
                                             §§pop().x = §§pop();
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr198);
                                    }
                                 }
                                 §§goto(addr211);
                              }
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr215);
               }
               §§goto(addr57);
            }
            §§goto(addr49);
         }
         §§goto(addr215);
      }
      
      private function §7!<§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() - this.time);
            if(!_loc5_)
            {
               addr24:
               §§push(§§pop() / duration);
               if(_loc4_ || _loc2_)
               {
                  addr33:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               var _loc3_:* = this.§%8§;
               if(_loc4_ || this)
               {
                  §§push(§;"B§);
                  if(!_loc5_)
                  {
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc5_)
                           {
                              addr226:
                              §§push(0);
                              if(_loc4_ || _loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr238:
                              §§push(1);
                              if(_loc5_)
                              {
                              }
                           }
                           §§goto(addr246);
                        }
                        else
                        {
                           §§goto(addr237);
                        }
                     }
                     §§goto(addr237);
                  }
                  addr237:
                  if(§6+§ === _loc3_)
                  {
                     §§goto(addr238);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr246:
                  loop8:
                  switch(§§pop())
                  {
                     case 0:
                        addr190:
                        §§push(_loc2_);
                        §§push(2);
                        loop0:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr192:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr193:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr194:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!_loc5_)
                                    {
                                       §§push(1);
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(Math.pow(_loc2_,3) / 2);
                                                if(_loc4_)
                                                {
                                                   §§goto(addr185);
                                                }
                                                break loop8;
                                             }
                                          }
                                          §§push(_loc2_);
                                          if(!(_loc4_ || param1))
                                          {
                                             break loop8;
                                          }
                                          continue loop0;
                                       }
                                       addr169:
                                    }
                                    addr185:
                                    return §§pop();
                                 }
                                 break loop8;
                              }
                           }
                        }
                        break;
                        addr191:
                     case 1:
                        §§push(Math.cos(Math.PI * _loc2_) - 1);
                        if(!_loc5_)
                        {
                           if(_loc4_ || param1)
                           {
                              if(_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(-§§pop());
                                       if(!_loc5_)
                                       {
                                          §§push(2);
                                          if(!_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc4_ || this)
                                                {
                                                   addr75:
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr193);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                break;
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr151);
                                       }
                                       §§goto(addr75);
                                    }
                                    else
                                    {
                                       §§goto(addr190);
                                    }
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr75);
                  }
                  return _loc2_;
               }
               §§goto(addr226);
            }
            §§goto(addr33);
         }
         §§goto(addr24);
      }
      
      protected function §,!$§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§2!F§)
            {
               if(_loc1_)
               {
                  §§push(this.§`w§);
                  if(_loc1_ || _loc1_)
                  {
                     §§push(§;H§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc1_ || _loc1_)
                        {
                           return §§pop();
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr80);
                  }
                  else
                  {
                     addr78:
                     §§push(§+P§);
                  }
                  §§push(§§pop() - §§pop());
               }
               else
               {
                  addr69:
                  §§push(this.§%m§);
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr78);
                  }
               }
               addr80:
               return §§pop();
            }
         }
         §§goto(addr69);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§`w§ = param1;
         }
         do
         {
            this.§%m§ = param2;
         }
         while(_loc3_ && this);
         
      }
      
      override public function clone() : §>!D§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9"-§ = new §9"-§(time,duration,this.§5!s§,this.§,!k§,this.§!Q§,this.§%8§);
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.§`w§ = this.§`w§;
            while(true)
            {
               _loc1_.§%m§ = this.§%m§;
               while(!_loc3_)
               {
                  _loc1_.§2!F§ = this.§2!F§;
                  if(_loc2_)
                  {
                     return _loc1_;
                     addr70:
                  }
               }
            }
         }
         §§goto(addr70);
      }
   }
}
