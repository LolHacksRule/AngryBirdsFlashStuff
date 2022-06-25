package §^!A§
{
   import §&o§.Sprite;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §53§ extends §;!%§
   {
      
      public static const §5!=§:int = 1750;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5!=§ = 1750;
         }
      }
      
      private var §7O§:int = 0;
      
      public function §53§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            if(!_loc15_)
            {
               §4N§ = param12;
               if(!_loc15_)
               {
                  §0!>§ = param13;
               }
            }
         }
      }
      
      override public function addDestructionParticles(param1:§2!H§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§1!=§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         while(true)
         {
            §§push(_loc5_);
            while(true)
            {
               if(§§pop() < _loc3_)
               {
                  §§push(_loc4_ + Math.random() * (720 / _loc3_));
                  if(_loc11_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                     §§push(Number(§§pop()));
                     if(!_loc10_)
                     {
                        _loc4_ = §§pop();
                        §§push(180 / Math.PI);
                        if(!(_loc10_ && _loc2_))
                        {
                           §§push(Number(§§pop() / §§pop()));
                           if(_loc11_)
                           {
                              _loc6_ = §§pop();
                              §§push(-§;S§.mW);
                              §§push(§ !§.§`J§);
                              if(_loc11_ || _loc3_)
                              {
                                 §§push(Number(§§pop() * §§pop()));
                                 §§push(Number(§§pop() * §§pop()));
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    _loc7_ = §§pop();
                                    §§push(Math.random() * -_loc7_);
                                    §§push(2);
                                    if(!_loc10_)
                                    {
                                       §§goto(addr116);
                                    }
                                 }
                                 §§goto(addr163);
                              }
                              addr116:
                              §§push(§§pop() + §§pop() * §§pop());
                              if(_loc11_ || param1)
                              {
                                 _loc7_ = Number(§§pop());
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                                 §§push(-§;S§.mH);
                                 if(_loc11_)
                                 {
                                    addr136:
                                    §§push(Number(§§pop() * § !§.§`J§));
                                    if(_loc11_ || this)
                                    {
                                       §§push(§§pop());
                                       if(_loc11_)
                                       {
                                          addr157:
                                          _loc8_ = §§pop();
                                          addr163:
                                          §§push(Number(§§pop() + Math.random() * -_loc8_ * 2));
                                       }
                                       §§goto(addr163);
                                    }
                                 }
                                 §§goto(addr136);
                              }
                              _loc8_ = §§pop();
                              if(_loc11_)
                              {
                                 if(§4N§ != "")
                                 {
                                    §§push(1);
                                    if(_loc11_)
                                    {
                                       §§push(int(§§pop() + Math.floor(Math.random() * §0!>§)));
                                       if(_loc10_ && this)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc9_ = §§pop();
                                    §§push(param1);
                                    §§push(§4N§ + "_");
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() + _loc9_);
                                    }
                                    §§pop().§?e§(§§pop(),§<!6§.§1X§,§2!H§.§"!5§,§<!6§.§!E§,§'[§().GetPosition().x + _loc7_,§'[§().GetPosition().y + _loc8_,§5!=§ + Math.random() * 500,"",§4!8§(§1>§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                    break;
                                 }
                                 param1.§4#§(§<!6§.§1X§,§2!H§.§"!5§,§<!6§.§!E§,§'[§().GetPosition().x + _loc7_,§'[§().GetPosition().y + _loc8_,§5!=§ + Math.random() * 500,"",§4!8§(§1>§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                 break;
                              }
                              §§goto(addr304);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr136);
               }
               addr304:
               return;
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§2!H§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§ !§ = §=w§.§ o§;
         if(_loc5_ || this)
         {
            §§push(§`Y§ < §@!§);
            if(!(_loc6_ && this))
            {
               if(!§§pop())
               {
                  if(_loc5_ || _loc2_)
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        addr53:
                        if(§'[§() == null)
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              §§goto(addr61);
                           }
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr71);
                  }
               }
            }
            §§goto(addr53);
         }
         addr61:
         _loc1_.§[r§(this);
         if(!(_loc6_ && _loc3_))
         {
            addr71:
            _loc1_.§?<§ = false;
            if(_loc6_)
            {
               addr77:
               §§push(x * § !§.§`J§);
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(y * § !§.§`J§);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(§<!6§.PARTICLE_NAME_BIRD_TRAIL1);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop());
               }
               var _loc4_:* = §§pop();
               §§push(this.§7O§);
               if(_loc5_)
               {
                  §§push(1);
                  if(_loc5_)
                  {
                     if(§§pop() == §§pop())
                     {
                        §§push(§<!6§.PARTICLE_NAME_BIRD_TRAIL2);
                        if(!(_loc6_ && _loc1_))
                        {
                           §§push(§§pop());
                           if(_loc5_)
                           {
                              _loc4_ = §§pop();
                              addr158:
                              §§push(this);
                              §§push(this.§7O§ + 1);
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(§§pop() % 3);
                              }
                              §§pop().§7O§ = §§pop();
                              if(!_loc6_)
                              {
                                 _loc1_.particles.§4#§(_loc4_,§2!H§.§+!7§,§<!6§.§8!!§,_loc2_,_loc3_,-1,"",§<!6§.§2!2§);
                              }
                           }
                           else
                           {
                              addr150:
                              _loc4_ = §§pop();
                              if(_loc5_ || _loc3_)
                              {
                                 §§goto(addr158);
                              }
                           }
                           return;
                        }
                        addr149:
                        §§push(§§pop());
                        §§goto(addr150);
                     }
                     else
                     {
                        addr144:
                        if(this.§7O§ == 2)
                        {
                           §§push(§<!6§.PARTICLE_NAME_BIRD_TRAIL3);
                           if(_loc5_)
                           {
                              §§goto(addr149);
                           }
                           §§goto(addr150);
                        }
                     }
                     §§goto(addr158);
                  }
               }
               §§goto(addr144);
            }
         }
      }
   }
}
