package §09§
{
   import §,§.§ 3§;
   import §,§.§ p§;
   import §,§.§7!N§;
   import §-!Q§.§,!7§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §6H§.§#!;§;
   import §<!0§.§7g§;
   import §^a§.Sprite;
   import §`![§.§!!K§;
   
   public class §4!7§ extends §7!N§
   {
       
      
      private var §=]§:Boolean = false;
      
      public function §4!7§(param1:§ p§, param2:§!!K§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : § 3§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§^V§ = new §^V§(this,new Sprite(),param1,param2,param3);
         if(!(_loc7_ && param1))
         {
            if(param4 < 0)
            {
               if(!_loc7_)
               {
                  §0!b§.push(_loc5_);
               }
               while(true)
               {
                  §§goto(addr49);
               }
               addr91:
            }
            else
            {
               §0!b§.splice(param4,0,_loc5_);
            }
            while(true)
            {
               if(_loc6_)
               {
                  §§goto(addr72);
               }
               else
               {
                  §§goto(addr91);
               }
               §§goto(addr61);
            }
         }
         addr61:
         do
         {
            §,!C§.addChild(_loc5_.sprite);
         }
         while(!(_loc6_ || param1));
         
         return _loc5_;
      }
      
      public function §0!7§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§=]§ = true;
         }
         var _loc1_:§ 3§ = §'"§("BIRD_CHEETOS_BAG",§7F§ + 0.7,§6_§ + 0.1);
         if(_loc2_ || this)
         {
            this.§+]§(_loc1_);
         }
         do
         {
            §,!7§.playSound("Bird_Cheetos_Bag_Damage_1","ChannelBird");
         }
         while(!_loc2_);
         
      }
      
      public function §?!5§() : §7g§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§7g§ = null;
         if(_loc3_ || _loc1_)
         {
            if(this.§=]§)
            {
               if(_loc3_ || _loc1_)
               {
                  return _loc1_;
               }
            }
         }
         this.§0!7§();
         var _loc2_:§^V§ = §0!b§[§7!B§] as §^V§;
         if(!(_loc4_ && this))
         {
            §§push(§0!b§.length <= 1);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     addr91:
                     §§pop();
                     if(_loc3_ || _loc1_)
                     {
                        addr101:
                        if(_loc2_)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              addr109:
                              §§push((_loc2_ as §^V§).§,!§(_loc2_.§04§,_loc2_.§-@§,false));
                              if(!(_loc4_ && _loc3_))
                              {
                                 _loc1_ = §§pop();
                                 if(_loc3_)
                                 {
                                    addr161:
                                    setSlingShotState(§8!4§);
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr161);
                           }
                           else
                           {
                              addr141:
                              §§push((_loc2_ as §^V§).§,!§(_loc2_.§04§,_loc2_.§-@§));
                           }
                           _loc1_ = §§pop();
                        }
                        else if(_loc2_)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr139:
                              _loc2_.§42§();
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr109);
                  }
               }
               §§goto(addr101);
            }
            §§goto(addr91);
         }
         §§goto(addr139);
      }
      
      public function §+]§(param1:§ 3§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:Number = 20;
         var _loc3_:* = 1;
         var _loc4_:* = Number(90);
         if(!_loc10_)
         {
            §§push(_loc3_);
            if(!(_loc10_ && param1))
            {
               §§push(int(§§pop() * 1));
               if(_loc9_)
               {
                  _loc3_ = §§pop();
                  addr46:
                  §§push(0);
               }
            }
            var _loc5_:* = §§pop();
            loop0:
            while(true)
            {
               if(_loc5_ >= _loc3_)
               {
                  if(!_loc10_)
                  {
                     if(!_loc10_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §^!I§.particles.addParticle(§#!;§.CHEETOS_EXPLOSION,§do§.§+!c§,§7!?§.§22§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
                        loop2:
                        while(!(_loc10_ && param1))
                        {
                           if(!(_loc10_ && this))
                           {
                              _loc5_++;
                              while(!_loc9_)
                              {
                                 continue loop2;
                              }
                              continue loop0;
                              addr62:
                           }
                           loop3:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() * Math.cos(_loc6_));
                                 addr195:
                                 loop5:
                                 while(!(_loc10_ && _loc2_))
                                 {
                                    if(_loc9_ || this)
                                    {
                                       §§push(§§pop() * Math.random());
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr213:
                                          addr179:
                                          while(true)
                                          {
                                             _loc7_ = §§pop();
                                             break loop2;
                                          }
                                          addr123:
                                          §§push(Number(§§pop()));
                                          if(!(_loc10_ && param1))
                                          {
                                             continue loop1;
                                          }
                                          if(_loc10_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc9_ || this))
                                          {
                                             continue loop3;
                                          }
                                          §§push(§§pop() * Math.sin(_loc6_));
                                          if(!(_loc10_ && param1))
                                          {
                                             continue loop4;
                                          }
                                          addr172:
                                          addr172:
                                          if(_loc10_ && this)
                                          {
                                             §§goto(addr213);
                                          }
                                          §§goto(addr179);
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(Math.random() * (720 / _loc3_));
                                          if(_loc9_ || _loc2_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc10_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      break loop5;
                                                   }
                                                }
                                                addr240:
                                             }
                                             break loop5;
                                          }
                                          addr258:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                          }
                                       }
                                       addr218:
                                    }
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       continue loop3;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr258);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc9_)
                           {
                              if(_loc9_ || this)
                              {
                                 §§push(-§§pop());
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§goto(addr123);
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr172);
                           §§goto(addr213);
                        }
                     }
                  }
                  §§goto(addr62);
               }
               else
               {
                  §§push(_loc4_);
               }
               §§goto(addr218);
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function get §">§() : Boolean
      {
         return this.§=]§;
      }
   }
}
