package §+!8§
{
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"!I§.§<!$§;
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   
   public class §-!;§ extends § !5§
   {
      
      public static const §^2§:Number = 0.3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §-!;§))
         {
            §^2§ = 0.3;
         }
      }
      
      private var §+F§:Boolean = false;
      
      private var §;-§:Number = 0;
      
      public function §-!;§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
            while(true)
            {
               §<b§ = param11;
               loop1:
               while(_loc13_)
               {
                  while(true)
                  {
                     §!w§.limitMultiplier = §^2§;
                     if(_loc13_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr46);
      }
      
      override public function addDestructionParticles(param1:§?F§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(this.§+F§)
            {
               addr27:
               §§push(§!U§.§,V§);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                  }
                  addr47:
                  §§push(§§pop());
               }
               else
               {
                  addr44:
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     §§goto(addr47);
                  }
               }
            }
            else
            {
               §§push(§!U§.§-!_§);
               if(_loc4_)
               {
                  §§goto(addr44);
               }
            }
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               if(§<b§ != "")
               {
                  param1.§6S§(§<b§,_loc2_,§?F§.§<G§,§!U§.§8;§,§0c§().GetPosition().x,§0c§().GetPosition().y - 1,2000,"",§!U§.§9!,§,0,0,0,0,1,20,true);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(_loc3_ && this)
                     {
                        param1.addParticle(_loc2_,§?F§.§<G§,§!U§.§8;§,§0c§().GetPosition().x,§0c§().GetPosition().y - 1,2000,"",§!U§.§9!,§);
                        addr145:
                        addr115:
                     }
                     return;
                  }
                  §§goto(addr145);
               }
            }
            §§goto(addr115);
         }
         §§goto(addr27);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(_loc8_)
         {
            §§push(§§pop() <= 0);
            if(_loc8_)
            {
               §§push(§§pop());
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        §§pop();
                        if(_loc8_ || param1)
                        {
                           §§push(param3);
                           loop0:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr101:
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr102:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§pop();
                                          addr104:
                                          loop3:
                                          while(true)
                                          {
                                             §§push(param4);
                                             if(!_loc9_)
                                             {
                                                if(!(_loc8_ || param3))
                                                {
                                                   continue loop7;
                                                }
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      break loop3;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                       addr103:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             while(true)
                                             {
                                                this.§+F§ = true;
                                             }
                                             addr83:
                                          }
                                          while(!_loc8_)
                                          {
                                             §§goto(addr104);
                                          }
                                       }
                                       §§goto(addr60);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr101);
               }
               §§goto(addr102);
            }
            §§goto(addr103);
         }
         addr60:
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§;-§ > 0)
            {
               if(!_loc3_)
               {
                  §§push(this);
                  §§push(this.§;-§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§;-§ = §§pop();
               }
               §[r§.mTryToScream = §&!_§.§6!c§;
               return true;
            }
            else
            {
               addr24:
               §§push(super.updateScreamingFrameAnimations(param1));
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr24);
      }
      
      public function §;!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§;-§ = §<!$§.§5n§;
         }
         while(true)
         {
            §[r§.mTryToScream = §&!_§.§6!c§;
            while(!(_loc2_ && _loc1_))
            {
               playScreamingSoundEffect();
               if(_loc1_ || this)
               {
                  return;
               }
            }
         }
      }
   }
}
