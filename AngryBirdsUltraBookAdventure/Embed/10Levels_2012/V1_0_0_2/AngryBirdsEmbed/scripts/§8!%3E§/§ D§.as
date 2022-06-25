package §8!>§
{
   import §'k§.§ >§;
   import §9W§.DisplayObject;
   import §9W§.Sprite;
   
   public class § D§ extends §1^§
   {
      
      public static const §>§:Number = 1024;
      
      public static const §%i§:Number = 658;
      
      public static const §>L§:Number = 55;
      
      public static const §8G§:String = "cubic_in_out";
      
      public static const §3W§:String = "sin_in_out";
      
      public static const §#!@§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §8G§ = "cubic_in_out";
            §3W§ = "sin_in_out";
            if(_loc1_ || § D§)
            {
               addr55:
               §#!@§ = "none";
            }
            return;
         }
         §§goto(addr55);
      }
      
      private var §7e§:String;
      
      private var §<!B§:Number;
      
      private var §,k§:Number;
      
      private var § l§:Number;
      
      private var §4N§:Number;
      
      private var §3e§:Boolean = true;
      
      private var §1i§:String = "cubic_in_out";
      
      public function § D§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super(param1,param2);
            if(!_loc7_)
            {
               this.§7e§ = param3;
               if(_loc8_ || param1)
               {
                  this.§<!B§ = param4;
                  if(!(_loc7_ && param3))
                  {
                     addr70:
                     this.§,k§ = param5;
                     if(!(_loc7_ && param1))
                     {
                        addr80:
                        this.§1i§ = param6;
                     }
                  }
                  return;
               }
               §§goto(addr70);
            }
         }
         §§goto(addr80);
      }
      
      public function set §^! §(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3e§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ >§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc5_ && param1))
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_ || this)
                     {
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
                                    if(_loc4_ = param2.getChildByName(this.§7e§))
                                    {
                                       if(_loc4_.name == §>T§.§9Y§)
                                       {
                                          if(this.§3e§)
                                          {
                                             §§push(_loc4_);
                                             §§push(this.§"!$§());
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(-§§pop());
                                                if(!(_loc5_ && this))
                                                {
                                                   addr109:
                                                   §§push(§§pop() * this.§ f§(param1));
                                                }
                                                §§pop().x = §§pop();
                                                if(_loc6_)
                                                {
                                                   addr163:
                                                   if(param1 >= this.time + duration)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr171:
                                                         §§push(false);
                                                         if(_loc6_ || param1)
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr180:
                                                         §§push(true);
                                                      }
                                                      return §§pop();
                                                   }
                                                   §§goto(addr180);
                                                   addr127:
                                                }
                                                else
                                                {
                                                   addr139:
                                                   §§push(_loc4_);
                                                   §§push(_loc4_.y);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§push(§§pop() - this.§,k§);
                                                   }
                                                   §§pop().y = §§pop();
                                                   §§goto(addr163);
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr109);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(this.§"!$§());
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() * this.§ f§(param1));
                                             }
                                             §§pop().y = §§pop();
                                          }
                                          §§goto(addr127);
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                          §§push(_loc4_.x);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() - this.§<!B§);
                                          }
                                          §§pop().x = §§pop();
                                          if(_loc6_)
                                          {
                                             §§goto(addr139);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr180);
                              }
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr171);
               }
               §§goto(addr57);
            }
            §§goto(addr60);
         }
         §§goto(addr57);
      }
      
      private function § f§(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || this)
         {
            §§push(§§pop() - this.time);
            if(!_loc4_)
            {
               addr30:
               §§push(§§pop() / duration);
               if(_loc5_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§1i§;
            if(!(_loc4_ && param1))
            {
               §§push(§8G§);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc5_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr201:
                           §§push(1);
                           if(_loc5_ || this)
                           {
                           }
                        }
                        addr214:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 §§push(2);
                                 if(_loc5_ || this)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc4_ && param1))
                                       {
                                          _loc2_ = §§pop();
                                          §§push(_loc2_);
                                          if(_loc5_ || this)
                                          {
                                             §§push(1);
                                             if(!_loc4_)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      addr141:
                                                      §§push(-(Math.cos(Math.PI * _loc2_) - 1));
                                                      break;
                                                   }
                                                   §§push(Math.pow(_loc2_,3) / 2);
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr93);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc2_);
                                                   §§push(2);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      addr122:
                                                      _loc2_ = Number(§§pop() - §§pop());
                                                      addr120:
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         return (Math.pow(_loc2_,3) + 2) / 2;
                                                      }
                                                      §§goto(addr141);
                                                   }
                                                   addr151:
                                                   return §§pop() / §§pop();
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr120);
                                          }
                                          addr93:
                                          return §§pop();
                                       }
                                       §§goto(addr120);
                                    }
                                 }
                                 §§goto(addr122);
                              }
                              break;
                           case 1:
                              §§goto(addr141);
                           default:
                              return _loc2_;
                        }
                        §§goto(addr151);
                        §§push(2);
                     }
                     else
                     {
                        addr199:
                        §§push(§3W§);
                        §§push(_loc3_);
                     }
                     §§goto(addr201);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr201);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr214);
               }
               §§goto(addr199);
            }
            §§goto(addr201);
         }
         §§goto(addr30);
      }
      
      protected function §"!$§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§3e§)
            {
               if(_loc1_)
               {
                  §§push(this.§ l§);
                  if(_loc1_ || _loc1_)
                  {
                     §§push(§>§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc1_ || this)
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
                     §§push(§%i§);
                  }
                  §§push(§§pop() - §§pop());
               }
               else
               {
                  addr69:
                  §§push(this.§4N§);
                  if(!(_loc2_ && _loc1_))
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
         if(!_loc3_)
         {
            this.§ l§ = param1;
            if(!_loc3_)
            {
               addr24:
               this.§4N§ = param2;
            }
            return;
         }
         §§goto(addr24);
      }
      
      override public function clone() : §1^§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§ D§ = new § D§(time,duration,this.§7e§,this.§<!B§,this.§,k§,this.§1i§);
         if(_loc2_)
         {
            _loc1_.§ l§ = this.§ l§;
            if(_loc2_ || this)
            {
               §§goto(addr63);
            }
            §§goto(addr74);
         }
         addr63:
         _loc1_.§4N§ = this.§4N§;
         if(!(_loc3_ && _loc1_))
         {
            addr74:
            _loc1_.§3e§ = this.§3e§;
         }
         return _loc1_;
      }
   }
}
