package §@!"§
{
   import §%8§.§@-§;
   import §'!_§.b2Settings;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §`2§.§"w§;
   import §`2§.§`""§;
   
   public class §7k§ extends §5!;§
   {
       
      
      private var §>!p§:Boolean = false;
      
      private var §<_§:Number = 0;
      
      public function §7k§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function addDestructionParticles(param1:§`!m§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!param1)
            {
               if(!_loc3_)
               {
                  return;
               }
            }
         }
         if(this.§>!p§)
         {
            §§push(§`""§.§2o§);
            if(!_loc3_)
            {
               §§push(§§pop());
               if(!(_loc3_ && _loc3_))
               {
                  addr69:
                  §§push(§§pop());
               }
            }
         }
         else
         {
            §§push(§`""§.§,!b§);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop());
               if(_loc4_ || this)
               {
                  §§goto(addr69);
               }
            }
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            param1.§9!@§(_loc2_,§"w§.§,§,§`""§.§%!9§,§!!I§().GetPosition().x,§!!I§().GetPosition().y - 1,2000,"",§`""§.§?!$§);
         }
      }
      
      override public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:Number;
         §§push(_loc5_ = super.applyDamage(param1,param2,param3,param4));
         if(!_loc7_)
         {
            §§push(§§pop() <= 0);
            if(!(_loc7_ && param3))
            {
               §§push(§§pop());
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || param3)
                     {
                        §§pop();
                        if(_loc6_)
                        {
                           §§push(param3 is §^"2§);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              addr112:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§pop();
                                       addr114:
                                       loop4:
                                       while(true)
                                       {
                                          §§push(param3.health);
                                          addr76:
                                          while(true)
                                          {
                                             §§push(§§pop() == param3.healthMax);
                                             if(_loc7_)
                                             {
                                                continue loop8;
                                             }
                                             if(_loc7_ && param3)
                                             {
                                                continue loop5;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    addr113:
                                 }
                                 while(true)
                                 {
                                    addr89:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr90:
                                          if(!_loc7_)
                                          {
                                             this.§>!p§ = true;
                                          }
                                          if(_loc6_)
                                          {
                                             while(true)
                                             {
                                                addr61:
                                                addr70:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr76);
                                                }
                                                return §§pop();
                                                §§goto(addr90);
                                             }
                                             addr107:
                                          }
                                          §§goto(addr114);
                                       }
                                       §§goto(addr61);
                                    }
                                 }
                              }
                           }
                           addr111:
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr111);
               }
               §§goto(addr112);
            }
            §§goto(addr113);
         }
         §§goto(addr70);
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§@5§;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(0.3);
         if(!_loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(Math.abs(§!!I§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr127:
                              §§goto(addr91);
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc3_ || this))
                              {
                                 if(_loc3_)
                                 {
                                    addr30:
                                    §§push(true);
                                    if(!(_loc2_ && this))
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr127);
                                 }
                                 addr91:
                                 while(true)
                                 {
                                    §§push(Math.abs(§!!I§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 addr91:
                                 return §§pop();
                              }
                              if(_loc3_ || _loc3_)
                              {
                                 addr90:
                                 §§push(false);
                              }
                              else
                              {
                                 §§goto(addr152);
                              }
                              §§goto(addr91);
                              §§goto(addr127);
                           }
                           §§goto(addr30);
                        }
                     }
                     continue;
                     addr121:
                  }
                  §§goto(addr151);
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr121);
            }
         }
         §§goto(addr90);
      }
      
      override public function scream() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.scream();
            do
            {
               playScreamingSoundEffect();
            }
            while(_loc2_);
            
         }
      }
   }
}
