package §'!"§
{
   import §"!+§.§2!U§;
   import §"!+§.§6!7§;
   import §"!+§.§=w§;
   import §%!$§.§=m§;
   import §+a§.§8!I§;
   import §-!7§.§&$§;
   import §-!7§.§?L§;
   import §-!7§.§@m§;
   import §-!7§.§]!W§;
   import §2e§.§4!E§;
   import §3o§.§;!=§;
   import §4!6§.§,Y§;
   import §9N§.§9!%§;
   import §<!+§.§with§;
   import §<!U§.§]u§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §`a§.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §?!6§ extends §&$§ implements §=w§
   {
       
      
      private var §=4§:§@m§;
      
      private var §0f§:int;
      
      private var callObject:Object;
      
      private var §+!X§:uint;
      
      public function §?!6§(param1:§9!%§, param2:§with§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §@m§
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc10_:§@m§ = null;
         if(_loc12_)
         {
            if(param2 == "BIRD_CHEETOS_BAG")
            {
               _loc10_ = new § -§(this,param1,§8@§.mLevelEngine.mWorld,§8@§,§7!2§,param2,param3,param4,param5);
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || param1)
         {
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               §§push(§?L§.§0!;§);
               if(_loc3_)
               {
                  if(§§pop() === _loc2_)
                  {
                     addr60:
                     §§push(0);
                     if(!(_loc4_ && this))
                     {
                        addr78:
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  §§goto(addr84);
               }
               §§goto(addr78);
            }
            §§goto(addr60);
         }
         addr84:
         switch(§§pop())
         {
            case 0:
               §§push(§ -§.CHEETOS_EXPLOSION);
               if(_loc3_ || param1)
               {
                  return §§pop();
               }
               break;
         }
         return §-&§.§9'§;
      }
      
      override protected function checkExplosions(param1:§@m§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(!_loc4_)
         {
            §§push(param1.§7J§());
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
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param1.§7J§());
                              loop5:
                              for(; _loc5_; while(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop().toUpperCase() == "CHEETO");
                                 if(_loc5_)
                                 {
                                    §§goto(addr179);
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    §§goto(addr230);
                                 }
                              })
                              {
                                 §§push(§§pop().toUpperCase() == "TNT");
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc5_ || this))
                                    {
                                       break;
                                    }
                                    addr179:
                                    if(!(_loc5_ || this))
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§push(param1.§ h§);
                                             loop13:
                                             while(true)
                                             {
                                                if(§§pop().toUpperCase() != §]!W§.§'`§)
                                                {
                                                   §§push(param1.§7J§());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(§§pop().toUpperCase() != "CHEETO")
                                                      {
                                                         addExplosions(§?L§.§6!1§,param1.§`!#§().GetPosition().x,param1.§`!#§().GetPosition().y);
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop12;
                                                         }
                                                         addr230:
                                                         while(true)
                                                         {
                                                            if(_loc4_ && this)
                                                            {
                                                               addr79:
                                                               if(_loc4_ && param1)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  break loop14;
                                                                  addr70:
                                                               }
                                                               addr135:
                                                               while(true)
                                                               {
                                                                  §6D§.push(§?L§.§<!V§(§?L§.§0!;§,param1.§`!#§().GetPosition().x,param1.§`!#§().GetPosition().y));
                                                                  loop18:
                                                                  while(!(_loc4_ && _loc3_))
                                                                  {
                                                                     if(!(_loc5_ || this))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push(Math.random() * 3);
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     _loc2_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc4_ && param1)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop18;
                                                                        §§goto(addr163);
                                                                     }
                                                                     addr163:
                                                                  }
                                                                  break loop14;
                                                               }
                                                            }
                                                            §§goto(addr103);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1.§7J§());
                                                            continue loop5;
                                                         }
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                   §§goto(addr25);
                                                }
                                                §§goto(addr194);
                                             }
                                          }
                                       }
                                       addr25:
                                       return;
                                    }
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc4_)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           §§goto(addr229);
                        }
                        §§goto(addr186);
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §@m§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc10_:§@m§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(_loc11_)
         {
            if(param1.indexOf("SPOT_PRIZE") > -1)
            {
               if(_loc11_)
               {
                  this.§=4§ = _loc10_;
               }
               do
               {
                  this.§=4§.sprite.visible = false;
               }
               while(!(_loc11_ || param1));
               
               addr59:
            }
            return _loc10_;
         }
         §§goto(addr59);
      }
      
      public function §"k§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§-&§ = null;
         if(_loc3_)
         {
            if(this.§=4§)
            {
               _loc1_ = §8@§.particles.addParticle("CHEETOS_PACK_GLOW",§,v§.§'>§,§-&§.§ ,§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
               §§goto(addr25);
            }
            §§goto(addr101);
         }
         addr25:
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.§4,§(this.§=4§);
         }
         else if(true)
         {
            addr101:
            return false;
         }
         this.§=4§.sprite.visible = true;
         return true;
      }
      
      public function §"!0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(§5! §.indexOf(this.§=4§) > -1)
            {
               if(_loc1_)
               {
                  §3!K§(this.§=4§,false,false,false);
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§=4§ = null;
            do
            {
               if(this.§+!X§)
               {
                  if(!_loc1_)
                  {
                     clearInterval(this.§+!X§);
                     addr72:
                     while(true)
                     {
                     }
                     addr72:
                  }
                  §§goto(addr72);
               }
               while(true)
               {
                  super.dispose();
                  if(!(_loc1_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr72);
               }
            }
            while(_loc1_);
            
            return;
         }
         §§goto(addr72);
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§4!E§ = null;
         var _loc5_:§@m§ = §5! §[param1];
         if(!_loc8_)
         {
            §§push(Boolean(this.§=4§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr117:
                     while(true)
                     {
                        §§push(param2);
                        if(_loc7_ || this)
                        {
                           continue loop0;
                        }
                        addr88:
                        if(!(_loc7_ || param2))
                        {
                           continue;
                        }
                     }
                  }
               }
               loop2:
               while(§§pop())
               {
                  if(!_loc8_)
                  {
                     if(_loc5_ == this.§=4§)
                     {
                        if(_loc7_)
                        {
                           §=m§.playSound("SpotPrize2");
                           loop3:
                           while(_loc7_)
                           {
                              loop4:
                              while(true)
                              {
                                 §]u§.sCheetosPopups.showPopup(§8!I§.§<$§);
                                 while(_loc7_)
                                 {
                                    this.callObject = {
                                       "type":§4!E§.§]!N§,
                                       "sessionID":§4!E§.§0E§(),
                                       "userID":§;!=§.§`!;§.name
                                    };
                                    if(!_loc8_)
                                    {
                                       if(!(_loc8_ && param3))
                                       {
                                          if(true)
                                          {
                                             _loc6_ = new §4!E§(this.callObject,§,l§.§]!N§,this,§4!E§.§;4§);
                                          }
                                          continue loop4;
                                          break loop2;
                                       }
                                       continue;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           §§goto(addr117);
                           addr108:
                        }
                        §§goto(addr145);
                     }
                     break;
                  }
                  §§goto(addr108);
               }
               super.removeObjectWithIndex(param1,param2,param3,param4);
               addr145:
               return;
            }
         }
         §§goto(addr117);
      }
      
      override public function objectCollision(param1:§@m§, param2:§@m§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!(param1 is § -§))
            {
               super.objectCollision(param1,param2);
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     if(_loc4_ && param1)
                     {
                        addr70:
                        (param1 as § -§).§&L§ = false;
                        §8@§.activatePowerup();
                        addr75:
                        addr55:
                     }
                     return;
                  }
                  §§goto(addr75);
               }
               §§goto(addr55);
            }
         }
         §§goto(addr70);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_)
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
                  §§pop().§§slot[2] = §2!U§.§1!#§((e.currentTarget as URLLoader).data);
                  if(_loc4_)
                  {
                     §§push(§§newactivation());
                     if(!_loc5_)
                     {
                        if(§§pop().§§slot[2])
                        {
                           if(_loc4_)
                           {
                              §§push(§§newactivation());
                              loop0:
                              while(true)
                              {
                                 §§push(§§pop().§§slot[2].error == null);
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    if(_loc4_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop3:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(_loc4_)
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§push(Boolean(§§pop().§§slot[2].error.code));
                                                            loop4:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ && this)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §§pop();
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              addr229:
                                                                              addr229:
                                                                              if(§§pop().§§slot[2].userID)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                 }
                                                                                 addr261:
                                                                                 return;
                                                                                 addr237:
                                                                              }
                                                                              §§goto(addr237);
                                                                           }
                                                                           §,Y§.§[[§("spotPrizeWin");
                                                                           §§goto(addr237);
                                                                        }
                                                                        addr214:
                                                                        break loop4;
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               while(§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §;!=§.§`!;§ = null;
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              if(§§pop().§§slot[2].error.code as Number == §]u§.§,!#§)
                                                                              {
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    try
                                                                                    {
                                                                                       addr201:
                                                                                       §,Y§.§[[§("reauthenticate",§;!=§.§`!;§.§each §);
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          §§goto(addr214);
                                                                                       }
                                                                                    }
                                                                                    catch(e:Error)
                                                                                    {
                                                                                       break loop4;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr234);
                                                                              }
                                                                              break loop4;
                                                                           }
                                                                           §§goto(addr229);
                                                                        }
                                                                     }
                                                                     addr98:
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                               break;
                                                            }
                                                            §§push(§§newactivation());
                                                            addr134:
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                   }
                                                   §§goto(addr214);
                                                }
                                                addr174:
                                             }
                                             §§goto(addr134);
                                          }
                                       }
                                    }
                                    §§goto(addr174);
                                 }
                              }
                              addr163:
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr237);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr98);
               }
               §§goto(addr68);
            }
            catch(e:Error)
            {
            }
            §§goto(addr261);
         }
         §§goto(addr34);
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §]u§.sCheetosPopups.showPopup(§8!I§.ERROR,§6!7§.getText("Error"));
         }
      }
   }
}
