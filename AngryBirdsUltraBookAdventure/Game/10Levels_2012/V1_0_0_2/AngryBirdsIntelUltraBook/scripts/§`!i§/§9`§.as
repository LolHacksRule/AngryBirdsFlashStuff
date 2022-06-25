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
         if(_loc2_)
         {
            §[o§ = 1024;
            while(true)
            {
               §-S§ = 658;
               while(!(_loc1_ && _loc2_))
               {
                  §@0§ = 55;
                  loop2:
                  while(true)
                  {
                     §%!S§ = "cubic_in_out";
                     while(true)
                     {
                        §5z§ = "sin_in_out";
                        continue loop2;
                        addr35:
                        if(_loc2_ || §9`§)
                        {
                           return;
                           addr52:
                        }
                     }
                  }
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  §§goto(addr81);
               }
            }
         }
         §§goto(addr81);
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
         if(_loc8_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§!0§ = param3;
               while(true)
               {
                  this.§,G§ = param4;
                  while(!_loc7_)
                  {
                     continue loop0;
                     this.§78§ = param5;
                     do
                     {
                        this.§,s§ = param6;
                     }
                     while(!_loc8_);
                     
                     if(!_loc7_)
                     {
                        return;
                        addr52:
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function set §1!P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8v§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,Q§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_ || param1)
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_ || this)
                  {
                     §§push(Number(this.time + duration));
                     if(!(_loc5_ && param3))
                     {
                        addr54:
                        param1 = §§pop();
                        if(_loc6_ || this)
                        {
                           addr62:
                           §§push(param1);
                           if(_loc6_)
                           {
                              addr65:
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§!0§))
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          if(_loc4_.name == §;!@§.§ 1§)
                                          {
                                             if(_loc6_ || this)
                                             {
                                                if(this.§8v§)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      addr112:
                                                      §§push(_loc4_);
                                                      §§push(this.§%!J§());
                                                      if(!(_loc5_ && param3))
                                                      {
                                                         §§push(-§§pop());
                                                         if(!(_loc5_ && this))
                                                         {
                                                            addr130:
                                                            §§push(§§pop() * this.§'X§(param1));
                                                         }
                                                         §§pop().x = §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            do
                                                            {
                                                               §§push(_loc4_);
                                                               §§push(_loc4_.y);
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(§§pop() - this.§78§);
                                                               }
                                                               §§pop().y = §§pop();
                                                            }
                                                            while(!_loc6_);
                                                            
                                                            if(_loc6_)
                                                            {
                                                               if(false)
                                                               {
                                                               }
                                                               addr198:
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!(_loc5_ && param3))
                                                                  {
                                                                     addr211:
                                                                     §§push(false);
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr220:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr220);
                                                            }
                                                            else
                                                            {
                                                               addr197:
                                                            }
                                                            addr170:
                                                         }
                                                         else
                                                         {
                                                            addr137:
                                                         }
                                                         §§goto(addr198);
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                   §§goto(addr137);
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
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr112);
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
                                          §§goto(addr170);
                                       }
                                       §§goto(addr137);
                                    }
                                 }
                                 §§goto(addr220);
                              }
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr211);
               }
               §§goto(addr62);
            }
            §§goto(addr54);
         }
         §§goto(addr220);
      }
      
      private function §'X§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() - this.time);
            if(!_loc5_)
            {
               §§push(§§pop() / duration);
               if(_loc4_)
               {
                  addr33:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               var _loc3_:* = this.§,s§;
               if(!(_loc5_ && param1))
               {
                  §§push(§%!S§);
                  if(_loc4_ || this)
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
                              if(!(_loc4_ || _loc2_))
                              {
                                 addr241:
                              }
                           }
                           else
                           {
                              addr238:
                              §§push(1);
                              if(_loc4_)
                              {
                                 §§goto(addr241);
                              }
                           }
                           addr246:
                           loop11:
                           switch(§§pop())
                           {
                              case 0:
                                 §§push(_loc2_);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(2);
                                    addr186:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr187:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr188:
                                          loop2:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             §§push(_loc2_);
                                             continue loop0;
                                             while(true)
                                             {
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc5_)
                                                   {
                                                      break loop11;
                                                   }
                                                   if(_loc5_ && this)
                                                   {
                                                      break loop2;
                                                   }
                                                   §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                   continue;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr249);
                                          }
                                          addr167:
                                          §§push(Math.pow(_loc2_,3) / 2);
                                          if(_loc4_ || _loc3_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr249);
                                       }
                                    }
                                 }
                                 break;
                              case 1:
                                 §§push(Math.cos(Math.PI * _loc2_) - 1);
                                 if(!_loc5_)
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(-§§pop());
                                          if(_loc4_)
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(2);
                                                if(_loc4_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc4_)
                                                      {
                                                         addr73:
                                                         if(_loc4_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr103);
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr129);
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr73);
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr249);
                           }
                           addr249:
                           return §§pop();
                           §§push(_loc2_);
                        }
                        else
                        {
                           addr237:
                           if(§5z§ === _loc3_)
                           {
                              §§goto(addr238);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr246);
                        }
                        §§goto(addr238);
                     }
                  }
                  §§goto(addr237);
               }
               §§goto(addr226);
            }
         }
         §§goto(addr33);
      }
      
      protected function §%!J§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§8v§)
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(this.§'O§);
                  if(!_loc1_)
                  {
                     §§goto(addr76);
                  }
                  §§goto(addr74);
               }
               else
               {
                  addr70:
                  §§push(this.§!!A§);
                  if(_loc2_)
                  {
                     §§goto(addr74);
                  }
               }
               addr76:
               §§push(§[o§);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() - §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop();
                  }
                  addr74:
                  §§push(§-S§);
               }
               return §§pop() - §§pop();
            }
         }
         §§goto(addr70);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§'O§ = param1;
         }
         do
         {
            this.§!!A§ = param2;
         }
         while(!(_loc4_ || param2));
         
      }
      
      override public function clone() : §8d§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9`§ = new §9`§(time,duration,this.§!0§,this.§,G§,this.§78§,this.§,s§);
         if(_loc2_)
         {
            _loc1_.§'O§ = this.§'O§;
            do
            {
               _loc1_.§!!A§ = this.§!!A§;
               do
               {
                  _loc1_.§8v§ = this.§8v§;
               }
               while(!(_loc2_ || this));
               
            }
            while(_loc3_);
            
         }
         return _loc1_;
      }
   }
}
