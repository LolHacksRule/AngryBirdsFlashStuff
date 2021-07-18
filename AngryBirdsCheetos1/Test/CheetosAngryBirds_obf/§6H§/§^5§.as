package §6H§
{
   import §&!8§.§+!6§;
   import §&!8§.§4! §;
   import §&!8§.§7@§;
   import §&!8§.§[g§;
   import §,§.§ p§;
   import §-!Q§.§,!7§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §1!E§.§>f§;
   import §2v§.§&O§;
   import §5G§.§?,§;
   import §=!g§.§!!@§;
   import §[h§.§4I§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import §^a§.Sprite;
   import §`![§.§!!K§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §^5§ extends §+!6§ implements §7Z§
   {
       
      
      private var §-$§:§[g§;
      
      private var §`a§:int;
      
      private var callObject:Object;
      
      private var §``§:uint;
      
      public function §^5§(param1:§ p§, param2:§!!K§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[g§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc10_:§[g§ = null;
         if(!_loc12_)
         {
            if(param2 == "BIRD_CHEETOS_BAG")
            {
               _loc10_ = new §#!;§(this,param1,§^!I§.mLevelEngine.mWorld,§^!I§,§2!E§,param2,param3,param4,param5);
               addr24:
            }
            else
            {
               _loc10_ = super.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            }
            return _loc10_;
         }
         §§goto(addr24);
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc3_)
            {
               §§push(§7@§.§!![§);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() === _loc2_)
                  {
                     addr61:
                     §§push(0);
                     if(_loc4_)
                     {
                        addr74:
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  §§goto(addr80);
               }
               §§goto(addr74);
            }
            §§goto(addr61);
         }
         addr80:
         switch(§§pop())
         {
            case 0:
               §§push(§#!;§.CHEETOS_EXPLOSION);
               if(!_loc3_)
               {
                  return §§pop();
               }
               break;
         }
         return §7!?§.§[!M§;
      }
      
      override protected function checkExplosions(param1:§[g§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(!_loc4_)
         {
            §§push(param1.§,X§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param1.§,X§());
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().toUpperCase() == "TNT");
                                 if(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!(_loc5_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                §§pop();
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(param1.§,X§());
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      §§push(§§pop().toUpperCase() == "CHEETO");
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(param1.§>p§);
                                                               addr195:
                                                               addr199:
                                                               while(§§pop().toUpperCase() != §4! §.§6r§)
                                                               {
                                                                  §§push(param1.§,X§());
                                                                  while(_loc5_ || param1)
                                                                  {
                                                                     continue loop0;
                                                                     addr131:
                                                                     §§push("Bird_Cheetos_Bag_Damage_" + _loc2_);
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           addr83:
                                                                           _loc3_ = §§pop();
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §,!7§.playSound(_loc3_,"ChannelExplosions");
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ || _loc2_))
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       §§goto(addr93);
                                                                                    }
                                                                                 }
                                                                                 loop12:
                                                                                 for(; !_loc4_; while(true)
                                                                                 {
                                                                                    §[F§.push(§1b§.createExplosion(§1b§.§1=§,param1.§`e§().GetPosition().x,param1.§`e§().GetPosition().y));
                                                                                    continue loop12;
                                                                                 })
                                                                                 {
                                                                                    §§push(Math.random() * 3);
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                    }
                                                                                    _loc2_ = §§pop();
                                                                                    while(_loc4_ && _loc3_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       §§goto(addr131);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr211:
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                                 addr93:
                                                                                 §§goto(addr25);
                                                                              }
                                                                              §§goto(addr110);
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                               }
                                                               this.addExplosions(§7@§.§6U§,param1.§`e§().GetPosition().x,param1.§`e§().GetPosition().y);
                                                               §§goto(addr211);
                                                            }
                                                            addr193:
                                                         }
                                                         addr25:
                                                         return;
                                                      }
                                                   }
                                                   §§goto(addr195);
                                                }
                                                continue;
                                             }
                                             continue loop3;
                                          }
                                          continue loop1;
                                          addr225:
                                       }
                                       §§goto(addr191);
                                    }
                                    continue loop2;
                                    addr220:
                                 }
                                 §§goto(addr225);
                              }
                           }
                        }
                     }
                     §§goto(addr220);
                  }
               }
            }
         }
         §§goto(addr193);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §[g§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc10_:§[g§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(!(_loc12_ && this))
         {
            if(param1.indexOf("SPOT_PRIZE") > -1)
            {
               if(_loc11_ || this)
               {
                  this.§-$§ = _loc10_;
                  do
                  {
                     this.§-$§.sprite.visible = false;
                  }
                  while(!_loc11_);
                  
                  addr85:
               }
               §§goto(addr85);
            }
            return _loc10_;
         }
         §§goto(addr85);
      }
      
      public function §#!L§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§7!?§ = null;
         if(_loc3_ || _loc3_)
         {
            if(this.§-$§)
            {
               _loc1_ = §^!I§.particles.addParticle("CHEETOS_PACK_GLOW",§do§.§&!d§,§7!?§.§22§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
               addr30:
               if(!_loc2_)
               {
                  _loc1_.§%1§(this.§-$§);
               }
               else
               {
                  if(false)
                  {
                     loop1:
                     while(true)
                     {
                        this.§-$§.sprite.visible = true;
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        addr100:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     return true;
                  }
                  §§goto(addr101);
               }
               §§goto(addr100);
            }
            addr101:
            return false;
         }
         §§goto(addr30);
      }
      
      public function §1f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§ #§.indexOf(this.§-$§) > -1)
            {
               if(_loc2_ || _loc1_)
               {
                  §9?§(this.§-$§,false,false,false);
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-$§ = null;
            while(true)
            {
               if(!this.§``§)
               {
                  while(true)
                  {
                     super.dispose();
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
                  continue;
                  addr23:
               }
            }
         }
         while(true)
         {
            clearInterval(this.§``§);
            §§goto(addr54);
         }
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§[g§ = § #§[param1];
         if(_loc7_ || this)
         {
            super.removeObjectWithIndex(param1,param2,param3,param4);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§[g§> = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §[F§.push(§1b§.createExplosion(param1,param2,param3));
         }
         do
         {
            §,!7§.playSound("TntExplosions","ChannelExplosions");
         }
         while(_loc5_ && param2);
         
      }
      
      override public function objectCollision(param1:§[g§, param2:§[g§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1 is §#!;§);
            while(true)
            {
               if(!§§pop())
               {
                  §§push(super.objectCollision(param1,param2));
                  if(!(_loc4_ && param2))
                  {
                     return §§pop();
                  }
                  continue;
               }
               if(_loc3_)
               {
                  (param1 as §#!;§).§5E§ = false;
               }
            }
            return §§pop();
         }
         while(true)
         {
            §^!I§.activatePowerup();
            if(!_loc3_)
            {
               continue;
            }
            §§goto(addr46);
            §§push(false);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(!(_loc5_ && this))
            {
               addr34:
               var e:Event = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc4_ || param1)
               {
                  §§pop().§§slot[2] = §[!U§.§ !=§((e.currentTarget as URLLoader).data);
                  if(_loc4_)
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        if(§§pop().§§slot[2])
                        {
                           if(_loc4_)
                           {
                              §§push(§§newactivation());
                              loop1:
                              while(true)
                              {
                                 §§push(§§pop().§§slot[2].error == null);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    loop3:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop4:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop5:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr177:
                                                   while(true)
                                                   {
                                                      addr117:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         addr119:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop().§§slot[2].error.code));
                                                         }
                                                      }
                                                   }
                                                }
                                                addr176:
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc5_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      break;
                                                   }
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§pop();
                                                      if(!(_loc5_ && this))
                                                      {
                                                         if(_loc5_ && this)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§newactivation());
                                                         if(_loc5_)
                                                         {
                                                            addr186:
                                                            if(§§pop().§§slot[2].error.code as Number == §?,§.§?!i§)
                                                            {
                                                               if(_loc4_ || param1)
                                                               {
                                                                  try
                                                                  {
                                                                     §!!@§.§%Q§("reauthenticate",§>f§.§%!`§.§6!W§);
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        break loop7;
                                                                     }
                                                                     addr239:
                                                                     §!!@§.§%Q§("spotPrizeWin");
                                                                     return;
                                                                     addr242:
                                                                  }
                                                                  catch(e:Error)
                                                                  {
                                                                     break loop7;
                                                                  }
                                                                  §§goto(addr239);
                                                               }
                                                               §§goto(addr242);
                                                            }
                                                            break loop7;
                                                         }
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§goto(addr119);
                                                      }
                                                      §§goto(addr239);
                                                      addr77:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§§slot[2].error.code as Number == §?,§.§?!i§);
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(_loc5_ && param1)
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            break loop8;
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                   }
                                                   §§goto(addr177);
                                                }
                                                while(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §>f§.§%!`§ = null;
                                                      if(_loc4_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr117);
                                                         }
                                                         else
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               §§goto(addr186);
                                                            }
                                                            addr229:
                                                            if(§§pop().§§slot[2].userID)
                                                            {
                                                               if(_loc4_ || this)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr239);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr239);
                                                }
                                                break;
                                             }
                                             §§goto(addr229);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr239);
                     }
                  }
                  §§goto(addr177);
               }
               §§goto(addr77);
            }
            catch(e:Error)
            {
            }
            §§goto(addr239);
         }
         §§goto(addr34);
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
            §?,§.sCheetosPopups.showPopup(§&O§.ERROR,§4I§.getText("Error"));
         }
      }
   }
}
