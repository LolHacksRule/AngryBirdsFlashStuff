package §8u§
{
   import §+!?§.§"h§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §?t§.§,i§;
   import §?t§.§;x§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §;X§ extends §0r§
   {
       
      
      private var §2!I§:int = 0;
      
      public function §;X§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            if(!_loc15_)
            {
               §+M§ = param12;
               if(_loc14_ || this)
               {
                  §?!I§ = param13;
               }
            }
         }
      }
      
      override public function addDestructionParticles(param1:§;x§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§;?§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            while(§§pop() < _loc3_)
            {
               §§push(_loc4_);
               §§push(Math.random() * (720 / _loc3_));
               if(!(_loc10_ && this))
               {
                  §§push(Number(§§pop() + §§pop()));
                  §§push(Number(§§pop() + §§pop()));
                  if(_loc11_)
                  {
                     _loc4_ = §§pop();
                     if(!_loc10_)
                     {
                        §§push(180 / Math.PI);
                        if(_loc11_ || this)
                        {
                           addr81:
                           §§push(§§pop() / §§pop());
                           if(!_loc10_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc10_)
                              {
                                 addr87:
                                 _loc6_ = §§pop();
                                 §§push(-§7!;§.mW);
                                 §§push(§!E§.§#N§);
                                 if(_loc11_)
                                 {
                                    addr95:
                                    §§push(§§pop() * §§pop());
                                    if(_loc11_)
                                    {
                                       addr99:
                                       §§push(Number(§§pop()));
                                       §§push(Number(§§pop()));
                                       if(!_loc10_)
                                       {
                                          _loc7_ = §§pop();
                                          if(!_loc10_)
                                          {
                                             addr105:
                                             §§push(Math.random() * -_loc7_);
                                             §§push(2);
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc11_ || _loc2_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc10_ && this))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc11_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         §§push(-§7!;§.mH);
                                                         if(_loc11_)
                                                         {
                                                            addr143:
                                                            §§push(Number(§§pop() * §!E§.§#N§));
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc11_)
                                                               {
                                                                  addr167:
                                                                  _loc8_ = §§pop();
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     addr182:
                                                                     addr175:
                                                                     addr180:
                                                                     addr181:
                                                                     §§push(§§pop() + Math.random() * -_loc8_ * 2);
                                                                     if(!_loc11_)
                                                                     {
                                                                     }
                                                                     addr186:
                                                                     _loc8_ = §§pop();
                                                                     if(§+M§ != "")
                                                                     {
                                                                        §§push(1);
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           §§push(int(§§pop() + Math.floor(Math.random() * §?!I§)));
                                                                           if(_loc10_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        _loc9_ = §§pop();
                                                                        §§push(param1);
                                                                        §§push(§+M§ + "_");
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() + _loc9_);
                                                                        }
                                                                        §§pop().§;w§(§§pop(),§,i§.§+P§,§;x§.§]+§,§,i§.§6I§,§?n§().GetPosition().x + _loc7_,§?n§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§?Q§(§>!"§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                        if(_loc10_)
                                                                        {
                                                                        }
                                                                        break;
                                                                     }
                                                                     param1.§8"§(§,i§.§+P§,§;x§.§]+§,§,i§.§6I§,§?n§().GetPosition().x + _loc7_,§?n§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§?Q§(§>!"§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                     if(_loc10_ && this)
                                                                     {
                                                                     }
                                                                     break;
                                                                     _loc5_++;
                                                                     if(!_loc11_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr186);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr182);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                   §§goto(addr175);
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr99);
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr182);
               }
               §§goto(addr81);
            }
            return;
         }
      }
      
      override public function addDamageParticles(param1:§;x§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§!E§ = §"h§.§1C§;
         if(_loc5_ || _loc2_)
         {
            §§push(§@^§ < §%!J§);
            if(!(_loc6_ && this))
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§goto(addr41);
                  }
               }
               §§goto(addr48);
            }
            addr41:
            §§pop();
            if(_loc5_)
            {
               addr48:
               if(§?n§() == null)
               {
                  if(_loc5_)
                  {
                     _loc1_.§%a§(this);
                     if(!_loc5_)
                     {
                     }
                     addr62:
                     §§push(x * §!E§.§#N§);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(y * §!E§.§#N§);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     §§push(§,i§.PARTICLE_NAME_BIRD_TRAIL1);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(§§pop());
                     }
                     var _loc4_:* = §§pop();
                     §§push(this.§2!I§);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(1);
                        if(!(_loc6_ && _loc3_))
                        {
                           if(§§pop() == §§pop())
                           {
                              §§push(§,i§.PARTICLE_NAME_BIRD_TRAIL2);
                              if(_loc5_ || _loc1_)
                              {
                                 §§push(§§pop());
                                 if(_loc5_ || _loc3_)
                                 {
                                    _loc4_ = §§pop();
                                 }
                                 §§goto(addr146);
                              }
                              addr145:
                              _loc4_ = §§pop();
                              addr144:
                           }
                           else
                           {
                              addr139:
                              if(this.§2!I§ == 2)
                              {
                                 §§push(§,i§.PARTICLE_NAME_BIRD_TRAIL3);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr144);
                                 }
                                 §§goto(addr145);
                              }
                           }
                           addr146:
                           §§push(this);
                           §§push(this.§2!I§ + 1);
                           if(!_loc6_)
                           {
                              §§push(§§pop() % 3);
                           }
                           §§pop().§2!I§ = §§pop();
                           if(!(_loc6_ && _loc1_))
                           {
                              _loc1_.particles.§8"§(_loc4_,§;x§.§4!D§,§,i§.§^_§,_loc2_,_loc3_,-1,"",§,i§.§5! §);
                           }
                           return;
                        }
                     }
                     §§goto(addr139);
                  }
                  _loc1_.§?5§ = false;
                  if(_loc6_)
                  {
                     §§goto(addr62);
                  }
               }
               §§goto(addr62);
            }
            return;
         }
         §§goto(addr62);
      }
   }
}
