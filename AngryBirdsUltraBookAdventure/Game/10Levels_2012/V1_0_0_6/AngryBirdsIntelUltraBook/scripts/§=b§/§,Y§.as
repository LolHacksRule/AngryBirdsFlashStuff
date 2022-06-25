package §=b§
{
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §#V§.b2World;
   import §2_§.§'u§;
   import §7!B§.Sprite;
   import §>! §.§^!c§;
   
   public class §,Y§ extends §`!_§
   {
       
      
      private var §?!=§:int = 0;
      
      public function §,Y§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            while(true)
            {
               §&;§ = param12;
               loop1:
               while(_loc14_)
               {
                  while(true)
                  {
                     §7#§ = param13;
                     if(_loc14_ || param3)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function addDestructionParticles(param1:§^z§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§;a§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(true)
         {
            §§push(_loc5_);
            if(!_loc10_)
            {
               if(§§pop() >= _loc3_)
               {
                  if(!(_loc10_ && param1))
                  {
                     if(!(_loc10_ && _loc2_))
                     {
                        if(_loc11_ || _loc2_)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(_loc10_ && this)
                           {
                              continue;
                           }
                           §§push(1);
                           if(_loc11_)
                           {
                              addr241:
                              §§push(int(§§pop() + Math.floor(Math.random() * §7#§)));
                              while(true)
                              {
                                 _loc9_ = §§pop();
                              }
                              addr241:
                           }
                           §§goto(addr241);
                        }
                     }
                     while(true)
                     {
                        if(_loc11_ || _loc2_)
                        {
                           §§push(param1);
                           §§push(§&;§ + "_");
                           if(_loc11_ || _loc2_)
                           {
                              §§push(§§pop() + _loc9_);
                           }
                           §§pop().§2!c§(§§pop(),§9!B§.§+-§,§^z§.§!!B§,§9!B§.§5!G§,§3J§().GetPosition().x + _loc7_,§3J§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§'!4§(§^r§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                           §§goto(addr218);
                        }
                        §§goto(addr428);
                     }
                  }
                  §§goto(addr79);
               }
               else
               {
                  §§push(_loc4_);
               }
               §§goto(addr385);
            }
            §§goto(addr241);
         }
      }
      
      override public function addDamageParticles(param1:§^z§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§'u§ = §^!c§.§5!Y§;
         if(_loc6_)
         {
            §§push(§&!>§ < §]l§);
            if(!(_loc5_ && this))
            {
               if(!§§pop())
               {
                  do
                  {
                     §§pop();
                     §§push(§3J§() == null);
                  }
                  while(_loc5_);
                  
                  addr71:
               }
               if(§§pop())
               {
                  _loc1_.§+N§(this);
                  do
                  {
                     _loc1_.§6u§ = false;
                  }
                  while(!_loc6_);
                  
                  return;
                  addr45:
               }
               else
               {
                  §§push(x * §'u§.§18§);
                  if(_loc6_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(y * §'u§.§18§);
                  if(_loc6_ || _loc1_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  §§push(§9!B§.PARTICLE_NAME_BIRD_TRAIL1);
                  if(_loc6_ || this)
                  {
                     §§push(§§pop());
                  }
                  var _loc4_:* = §§pop();
                  if(!(_loc5_ && this))
                  {
                     §§push(this.§?!=§);
                     loop0:
                     while(true)
                     {
                        §§push(1);
                        loop1:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.§?!=§);
                           if(_loc5_)
                           {
                              continue loop0;
                           }
                           §§push(2);
                           if(!_loc6_)
                           {
                              continue;
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(§9!B§.PARTICLE_NAME_BIRD_TRAIL3);
                                 if(!_loc5_)
                                 {
                                    if(!(_loc5_ && _loc1_))
                                    {
                                       addr208:
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          _loc4_ = §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             addr157:
                                             loop4:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§?!=§ + 1);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() % 3);
                                                }
                                                §§pop().§?!=§ = §§pop();
                                                loop5:
                                                while(!_loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      break loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      _loc1_.particles.§#Z§(_loc4_,§^z§.§#1§,§9!B§.§4!o§,_loc2_,_loc3_,-1,"",§9!B§.§!L§);
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop5;
                                                   }
                                                   return;
                                                }
                                                addr220:
                                                while(true)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          addr211:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                       }
                                       addr218:
                                    }
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       §§goto(addr220);
                                    }
                                 }
                                 §§goto(addr208);
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr157);
                        }
                        while(true)
                        {
                           §§goto(addr218);
                        }
                     }
                  }
                  §§goto(addr172);
               }
            }
            §§goto(addr71);
         }
         §§goto(addr45);
      }
   }
}
