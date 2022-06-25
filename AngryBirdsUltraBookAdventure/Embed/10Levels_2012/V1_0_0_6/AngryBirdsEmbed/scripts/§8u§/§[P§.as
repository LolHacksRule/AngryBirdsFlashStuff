package §8u§
{
   import §,_§.Sprite;
   import §3G§.§!E§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §[P§ extends §8j§
   {
       
      
      private var §=d§:Number = -1;
      
      private var §#!>§:Number = -1;
      
      public function §[P§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§6a§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc2_ || param1)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr56:
                     §§push(false);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr64);
                     }
                  }
                  else
                  {
                     addr67:
                     this.§5!0§(0);
                     §§push(false);
                  }
                  return §§pop();
               }
               §§goto(addr67);
            }
            addr64:
            return §§pop();
         }
         §§goto(addr56);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = NaN;
         if(!§=t§)
         {
            if(!_loc3_)
            {
               this.§5!0§(0);
            }
            else
            {
               addr95:
               §§push(this);
               §§push(this.§#!>§);
               if(_loc2_)
               {
                  §§push(§§pop() * _loc1_);
               }
               §§pop().§=d§ = §§pop();
            }
         }
         else
         {
            §§push(this.§=d§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§=d§);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(§§pop() / this.§#!>§);
                        if(!(_loc3_ && this))
                        {
                           addr83:
                           §§push(Number(§§pop()));
                        }
                        _loc1_ = §§pop();
                        this.§#!>§ = 0;
                        if(_loc2_ || _loc1_)
                        {
                           §§goto(addr95);
                        }
                        §§goto(addr103);
                     }
                  }
               }
               §§goto(addr103);
            }
            §§goto(addr83);
         }
         addr103:
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!_loc9_)
         {
            if(!§=t§)
            {
               if(!_loc9_)
               {
                  super.activateSpecialPower(null);
                  if(!_loc9_)
                  {
                     addr47:
                     this.§5!0§();
                  }
               }
            }
            return _loc7_;
         }
         §§goto(addr47);
      }
      
      public function §5!0§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§=d§ = 0;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_ || param1)
            {
               §§push(0);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() == §§pop())
                  {
                     this.§#!>§ = 0;
                     this.update(0);
                     if(!_loc2_)
                     {
                        addr70:
                        this.§#!>§ = param1;
                     }
                     else
                     {
                        addr66:
                     }
                     §§goto(addr77);
                  }
                  else
                  {
                     §§goto(addr69);
                  }
               }
               §§goto(addr69);
            }
            addr69:
            if(param1 > 0)
            {
               §§goto(addr70);
            }
            else
            {
               this.§#!>§ = 2000;
            }
            addr77:
            return;
         }
         §§goto(addr66);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§=d§);
            if(!(_loc3_ && param1))
            {
               §§goto(addr82);
            }
            if(§§pop() >= this.§#!>§)
            {
               container.addExplosions(§5<§.§#n§,§?n§().GetPosition().x,§?n§().GetPosition().y);
               this.§=d§ = -1;
               if(!_loc2_)
               {
               }
               §§goto(addr82);
            }
            §>;§ = true;
         }
         addr82:
         if(§§pop() >= 0)
         {
            §§push(this);
            §§push(this.§=d§);
            if(_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§=d§ = §§pop();
            §§push(this.§=d§);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(§=t§));
            if(!(_loc2_ && param1))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§push(this.§=d§);
                        if(!(_loc2_ && param1))
                        {
                           §§push(0);
                           if(!_loc2_)
                           {
                              §§push(§§pop() < §§pop());
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr80:
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(true);
                                       if(!_loc2_)
                                       {
                                          §§goto(addr86);
                                       }
                                       else
                                       {
                                          §§goto(addr103);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr92:
                                    if(this.§=d§ >= 0)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr95:
                                          §§push(false);
                                          if(_loc3_ || param1)
                                          {
                                             addr103:
                                             return §§pop();
                                          }
                                          §§goto(addr107);
                                       }
                                       §§goto(addr107);
                                    }
                                 }
                                 addr107:
                                 return §§pop();
                                 §§push(super.isReadyToBeRemoved(param1));
                              }
                              §§goto(addr107);
                           }
                        }
                     }
                     §§goto(addr92);
                  }
                  addr86:
                  return §§pop();
               }
               §§goto(addr80);
            }
            §§goto(addr107);
         }
         §§goto(addr95);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§=d§);
            if(_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc2_)
                  {
                     §§push(this.§=d§);
                     if(_loc1_)
                     {
                        addr40:
                        return §§pop() / this.§#!>§;
                     }
                  }
                  §§goto(addr44);
               }
               §§goto(addr44);
            }
            §§goto(addr40);
         }
         addr44:
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§=d§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr47);
                  }
               }
               return 0;
            }
            §§goto(addr51);
         }
         addr47:
         §§push(this.§#!>§);
         if(_loc2_)
         {
            addr51:
            return §§pop() - this.§=d§;
         }
      }
   }
}
