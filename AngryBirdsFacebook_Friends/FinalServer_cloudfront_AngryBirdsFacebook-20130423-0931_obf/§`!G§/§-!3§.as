package §`!G§
{
   import §&E§.§6!O§;
   import §&E§.§="@§;
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   
   public class §-!3§ extends §,!g§
   {
      
      private static const §2G§:Number = 500;
      
      private static const §;"+§:int = 5;
      
      private static const §[;§:Number = 120;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §2G§ = 500;
            do
            {
               §;"+§ = 5;
               do
               {
                  §[;§ = 120;
               }
               while(_loc1_ && _loc1_);
               
            }
            while(_loc1_);
            
         }
      }
      
      private var §`!e§:Boolean;
      
      private var §'!q§:Number = 0;
      
      private var §5!Z§:int = 0;
      
      private var §^!k§:Boolean = false;
      
      public function §-!3§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function addTrail() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.addTrail();
         }
         §§push(x * §'!S§.§2"<§);
         if(!(_loc4_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y * §'!S§.§2"<§);
         if(!(_loc4_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §"x§(_loc1_,_loc2_,0,3,10);
         }
      }
      
      override public function addDamageParticles(param1:§6!O§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.addDamageParticles(param1,param2);
         }
      }
      
      override public function addDestructionParticles(param1:§6!O§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.addDestructionParticles(param1);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            if(param1 < §[;§)
            {
               this.§^!k§ = false;
               if(!(_loc7_ && param1))
               {
                  addr65:
               }
               else
               {
                  addr74:
               }
               return super.applyDamage(param1,param2,param3,param4,param5,param6);
            }
            if(!_loc7_)
            {
               this.§^!k§ = true;
            }
            §§goto(addr74);
         }
         §§goto(addr65);
      }
      
      public function §!w§(param1:§[!8§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§`!e§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     this.§`!e§ = true;
                     addr44:
                     §§push(false);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         §§goto(addr44);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.update(param1);
            if(!_loc5_)
            {
               §§push(this);
               §§push(this.§'!q§);
               if(_loc4_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§'!q§ = §§pop();
               if(_loc4_)
               {
                  §§push(this.§'!q§ >= §2G§);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc4_ || param1)
                           {
                              §§pop();
                              loop2:
                              while(true)
                              {
                                 addr78:
                                 while(true)
                                 {
                                    §§push(this.§`!e§);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop8:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      while(true)
                                                      {
                                                         §§push(this.§5!Z§ < §;"+§);
                                                         if(_loc4_)
                                                         {
                                                            if(!(_loc4_ || param1))
                                                            {
                                                               continue loop4;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  break;
                                                               }
                                                               continue loop8;
                                                            }
                                                            if(!(_loc4_ || this))
                                                            {
                                                               continue loop1;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr145);
                                                               }
                                                            }
                                                            §§goto(addr145);
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            §§pop();
                                                            if(!(_loc4_ || this))
                                                            {
                                                               break;
                                                            }
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop0;
                                                      }
                                                      addr212:
                                                      while(true)
                                                      {
                                                         this.§?7§();
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      addr205:
                                                      §§goto(addr145);
                                                   }
                                                   addr104:
                                                }
                                                §§goto(addr33);
                                             }
                                          }
                                          addr91:
                                       }
                                       else
                                       {
                                          addr144:
                                          §§push(Boolean(§§pop()));
                                       }
                                       addr145:
                                       if(§§pop())
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             var _loc2_:*;
                                             §§push((_loc2_ = this).§5!Z§);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc3_:* = §§pop();
                                             if(_loc4_ || param1)
                                             {
                                                _loc2_.§5!Z§ = _loc3_;
                                             }
                                             if(_loc4_ || _loc3_)
                                             {
                                                this.§`!e§ = false;
                                                this.§'!q§ = 0;
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break loop5;
                                                   }
                                                   §§goto(addr216);
                                                }
                                                addr216:
                                                addr210:
                                             }
                                             break loop5;
                                          }
                                          break loop5;
                                       }
                                       return;
                                    }
                                    §§goto(addr104);
                                 }
                              }
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr91);
                     }
                  }
               }
               §§goto(addr205);
            }
         }
         §§goto(addr212);
      }
      
      public function §?7§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(x * §'!S§.§2"<§);
         if(_loc4_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y * §'!S§.§2"<§);
         if(_loc4_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:§="@§ = §?l§.§'h§.particles as §="@§;
         if(_loc4_ || _loc2_)
         {
            _loc3_.§?7§(_loc1_,_loc2_);
         }
      }
   }
}
