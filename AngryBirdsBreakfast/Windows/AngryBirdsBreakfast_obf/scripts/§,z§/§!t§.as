package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §1T§.§'!c§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   import §@L§.§=b§;
   
   public class §!t§ extends §?!z§
   {
       
      
      protected var §[!H§:Number = 0.07;
      
      protected var §?v§:Number = 0.0;
      
      public function §!t§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function addDamageParticles(param1:§3!#§, param2:int) : void
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
      
      protected function §>W§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(health == healthMax)
            {
               if(_loc3_)
               {
                  if(this.§[!H§ < §=b§.§-!X§)
                  {
                     addr62:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§[!H§);
                        if(_loc3_)
                        {
                           §§push(param1);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(§§pop() * §=b§.§8§);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().§[!H§ = §§pop();
                        addr90:
                        while(true)
                        {
                        }
                     }
                     addr62:
                  }
                  while(true)
                  {
                     §^`§().SetAngularVelocity(param1 * this.§[!H§);
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr20);
               }
               §§goto(addr90);
            }
            addr20:
            return;
         }
         §§goto(addr62);
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               this.§>W§(param1);
               while(true)
               {
                  §§push(Boolean(§^" §()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§?v§);
                                    while(true)
                                    {
                                       §§push(§=b§.§'!_§);
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§?v§);
                                                if(_loc4_ || this)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§?v§ = §§pop();
                                                while(true)
                                                {
                                                   §§push(this.§?v§);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(param1);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr95:
                                                         if(!(_loc4_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         addr104:
                                                         §§push(§§pop() >= §§pop());
                                                         if(!_loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(_loc4_)
                                                                  {
                                                                     this.§!!k§();
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr29);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr89);
                                                                     §§goto(addr157);
                                                                  }
                                                                  §§goto(addr136);
                                                               }
                                                               addr29:
                                                               §§goto(addr25);
                                                            }
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                   }
                                                   §§goto(addr136);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr25:
                              while(true)
                              {
                                 §§push(this.§?v§);
                                 if(_loc4_)
                                 {
                                    if(_loc3_ && this)
                                    {
                                       continue loop8;
                                    }
                                    §§push(§=b§.§'!_§);
                                    if(_loc4_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop17;
                                       }
                                       continue loop11;
                                    }
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§goto(addr95);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop() < §§pop());
                                             if(_loc4_ || this)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop());
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue loop3;
                                                }
                                                if(!§§pop())
                                                {
                                                   continue loop15;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   break loop16;
                                                }
                                                addr157:
                                             }
                                             §§goto(addr157);
                                          }
                                          while(true)
                                          {
                                             if(_loc4_ || this)
                                             {
                                                continue loop2;
                                             }
                                             addr205:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop0;
                                             }
                                          }
                                          addr138:
                                          addr164:
                                       }
                                    }
                                    addr93:
                                 }
                                 addr89:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr93);
                                       §§push(§=b§.§'!O§);
                                    }
                                    else
                                    {
                                       addr136:
                                       while(true)
                                       {
                                       }
                                       addr136:
                                    }
                                    §§goto(addr138);
                                 }
                              }
                              return;
                           }
                           addr178:
                        }
                        §§goto(addr205);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr164);
         }
      }
      
      protected function §!!k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §'!c§.§3!f§("Mighty_Eagle_Selected_1","ChannelBird");
         }
         do
         {
            §'!c§.§3!f§("Mighty_Eagle_Flying_1","ChannelBird");
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      protected function §`"'§(param1:§3!#§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§^`§().GetPosition().x - §=b§.§`!,§);
         if(_loc5_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§^`§().GetPosition().y - §=b§.§`!,§ * §=b§.§7!p§ * 1.07);
         if(!(_loc6_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         §§push("BIRD_MIGHTY_EAGLE");
         §§push(_loc2_);
         §§push(_loc3_);
         §§push(§=b§.§"-§);
         if(_loc5_ || _loc2_)
         {
            §§push(§§pop() * 1.2);
         }
         var _loc4_:§+f§;
         (_loc4_ = §§pop().§,]§(§§pop(),§§pop(),§§pop(),§§pop(),§&"§.§5!1§) as §+f§).§9!%§.setScale(1.82);
         if(!_loc6_)
         {
            _loc4_.§`!0§ = id;
         }
      }
      
      override public function updateOutOfBounds(param1:§3!#§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!!k§();
         }
         do
         {
            this.§`"'§(param1);
         }
         while(!_loc3_);
         
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
