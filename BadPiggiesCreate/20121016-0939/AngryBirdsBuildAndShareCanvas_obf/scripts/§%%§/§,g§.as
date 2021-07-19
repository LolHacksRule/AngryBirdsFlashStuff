package §%%§
{
   import §&"5§.§7!P§;
   import §default§.DisplayObject;
   import §default§.Sprite;
   
   public class §,g§ extends §#K§
   {
      
      public static const §^!N§:Number = 1024;
      
      public static const §5!P§:Number = 658;
      
      public static const §3!@§:Number = 55;
      
      public static const §`!9§:String = "cubic_in_out";
      
      public static const §]!t§:String = "sin_in_out";
      
      public static const §^0§:String = "none";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!N§ = 1024;
         }
         loop0:
         while(true)
         {
            §5!P§ = 658;
            while(true)
            {
               §3!@§ = 55;
               loop2:
               while(true)
               {
                  §`!9§ = "cubic_in_out";
                  do
                  {
                     §]!t§ = "sin_in_out";
                     continue loop2;
                  }
                  while(!_loc2_);
                  
                  continue loop0;
               }
            }
         }
      }
      
      private var §3!3§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §7!T§:Number;
      
      private var §>w§:Number;
      
      private var §4!M§:Boolean = true;
      
      private var §#!W§:String = "cubic_in_out";
      
      public function §,g§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param3))
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§3!3§ = param3;
            while(true)
            {
               this.mX = param4;
               addr57:
               while(_loc8_ || param1)
               {
                  continue loop0;
               }
            }
         }
      }
      
      public function set §<A§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§4!M§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(!(_loc6_ && param1))
         {
            §§push(param1);
            if(_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc5_ || param1)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc5_)
                     {
                        param1 = §§pop();
                        if(_loc5_ || param1)
                        {
                           addr56:
                           §§push(param1);
                           if(!(_loc6_ && param1))
                           {
                              addr64:
                              if(§§pop() > this.time)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§3!3§))
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc4_.name == §^d§.§8Z§)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(this.§4!M§)
                                                {
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§9!A§());
                                                      if(_loc5_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(!_loc6_)
                                                         {
                                                            addr114:
                                                            §§push(§§pop() * this.§-""§(param1));
                                                         }
                                                         §§pop().x = §§pop();
                                                         if(_loc5_)
                                                         {
                                                            addr121:
                                                         }
                                                         else
                                                         {
                                                            addr176:
                                                         }
                                                         addr177:
                                                         if(param1 >= this.time + duration)
                                                         {
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               addr190:
                                                               §§push(false);
                                                               if(_loc5_ || this)
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
                                                         addr143:
                                                      }
                                                      §§goto(addr114);
                                                   }
                                                   §§goto(addr121);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§9!A§());
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(§§pop() * this.§-""§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                             }
                                             else
                                             {
                                                do
                                                {
                                                   §§push(_loc4_);
                                                   §§push(_loc4_.y);
                                                   if(_loc5_ || param2)
                                                   {
                                                      §§push(§§pop() - this.mY);
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                                while(!_loc5_);
                                                
                                                if(!_loc6_)
                                                {
                                                   addr141:
                                                   if(false)
                                                   {
                                                   }
                                                   §§goto(addr177);
                                                }
                                                else
                                                {
                                                   §§goto(addr176);
                                                }
                                                addr159:
                                             }
                                             §§goto(addr176);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(_loc5_ || this)
                                             {
                                                §§push(§§pop() - this.mX);
                                             }
                                             §§pop().x = §§pop();
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr141);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr190);
                              }
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr177);
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr64);
         }
         §§goto(addr56);
      }
      
      private function §-""§(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && this))
         {
            §§push(§§pop() - this.time);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() / duration);
               if(!_loc4_)
               {
                  addr39:
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§#!W§;
            if(_loc5_)
            {
               §§push(§`!9§);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc5_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || _loc2_)
                        {
                           §§push(0);
                           if(_loc5_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr254:
                           §§push(1);
                           if(_loc5_ || this)
                           {
                           }
                        }
                        addr277:
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
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          _loc2_ = §§pop();
                                          §§push(_loc2_);
                                          loop3:
                                          while(true)
                                          {
                                             §§push(1);
                                             loop4:
                                             while(§§pop() >= §§pop())
                                             {
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   addr141:
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(2);
                                                         while(true)
                                                         {
                                                            if(_loc4_ && _loc2_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc5_ || param1))
                                                                  {
                                                                     break loop5;
                                                                  }
                                                                  _loc2_ = §§pop();
                                                                  if(_loc4_)
                                                                  {
                                                                     break loop10;
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc4_ && _loc2_)
                                                                     {
                                                                        break loop4;
                                                                     }
                                                                     §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                                     continue loop0;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                }
                                                return §§pop();
                                             }
                                             addr199:
                                             return §§pop();
                                          }
                                       }
                                       §§goto(addr280);
                                    }
                                 }
                              }
                              break;
                           case 1:
                              §§push(Math.cos(Math.PI * _loc2_) - 1);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(-§§pop());
                                 if(!_loc4_)
                                 {
                                    addr60:
                                    if(!_loc4_)
                                    {
                                       §§push(2);
                                       if(_loc5_ || this)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(!(_loc4_ && param1))
                                          {
                                             if(_loc5_ || this)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr141);
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr280);
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr280);
                              }
                              §§goto(addr60);
                        }
                        §§goto(addr280);
                        §§push(_loc2_);
                     }
                     else
                     {
                        addr252:
                        §§push(§]!t§);
                        §§push(_loc3_);
                     }
                     §§goto(addr254);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr254);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr277);
               }
               §§goto(addr252);
            }
            §§goto(addr254);
         }
         §§goto(addr39);
      }
      
      protected function §9!A§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§4!M§)
            {
               if(_loc1_ || _loc2_)
               {
                  §§push(this.§7!T§);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr75);
                  }
                  §§goto(addr68);
               }
               else
               {
                  addr69:
                  §§push(this.§>w§);
                  if(_loc1_)
                  {
                     §§goto(addr73);
                  }
               }
               addr75:
               §§push(§^!N§);
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc1_)
                  {
                     addr68:
                     return §§pop();
                  }
                  addr73:
                  §§push(§5!P§);
               }
               return §§pop() - §§pop();
            }
         }
         §§goto(addr69);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§7!T§ = param1;
         }
         do
         {
            this.§>w§ = param2;
         }
         while(!(_loc3_ || param1));
         
      }
      
      override public function clone() : §#K§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§,g§ = new §,g§(time,duration,this.§3!3§,this.mX,this.mY,this.§#!W§);
         if(_loc2_ || _loc3_)
         {
            _loc1_.§7!T§ = this.§7!T§;
            while(true)
            {
               _loc1_.§>w§ = this.§>w§;
               loop1:
               while(!(_loc3_ && _loc2_))
               {
                  while(true)
                  {
                     _loc1_.§4!M§ = this.§4!M§;
                     if(!(_loc3_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr88);
      }
   }
}
