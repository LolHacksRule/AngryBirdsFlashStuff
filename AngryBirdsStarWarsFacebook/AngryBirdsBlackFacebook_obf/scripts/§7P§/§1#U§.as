package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2Fixture;
   import §+#$§.b2World;
   import §2"Y§.§["$§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §1#U§ extends §`#G§
   {
      
      protected static const §+C§:Number = 3.2;
      
      public static const §+"§:String = "BLOCK_SENSOR_LAZER";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+C§ = 3.2;
         }
         do
         {
            §+"§ = "BLOCK_SENSOR_LAZER";
         }
         while(_loc1_ && _loc2_);
         
      }
      
      protected var §"!7§:int = 0;
      
      protected var §[#G§:Vector.<Number>;
      
      protected var §1"u§:int;
      
      protected var §>!?§:Number;
      
      protected var §5! §:Number;
      
      protected var §-#R§:Number = 0.0;
      
      protected var §%#3§:String = "";
      
      protected var §@"j§:Number = 1.0;
      
      protected var §]"k§:Boolean = false;
      
      public function §1#U§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§["$§, param5:§94§, param6:Number, param7:int)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:int = 0;
         var _loc10_:* = NaN;
         if(_loc11_ || param3)
         {
            this.§[#G§ = new Vector.<Number>();
            while(true)
            {
               super(param1,param2,param3,param4,param5,param6);
               loop1:
               for(; !_loc12_; while(!(_loc12_ && param1))
               {
               })
               {
                  while(true)
                  {
                     this.§"!7§ = param7;
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§5! § = 0;
            if(_loc11_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr36);
            }
            §§goto(addr40);
         }
         §§push(param4.getNumberProperty("shotData",this.§"!7§ - 1,"length"));
         if(_loc11_ || param3)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:*;
         if((_loc8_ = §§pop()) > 0)
         {
            if(_loc11_)
            {
               §§push(this);
               §§push(param4.getNumberProperty("shotData",this.§"!7§ - 1,0,"timeInterval"));
               if(!_loc12_)
               {
                  §§push(§§pop() * 1000);
               }
               §§pop().§>!?§ = §§pop();
               if(_loc11_)
               {
                  this.§-#R§ = param4.getNumberProperty("shotData",this.§"!7§ - 1,0,"speed",0);
               }
               while(true)
               {
                  this.§%#3§ = param4.getProperty("shotData",this.§"!7§ - 1,0,"block");
                  while(_loc11_)
                  {
                     while(_loc11_ || param1)
                     {
                        _loc9_ = 0;
                        if(_loc11_)
                        {
                           while(true)
                           {
                              if(_loc9_ >= _loc8_)
                              {
                                 if(_loc11_ || param2)
                                 {
                                    if(_loc11_)
                                    {
                                       if(_loc11_)
                                       {
                                          break;
                                       }
                                       this.§[#G§.push(_loc10_);
                                       addr166:
                                    }
                                    _loc9_++;
                                 }
                                 continue;
                              }
                              §§push(param4.getNumberProperty("shotData",this.§"!7§ - 1,_loc9_,"currentTime"));
                              if(_loc11_ || param3)
                              {
                                 §§push(§§pop() * 1000);
                                 if(!_loc12_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              _loc10_ = §§pop();
                              §§goto(addr166);
                           }
                           §§goto(addr130);
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this);
               if(!(_loc12_ && param3))
               {
                  §§push(param4.getNumberProperty("scale"));
                  if(!_loc12_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc12_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc12_)
                           {
                              §§pop();
                              addr195:
                              §§push(Number(1));
                           }
                        }
                     }
                  }
                  §§pop().§@"j§ = §§pop();
                  §§goto(addr198);
               }
               §§goto(addr195);
            }
         }
         addr130:
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Fixture = §04§.CreateFixture2(§;B§.shape.getB2Shape(),§;B§.getItemDensity());
         if(_loc2_ || this)
         {
            _loc1_.§"Y§(§;B§.getItemFriction());
            while(true)
            {
               _loc1_.§5q§(§;B§.getItemRestitution());
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     _loc1_.§"!I§(true);
                     if(!(_loc3_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr82);
      }
      
      override public function attachedJointRemoved(param1:§7B§ = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§]"k§ = true;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(health == 0);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr53:
                     §§push(this.§]"k§);
                     if(!_loc2_)
                     {
                        return Boolean(§§pop());
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:§,#Z§ = null;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         if(!_loc10_)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               §§push(this.§>!?§ <= 0);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr94:
                        while(true)
                        {
                           addr51:
                           while(true)
                           {
                              §§push(this.§[#G§.length == 0);
                              if(!(_loc9_ || _loc3_))
                              {
                                 break;
                              }
                              if(!_loc9_)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc10_ && param1))
                        {
                           break;
                        }
                        loop6:
                        while(_loc9_)
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§5! §);
                              if(_loc9_ || param1)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§5! § = §§pop();
                              if(_loc9_ || param1)
                              {
                                 while(false)
                                 {
                                    §§goto(addr51);
                                 }
                                 loop9:
                                 while(this.§5! § > this.§[#G§[this.§1"u§])
                                 {
                                    _loc3_ = param2 as §,#Z§;
                                    if(_loc9_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!_loc10_)
                                          {
                                             §§push(§"#,§() - Math.PI / 2);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop11:
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   addr236:
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(Number(§3!t§().GetPosition().x + Math.cos(_loc4_) * §+C§ * 0.7));
                                                      loop13:
                                                      while(!(_loc10_ && this))
                                                      {
                                                         continue loop10;
                                                         while(true)
                                                         {
                                                            §§push(Number(§3!t§().GetPosition().y + Math.sin(_loc4_) * §+C§ * 0.7));
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(!(_loc9_ || param2))
                                                               {
                                                                  break;
                                                               }
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  §§push(_loc3_);
                                                                  §§push(this.§%#3§);
                                                                  §§push(_loc5_);
                                                                  §§push(_loc6_);
                                                                  §§push(_loc4_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(Math.PI / 180);
                                                                     if(!(_loc9_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                                  §§push(this.§-#R§);
                                                                  continue;
                                                               }
                                                               continue loop12;
                                                            }
                                                            continue loop13;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr236);
                                       }
                                       §§goto(addr237);
                                    }
                                    §§goto(addr236);
                                 }
                                 return;
                                 addr49:
                              }
                              continue loop6;
                           }
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr28);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr49);
      }
   }
}
