package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §#I§.b2World;
   import §40§.§2!y§;
   import §40§.§5G§;
   import §`g§.Sprite;
   
   public class §%!"§ extends §&Y§
   {
      
      public static const §6!X§:Number = 0.3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §6!X§ = 0.3;
         }
      }
      
      private var §?T§:Boolean = false;
      
      private var §0P§:Number = 0;
      
      public function §%!"§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
            while(true)
            {
               §?!T§ = param11;
               while(_loc14_ || this)
               {
                  §1!7§.limitMultiplier = §6!X§;
                  if(!(_loc14_ || param2))
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
      
      override public function addDestructionParticles(param1:§=!%§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§?T§)
            {
               addr22:
               §§push(§>p§.§#!J§);
               if(_loc4_ || param1)
               {
                  §§push(§§pop());
                  if(_loc4_ || _loc3_)
                  {
                     addr52:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr49:
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        §§goto(addr52);
                     }
                  }
               }
               var _loc2_:* = §§pop();
               if(!_loc3_)
               {
                  if(§?!T§ != "")
                  {
                     param1.§;4§(§?!T§,_loc2_,§=!%§.§2k§,§>p§.§>b§,§63§().GetPosition().x,§63§().GetPosition().y - 1,2000,"",§>p§.§4?§,0,0,0,0,1,20,true);
                     if(!(_loc3_ && param1))
                     {
                        if(!_loc4_)
                        {
                           addr125:
                           param1.§-M§(_loc2_,§=!%§.§2k§,§>p§.§>b§,§63§().GetPosition().x,§63§().GetPosition().y - 1,2000,"",§>p§.§4?§);
                           addr145:
                        }
                        return;
                     }
                     §§goto(addr145);
                  }
               }
               §§goto(addr125);
            }
            else
            {
               §§push(§>p§.§@!J§);
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr49);
               }
            }
            §§goto(addr52);
         }
         §§goto(addr22);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(!(_loc8_ && param2))
         {
            §§push(§§pop() <= 0);
            if(!_loc8_)
            {
               §§push(§§pop());
               if(_loc9_ || param1)
               {
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        §§pop();
                        if(_loc9_ || param2)
                        {
                           §§push(param3);
                           if(_loc9_)
                           {
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr118:
                                 loop1:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr119:
                                       loop4:
                                       while(true)
                                       {
                                          §§pop();
                                          addr120:
                                          addr101:
                                          while(true)
                                          {
                                             §§push(param4);
                                             if(!(_loc9_ || param2))
                                             {
                                                break;
                                             }
                                             if(!(_loc8_ && this))
                                             {
                                                §§push(Boolean(§§pop()));
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          if(_loc8_)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       addr119:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             if(_loc9_)
                                             {
                                                this.§?T§ = true;
                                                addr112:
                                             }
                                             else
                                             {
                                                §§goto(addr120);
                                             }
                                          }
                                          §§goto(addr112);
                                       }
                                       addr71:
                                       return _loc7_;
                                       §§goto(addr101);
                                    }
                                 }
                              }
                              addr117:
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr112);
                     }
                  }
                  §§goto(addr117);
               }
               §§goto(addr118);
            }
            §§goto(addr119);
         }
         §§goto(addr71);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§0P§ > 0)
            {
               do
               {
                  §§push(this);
                  §§push(this.§0P§);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§0P§ = §§pop();
                  do
                  {
                     §+!j§.mTryToScream = §7!r§.§<!c§;
                  }
                  while(_loc2_ && _loc3_);
                  
               }
               while(_loc2_);
               
               §§push(true);
               addr74:
            }
            else
            {
               §§push(super.updateScreamingFrameAnimations(param1));
               if(!_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr74);
      }
      
      public function §0"!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§0P§ = §2!y§.§-!k§;
            while(true)
            {
               §+!j§.mTryToScream = §7!r§.§<!c§;
               while(!(_loc1_ && this))
               {
                  playScreamingSoundEffect();
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr54:
               }
            }
         }
         §§goto(addr54);
      }
   }
}
