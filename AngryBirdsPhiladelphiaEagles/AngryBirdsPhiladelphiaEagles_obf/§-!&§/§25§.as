package §-!&§
{
   import § N§.Sprite;
   import §-!<§.§5!5§;
   import §-!<§.§8R§;
   import §9T§.§1r§;
   import §9T§.Tuner;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §25§ extends §=!A§
   {
      
      public static const §&z§:Number = 0.3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&z§ = 0.3;
         }
      }
      
      private var §2!I§:Boolean = false;
      
      private var §0$§:Number = 0;
      
      public function §25§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!(_loc13_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
         do
         {
            §7!H§ = param11;
            do
            {
               §^2§.limitMultiplier = §&z§;
            }
            while(!_loc14_);
            
         }
         while(!(_loc14_ || param2));
         
      }
      
      override public function addDestructionParticles(param1:§5!5§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§2!I§)
            {
               addr21:
               §§push(§8R§.§,!B§);
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     addr46:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr38:
                     §§push(§§pop());
                     if(!(_loc4_ && param1))
                     {
                        §§goto(addr46);
                     }
                  }
               }
               var _loc2_:* = §§pop();
               if(_loc3_)
               {
                  if(§7!H§ != "")
                  {
                     param1.§;!8§(§7!H§,_loc2_,§5!5§.§-U§,§8R§.§0f§,§`%§().GetPosition().x,§`%§().GetPosition().y - 1,2000,"",§8R§.§!!J§,0,0,0,0,1,20,true);
                     if(!_loc4_)
                     {
                        if(!(_loc3_ || _loc2_))
                        {
                           addr119:
                           param1.addParticle(_loc2_,§5!5§.§-U§,§8R§.§0f§,§`%§().GetPosition().x,§`%§().GetPosition().y - 1,2000,"",§8R§.§!!J§);
                           addr139:
                        }
                        return;
                     }
                     §§goto(addr139);
                  }
               }
               §§goto(addr119);
            }
            else
            {
               §§push(§8R§.§!H§);
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr38);
               }
            }
            §§goto(addr46);
         }
         §§goto(addr21);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(_loc9_ || this)
         {
            §§push(§§pop() <= 0);
            if(!(_loc8_ && param2))
            {
               §§push(§§pop());
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     if(_loc9_ || this)
                     {
                        §§pop();
                        if(_loc9_)
                        {
                           addr120:
                           §§push(Boolean(param3));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              addr121:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       §§pop();
                                       addr123:
                                       while(true)
                                       {
                                          §§push(param4);
                                          if(_loc9_ || param3)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc8_ && param3)
                                          {
                                             continue loop1;
                                          }
                                          if(!_loc9_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 while(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       if(_loc9_ || param2)
                                       {
                                          this.§2!I§ = true;
                                          addr117:
                                          break;
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr117);
                                 }
                                 addr71:
                                 return _loc7_;
                                 continue loop4;
                              }
                           }
                           addr120:
                        }
                        §§goto(addr117);
                     }
                  }
                  §§goto(addr120);
               }
               §§goto(addr121);
            }
            §§goto(addr120);
         }
         §§goto(addr71);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§0$§ > 0)
            {
               if(_loc3_ || _loc3_)
               {
                  §§push(this);
                  §§push(this.§0$§);
                  if(_loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§0$§ = §§pop();
               }
               §3! §.mTryToScream = §?k§.§1J§;
               return true;
            }
            else
            {
               addr25:
               §§push(super.updateScreamingFrameAnimations(param1));
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr25);
      }
      
      public function §];§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§0$§ = Tuner.§[H§;
         }
         do
         {
            §3! §.mTryToScream = §?k§.§1J§;
            do
            {
               playScreamingSoundEffect();
            }
            while(!(_loc1_ || _loc2_));
            
         }
         while(_loc2_ && _loc1_);
         
      }
   }
}
