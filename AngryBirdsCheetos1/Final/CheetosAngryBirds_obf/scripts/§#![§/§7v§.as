package §#![§
{
   import §!X§.§86§;
   import §%w§.§;s§;
   import §&!7§.§,!A§;
   import §&p§.§9!H§;
   import §'!3§.§"!Q§;
   import §'!3§.§3n§;
   import §'!3§.§4C§;
   import §,h§.§+0§;
   import §,h§.§1!T§;
   import §,h§.§6M§;
   import §,h§.§`!2§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §6v§.§>S§;
   import §@!?§.§0!U§;
   import §]!F§.§&!]§;
   import §]@§.Sprite;
   import §`!K§.§!!>§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §7v§ extends §6M§ implements §3n§
   {
       
      
      private var §#!=§:§+0§;
      
      private var §7;§:int;
      
      private var callObject:Object;
      
      private var §8'§:uint;
      
      public function §7v§(param1:§86§, param2:§&!]§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §+0§
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc10_:§+0§ = null;
         if(!_loc11_)
         {
            if(param2 == "BIRD_CHEETOS_BAG")
            {
               _loc10_ = new §5<§(this,param1,§>`§.mLevelEngine.mWorld,§>`§,§;!W§,param2,param3,param4,param5);
               addr25:
            }
            else
            {
               _loc10_ = super.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            }
            return _loc10_;
         }
         §§goto(addr25);
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            var _loc2_:* = §§pop();
            if(_loc4_ || param1)
            {
               §§push(§1!T§.§`!D§);
               if(!(_loc3_ && this))
               {
                  if(§§pop() === _loc2_)
                  {
                     addr66:
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr66);
         }
         addr85:
         switch(§§pop())
         {
            case 0:
               §§push(§5<§.CHEETOS_EXPLOSION);
               if(_loc4_)
               {
                  return §§pop();
               }
               break;
         }
         return §7o§.§40§;
      }
      
      override protected function checkExplosions(param1:§+0§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(!_loc4_)
         {
            §§push(param1.§7<§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              loop8:
                              for(; _loc5_; §§push(§§pop().toUpperCase() == "CHEETO"),if(!(_loc5_ || _loc3_))
                              {
                                 continue;
                              },§§goto(addr177))
                              {
                                 §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(param1.§7<§());
                                       if(_loc5_ || this)
                                       {
                                          continue loop8;
                                       }
                                       addr195:
                                       while(true)
                                       {
                                          if(§§pop().toUpperCase() != §`!2§.§ else§)
                                          {
                                             §§push(param1.§7<§());
                                             loop11:
                                             while(true)
                                             {
                                                if(§§pop().toUpperCase() != "CHEETO")
                                                {
                                                   addExplosions(§1!T§.§-!Z§,param1.§?!7§().GetPosition().x,param1.§?!7§().GetPosition().y);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            break;
                                                         }
                                                         addr25:
                                                         addr25:
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(_loc4_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop11;
                                                            }
                                                            addr140:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  addExplosions(§1!T§.§ 9§,param1.§?!7§().GetPosition().x,param1.§?!7§().GetPosition().y);
                                                               }
                                                               else
                                                               {
                                                                  addr199:
                                                               }
                                                               §=! §.push(§1!T§.§%!J§(§1!T§.§`!D§,param1.§?!7§().GetPosition().x,param1.§?!7§().GetPosition().y));
                                                               continue loop12;
                                                            }
                                                         }
                                                         addr25:
                                                         return;
                                                         addr112:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               §!!>§.playSound(_loc3_,"ChannelExplosions");
                                                               addr75:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(Math.random() * 3);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                  }
                                                                  _loc2_ = §§pop();
                                                                  §§goto(addr112);
                                                               }
                                                               addr156:
                                                            }
                                                            §§goto(addr25);
                                                         }
                                                         addr93:
                                                      }
                                                      §§goto(addr156);
                                                   }
                                                   §§goto(addr75);
                                                }
                                                §§goto(addr140);
                                             }
                                             if(_loc4_ && _loc3_)
                                             {
                                                continue loop9;
                                             }
                                             if(!_loc4_)
                                             {
                                                addr69:
                                                §§goto(addr25);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(param1.§7<§());
                                                   continue loop0;
                                                }
                                                addr254:
                                             }
                                          }
                                          §§goto(addr199);
                                       }
                                       continue loop9;
                                    }
                                    addr177:
                                    if(_loc4_ && _loc2_)
                                    {
                                       while(!_loc4_)
                                       {
                                          continue loop7;
                                          §§goto(addr177);
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr254);
                                       }
                                       addr253:
                                       addr225:
                                    }
                                 }
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§goto(addr186);
                              }
                              §§goto(addr25);
                           }
                        }
                        continue;
                     }
                     §§goto(addr253);
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §+0§
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc10_:§+0§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(_loc12_)
         {
            if(param1.indexOf("SPOT_PRIZE") > -1)
            {
               if(_loc12_)
               {
                  this.§#!=§ = _loc10_;
               }
               do
               {
                  this.§#!=§.sprite.visible = false;
               }
               while(_loc11_);
               
               addr55:
            }
            return _loc10_;
         }
         §§goto(addr55);
      }
      
      public function §0!L§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§7o§ = null;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.§#!=§)
            {
               return false;
            }
         }
         _loc1_ = §>`§.particles.addParticle("CHEETOS_PACK_GLOW",§<2§.§^#§,§7o§.§%u§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
         if(_loc3_ || _loc2_)
         {
            _loc1_.§%A§(this.§#!=§);
         }
         do
         {
            this.§#!=§.sprite.visible = true;
         }
         while(!(_loc3_ || _loc2_));
         
         return true;
      }
      
      public function §9g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§=U§.indexOf(this.§#!=§) > -1)
            {
               if(!_loc2_)
               {
                  §"!>§(this.§#!=§,false,false,false);
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§#!=§ = null;
         }
         do
         {
            if(this.§8'§)
            {
               if(_loc2_ || this)
               {
                  clearInterval(this.§8'§);
               }
               while(true)
               {
               }
               addr72:
            }
            while(true)
            {
               super.dispose();
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr72);
            }
         }
         while(_loc1_ && this);
         
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§>S§ = null;
         var _loc5_:§+0§ = §=U§[param1];
         if(!(_loc8_ && param3))
         {
            §§push(Boolean(this.§#!=§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(!(_loc8_ && param2))
                     {
                        if(_loc5_ == this.§#!=§)
                        {
                           if(!_loc8_)
                           {
                              if(!(_loc7_ || this))
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(param2);
                                    if(_loc8_ && param1)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc7_ || param1)
                                    {
                                       §§push(Boolean(§§pop()));
                                       continue loop0;
                                    }
                                    addr136:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop2;
                                    }
                                 }
                                 continue loop0;
                              }
                              §!!>§.playSound("SpotPrize2");
                              loop4:
                              while(true)
                              {
                                 addr57:
                                 while(true)
                                 {
                                    §;s§.sCheetosPopups.showPopup(§0!U§.§%!'§);
                                    if(!(_loc8_ && this))
                                    {
                                       this.callObject = {
                                          "type":§>S§.§=1§,
                                          "sessionID":§>S§.§9J§(),
                                          "userID":§9!H§.§ o§.name
                                       };
                                       if(_loc7_)
                                       {
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        break;
                     }
                     return;
                  }
                  super.removeObjectWithIndex(param1,param2,param3,param4);
                  §§goto(addr165);
                  addr105:
               }
               §§goto(addr136);
            }
         }
         §§goto(addr127);
      }
      
      override public function objectCollision(param1:§+0§, param2:§+0§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1 is §5<§);
            while(true)
            {
               if(!§§pop())
               {
                  §§push(super.objectCollision(param1,param2));
                  if(_loc4_)
                  {
                     return §§pop();
                  }
                  continue;
               }
               if(!(_loc3_ && _loc3_))
               {
                  (param1 as §5<§).§%7§ = false;
               }
               do
               {
                  §>`§.activatePowerup();
               }
               while(!_loc4_);
               
            }
            return §§pop();
         }
         while(true)
         {
            §§goto(addr42);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§pop().§§slot[2] = null;
            if(_loc5_ || param1)
            {
               addr35:
               var e:Event = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc5_)
               {
                  §§pop().§§slot[2] = §"!Q§.§!i§((e.currentTarget as URLLoader).data);
                  if(_loc5_)
                  {
                     §§push(§§newactivation());
                     if(!(_loc4_ && _loc2_))
                     {
                        if(§§pop().§§slot[2])
                        {
                           while(true)
                           {
                              §§push(§§newactivation());
                              if(!_loc4_)
                              {
                                 §§push(§§pop().§§slot[2].error == null);
                                 if(_loc5_ || this)
                                 {
                                    §§push(!§§pop());
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(§§pop());
                                       loop2:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§pop();
                                                if(_loc5_)
                                                {
                                                   addr178:
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         §§push(Boolean(§§pop().§§slot[2].error.code));
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§§slot[2].error.code as Number == §;s§.§83§);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                              addr62:
                                                                           }
                                                                           addr215:
                                                                           if(§§pop().§§slot[2].userID)
                                                                           {
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 §,!A§.§9!M§("spotPrizeWin");
                                                                                 break;
                                                                              }
                                                                              break;
                                                                           }
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr252:
                                                                     return;
                                                                     addr228:
                                                                     addr135:
                                                                  }
                                                                  while(§§pop())
                                                                  {
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §9!H§.§ o§ = null;
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §§push(§§newactivation());
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr182:
                                                                              if(§§pop().§§slot[2].error.code as Number == §;s§.§83§)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break loop7;
                                                                                 }
                                                                                 §§goto(addr228);
                                                                              }
                                                                              break loop6;
                                                                           }
                                                                           §§goto(addr215);
                                                                        }
                                                                     }
                                                                     §§goto(addr228);
                                                                  }
                                                                  break loop6;
                                                               }
                                                               continue loop2;
                                                               addr130:
                                                            }
                                                            continue loop7;
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                   addr214:
                                                   §§goto(addr215);
                                                   §§push(§§newactivation());
                                                }
                                                break;
                                             }
                                             try
                                             {
                                                §,!A§.§9!M§("reauthenticate",§9!H§.§ o§.§ I§);
                                                if(!_loc5_)
                                                {
                                                }
                                                §§goto(addr228);
                                             }
                                             catch(e:Error)
                                             {
                                             }
                                             §§goto(addr214);
                                             addr175:
                                          }
                                          §§goto(addr130);
                                       }
                                    }
                                    §§goto(addr175);
                                 }
                              }
                           }
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr215);
                  }
                  §§goto(addr228);
               }
               §§goto(addr62);
            }
            catch(e:Error)
            {
            }
            §§goto(addr252);
         }
         §§goto(addr35);
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §;s§.sCheetosPopups.showPopup(§0!U§.ERROR,§4C§.getText("Error"));
         }
      }
   }
}
