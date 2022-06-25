package §9!7§
{
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   import §5`§.§?y§;
   
   public class §,8§ extends §`E§
   {
      
      public static const §4T§:Number = 1024;
      
      public static const §0!$§:Number = 658;
      
      public static const §[z§:Number = 55;
      
      public static const §!f§:String = "cubic_in_out";
      
      public static const §`^§:String = "sin_in_out";
      
      public static const §^!2§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0!$§ = 658;
            §[z§ = 55;
            §!f§ = "cubic_in_out";
            §`^§ = "sin_in_out";
            if(!(_loc2_ && _loc2_))
            {
               addr50:
               §^!2§ = "none";
            }
            return;
         }
         §§goto(addr50);
      }
      
      private var §^P§:String;
      
      private var §^C§:Number;
      
      private var §0§:Number;
      
      private var §5;§:Number;
      
      private var §>!'§:Number;
      
      private var §#!<§:Boolean = true;
      
      private var §[!+§:String = "cubic_in_out";
      
      public function §,8§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2);
            if(_loc8_ || param1)
            {
               this.§^P§ = param3;
               if(_loc8_)
               {
                  addr45:
                  this.§^C§ = param4;
                  if(_loc8_)
                  {
                     §§goto(addr50);
                  }
               }
               §§goto(addr55);
            }
            §§goto(addr45);
         }
         addr50:
         this.§0§ = param5;
         if(!_loc7_)
         {
            addr55:
            this.§[!+§ = param6;
         }
      }
      
      public function set §>!;§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#!<§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?y§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(!(_loc6_ && param3))
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc5_ || param3)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc5_)
                     {
                        addr48:
                        param1 = §§pop();
                        if(_loc5_)
                        {
                           addr51:
                           §§push(param1);
                           if(_loc5_ || param2)
                           {
                              addr59:
                              if(§§pop() > this.time)
                              {
                                 if(_loc5_)
                                 {
                                    addr64:
                                    if(_loc4_ = param2.getChildByName(this.§^P§))
                                    {
                                       if(_loc5_ || param2)
                                       {
                                          if(_loc4_.name != §9v§.§6!-§)
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(_loc5_ || this)
                                             {
                                                §§push(§§pop() - this.§^C§);
                                             }
                                             §§pop().x = §§pop();
                                             §§push(_loc4_);
                                             §§push(_loc4_.y);
                                             if(_loc5_ || param3)
                                             {
                                                §§push(§§pop() - this.§0§);
                                             }
                                             §§pop().y = §§pop();
                                             addr165:
                                             if(param1 >= this.time + duration)
                                             {
                                                if(!_loc6_)
                                                {
                                                   addr173:
                                                   §§push(false);
                                                   if(_loc5_ || param2)
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                                else
                                                {
                                                   addr182:
                                                   §§push(true);
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr165);
                                       }
                                       if(this.§#!<§)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§ q§());
                                          if(!(_loc6_ && param3))
                                          {
                                             §§push(-§§pop());
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() * this.§9!;§(param1));
                                             }
                                          }
                                          §§pop().x = §§pop();
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§ q§());
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() * this.§9!;§(param1));
                                          }
                                          §§pop().y = §§pop();
                                       }
                                    }
                                 }
                                 §§goto(addr173);
                              }
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr59);
                  }
               }
               §§goto(addr51);
            }
            §§goto(addr48);
         }
         §§goto(addr173);
      }
      
      private function §9!;§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() - this.time);
            if(_loc4_)
            {
               §§push(§§pop() / duration);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = this.§[!+§;
         if(!(_loc5_ && _loc2_))
         {
            §§push(§!f§);
            if(_loc4_)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                           addr181:
                        }
                     }
                     else
                     {
                        addr173:
                        §§push(1);
                        if(_loc4_ || param1)
                        {
                           §§goto(addr181);
                        }
                     }
                     §§goto(addr186);
                  }
                  else
                  {
                     addr171:
                     §§push(§`^§);
                     §§push(_loc3_);
                  }
                  §§goto(addr173);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr173);
               }
               else
               {
                  §§push(2);
               }
               addr186:
               switch(§§pop())
               {
                  case 0:
                     §§push(_loc2_);
                     §§push(2);
                     if(_loc4_)
                     {
                        _loc2_ = Number(§§pop() * §§pop());
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           §§push(1);
                           if(!(_loc5_ && _loc2_))
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    return Math.pow(_loc2_,3) / 2;
                                 }
                                 §§push(_loc2_);
                                 break;
                                 addr130:
                              }
                              else
                              {
                                 §§push(_loc2_);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(2);
                                    if(_loc4_)
                                    {
                                       addr93:
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          _loc2_ = Number(§§pop());
                                          return (Math.pow(_loc2_,3) + 2) / 2;
                                       }
                                       break;
                                    }
                                    addr124:
                                    §§push(§§pop() / §§pop());
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                 }
                                 §§goto(addr127);
                              }
                           }
                           §§goto(addr93);
                        }
                        else
                        {
                           addr123:
                           §§push(2);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr93);
                  default:
                     §§goto(addr130);
                  case 1:
                     §§push(Math.cos(Math.PI * _loc2_) - 1);
                     if(_loc4_)
                     {
                        §§goto(addr123);
                        §§push(-§§pop());
                     }
                     addr127:
                     return §§pop();
               }
               return §§pop();
            }
            §§goto(addr171);
         }
         §§goto(addr173);
      }
      
      protected function § q§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§#!<§)
            {
               if(!(_loc2_ && this))
               {
                  addr48:
                  §§push(this.§5;§);
                  if(_loc1_)
                  {
                     §§goto(addr70);
                  }
                  §§goto(addr63);
               }
               else
               {
                  addr64:
                  §§push(this.§>!'§);
                  if(_loc1_)
                  {
                     §§goto(addr68);
                  }
               }
               addr70:
               §§push(§4T§);
               if(!_loc2_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc1_ || this)
                  {
                     addr63:
                     return §§pop();
                  }
                  addr68:
                  §§push(§0!$§);
               }
               return §§pop() - §§pop();
            }
            §§goto(addr64);
         }
         §§goto(addr48);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§5;§ = param1;
            if(_loc4_ || _loc3_)
            {
               addr44:
               this.§>!'§ = param2;
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function clone() : §`E§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§,8§ = new §,8§(time,duration,this.§^P§,this.§^C§,this.§0§,this.§[!+§);
         if(_loc2_ || _loc3_)
         {
            _loc1_.§5;§ = this.§5;§;
            if(_loc2_ || _loc1_)
            {
               §§goto(addr68);
            }
            §§goto(addr74);
         }
         addr68:
         _loc1_.§>!'§ = this.§>!'§;
         if(_loc2_)
         {
            addr74:
            _loc1_.§#!<§ = this.§#!<§;
         }
         return _loc1_;
      }
   }
}
