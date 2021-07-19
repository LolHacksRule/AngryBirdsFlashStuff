package §-!&§
{
   import § N§.Sprite;
   import §-!<§.§5!5§;
   import §-!<§.§8R§;
   import §8!B§.§#! §;
   import §9T§.§1r§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §1Q§ extends §3!,§
   {
      
      public static const §>s§:int = 1750;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §>s§ = 1750;
         }
      }
      
      private var §>!-§:int = 0;
      
      public function §1Q§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            do
            {
               §7!H§ = param12;
               do
               {
                  §8!O§ = param13;
               }
               while(!_loc14_);
               
            }
            while(!(_loc14_ || this));
            
         }
      }
      
      override public function addDestructionParticles(param1:§5!5§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§8!D§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         while(true)
         {
            §§push(_loc5_);
            if(_loc10_)
            {
               if(!(_loc11_ && _loc2_))
               {
                  if(§§pop() >= _loc3_)
                  {
                     if(!_loc11_)
                     {
                        break;
                     }
                     loop10:
                     while(!_loc10_)
                     {
                        while(true)
                        {
                           _loc5_++;
                           continue loop10;
                        }
                     }
                     continue;
                  }
                  §§push(_loc4_ + Math.random() * (720 / _loc3_));
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     §§push(Number(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        §§push(Number(§§pop() / (180 / Math.PI)));
                        loop3:
                        while(true)
                        {
                           _loc6_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(-§3! §.mW);
                              if(!(_loc11_ && this))
                              {
                                 §§push(§1r§.§[M§);
                                 if(!_loc11_)
                                 {
                                    addr284:
                                    §§push(Number(§§pop() * §§pop()));
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc11_)
                                       {
                                          _loc7_ = §§pop();
                                          §§push(Math.random() * -_loc7_);
                                       }
                                       addr293:
                                       while(true)
                                       {
                                          §§push(2);
                                          addr294:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                    }
                                    addr284:
                                 }
                                 while(_loc10_ || param1)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc10_ || _loc2_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       §§push(-§3! §.mH);
                                       if(_loc10_ || this)
                                       {
                                          §§push(§1r§.§[M§);
                                          if(_loc10_)
                                          {
                                             if(_loc10_ || _loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc11_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc11_)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc10_)
                                                      {
                                                         addr242:
                                                         §§push(_loc8_ = §§pop());
                                                         if(_loc10_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      addr262:
                                                      if(!_loc11_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         break;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr284);
                                             }
                                             §§goto(addr293);
                                          }
                                          §§goto(addr242);
                                       }
                                       break;
                                    }
                                    _loc8_ = §§pop();
                                    if(§7!H§ == "")
                                    {
                                       param1.addParticle(§8R§.§+`§,§5!5§.§-U§,§8R§.§`R§,§`%§().GetPosition().x + _loc7_,§`%§().GetPosition().y + _loc8_,§>s§ + Math.random() * 500,"",§[q§(§4V§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                       break loop4;
                                    }
                                    §§push(1);
                                    while(true)
                                    {
                                       §§push(int(§§pop() + Math.floor(Math.random() * §8!O§)));
                                       addr207:
                                       while(true)
                                       {
                                          _loc9_ = §§pop();
                                          §§push(param1);
                                          §§push(§7!H§ + "_");
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             §§push(§§pop() + _loc9_);
                                          }
                                          §§pop().§;!8§(§§pop(),§8R§.§+`§,§5!5§.§-U§,§8R§.§`R§,§`%§().GetPosition().x + _loc7_,§`%§().GetPosition().y + _loc8_,§>s§ + Math.random() * 500,"",§[q§(§4V§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                          if(!(_loc10_ || _loc3_))
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr64);
                                       }
                                    }
                                    §§goto(addr294);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr284);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr64);
                  }
               }
               §§goto(addr199);
            }
            §§goto(addr207);
         }
      }
      
      override public function addDamageParticles(param1:§5!5§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§1r§ = §#! §.§`'§;
         if(_loc5_)
         {
            §§push(§8!2§ < §53§);
            while(!§§pop())
            {
               while(true)
               {
                  §§pop();
               }
               if(_loc5_)
               {
                  break;
               }
            }
            if(§§pop())
            {
               do
               {
                  _loc1_.§3f§(this);
                  _loc1_.§5!Q§ = false;
               }
               while(!(_loc5_ || _loc3_));
               
               return;
            }
            §§push(x * §1r§.§[M§);
            if(_loc5_ || _loc1_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(y * §1r§.§[M§);
            if(!(_loc6_ && this))
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(§8R§.PARTICLE_NAME_BIRD_TRAIL1);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            §§push(this.§>!-§);
            loop2:
            while(true)
            {
               §§push(1);
               loop3:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr219:
                     §§push(§8R§.PARTICLE_NAME_BIRD_TRAIL2);
                     addr220:
                  }
                  §§push(this.§>!-§);
                  if(!_loc5_)
                  {
                     continue loop2;
                     _loc4_ = §§pop();
                  }
                  §§push(2);
                  if(_loc5_ || _loc1_)
                  {
                     if(§§pop() == §§pop())
                     {
                        §§push(§8R§.PARTICLE_NAME_BIRD_TRAIL3);
                        if(!(_loc6_ && _loc3_))
                        {
                           if(_loc5_ || _loc2_)
                           {
                              if(_loc5_ || this)
                              {
                                 §§push(§§pop());
                              }
                              else
                              {
                                 §§goto(addr219);
                              }
                           }
                           §§goto(addr220);
                        }
                        _loc4_ = §§pop();
                        while(true)
                        {
                           break loop3;
                        }
                        addr212:
                     }
                     break;
                  }
                  continue;
                  do
                  {
                     break loop3;
                     _loc1_.particles.addParticle(_loc4_,§5!5§.§&!J§,§8R§.§!J§,_loc2_,_loc3_,-1,"",§8R§.§0k§);
                  }
                  while(_loc6_ && _loc3_);
                  
                  return;
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§>!-§ + 1);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() % 3);
                  }
                  §§pop().§>!-§ = §§pop();
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§goto(addr212);
               }
               §§goto(addr160);
            }
         }
         while(true)
         {
            §§push(§`%§() == null);
            if(_loc6_)
            {
               continue;
            }
            §§goto(addr52);
         }
      }
   }
}
