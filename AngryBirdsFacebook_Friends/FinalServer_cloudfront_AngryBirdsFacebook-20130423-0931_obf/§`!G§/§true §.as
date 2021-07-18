package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §4!<§.§^!Z§;
   import §6"1§.b2World;
   
   public class §true § extends §<N§
   {
      
      public static const §,"A§:Number = 0.3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §,"A§ = 0.3;
         }
      }
      
      private var §'"J§:Boolean = false;
      
      private var §+"P§:Number = 0;
      
      public function §true §(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
         while(true)
         {
            §0"9§ = param11;
            while(!_loc14_)
            {
               §?"!§.limitMultiplier = §,"A§;
               if(!(_loc14_ && param3))
               {
                  return;
               }
            }
         }
      }
      
      override public function addDestructionParticles(param1:§6!O§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§'"J§)
            {
               addr21:
               §§push(§0i§.§^">§);
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     addr41:
                     §§push(§§pop());
                  }
                  §§goto(addr41);
               }
               else
               {
                  addr38:
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     §§goto(addr41);
                  }
               }
               var _loc2_:* = §§pop();
               if(!_loc4_)
               {
                  if(§0"9§ != "")
                  {
                     param1.§@6§(§0"9§,_loc2_,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.§2L§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§0i§.§?"Z§,0,0,0,0,1,20,true);
                     if(!_loc4_)
                     {
                        addr103:
                     }
                     else
                     {
                        addr129:
                     }
                     return;
                  }
                  if(_loc3_)
                  {
                     param1.§"!J§(_loc2_,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.§2L§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§0i§.§?"Z§);
                  }
                  §§goto(addr129);
               }
               §§goto(addr103);
            }
            else
            {
               §§push(§0i§.§^"X§);
               if(_loc3_ || this)
               {
                  §§goto(addr38);
               }
            }
            §§goto(addr41);
         }
         §§goto(addr21);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(_loc8_ || param1)
         {
            §§push(§§pop() <= 0);
            if(!(_loc9_ && param3))
            {
               §§push(§§pop());
               if(_loc8_ || param2)
               {
                  if(§§pop())
                  {
                     if(!(_loc9_ && param1))
                     {
                        §§pop();
                        if(!(_loc9_ && param2))
                        {
                           §§push(param3);
                           if(!(_loc9_ && this))
                           {
                              addr128:
                              §§push(Boolean(§§pop()));
                              if(_loc8_)
                              {
                                 addr131:
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       loop1:
                                       while(true)
                                       {
                                          §§push(param4);
                                          if(!(_loc9_ && this))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!(_loc9_ && param3))
                                          {
                                             while(§§pop())
                                             {
                                                if(_loc8_)
                                                {
                                                   this.§'"J§ = true;
                                                }
                                                if(!_loc9_)
                                                {
                                                   addr119:
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             addr80:
                                             return _loc7_;
                                             addr110:
                                          }
                                          break;
                                       }
                                    }
                                    addr133:
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr128);
                  }
               }
               §§goto(addr131);
            }
            §§goto(addr128);
         }
         §§goto(addr80);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§+"P§ > 0)
            {
               if(!_loc3_)
               {
                  addr78:
                  §§push(this);
                  §§push(this.§+"P§);
                  if(_loc2_ || param1)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§+"P§ = §§pop();
               }
               do
               {
                  §2!8§.mTryToScream = §+T§.§<!t§;
               }
               while(_loc3_ && _loc2_);
               
               return true;
            }
            else
            {
               §§push(super.updateScreamingFrameAnimations(param1));
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr78);
      }
      
      public function §7!;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§+"P§ = §^!Z§.§1"D§;
            while(true)
            {
               §2!8§.mTryToScream = §+T§.§<!t§;
               while(!(_loc2_ && _loc2_))
               {
                  playScreamingSoundEffect();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr38:
               }
            }
         }
         §§goto(addr38);
      }
   }
}
