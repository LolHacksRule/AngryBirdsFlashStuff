package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@V§.§&z§;
   import §[!Z§.§>D§;
   
   public class §>S§ extends §^"2§
   {
       
      
      protected var §6!Z§:Number = 0.07;
      
      protected var §+,§:Number = 0.0;
      
      public function §>S§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function addDamageParticles(param1:§`!m§, param2:int) : void
      {
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function blink() : void
      {
      }
      
      override public function scream() : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      protected function §5!F§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(health == healthMax)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(this.§6!Z§ < §&z§.§<5§)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr76:
                        §§push(this);
                        §§push(this.§6!Z§);
                        if(!_loc3_)
                        {
                           §§push(param1);
                           if(_loc2_)
                           {
                              §§push(§§pop() * §&z§.§]F§);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().§6!Z§ = §§pop();
                     }
                     while(true)
                     {
                        §§goto(addr28);
                     }
                  }
                  addr28:
                  §§goto(addr24);
               }
               §§goto(addr76);
            }
            addr24:
            while(true)
            {
               §!!I§().SetAngularVelocity(param1 * this.§6!Z§);
               if(!(_loc3_ && this))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr76);
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               this.§5!F§(param1);
               loop1:
               while(true)
               {
                  §§push(Boolean(§!'§()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              while(_loc3_)
                              {
                                 §§push(§>!'§ > §&z§.§8!M§);
                                 loop6:
                                 while(_loc3_)
                                 {
                                    addr139:
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    if(_loc4_ && this)
                                    {
                                       continue loop4;
                                    }
                                    §§push(§§pop());
                                    if(_loc4_ && param1)
                                    {
                                       continue loop3;
                                    }
                                    if(§§pop())
                                    {
                                       loop23:
                                       while(true)
                                       {
                                          §§pop();
                                          while(true)
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                continue loop0;
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§+,§);
                                                if(_loc3_ || this)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§+,§ = §§pop();
                                                while(true)
                                                {
                                                   §§push(this.§+,§);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(§&z§.§6"5§);
                                                            addr83:
                                                            loop22:
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ || param1))
                                                               {
                                                                  continue loop14;
                                                               }
                                                               addr90:
                                                               §§push(§&z§.§6"5§);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() >= §§pop());
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop23;
                                                                  §§goto(addr90);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§<T§();
                                                                        addr104:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr102:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§+,§);
                                                                     if(!(_loc4_ && param2))
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                                  addr19:
                                                                  return;
                                                                  §§goto(addr92);
                                                               }
                                                               addr92:
                                                            }
                                                         }
                                                      }
                                                      addr124:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && param2))
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            if(!(_loc3_ || _loc3_))
                                                            {
                                                               continue loop23;
                                                            }
                                                            §§goto(addr139);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  continue loop11;
                                                               }
                                                            }
                                                            addr198:
                                                         }
                                                         §§goto(addr19);
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr100);
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§goto(addr187);
                           }
                           §§goto(addr19);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      protected function §<T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §>D§.§9!q§("Mighty_Eagle_Selected_1","ChannelBird");
         }
         do
         {
            §>D§.§9!q§("Mighty_Eagle_Flying_1","ChannelBird");
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      protected function §9!4§(param1:§`!m§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§!!I§().GetPosition().x - §&z§.§'!g§);
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§!!I§().GetPosition().y - §&z§.§'!g§ * §&z§.§#!n§ * 1.07);
         if(_loc6_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(§&z§.§2" §);
         if(!_loc7_)
         {
            §§push(§§pop() * -1.2);
            if(_loc6_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         var _loc5_:§[!J§;
         (_loc5_ = param1.§&w§("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,_loc4_,§<!l§.§0"+§) as §[!J§).§'",§.setScale(1.82);
         if(_loc6_)
         {
            _loc5_.§ !1§ = id;
         }
      }
      
      override public function updateOutOfBounds(param1:§`!m§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<T§();
            do
            {
               this.§9!4§(param1);
            }
            while(!_loc2_);
            
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
