package §9_§
{
   import §!Y§.§[o§;
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §[x§.§2^§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §13§ extends §+>§
   {
       
      
      private var §9l§:int = 0;
      
      public function §13§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function addDestructionParticles(param1:§>=§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§8@§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(!_loc9_)
               {
                  continue;
               }
               if(_loc9_)
               {
                  if(_loc9_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(_loc9_ || this)
                     {
                        param1.§-X§(§'b§.§=!A§,§>=§.§>!5§,§'b§.§=<§,§>b§().GetPosition().x + _loc7_,§>b§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§'b§.§@#§(§57§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                        while(!(_loc9_ || _loc3_))
                        {
                           loop9:
                           while(true)
                           {
                              §§push(-§<p§.mH);
                              if(!(_loc10_ && _loc3_))
                              {
                                 §§push(§2^§.§,]§);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc9_ || _loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          §§push(§§pop());
                                          if(!_loc10_)
                                          {
                                             _loc8_ = §§pop();
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                addr166:
                                                §§push(Math.random() * -_loc8_);
                                                if(!_loc10_)
                                                {
                                                   addr173:
                                                   §§push(2);
                                                   if(_loc9_)
                                                   {
                                                      addr177:
                                                      §§push(§§pop() + §§pop() * §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         addr180:
                                                         if(!_loc10_)
                                                         {
                                                            addr183:
                                                            §§push(Number(§§pop()));
                                                            if(!_loc9_)
                                                            {
                                                               continue;
                                                            }
                                                            addr185:
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               addr239:
                                                               while(true)
                                                               {
                                                                  §§push(Math.random() * (720 / _loc3_));
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     addr263:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        §§push(Number(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           §§push(180 / Math.PI);
                                                                        }
                                                                        addr257:
                                                                     }
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        addr265:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_ = -§<p§.mW * §2^§.§,]§);
                                                                           addr213:
                                                                           while(true)
                                                                           {
                                                                              §§push(Math.random() * -_loc7_);
                                                                              §§push(2);
                                                                              addr219:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 addr220:
                                                                                 while(!_loc10_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr257);
                                                                              }
                                                                              §§goto(addr185);
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                     addr263:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr263);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr213);
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr263);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr180);
                           }
                        }
                        _loc5_++;
                        continue loop0;
                        addr106:
                     }
                     §§goto(addr265);
                  }
               }
               §§goto(addr106);
            }
            else
            {
               §§push(_loc4_);
            }
            §§goto(addr239);
         }
      }
      
      override public function addDamageParticles(param1:§>=§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§2^§ = §[o§.§='§;
         if(!_loc6_)
         {
            §§push(§8!'§ < §[!3§);
            if(!(_loc6_ && _loc2_))
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr86:
                     loop10:
                     while(true)
                     {
                        §§push(§>b§() == null);
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                        while(§§pop())
                        {
                           do
                           {
                              _loc1_.§%!-§(this);
                              _loc1_.§^t§ = false;
                           }
                           while(!_loc5_);
                           
                           if(_loc5_ || _loc1_)
                           {
                              return;
                           }
                           continue loop10;
                        }
                        §§push(x * §2^§.§,]§);
                        if(_loc5_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        §§push(y * §2^§.§,]§);
                        if(_loc5_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        §§push(§'b§.PARTICLE_NAME_BIRD_TRAIL1);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop());
                        }
                        var _loc4_:* = §§pop();
                        §§push(this.§9l§);
                        loop2:
                        while(true)
                        {
                           §§push(1);
                           addr226:
                           addr159:
                           loop3:
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 continue loop2;
                              }
                              §§push(§'b§.PARTICLE_NAME_BIRD_TRAIL2);
                              if(_loc5_)
                              {
                                 §§push(§§pop());
                              }
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 break loop3;
                              }
                           }
                           loop4:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§9l§ + 1);
                              if(_loc5_ || this)
                              {
                                 §§push(§§pop() % 3);
                              }
                              §§pop().§9l§ = §§pop();
                              loop5:
                              while(true)
                              {
                                 if(_loc5_ || _loc1_)
                                 {
                                    continue;
                                 }
                                 addr214:
                                 while(true)
                                 {
                                    §§push(§'b§.PARTICLE_NAME_BIRD_TRAIL3);
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop());
                                       }
                                       else
                                       {
                                          §§goto(addr232);
                                       }
                                    }
                                    _loc4_ = §§pop();
                                    break loop5;
                                 }
                              }
                              while(true)
                              {
                                 continue loop4;
                              }
                           }
                           return;
                        }
                     }
                  }
                  addr85:
               }
               §§goto(addr67);
            }
            §§goto(addr85);
         }
         §§goto(addr86);
      }
   }
}
