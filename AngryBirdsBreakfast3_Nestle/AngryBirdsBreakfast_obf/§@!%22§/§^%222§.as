package §@!"§
{
   import §%8§.§89§;
   import §%8§.§@-§;
   import §0!m§.§@!S§;
   import §0"!§.b2BodyDef;
   import §0"!§.b2FilterData;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@!E§.b2Vec2;
   import §@V§.§#=§;
   import §@V§.§&#§;
   import §`2§.§"w§;
   import §`2§.§`""§;
   
   public class §^"2§ extends §5!;§
   {
      
      public static const §=!_§:String = "special";
      
      public static const §;_§:String = "fly";
      
      public static const §!s§:String = "fly_yell";
      
      protected static const §?_§:Number = 20000;
      
      protected static const §4!@§:Number = 3000;
      
      protected static const §6!I§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=!_§ = "special";
            loop0:
            while(true)
            {
               §;_§ = "fly";
               while(true)
               {
                  §!s§ = "fly_yell";
                  addr68:
                  if(_loc1_ || _loc2_)
                  {
                     if(_loc1_)
                     {
                        §4!@§ = 3000;
                        do
                        {
                           §6!I§ = 0.2;
                        }
                        while(!(_loc1_ || §^"2§));
                        
                        addr77:
                        if(_loc1_ || §^"2§)
                        {
                           return;
                        }
                        loop3:
                        while(true)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              §§goto(addr68);
                           }
                           else
                           {
                              while(true)
                              {
                                 §?_§ = 20000;
                                 continue loop3;
                              }
                              addr92:
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      private var §]!"§:Number;
      
      protected var §>!6§:Boolean = false;
      
      protected var §,"0§:int = 0;
      
      protected var §]!H§:Boolean = false;
      
      protected var §1!Y§:int;
      
      private var §+!w§:Boolean = false;
      
      private var §4P§:Boolean = false;
      
      protected var §%;§:Boolean;
      
      public function §^"2§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            super(param1,param2,param3,param4,param5,param6);
            loop0:
            while(true)
            {
               §§push(param7);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     this.fly();
                     loop10:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§@!S§.§2A§);
                           loop6:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc9_ || this)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§pop();
                                       addr119:
                                       while(true)
                                       {
                                          §§push(§@!S§.§2A§);
                                          if(_loc8_ && param1)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop().slingshot));
                                          if(!_loc9_)
                                          {
                                             continue loop9;
                                          }
                                          if(!_loc9_)
                                          {
                                             continue loop1;
                                          }
                                          continue loop9;
                                       }
                                       continue loop6;
                                    }
                                    addr118:
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       this.§%;§ = false;
                                       if(!_loc8_)
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             if(!_loc8_)
                                             {
                                                §§goto(addr25);
                                             }
                                             continue loop0;
                                          }
                                          addr65:
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr97);
                                    }
                                    §§goto(addr65);
                                 }
                                 addr67:
                                 if(_loc9_ || this)
                                 {
                                    if(!(_loc8_ && param2))
                                    {
                                       this.§%;§ = §@!S§.§2A§.slingshot.§<!G§;
                                       addr97:
                                       if(_loc9_ || param2)
                                       {
                                          addr25:
                                       }
                                       continue loop10;
                                       return;
                                    }
                                    while(true)
                                    {
                                       this.scream();
                                       continue loop0;
                                    }
                                    addr133:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop5;
                                       §§goto(addr67);
                                    }
                                    addr129:
                                 }
                              }
                              §§goto(addr118);
                           }
                        }
                     }
                     addr125:
                  }
                  §§goto(addr133);
               }
            }
         }
         §§goto(addr125);
      }
      
      public static function §0"'§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         §§push(param3);
         if(!(_loc12_ && param2))
         {
            §§push(int(§§pop() + Math.random() * param4));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Number = 1;
         var _loc8_:int = 0;
         loop0:
         while(true)
         {
            if(_loc8_ >= _loc6_)
            {
               if(_loc11_)
               {
                  if(!(_loc12_ && param1))
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(!(_loc12_ && param1))
                     {
                        _loc8_++;
                        while(_loc12_ && param3)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(0.5);
                              if(!(_loc12_ && param2))
                              {
                                 if(!(_loc12_ && param1))
                                 {
                                    §§push(param5);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc11_ || param2)
                                       {
                                          §§push(param5);
                                       }
                                       break;
                                    }
                                    §§push(§§pop() + §§pop() * (Math.random() * 0.5));
                                    if(!(_loc11_ || param2))
                                    {
                                       break;
                                    }
                                    if(_loc11_)
                                    {
                                       §§push(Number(§§pop()));
                                       break;
                                    }
                                    continue;
                                 }
                                 addr215:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    continue loop3;
                                 }
                              }
                              break;
                           }
                           _loc10_ = §§pop();
                        }
                        continue loop0;
                        addr59:
                     }
                     while(true)
                     {
                        §§push(§@!S§.§2A§.particles);
                        §§push("STAR_PARTICLE");
                        §§push(§`""§.§?!q§);
                        §§push(§"w§.§,§);
                        §§push(§`""§.§@b§);
                        §§push(param1);
                        §§push(param2);
                        §§push(750);
                        §§push("");
                        §§push(§`""§.§6!X§("BIRD_RED"));
                        §§push(_loc10_);
                        if(_loc11_)
                        {
                           §§push(§§pop() * Math.cos(_loc9_));
                           if(_loc11_ || param1)
                           {
                              §§push(_loc7_);
                              if(!(_loc12_ && param2))
                              {
                                 addr118:
                                 §§push(§§pop() * §§pop());
                                 §§push(_loc10_);
                                 if(!_loc12_)
                                 {
                                    §§push(-§§pop());
                                    if(!_loc11_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() * Math.sin(_loc9_));
                                    if(!_loc11_)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                              §§push(§§pop() * _loc7_);
                              continue loop1;
                           }
                        }
                        §§goto(addr118);
                     }
                  }
               }
               §§goto(addr59);
            }
            else
            {
               §§push(Math.random() * (Math.PI * 2));
            }
            §§goto(addr215);
         }
      }
      
      public function set §@!M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§4P§ = param1;
         }
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.§>!6§;
      }
      
      public function get launchForce() : Number
      {
         return §&#§.§ !f§;
      }
      
      public function get §#!G§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(Boolean(§!!I§().IsAwake()));
            do
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr78:
                     while(true)
                     {
                        §§push(health == healthMax);
                     }
                  }
                  addr77:
               }
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        continue;
                     }
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        while(true)
                        {
                           §§push(true);
                           break loop4;
                        }
                        addr54:
                     }
                     §§goto(addr78);
                  }
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        break loop3;
                     }
                     §§goto(addr77);
                  }
               }
            }
            while(_loc1_);
            
            return §§pop();
         }
         §§goto(addr54);
      }
      
      override public function get isNormal() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(!§7!s§);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr104:
                     while(true)
                     {
                        §§pop();
                        addr105:
                        while(true)
                        {
                           §§push(!§+!3§);
                        }
                     }
                     addr104:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr104);
         }
         §§goto(addr105);
      }
      
      override protected function initializeHealth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() < 2)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr75:
                     param1 = 2;
                     addr76:
                     while(true)
                     {
                     }
                     addr76:
                  }
                  §§goto(addr76);
               }
               while(true)
               {
                  super.initializeHealth(param1);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr76);
               }
               return;
            }
         }
         §§goto(addr75);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = super.createFilterData();
         if(_loc3_)
         {
            _loc1_.§^!d§ = §[<§;
            do
            {
               §§push(_loc1_);
               §§push(65535);
               if(_loc3_ || this)
               {
                  §§push(§§pop() & ~§"!]§);
               }
               §§pop().§+!+§ = §§pop();
            }
            while(!(_loc3_ || this));
            
         }
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§>!6§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc1_)
               {
                  addr87:
                  if(!§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(getSpecialAnimationProgress() >= 0);
                           if(_loc1_ && _loc1_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                                 addr64:
                                 while(true)
                                 {
                                 }
                                 addr64:
                              }
                              while(true)
                              {
                                 super.normalize();
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 §§goto(addr64);
                              }
                              if(!_loc1_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        return;
                     }
                     addr89:
                  }
                  §§goto(addr59);
               }
               §§goto(addr89);
            }
            §§goto(addr87);
         }
         §§goto(addr64);
      }
      
      override public function scream() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§>!6§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              super.scream();
                              while(true)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    addr72:
                                    §§push(this.§#!G§);
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          if(!§§pop())
                                          {
                                             break;
                                          }
                                          if(_loc1_)
                                          {
                                             if(_loc1_ || _loc2_)
                                             {
                                                §=K§.setAnimation(§!s§,false);
                                             }
                                             else
                                             {
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   continue loop6;
                                                }
                                                while(true)
                                                {
                                                   §§push(getSpecialAnimationProgress() >= 0);
                                                   addr78:
                                                   while(_loc1_)
                                                   {
                                                      continue loop0;
                                                      §§goto(addr72);
                                                   }
                                                   continue loop1;
                                                }
                                                addr114:
                                             }
                                          }
                                          if(!_loc2_)
                                          {
                                             addr61:
                                             break;
                                          }
                                          continue;
                                       }
                                       addr113:
                                       while(true)
                                       {
                                          §§pop();
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr78);
                                 }
                              }
                              return;
                           }
                        }
                        return;
                     }
                     addr87:
                  }
                  §§goto(addr113);
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function blink() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§>!6§);
            if(_loc1_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(!§§pop())
                  {
                     do
                     {
                        super.blink();
                     }
                     while(!_loc1_);
                     
                     if(_loc2_)
                     {
                        break;
                     }
                     if(_loc1_)
                     {
                        return;
                        addr47:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(getSpecialAnimationProgress() >= 0);
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        addr88:
                        while(true)
                        {
                           §§pop();
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  return;
                  addr62:
               }
               §§goto(addr88);
            }
         }
         §§goto(addr47);
      }
      
      protected function fly() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §=K§.setAnimation(§;_§,false);
         }
      }
      
      protected function specialPower(param1:§`!m§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §=K§.setAnimation(§=!_§,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§`!m§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc4_ && this))
            {
               if(§§pop() > 0)
               {
               }
               §§goto(addr58);
            }
            param1 = §§pop();
         }
         addr58:
         if(_loc3_ || _loc3_)
         {
            §§push(Number(1));
         }
         return super.setDamageState(param1,param2);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(_loc4_)
         {
            _loc3_.§5!J§ = true;
            do
            {
               _loc3_.§7e§ = 2;
            }
            while(_loc5_);
            
         }
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(health < healthMax);
            if(_loc3_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§!'§()));
                           if(!(_loc2_ && this))
                           {
                              §§push(§§pop());
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       this.§]!"§ = 0;
                                       if(_loc3_)
                                       {
                                          if(!(_loc2_ && param1))
                                          {
                                             if(!(_loc2_ && param1))
                                             {
                                                if(_loc2_)
                                                {
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(this.§4!f§);
                                                   addr89:
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      addr90:
                                                      while(true)
                                                      {
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop6;
                                                         }
                                                         addr142:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop7;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                addr143:
                                             }
                                             else
                                             {
                                                addr106:
                                                §§push(this);
                                                §§push(this.§]!"§);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§]!"§ = §§pop();
                                                addr119:
                                                if(!(_loc3_ || _loc2_))
                                                {
                                                   continue loop4;
                                                }
                                                if(this.§]!"§ >= §4!@§)
                                                {
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      §§push(true);
                                                   }
                                                   else
                                                   {
                                                      addr20:
                                                      §§push(false);
                                                      if(!_loc2_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr27:
                                                      addr85:
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr89);
                                                   }
                                                   §§goto(addr90);
                                                }
                                                §§goto(addr27);
                                             }
                                             §§goto(addr20);
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr85);
                                    }
                                    §§goto(addr106);
                                 }
                                 return §§pop();
                                 addr104:
                              }
                              break;
                           }
                           §§goto(addr142);
                        }
                        continue loop0;
                     }
                     addr161:
                  }
                  §§goto(addr104);
               }
            }
            §§goto(addr161);
         }
         §§goto(addr143);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(health < healthMax);
            do
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr89:
                     while(true)
                     {
                        §§push(§!!I§() == null);
                     }
                  }
                  addr88:
               }
               while(true)
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!_loc1_)
                           {
                              §§push(false);
                              break;
                           }
                           §§goto(addr89);
                        }
                     }
                     §§push(this.§+!w§);
                     if(_loc1_)
                     {
                        break;
                     }
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  if(_loc2_ || _loc1_)
                  {
                     break;
                  }
                  §§goto(addr88);
               }
            }
            while(!_loc2_);
            
            return §§pop();
         }
         §§goto(addr89);
      }
      
      override public function set isLeavingTrail(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+!w§ = param1;
         }
      }
      
      override protected function handleInitialCollision() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§+!w§ = false;
         }
         do
         {
            super.handleInitialCollision();
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override protected function addTrail(param1:§`!m§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(!(_loc6_ && this))
         {
            §§push(this.isLeavingTrail);
            if(!_loc6_)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§push(false);
                     if(!(_loc5_ || param1))
                     {
                        §§goto(addr59);
                     }
                  }
                  else
                  {
                     addr60:
                     §§push(x * §#=§.§^!2§);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(y * §#=§.§^!2§);
                     if(_loc5_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_)
                     {
                        §§push(this.§]!H§);
                        while(true)
                        {
                           if(!§§pop())
                           {
                              if(§3!G§ <= 1)
                              {
                                 §§push(§`""§.PARTICLE_NAME_BIRD_TRAIL1);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop2:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       loop3:
                                       while(true)
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(this.§,"0§);
                                             loop4:
                                             while(true)
                                             {
                                                §§push(1);
                                                loop5:
                                                while(§§pop() != §§pop())
                                                {
                                                   §§push(this.§,"0§);
                                                   if(!_loc5_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(2);
                                                   if(_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   if(§§pop() == §§pop())
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(§`""§.PARTICLE_NAME_BIRD_TRAIL3);
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop());
                                                            }
                                                            else
                                                            {
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     addr177:
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§,"0§ + 1);
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           §§push(§§pop() % 3);
                                                                        }
                                                                        §§pop().§,"0§ = §§pop();
                                                                        loop11:
                                                                        while(_loc5_)
                                                                        {
                                                                           param1.§9!@§(_loc4_,§"w§.§6$§,§`""§.§ -§,_loc2_,_loc3_,-1,"",§`""§.§4F§);
                                                                           loop12:
                                                                           while(!(_loc6_ && _loc2_))
                                                                           {
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§4!#§(param1);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(this.§%;§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(!(_loc5_ || _loc3_))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      break loop5;
                                                                                                   }
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §0"'§(_loc2_,_loc3_,0,3,10);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§]!H§ = false;
                                                                                                         addr296:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                      }
                                                                                                      addr301:
                                                                                                   }
                                                                                                }
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       addr275:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             param1.§9!@§(§`""§.§2!t§,§"w§.§6$§,§`""§.§ -§,_loc2_,_loc3_,-1,"",§`""§.§4F§);
                                                                                             addr291:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             addr291:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.§,"0§ = 0;
                                                                                             }
                                                                                             addr329:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr301);
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 addr247:
                                                                                 §§push(§`""§.PARTICLE_NAME_BIRD_TRAIL2);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         if(!(_loc5_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr177);
                                                }
                                                while(true)
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      §§goto(addr247);
                                                   }
                                                   §§goto(addr296);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                param1.§9!@§(§`""§.§6"6§,§"w§.§6$§,§`""§.§ -§,_loc2_,_loc3_,-1,"",§`""§.§4F§);
                                             }
                                             addr305:
                                          }
                                          §§goto(addr329);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr275);
                           }
                           §§goto(addr305);
                        }
                     }
                     §§goto(addr291);
                  }
               }
               else
               {
                  if(!param1)
                  {
                     if(_loc5_ || param1)
                     {
                        addr59:
                        return §§pop();
                        §§push(true);
                     }
                     else
                     {
                        §§goto(addr60);
                     }
                  }
                  §§goto(addr60);
               }
               §§goto(addr60);
            }
            return §§pop();
         }
         §§goto(addr60);
      }
      
      protected function §4!#§(param1:§`!m§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc2_:Number = § else§();
         §§push(§&#§.§;!t§);
         if(!(_loc6_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc6_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§§pop() > _loc3_);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr180:
                        do
                        {
                           §§push(Math.random() < §6!I§);
                           if(_loc6_)
                           {
                              continue loop2;
                           }
                        }
                        while(_loc7_);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§push(-Math.PI);
                        if(!_loc7_)
                        {
                           continue loop0;
                        }
                        §§push(§§pop() / 2);
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           continue loop0;
                           addr123:
                           if(!(_loc6_ && _loc3_))
                           {
                              _loc5_ = §§pop();
                              loop9:
                              for(; !_loc6_; while(true)
                              {
                                 param1.§9!@§(§`""§.§-J§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x,§!!I§().GetPosition().y,1250,"",§`""§.§6!X§(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
                                 if(_loc7_ || param1)
                                 {
                                    continue loop5;
                                 }
                                 continue loop9;
                              })
                              {
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr180);
                              }
                              while(true)
                              {
                                 §§push(Number(Math.random()));
                                 if(_loc6_ && _loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr123);
                              }
                              continue loop0;
                              addr173:
                           }
                        }
                        if(!(_loc6_ && _loc2_))
                        {
                           break loop4;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr135);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!this.§#!G§)
            {
               super.playScreamingSoundEffect();
               if(_loc1_)
               {
                  addr71:
               }
               return;
            }
            if(!(_loc1_ && _loc2_))
            {
               §8!U§(§89§.§5?§);
            }
         }
         §§goto(addr71);
      }
      
      public function activateSpecialPower(param1:§`!m§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§>!6§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  return false;
               }
               else
               {
                  §§push(this.canActivateSpecialPower);
                  loop0:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(false);
                        if(_loc4_ || param3)
                        {
                           return §§pop();
                        }
                        continue;
                     }
                     loop1:
                     while(true)
                     {
                        this.§>!6§ = true;
                        loop2:
                        while(true)
                        {
                           §8!U§(§89§.§7r§);
                           while(_loc4_)
                           {
                              this.specialPower(param1,param2,param3);
                              do
                              {
                                 this.§]!H§ = this.shouldShowCloudOnSpecialPowerUse;
                              }
                              while(!_loc4_);
                              
                              if(_loc4_ || param3)
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                        addr86:
                        while(true)
                        {
                           §§push(true);
                           continue loop0;
                        }
                     }
                  }
                  if(!(_loc5_ && param2))
                  {
                     return §§pop();
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr86);
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§#!G§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §=!M§(param1:int) : int
      {
         return Math.min(§@!S§.§2A§.§7!X§,param1);
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(getSpecialAnimationProgress() >= 0)
            {
               while(true)
               {
                  this.specialPower(param2);
                  addr89:
                  while(true)
                  {
                  }
               }
               addr86:
            }
            while(true)
            {
               super.update(param1,param2);
               addr69:
               while(_loc4_)
               {
               }
               §§goto(addr89);
            }
         }
         while(true)
         {
            if(this.§#!G§)
            {
               loop5:
               while(true)
               {
                  if(!_loc3_)
                  {
                     this.updateFlying();
                     loop6:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           this.addTrail(param2);
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop5;
                           }
                           continue loop6;
                        }
                        return;
                     }
                     §§goto(addr69);
                  }
                  else
                  {
                     §§goto(addr86);
                  }
               }
            }
            §§goto(addr29);
         }
      }
      
      protected function updateFlying() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Vec2 = null;
         §§push(0);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc4_)
         {
            if(this.§4P§)
            {
               if(_loc3_ || _loc2_)
               {
                  _loc2_ = §!!I§().GetLinearVelocity();
                  if(!_loc4_)
                  {
                     §§push(_loc2_.x);
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc4_ && this))
                           {
                              §§push(!§§pop());
                              if(_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §§pop();
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(_loc2_.y);
                                          if(_loc3_ || this)
                                          {
                                             addr93:
                                             §§push(§§pop() == 0);
                                             if(_loc3_)
                                             {
                                                §§goto(addr97);
                                             }
                                             addr97:
                                             if(§§pop())
                                             {
                                             }
                                             §§goto(addr118);
                                          }
                                          _loc1_ = §§pop();
                                       }
                                       §§goto(addr118);
                                    }
                                 }
                              }
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr93);
                  }
               }
            }
            §§goto(addr118);
         }
         addr118:
         if(_loc3_)
         {
            §§push(Number(Math.atan2(_loc2_.y,_loc2_.x)));
         }
         §[!X§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(health == healthMax)
            {
               loop0:
               while(true)
               {
                  §6![§(-1);
                  addr113:
                  addr89:
                  while(true)
                  {
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc6_ && param2)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        this.setDamageState(0.5,param2);
                        loop5:
                        for(; _loc5_; while(!(_loc6_ && param3))
                        {
                           if(_loc6_ && param3)
                           {
                              break loop3;
                           }
                           §§goto(addr74);
                           §§push(Number(defence));
                        })
                        {
                           §§push(param1);
                           if(!(_loc6_ && param1))
                           {
                              if(§§pop() > defence)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 param1 = §§pop();
                                 addr75:
                                 while(true)
                                 {
                                 }
                              }
                              addr74:
                           }
                           while(true)
                           {
                              §5M§();
                              if(!_loc6_)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              §§goto(addr75);
                           }
                           return super.applyDamage(param1,param2,param3,param4);
                        }
                        continue loop3;
                     }
                  }
                  §§goto(addr113);
               }
            }
            while(true)
            {
               this.addDamageParticles(param2,param1);
               §§goto(addr89);
               §§goto(addr113);
            }
         }
         §§goto(addr106);
      }
      
      override public function causedDamageToObjects() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§1!Y§ = §#e§;
         }
      }
      
      protected function get §4!f§() : Boolean
      {
         return §#e§ - this.§1!Y§ < §?_§;
      }
      
      override protected function addDestructionParticles(param1:§`!m§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(!_loc9_)
         {
            if(!param1)
            {
               if(_loc10_ || _loc2_)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:Number = 5;
            var _loc3_:* = int(§&!a§(false) + 1);
            var _loc4_:* = Number(90);
            if(_loc10_)
            {
               §§push(this.§=!M§(_loc3_));
               if(!(_loc9_ && param1))
               {
                  §§push(int(§§pop()));
                  if(_loc10_ || this)
                  {
                     addr68:
                     _loc3_ = §§pop();
                     §§push(0);
                  }
                  var _loc5_:* = §§pop();
                  while(true)
                  {
                     if(_loc5_ >= _loc3_)
                     {
                        if(!(_loc9_ && param1))
                        {
                           if(!_loc9_)
                           {
                              if(_loc10_)
                              {
                                 break;
                              }
                              loop1:
                              while(true)
                              {
                                 §§push(-§=K§.height);
                                 if(!_loc9_)
                                 {
                                    §§push(§#=§.§^!2§);
                                    if(_loc10_)
                                    {
                                       if(!(_loc9_ && this))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc10_ || _loc3_)
                                          {
                                             addr184:
                                             §§push(Number(§§pop()));
                                             if(!(_loc9_ && this))
                                             {
                                                §§push(§§pop());
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         if(_loc10_ || this)
                                                         {
                                                            _loc8_ = §§pop();
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               addr229:
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(Math.random() * -_loc8_);
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr245:
                                                                        §§push(2);
                                                                        if(_loc10_)
                                                                        {
                                                                           addr249:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc10_)
                                                                           {
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(!(_loc9_ && this))
                                                                                          {
                                                                                             addr273:
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                loop2:
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.§9!@§(§`""§.§-J§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x + _loc7_,§!!I§().GetPosition().y + _loc8_,1500,"",§`""§.§6!X§(itemName),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                                                                   addr141:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                      {
                                                                                                         _loc5_++;
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      loop21:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(-§=K§.width);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(§#=§.§^!2§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  addr315:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc10_ || _loc3_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr316:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && _loc2_))
                                                                                                                           {
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                           addr330:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Math.random() * (720 / _loc3_));
                                                                                                                              addr336:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr337:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr338:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       addr349:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc4_ = §§pop();
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(180 / Math.PI);
                                                                                                                           addr354:
                                                                                                                           loop14:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              addr355:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr356:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr315:
                                                                                                               }
                                                                                                            }
                                                                                                            addr285:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr297:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               addr298:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     §§push(Math.random() * -_loc7_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc10_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(2);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr314:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr315);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr313:
                                                                                                                        }
                                                                                                                        §§goto(addr336);
                                                                                                                     }
                                                                                                                     addr305:
                                                                                                                  }
                                                                                                                  §§goto(addr337);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr355);
                                                                                          }
                                                                                          §§goto(addr338);
                                                                                       }
                                                                                       §§goto(addr356);
                                                                                    }
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 §§goto(addr273);
                                                                              }
                                                                              §§goto(addr349);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                        §§goto(addr313);
                                                                     }
                                                                     §§goto(addr249);
                                                                  }
                                                                  §§goto(addr298);
                                                               }
                                                               §§goto(addr315);
                                                            }
                                                            §§goto(addr273);
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                      §§goto(addr297);
                                                   }
                                                   §§goto(addr305);
                                                }
                                                §§goto(addr249);
                                             }
                                             §§goto(addr229);
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr285);
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr184);
                              }
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr92);
                     }
                     else
                     {
                        §§push(_loc4_);
                     }
                     §§goto(addr330);
                  }
                  return;
               }
            }
            §§goto(addr68);
         }
         addr34:
      }
      
      override public function addDamageParticles(param1:§`!m§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         if(_loc9_)
         {
            if(param2 < 6)
            {
               if(!(_loc10_ && param2))
               {
                  §§goto(addr34);
               }
            }
            §§push(§ else§() / 10);
            if(!(_loc10_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(!_loc10_)
            {
               §§push(_loc3_);
               if(_loc9_)
               {
                  addr69:
                  §§push(§§pop() * §&!a§(false));
                  if(_loc9_ || param2)
                  {
                     addr65:
                     §§push(§§pop() * 0.12);
                  }
                  var _loc4_:* = int(§§pop() + §§pop());
                  var _loc5_:* = Number(90);
                  if(!(_loc10_ && param1))
                  {
                     §§push(param2);
                     if(_loc9_)
                     {
                        §§push(scale * scale);
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr474:
                           while(true)
                           {
                              §§push(int(§§pop()));
                           }
                           addr434:
                           §§push(3 + param2 / 20);
                           if(_loc10_ && param1)
                           {
                              continue;
                           }
                           §§push(§§pop() * §§pop());
                           if(!(_loc10_ && this))
                           {
                              §§push(int(§§pop()));
                              loop5:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 addr456:
                                 addr413:
                                 while(true)
                                 {
                                    §§push(this.§=!M§(_loc4_));
                                    addr418:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       continue loop5;
                                    }
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    loop11:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       loop12:
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop() / 3)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop14:
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                   loop15:
                                                   while(true)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc10_ && param2)
                                                         {
                                                            continue loop14;
                                                         }
                                                         if(_loc10_ && _loc3_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         §§push(_loc4_);
                                                         if(_loc10_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     return;
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop15;
                                                            }
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc6_++;
                                                                  }
                                                                  else
                                                                  {
                                                                     addr368:
                                                                  }
                                                                  continue loop16;
                                                                  break loop16;
                                                               }
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!(_loc9_ || param2))
                                                                     {
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(0.5);
                                                                           if(_loc9_ || param2)
                                                                           {
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(!(_loc10_ && param2))
                                                                                             {
                                                                                                if(!(_loc10_ && this))
                                                                                                {
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      addr261:
                                                                                                      §§push(§§pop() * (Math.random() * 0.5));
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr271:
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               addr274:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  addr277:
                                                                                                                  if(_loc10_ && param2)
                                                                                                                  {
                                                                                                                     break loop18;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr299:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     addr300:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc5_ = §§pop();
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr298:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  addr312:
                                                                                                                  §§push(180 / Math.PI);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  addr312:
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr274);
                                                                                                      }
                                                                                                      §§goto(addr312);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr381:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§push(Number(§§pop()));
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr300);
                                                                                             }
                                                                                             §§goto(addr261);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr375:
                                                                                             §§push(Math.random() * (720 / _loc4_));
                                                                                          }
                                                                                          §§goto(addr381);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Math.random() * (720 / _loc4_));
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§goto(addr298);
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                          }
                                                                                          addr289:
                                                                                       }
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    §§goto(addr274);
                                                                                 }
                                                                                 §§goto(addr261);
                                                                              }
                                                                              §§goto(addr299);
                                                                           }
                                                                           §§goto(addr271);
                                                                        }
                                                                        _loc5_ = §§pop();
                                                                     }
                                                                     continue loop17;
                                                                     break loop17;
                                                                  }
                                                                  §§goto(addr277);
                                                               }
                                                               continue loop13;
                                                            }
                                                            param1.§9!@§(§`""§.§-!0§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x,§!!I§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
                                                            §§goto(addr368);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc5_);
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc5_);
                                          }
                                          §§goto(addr375);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr474);
                        }
                     }
                     §§goto(addr475);
                  }
                  §§goto(addr413);
               }
               §§goto(addr65);
            }
            §§goto(addr69);
         }
         addr34:
      }
   }
}
