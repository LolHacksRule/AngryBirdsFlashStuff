package §&!8§
{
   import § o§.b2World;
   import §,§.§ p§;
   import §,§.§?9§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §^a§.Sprite;
   
   public class §7q§ extends §-!K§
   {
      
      public static const §`!9§:Number = 0.3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`!9§ = 0.3;
         }
      }
      
      private var §,4§:Boolean = false;
      
      private var §]!]§:Number = 0;
      
      public function §7q§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!_loc14_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
            do
            {
               §]'§ = param11;
               do
               {
                  final.limitMultiplier = §`!9§;
               }
               while(_loc14_);
               
            }
            while(_loc14_);
            
         }
      }
      
      override public function addDestructionParticles(param1:§do§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§,4§)
            {
               addr22:
               §§push(§7!?§.§!o§);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                  }
                  addr43:
                  var _loc2_:* = §§pop();
                  if(_loc4_ || param1)
                  {
                     if(§]'§ != "")
                     {
                        param1.§2!L§(§]'§,_loc2_,§do§.§+!c§,§7!?§.§2B§,§`e§().GetPosition().x,§`e§().GetPosition().y - 1,2000,"",§7!?§.§=6§,0,0,0,0,1,20,true);
                        if(_loc3_)
                        {
                           addr140:
                        }
                        return;
                     }
                     if(!(_loc3_ && _loc2_))
                     {
                        param1.addParticle(_loc2_,§do§.§+!c§,§7!?§.§2B§,§`e§().GetPosition().x,§`e§().GetPosition().y - 1,2000,"",§7!?§.§=6§);
                     }
                  }
                  §§goto(addr140);
               }
               addr42:
               §§push(§§pop());
            }
            else
            {
               §§push(§7!?§.§7V§);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     §§goto(addr42);
                  }
               }
            }
            §§goto(addr43);
         }
         §§goto(addr22);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(!_loc8_)
         {
            §§push(§§pop() <= 0);
            if(!_loc8_)
            {
               §§push(§§pop());
               if(_loc9_ || param2)
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        addr45:
                        §§pop();
                        if(!_loc8_)
                        {
                           §§push(param3);
                           if(_loc9_ || param3)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc9_)
                              {
                                 addr112:
                                 if(§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§pop();
                                       addr115:
                                       loop1:
                                       for(; §§pop(); §§goto(addr115))
                                       {
                                          if(_loc9_)
                                          {
                                             while(true)
                                             {
                                                this.§,4§ = true;
                                             }
                                             addr80:
                                          }
                                          while(true)
                                          {
                                             if(_loc9_ || param3)
                                             {
                                                break loop1;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          §§push(param4);
                                          if(_loc9_)
                                          {
                                             addr68:
                                             if(!(_loc9_ || param3))
                                             {
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr76:
                                                while(true)
                                                {
                                                   break loop2;
                                                }
                                                §§goto(addr68);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr61);
                                    }
                                    addr114:
                                 }
                                 §§goto(addr76);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr112);
            }
            §§goto(addr45);
         }
         addr61:
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§]!]§ > 0)
            {
               addr83:
               §§push(this);
               §§push(this.§]!]§);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§]!]§ = §§pop();
               do
               {
                  §5d§.mTryToScream = §%$§.§&!D§;
               }
               while(_loc3_ && param1);
               
               return true;
            }
            else
            {
               §§push(super.updateScreamingFrameAnimations(param1));
               if(!(_loc3_ && this))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr83);
      }
      
      public function §'![§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§]!]§ = §?9§.§]m§;
            while(true)
            {
               §5d§.mTryToScream = §%$§.§&!D§;
               while(!_loc2_)
               {
                  playScreamingSoundEffect();
                  if(_loc1_ || this)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
   }
}
