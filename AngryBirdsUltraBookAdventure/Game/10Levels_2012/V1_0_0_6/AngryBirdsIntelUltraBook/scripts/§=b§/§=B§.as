package §=b§
{
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §#V§.b2World;
   import §2_§.§'u§;
   import §2_§.§,L§;
   import §7!B§.Sprite;
   
   public class §=B§ extends §72§
   {
      
      public static const §=![§:Number = 0.3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §=B§)
         {
            §=![§ = 0.3;
         }
      }
      
      private var §6H§:Boolean = false;
      
      private var §6n§:Number = 0;
      
      public function §=B§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
            do
            {
               §&;§ = param11;
               do
               {
                  §[!e§.limitMultiplier = §=![§;
               }
               while(!(_loc13_ || param3));
               
            }
            while(!_loc13_);
            
         }
      }
      
      override public function addDestructionParticles(param1:§^z§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§6H§)
            {
               addr21:
               §§push(§9!B§.§^8§);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc3_ || _loc3_)
                  {
                  }
                  addr52:
                  var _loc2_:String = §§pop();
                  addr51:
                  if(_loc3_)
                  {
                     if(§&;§ != "")
                     {
                        param1.§2!c§(§&;§,_loc2_,§^z§.§!!B§,§9!B§.§6I§,§3J§().GetPosition().x,§3J§().GetPosition().y - 1,2000,"",§9!B§.§2#§,0,0,0,0,1,20,true);
                        if(_loc3_)
                        {
                           if(_loc4_)
                           {
                              addr119:
                              param1.§#Z§(_loc2_,§^z§.§!!B§,§9!B§.§6I§,§3J§().GetPosition().x,§3J§().GetPosition().y - 1,2000,"",§9!B§.§2#§);
                              addr139:
                           }
                           return;
                        }
                        §§goto(addr139);
                     }
                  }
                  §§goto(addr119);
               }
            }
            else
            {
               §§push(§9!B§.§]!$§);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     §§goto(addr51);
                  }
                  §§goto(addr52);
               }
            }
            §§goto(addr52);
         }
         §§goto(addr21);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(_loc9_)
         {
            §§push(§§pop() <= 0);
            if(!_loc8_)
            {
               §§push(§§pop());
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     if(!(_loc8_ && param3))
                     {
                        §§pop();
                        if(!_loc8_)
                        {
                           §§push(param3);
                           loop0:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr117:
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr118:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc8_ && param3))
                                             {
                                                this.§6H§ = true;
                                             }
                                             if(!_loc9_)
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(param4);
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      if(!(_loc9_ || param3))
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr119:
                                                   addr119:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop1;
                                                   }
                                                }
                                                addr120:
                                             }
                                          }
                                          §§goto(addr61);
                                       }
                                       addr100:
                                    }
                                    §§goto(addr119);
                                 }
                              }
                           }
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr117);
               }
               §§goto(addr118);
            }
            §§goto(addr117);
         }
         addr61:
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§6n§ > 0)
            {
               do
               {
                  §§push(this);
                  §§push(this.§6n§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§6n§ = §§pop();
                  §7![§.mTryToScream = § 6§.§8!3§;
               }
               while(_loc3_);
               
               return true;
            }
            else
            {
               addr19:
               §§push(super.updateScreamingFrameAnimations(param1));
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr19);
      }
      
      public function §6!5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§6n§ = §,L§.§2!P§;
         }
         while(true)
         {
            §7![§.mTryToScream = § 6§.§8!3§;
            while(!(_loc2_ && this))
            {
               playScreamingSoundEffect();
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
   }
}
