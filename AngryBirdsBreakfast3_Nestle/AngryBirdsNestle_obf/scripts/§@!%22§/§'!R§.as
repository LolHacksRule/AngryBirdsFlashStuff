package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   
   public class §'!R§ extends §^"2§
   {
      
      private static const §9E§:int = 2000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9E§ = 2000;
         }
      }
      
      private var §<6§:Number = -1;
      
      private var §#"4§:Number = -1;
      
      private var §-!1§:Boolean = false;
      
      public function §'!R§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(super.specialPowerUsed);
            if(_loc2_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        §§pop();
                        addr71:
                        §§push(this.§-!1§);
                        if(_loc2_)
                        {
                           addr75:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
            }
            §§goto(addr75);
         }
         §§goto(addr71);
      }
      
      override public function activateSpecialPower(param1:§`!m§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(§#!G§)
            {
               if(!_loc5_)
               {
                  §§push(super.activateSpecialPower(param1,param2,param3));
                  loop0:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(_loc5_ && this)
                        {
                           loop1:
                           while(true)
                           {
                              addr48:
                              while(true)
                              {
                                 this.§@p§(0,param1);
                                 if(_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       if(!(_loc4_ || this))
                                       {
                                          break loop0;
                                       }
                                       continue loop0;
                                    }
                                    addr45:
                                    return §§pop();
                                    addr55:
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     §§goto(addr48);
                  }
                  §§goto(addr84);
               }
               addr84:
               return §§pop();
               §§push(false);
            }
            §§goto(addr48);
         }
         §§goto(addr55);
      }
      
      override public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(super.applyDamage(param1,param2,param3,param4));
         if(_loc6_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc7_ && param3))
         {
            if(!this.specialPowerUsed)
            {
               if(!(_loc7_ && param3))
               {
                  addr68:
                  this.§@p§(§9E§,param2);
               }
            }
            return _loc5_;
         }
         §§goto(addr68);
      }
      
      protected function §@p§(param1:Number, param2:§`!m§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           loop11:
                           while(true)
                           {
                              §§pop();
                              addr181:
                              loop8:
                              while(true)
                              {
                                 §§push(this.§#"4§);
                                 addr140:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       break loop8;
                                    }
                                    §§push(0);
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue loop11;
                                       }
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                                 continue loop11;
                              }
                              continue loop0;
                           }
                           addr180:
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 this.§<6§ = 0;
                                 loop5:
                                 while(_loc3_ || this)
                                 {
                                    §§push(param1);
                                    loop6:
                                    for(; !_loc4_; §§push(param1),if(_loc4_ && param2)
                                    {
                                       continue;
                                    },§§push(0),if(_loc4_)
                                    {
                                       §§goto(addr111);
                                    },if(!_loc4_)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             if(!(_loc4_ && param2))
                                             {
                                                this.§#"4§ = param1;
                                                addr80:
                                                if(_loc3_ || param2)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break loop4;
                                                   }
                                                   §§goto(addr119);
                                                }
                                                §§goto(addr105);
                                             }
                                             §§goto(addr119);
                                          }
                                       }
                                       else
                                       {
                                          this.§#"4§ = §9E§;
                                          if(!(_loc4_ && param1))
                                          {
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                continue loop5;
                                             }
                                             if(_loc3_ || param2)
                                             {
                                                break loop4;
                                             }
                                             addr161:
                                             while(true)
                                             {
                                                continue loop4;
                                             }
                                          }
                                       }
                                       §§goto(addr80);
                                    },§§goto(addr143))
                                    {
                                       §§push(0);
                                       while(true)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                break;
                                             }
                                             continue loop6;
                                          }
                                          continue loop1;
                                       }
                                       this.§#"4§ = 0;
                                       if(_loc3_)
                                       {
                                          this.update(0,param2);
                                          break loop4;
                                          addr105:
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr140);
                                 }
                              }
                              return;
                           }
                           return;
                           §§goto(addr151);
                        }
                        continue;
                     }
                     §§goto(addr180);
                  }
               }
            }
         }
         §§goto(addr161);
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super.update(param1,param2);
            while(true)
            {
               §§push(this.§<6§);
               loop1:
               while(true)
               {
                  if(§§pop() < 0)
                  {
                     §§goto(addr24);
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§<6§);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§<6§ = §§pop();
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§<6§ = -1;
            do
            {
               param2.§<!Q§(§=q§.§?[§,§!!I§().GetPosition().x,§!!I§().GetPosition().y);
            }
            while(_loc4_ && param1);
            
            if(_loc4_ && this)
            {
               §§goto(addr91);
            }
            addr24:
            return;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.specialPowerUsed);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     addr114:
                     while(true)
                     {
                        §§pop();
                        addr115:
                        while(true)
                        {
                           §§push(this.§<6§);
                           addr79:
                           while(true)
                           {
                              §§push(0);
                              addr80:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                              }
                           }
                        }
                     }
                     addr114:
                  }
                  loop0:
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr93);
                              }
                              §§goto(addr115);
                           }
                           else
                           {
                              loop2:
                              while(true)
                              {
                                 addr43:
                                 while(true)
                                 {
                                    §§push(this.§<6§);
                                    if(_loc3_)
                                    {
                                       §§push(0);
                                       if(_loc2_ && param1)
                                       {
                                          continue loop0;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(false);
                                                break loop1;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       §§push(super.isReadyToBeRemoved(param1));
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          break loop1;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       if(_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr114);
                                    }
                                 }
                              }
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr43);
                     }
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                     addr93:
                     return true;
                  }
               }
            }
            §§goto(addr114);
         }
         §§goto(addr115);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§<6§);
            if(_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr46);
                  }
               }
               return -1;
            }
            §§goto(addr60);
         }
         addr46:
         §§push(this.§<6§);
         if(!_loc2_)
         {
            addr60:
            return §§pop() / this.§#"4§;
         }
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Boolean(§#!G§));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     addr48:
                     return this.§#"4§ > 0;
                  }
               }
            }
         }
         §§goto(addr48);
      }
   }
}
