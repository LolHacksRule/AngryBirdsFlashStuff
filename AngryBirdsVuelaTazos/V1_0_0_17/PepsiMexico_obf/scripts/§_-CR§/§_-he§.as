package §_-CR§
{
   import §_-Iw§.b2World;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   
   public class §_-he§ extends §_-zf§
   {
       
      
      private var §_-HP§:Number = -1;
      
      private var §_-lG§:Number = -1;
      
      public function §_-he§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(!(_loc12_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
         }
      }
      
      override public function activateSpecialPower(param1:§_-F5§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_ || this)
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§push(false);
                     if(!(_loc2_ && param1))
                     {
                        §§goto(addr61);
                     }
                  }
                  else
                  {
                     addr64:
                     this.§_-Qb§(100);
                     §§push(true);
                  }
                  return §§pop();
               }
               §§goto(addr64);
            }
            addr61:
            return §§pop();
         }
         §§goto(addr64);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(!§_-mb§)
         {
            if(_loc3_)
            {
               this.§_-Qb§(100);
            }
            else
            {
               addr87:
               §§push(this);
               §§push(this.§_-lG§);
               if(_loc3_)
               {
                  §§push(§§pop() * _loc1_);
               }
               §§pop().§_-HP§ = §§pop();
            }
            §§goto(addr95);
         }
         else
         {
            §§push(this.§_-HP§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() > 0)
               {
                  §§push(this.§_-HP§);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(§§pop() / this.§_-lG§);
                     if(_loc3_ || _loc2_)
                     {
                        addr61:
                        §§push(Number(§§pop()));
                     }
                     _loc1_ = §§pop();
                     if(_loc3_ || this)
                     {
                        this.§_-lG§ = 200;
                        if(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr87);
                        }
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr61);
               }
               addr95:
               return true;
            }
            §§goto(addr61);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(_loc6_ || param3)
         {
            if(!§_-mb§)
            {
               if(!_loc7_)
               {
                  super.activateSpecialPower(null);
                  if(!(_loc7_ && param2))
                  {
                     addr56:
                     this.§_-Qb§();
                  }
               }
               §§goto(addr56);
            }
            return _loc5_;
         }
         §§goto(addr56);
      }
      
      public function §_-Qb§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-HP§ = 0;
            if(!_loc3_)
            {
               §§goto(addr32);
            }
            §§goto(addr37);
         }
         addr32:
         if(param1 >= 0)
         {
            if(!_loc3_)
            {
               addr37:
               this.§_-lG§ = param1;
               if(_loc2_ || this)
               {
               }
            }
         }
         else
         {
            this.§_-lG§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§_-HP§);
         if(_loc2_)
         {
            if(§§pop() >= 0)
            {
               if(!(_loc3_ && this))
               {
                  §§push(this);
                  §§push(this.§_-HP§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§_-HP§ = §§pop();
                  if(!_loc3_)
                  {
                     addr50:
                     if(this.§_-HP§ >= this.§_-lG§)
                     {
                        if(!_loc3_)
                        {
                           container.addExplosions(§_-GP§.§_-Zb§,§_-zq§().GetPosition().x,§_-zq§().GetPosition().y);
                           this.§_-HP§ = -1;
                        }
                        §§goto(addr80);
                     }
                  }
               }
               §_-J3§ = true;
            }
            addr80:
            return;
         }
         §§goto(addr50);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(Boolean(§_-mb§));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     addr28:
                     §§pop();
                     if(!_loc3_)
                     {
                        §§push(this.§_-HP§);
                        if(_loc2_)
                        {
                           §§push(0);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(§§pop() < §§pop());
                              if(!(_loc3_ && param1))
                              {
                                 addr58:
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(true);
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr77:
                                       if(this.§_-HP§ >= 0)
                                       {
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(false);
                                             if(_loc3_ && this)
                                             {
                                                §§goto(addr107);
                                             }
                                          }
                                          else
                                          {
                                             addr104:
                                             addr107:
                                             return §§pop();
                                             §§push(super.isReadyToBeRemoved(param1));
                                          }
                                          §§goto(addr107);
                                       }
                                       §§goto(addr104);
                                    }
                                 }
                                 §§goto(addr77);
                              }
                              return §§pop();
                           }
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr107);
               }
               §§goto(addr58);
            }
            §§goto(addr28);
         }
         §§goto(addr77);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§_-HP§);
            if(!_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr48:
                     §§push(this.§_-HP§);
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr55);
                  }
               }
               return -1;
            }
            addr55:
            return §§pop() / this.§_-lG§;
         }
         §§goto(addr48);
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§_-HP§);
            if(!_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr40);
                  }
               }
               return 0;
            }
            §§goto(addr56);
         }
         addr40:
         §§push(this.§_-lG§);
         if(!(_loc2_ && _loc1_))
         {
            addr56:
            return §§pop() - this.§_-HP§;
         }
      }
   }
}
