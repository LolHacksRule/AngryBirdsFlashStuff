package §-!7§
{
   import §&!"§.b2World;
   import §9N§.§&!V§;
   import §9N§.§9!%§;
   import §>!@§.b2Settings;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §`a§.Sprite;
   
   public class §;!T§ extends §!!!§
   {
       
      
      private var §#!X§:Boolean = false;
      
      private var §^C§:Number = 0;
      
      public function §;!T§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc12_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override public function addDestructionParticles(param1:§,v§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            if(this.§#!X§)
            {
               §§goto(addr57);
            }
            else
            {
               §§push(§-&§.§#!T§);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     §§goto(addr56);
                  }
                  addr57:
                  §§goto(addr26);
               }
            }
            §§goto(addr56);
         }
         addr26:
         §§push(§-&§.§[!Y§);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop());
            if(_loc3_)
            {
               addr56:
               §§push(§§pop());
            }
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            param1.addParticle(_loc2_,§,v§.§-!;§,§-&§.§3!<§,§`!#§().GetPosition().x,§`!#§().GetPosition().y - 1,2000,"",§-&§.§]!'§);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(!(_loc8_ && param3))
         {
            §§push(§§pop() <= 0);
            if(_loc9_ || param3)
            {
               §§push(§§pop());
               if(_loc9_ || param2)
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        if(_loc9_)
                        {
                           §§push(param3);
                           if(!_loc8_)
                           {
                              addr104:
                              §§push(Boolean(§§pop()));
                              if(!(_loc8_ && param1))
                              {
                                 addr122:
                                 if(§§pop())
                                 {
                                    loop0:
                                    while(true)
                                    {
                                       §§pop();
                                       loop1:
                                       while(true)
                                       {
                                          §§push(param4);
                                          if(!(_loc8_ && param3))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!_loc8_)
                                          {
                                             while(§§pop())
                                             {
                                                if(_loc9_)
                                                {
                                                   if(_loc8_ && param2)
                                                   {
                                                      continue loop1;
                                                   }
                                                   this.§#!X§ = true;
                                                }
                                                break loop1;
                                             }
                                             break;
                                             addr86:
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr71);
                                    }
                                    addr124:
                                 }
                                 §§goto(addr86);
                              }
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr104);
                  }
               }
            }
            §§goto(addr122);
         }
         addr71:
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(0.3);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc3_))
         {
            §§push(Math.abs(§`!#§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            if(!_loc2_)
            {
               §§push(§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
               }
            }
            §§goto(addr146);
         }
         §§goto(addr147);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§^C§ > 0)
            {
               §§push(this);
               §§push(this.§^C§);
               if(_loc2_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§^C§ = §§pop();
               do
               {
                  §%n§.mTryToScream = §'x§.§ H§;
               }
               while(_loc3_ && this);
               
               §§push(true);
               addr73:
            }
            else
            {
               §§push(super.updateScreamingFrameAnimations(param1));
               if(!(_loc3_ && _loc3_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr73);
      }
      
      public function §>f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§^C§ = §&!V§.§1<§;
            while(true)
            {
               §%n§.mTryToScream = §'x§.§ H§;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     playScreamingSoundEffect();
                     if(!(_loc1_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
   }
}
