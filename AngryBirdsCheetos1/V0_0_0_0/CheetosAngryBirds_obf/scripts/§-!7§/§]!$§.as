package §-!7§
{
   import §&!"§.b2World;
   import §9N§.§9!%§;
   import §`a§.Sprite;
   
   public class §]!$§ extends §^!1§
   {
       
      
      private var §70§:Number = -1;
      
      private var §!_§:Number = -1;
      
      public function §]!$§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(!(_loc12_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
         }
      }
      
      override public function activateSpecialPower(param1:§&$§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(false);
                     break;
                  }
                  addr78:
                  while(true)
                  {
                  }
               }
               do
               {
                  this.§=!>§(0);
               }
               while(_loc3_ && _loc2_);
               
               §§push(false);
               if(_loc3_ && _loc3_)
               {
                  break;
               }
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr78);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(!(_loc2_ && _loc2_))
         {
            if(§]Z§)
            {
               §§push(this.§70§);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop() > 0)
                  {
                     loop0:
                     while(_loc3_ || this)
                     {
                        §§push(this.§70§);
                        if(!(_loc2_ && this))
                        {
                           while(true)
                           {
                              §§push(§§pop() / this.§!_§);
                              if(!(_loc2_ && this))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           addr103:
                        }
                        while(true)
                        {
                           _loc1_ = §§pop();
                           loop1:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 this.§=!>§(0);
                              }
                              else
                              {
                                 addr130:
                              }
                              this.§!_§ = 0;
                              while(!(_loc2_ && this))
                              {
                                 if(_loc3_)
                                 {
                                    §§push(this);
                                    §§push(this.§!_§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(§§pop() * _loc1_);
                                    }
                                    §§pop().§70§ = §§pop();
                                    if(!_loc2_)
                                    {
                                       break loop1;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr27);
                        }
                     }
                  }
                  addr27:
                  return true;
               }
               §§goto(addr103);
            }
         }
         §§goto(addr130);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!_loc9_)
         {
            if(!§]Z§)
            {
               do
               {
                  super.activateSpecialPower(null);
                  do
                  {
                     this.§=!>§();
                  }
                  while(!_loc8_);
                  
               }
               while(!(_loc8_ || param2));
               
               addr66:
            }
            return _loc7_;
         }
         §§goto(addr66);
      }
      
      public function §=!>§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§70§ = 0;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  addr91:
                  addr20:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc3_)
                        {
                           this.update(0);
                        }
                        else
                        {
                           addr109:
                           addr87:
                        }
                        continue loop0;
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§70§);
            loop0:
            for(; §§pop() >= 0; loop2:
            while(true)
            {
               §§push(this.§70§);
               if(_loc3_)
               {
                  break;
               }
               if(§§pop() >= this.§!_§)
               {
                  loop3:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        continue loop2;
                     }
                     if(_loc3_ && param1)
                     {
                        break;
                     }
                     container.addExplosions(§?L§.§8Z§,§`!#§().GetPosition().x,§`!#§().GetPosition().y);
                     while(true)
                     {
                        this.§70§ = -1;
                        addr48:
                        while(true)
                        {
                        }
                        addr29:
                        if(_loc2_ || _loc2_)
                        {
                           continue loop3;
                        }
                     }
                  }
                  §§goto(addr93);
               }
               while(true)
               {
                  §5-§ = true;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr29);
               }
            })
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§70§);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§70§ = §§pop();
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(§]Z§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§push(true);
                           break;
                        }
                        loop7:
                        while(_loc3_ || param1)
                        {
                           while(true)
                           {
                              §§push(this.§70§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(0);
                                 if(_loc3_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop7;
                                          }
                                          §§push(false);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             addr20:
                                             while(true)
                                             {
                                                §§push(super.isReadyToBeRemoved(param1));
                                                if(!(_loc2_ && this))
                                                {
                                                   return §§pop();
                                                }
                                             }
                                          }
                                          addr80:
                                       }
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             break loop6;
                                          }
                                          if(!(_loc3_ || param1))
                                          {
                                             continue loop0;
                                          }
                                          if(_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          addr121:
                                          while(true)
                                          {
                                             §§pop();
                                             break loop7;
                                          }
                                       }
                                    }
                                    §§goto(addr20);
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    continue loop0;
                                 }
                                 addr85:
                              }
                              break;
                           }
                           while(true)
                           {
                              §§goto(addr85);
                              §§goto(addr34);
                           }
                           addr34:
                        }
                        while(true)
                        {
                           §§goto(addr84);
                        }
                     }
                     §§goto(addr34);
                  }
                  return §§pop();
                  addr93:
               }
               §§goto(addr121);
            }
         }
         §§goto(addr80);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§70§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() > 0)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr46);
                  }
               }
               return -1;
            }
            §§goto(addr60);
         }
         addr46:
         §§push(this.§70§);
         if(_loc1_)
         {
            addr60:
            return §§pop() / this.§!_§;
         }
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§70§);
            if(!_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc2_)
                  {
                     §§push(this.§!_§);
                     if(_loc1_ || _loc1_)
                     {
                        §§push(§§pop() - this.§70§);
                     }
                  }
                  else
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr59);
            }
            return §§pop();
         }
         addr59:
         return 0;
      }
   }
}
