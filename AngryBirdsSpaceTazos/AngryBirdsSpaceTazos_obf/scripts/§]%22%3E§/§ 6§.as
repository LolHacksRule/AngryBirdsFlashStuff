package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.§=C§;
   import §'!&§.b2BodyDef;
   import §'!&§.b2FilterData;
   import §'!&§.b2World;
   import §'4§.§-T§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class § 6§ extends §5=§
   {
      
      public static const §]" §:String = "special";
      
      public static const §>E§:String = "fly";
      
      public static const §#D§:String = "fly_yell";
      
      protected static const §6"#§:Number = 20000;
      
      protected static const §for§:Number = 2000;
      
      protected static const § =§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §]" § = "special";
            while(true)
            {
               §>E§ = "fly";
               loop1:
               for(; _loc1_ || _loc2_; loop3:
               while(_loc1_ || § 6§)
               {
                  §6"#§ = 20000;
                  loop4:
                  while(true)
                  {
                     §for§ = 2000;
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop4;
                     }
                     continue loop3;
                  }
               })
               {
                  while(true)
                  {
                     §#D§ = "fly_yell";
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      private var §&8§:Number;
      
      protected var §-?§:Boolean = false;
      
      protected var §=!b§:int = 0;
      
      protected var §6!J§:Boolean = false;
      
      protected var §4"F§:int;
      
      public function § 6§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8);
            do
            {
               if(!param9)
               {
                  this.fly();
                  if(!_loc11_)
                  {
                     if(_loc11_)
                     {
                        continue;
                     }
                     addr42:
                  }
                  else
                  {
                     addr55:
                  }
               }
               continue;
               return;
            }
            while(!(_loc10_ || this));
            
            this.scream();
            §§goto(addr55);
         }
         §§goto(addr42);
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.§-?§;
      }
      
      public function get launchForce() : Number
      {
         return §-T§.§;x§;
      }
      
      public function get §?!d§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(Boolean(§^!z§().IsAwake()));
            loop0:
            do
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(health == healthMax);
                        if(!_loc1_)
                        {
                           break;
                           addr61:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 addr70:
                                 §§push(true);
                                 break loop2;
                              }
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                           }
                           §§push(false);
                           if(_loc2_ && _loc1_)
                           {
                              break loop2;
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     return §§pop();
                  }
               }
               §§goto(addr61);
            }
            while(!(_loc1_ || _loc2_));
            
            return §§pop();
         }
         §§goto(addr70);
      }
      
      override public function get isNormal() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(!§`u§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc2_)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 if(_loc1_ || this)
                                 {
                                    §§push(this.specialPowerUsed);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    if(!_loc2_)
                                    {
                                       §§push(!§§pop());
                                       break loop3;
                                    }
                                    continue;
                                 }
                                 addr89:
                                 while(true)
                                 {
                                    §§push(!§">§);
                                    if(_loc1_)
                                    {
                                       if(_loc1_ || this)
                                       {
                                          continue loop0;
                                       }
                                       continue;
                                    }
                                    continue loop4;
                                 }
                              }
                              §§goto(addr28);
                           }
                           break;
                        }
                        continue loop1;
                     }
                     addr28:
                     return §§pop();
                     addr60:
                  }
                  §§goto(addr88);
               }
            }
         }
         §§goto(addr89);
      }
      
      override protected function initializeHealth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               if(§§pop() < 2)
               {
                  if(!(_loc3_ && param1))
                  {
                     addr74:
                     param1 = 2;
                  }
                  while(true)
                  {
                  }
                  addr75:
               }
               while(true)
               {
                  super.initializeHealth(param1);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr75);
               }
               return;
            }
         }
         §§goto(addr74);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = super.createFilterData();
         if(_loc3_ || _loc3_)
         {
            _loc1_.§ #§ = §>!C§;
            do
            {
               §§push(_loc1_);
               §§push(65535);
               if(_loc3_)
               {
                  §§push(§§pop() & ~§-"#§);
               }
               §§pop().§5!@§ = §§pop();
            }
            while(_loc2_);
            
         }
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§-?§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr95:
                        while(true)
                        {
                           §§push(getSpecialAnimationProgress() >= 0);
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                     }
                     addr94:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc1_)
                        {
                           return;
                        }
                        addr71:
                        while(true)
                        {
                        }
                        addr71:
                     }
                     while(true)
                     {
                        super.normalize();
                        if(_loc2_ || this)
                        {
                           break;
                        }
                        §§goto(addr71);
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr95);
                  }
                  return;
               }
               §§goto(addr94);
            }
         }
         §§goto(addr71);
      }
      
      override public function scream() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§-?§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(getSpecialAnimationProgress() >= 0);
                        loop3:
                        while(!(_loc1_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(this.§?!d§);
                                 if(!(_loc1_ && this))
                                 {
                                    if(!§§pop())
                                    {
                                       break;
                                    }
                                    if(!_loc1_)
                                    {
                                       §'%§.setAnimation(§#D§);
                                    }
                                    if(!_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       addr55:
                                       addr85:
                                       while(true)
                                       {
                                          super.scream();
                                          §§goto(addr85);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc1_ && _loc2_)
                                       {
                                          return;
                                       }
                                       addr84:
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop7;
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop0;
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     §§goto(addr55);
                  }
                  §§goto(addr84);
               }
            }
         }
         §§goto(addr67);
      }
      
      override public function blink() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§-?§);
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
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           addr93:
                           while(_loc1_ || _loc1_)
                           {
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              §§push(getSpecialAnimationProgress() >= 0);
                              if(!(_loc1_ || this))
                              {
                                 break;
                              }
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr94);
                           }
                           addr94:
                           addr70:
                        }
                        while(true)
                        {
                           super.blink();
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr70);
                        }
                        return;
                     }
                     return;
                     addr65:
                  }
                  §§goto(addr93);
               }
            }
         }
         §§goto(addr87);
      }
      
      protected function fly() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §'%§.setAnimation(§>E§);
         }
      }
      
      protected function specialPower(param1:§;U§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §'%§.setAnimation(§]" §);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§;U§) : Boolean
      {
         return false;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.§<!F§ = true;
            do
            {
               _loc3_.§@0§ = 2;
            }
            while(_loc5_);
            
         }
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(health < healthMax);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§%!8§()));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc3_ && this)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 while(_loc2_ || param1)
                                 {
                                    §§pop();
                                    while(_loc2_ || this)
                                    {
                                       §§push(this.§>""§);
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          addr91:
                                          while(_loc2_)
                                          {
                                          }
                                          continue loop4;
                                       }
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr83);
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                                 addr129:
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§&8§);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§&8§ = §§pop();
                           }
                           addr102:
                        }
                        loop11:
                        while(true)
                        {
                           if(this.§&8§ >= §for§)
                           {
                              while(true)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop11;
                                 }
                                 §§goto(addr65);
                                 continue loop11;
                              }
                              addr58:
                           }
                           else
                           {
                              addr19:
                              §§push(false);
                              if(_loc2_ || this)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr129);
                                 }
                                 §§goto(addr90);
                              }
                              else
                              {
                                 §§goto(addr83);
                              }
                              addr37:
                           }
                           §§goto(addr83);
                        }
                     }
                     else
                     {
                        this.§&8§ = 0;
                        if(!(_loc3_ && this))
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr58);
                           }
                           §§goto(addr19);
                        }
                     }
                     §§goto(addr37);
                  }
                  addr83:
                  §§push(true);
                  if(!_loc2_)
                  {
                     §§goto(addr91);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr102);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(health < healthMax);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc1_ || this)
                           {
                              addr73:
                              §§push(false);
                              break;
                           }
                           while(true)
                           {
                              §§push(§^!z§() == null);
                           }
                           addr92:
                        }
                        else
                        {
                           addr19:
                           §§push(true);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(_loc1_)
                           {
                              return §§pop();
                           }
                        }
                        while(true)
                        {
                           if(_loc1_ || _loc1_)
                           {
                              continue loop0;
                           }
                           addr91:
                           while(true)
                           {
                              §§pop();
                              §§goto(addr92);
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr19);
                  }
                  return §§pop();
                  addr57:
               }
               §§goto(addr91);
            }
         }
         §§goto(addr73);
      }
      
      override protected function addTrail(param1:§;U§) : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         if(!_loc7_)
         {
            §§push(this.isLeavingTrail);
            if(!_loc7_)
            {
               if(!§§pop())
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     §§goto(addr39);
                  }
               }
               §§push(x * §^g§.§5!-§);
               if(_loc8_ || this)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(y * §^g§.§5!-§);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(!(_loc7_ && _loc2_))
               {
                  §§push(this.§6!J§);
                  loop0:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(§ !K§ <= 1)
                        {
                           §§push(§2!V§.PARTICLE_NAME_BIRD_TRAIL1);
                           if(_loc8_ || this)
                           {
                              §§push(§§pop());
                           }
                           loop1:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop2:
                              while(true)
                              {
                                 if(_loc8_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§=!b§);
                                       while(true)
                                       {
                                          §§push(1);
                                          while(true)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                §§push(this.§=!b§);
                                                if(_loc7_)
                                                {
                                                   break;
                                                }
                                                §§push(2);
                                                if(!(_loc8_ || this))
                                                {
                                                   continue;
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   loop29:
                                                   while(true)
                                                   {
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         §§push(§2!V§.PARTICLE_NAME_BIRD_TRAIL3);
                                                         if(_loc8_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               addr314:
                                                               _loc4_ = §§pop();
                                                               loop30:
                                                               while(true)
                                                               {
                                                                  addr251:
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§=!b§ + 1);
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() % 3);
                                                                     }
                                                                     §§pop().§=!b§ = §§pop();
                                                                     loop27:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           param1.§%!y§(_loc4_,§0"@§.§8!%§,§2!V§.§'"$§,_loc2_,_loc3_,-1,"",§2!V§.§3j§);
                                                                           continue;
                                                                        }
                                                                        addr403:
                                                                        loop15:
                                                                        while(!(_loc7_ && _loc2_))
                                                                        {
                                                                           this.§6!J§ = false;
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              addr215:
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§=!k§() > this.launchForce);
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr332:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop30;
                                                                                                }
                                                                                                if(_loc7_ && this)
                                                                                                {
                                                                                                   continue loop29;
                                                                                                }
                                                                                                §§push(-Math.PI);
                                                                                                if(!(_loc7_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() / 2);
                                                                                                   if(_loc8_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                loop11:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   addr212:
                                                                                                   addr361:
                                                                                                   while(_loc8_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.§%!y§(§2!V§.§`!f§,§0"@§.§8!%§,§2!V§.§'"$§,_loc2_,_loc3_,-1,"",§2!V§.§3j§);
                                                                                                      addr375:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc7_ && this))
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         addr427:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§=!b§ = 0;
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                if(_loc7_ && _loc2_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop27;
                                                                                                }
                                                                                                addr69:
                                                                                                §§push(true);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   break loop9;
                                                                                                }
                                                                                                §§goto(addr166);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                addr277:
                                                                                                continue loop26;
                                                                                             }
                                                                                             addr332:
                                                                                          }
                                                                                          §§goto(addr69);
                                                                                       }
                                                                                    }
                                                                                    loop6:
                                                                                    while(!_loc7_)
                                                                                    {
                                                                                       §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(Math.random() < § =§);
                                                                                             do
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                             }
                                                                                             while(_loc8_);
                                                                                             
                                                                                             continue loop5;
                                                                                             addr166:
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                    continue loop0;
                                                                                    return §§pop();
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           param1.§%!y§(§2!V§.§^"F§,§0"@§.§8!%§,§2!V§.§'"$§,_loc2_,_loc3_,-1,"",§2!V§.§3j§);
                                                                           §§goto(addr427);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr323);
                                                         }
                                                         §§goto(addr314);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr332);
                                                      }
                                                   }
                                                }
                                                §§goto(addr251);
                                             }
                                             §§goto(addr321);
                                          }
                                       }
                                    }
                                    addr354:
                                 }
                                 §§goto(addr375);
                              }
                           }
                        }
                        §§goto(addr361);
                     }
                     §§goto(addr403);
                  }
               }
               §§goto(addr354);
            }
            §§goto(addr39);
         }
         addr39:
         return false;
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§?!d§)
            {
               super.playScreamingSoundEffect();
               if(_loc2_)
               {
                  if(_loc1_)
                  {
                     addr57:
                     §'!p§(§=C§.§8!U§);
                     addr61:
                  }
                  else
                  {
                     addr53:
                  }
                  return;
               }
               §§goto(addr61);
            }
            §§goto(addr57);
         }
         §§goto(addr53);
      }
      
      public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §§push(this.§-?§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  addr131:
                  return false;
                  addr130:
               }
               else
               {
                  addr88:
               }
               while(true)
               {
                  §§push(this.canActivateSpecialPower);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr88);
         }
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§?!d§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §6`§(param1:int) : int
      {
         return Math.min(§9q§.§>!L§.§+r§,param1);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(getSpecialAnimationProgress() >= 0)
            {
               if(_loc3_)
               {
                  this.specialPower(param2);
               }
               loop0:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     if(_loc3_ || this)
                     {
                        loop4:
                        while(true)
                        {
                           this.addTrail(param2);
                           if(_loc4_ && param2)
                           {
                              continue loop6;
                           }
                           addr34:
                           if(!(_loc4_ && param1))
                           {
                              return;
                           }
                           addr78:
                           while(_loc3_ || param2)
                           {
                              while(true)
                              {
                                 this.updateFlying();
                                 continue loop6;
                              }
                              §§goto(addr34);
                           }
                           while(true)
                           {
                              if(this.§?!d§)
                              {
                                 continue;
                              }
                              continue loop4;
                           }
                           addr56:
                        }
                     }
                     continue loop0;
                  }
               }
               addr98:
            }
            while(true)
            {
               super.update(param1,param2);
               §§goto(addr78);
               §§goto(addr98);
            }
         }
         §§goto(addr63);
      }
      
      protected function updateFlying() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §^e§(0);
         }
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() <= defence);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr120:
                        while(true)
                        {
                           §§push(defence == 0);
                           if(_loc5_ && param2)
                           {
                              break;
                           }
                           if(!(_loc6_ || param2))
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  loop4:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(Number(defence));
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                        param1 = §§pop();
                        if(!(_loc5_ && this))
                        {
                           if(_loc6_ || param1)
                           {
                              if(!(_loc6_ || param3))
                              {
                                 while(health == healthMax)
                                 {
                                    while(true)
                                    {
                                       § N§(-1);
                                       addr96:
                                       while(true)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             break loop4;
                                          }
                                          §§goto(addr120);
                                       }
                                    }
                                 }
                                 addr30:
                                 addr90:
                              }
                              return super.applyDamage(param1,param2,param3,param4);
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr96);
                     }
                  }
                  §§goto(addr30);
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function causedDamageToObjects() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§4"F§ = §=!c§;
         }
      }
      
      protected function get §>""§() : Boolean
      {
         return §=!c§ - this.§4"F§ < §6"#§;
      }
      
      override protected function addDestructionParticles(param1:§;U§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§+<§(false) + 1);
         var _loc4_:* = Number(90);
         if(_loc10_)
         {
            §§push(this.§6`§(_loc3_));
            if(_loc10_)
            {
               §§push(int(§§pop()));
               if(!_loc9_)
               {
                  _loc3_ = §§pop();
                  addr47:
                  §§push(0);
               }
            }
            var _loc5_:* = §§pop();
            while(true)
            {
               if(_loc5_ >= _loc3_)
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     if(_loc10_ || this)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc5_++;
                        addr233:
                        param1.§%!y§(§2!V§.§^"9§,§0"@§.§3!W§,§2!V§.§#!N§,§^!z§().GetPosition().x + _loc7_,§^!z§().GetPosition().y + _loc8_,1500,"",§2!V§.§+9§(itemName),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                     }
                  }
                  while(!_loc10_)
                  {
                     while(!_loc10_)
                     {
                        while(true)
                        {
                           if(_loc10_)
                           {
                              §§push(-§'%§.height);
                              if(_loc10_ || _loc2_)
                              {
                                 §§push(§^g§.§5!-§);
                                 if(_loc10_)
                                 {
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc10_)
                                       {
                                          addr143:
                                          if(_loc10_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc10_)
                                             {
                                                if(_loc10_ || param1)
                                                {
                                                   if(_loc10_ || param1)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(Math.random() * -_loc8_);
                                                                     if(_loc10_)
                                                                     {
                                                                        addr201:
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           §§push(2);
                                                                           if(_loc10_ || _loc2_)
                                                                           {
                                                                              addr217:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc9_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr228:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr228);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    addr320:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          loop4:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             addr333:
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(180 / Math.PI);
                                                                                                addr337:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   loop10:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop11:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         addr340:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(-§'%§.width);
                                                                                                            addr238:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc10_ || _loc3_))
                                                                                                               {
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               if(!(_loc10_ || _loc2_))
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               §§push(§^g§.§5!-§);
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc10_ || param1)
                                                                                                                  {
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        addr268:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           addr269:
                                                                                                                           addr298:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(Math.random() * -_loc7_);
                                                                                                                                 if(!(_loc10_ || this))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(!(_loc9_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr296:
                                                                                                                                    §§push(§§pop() * 2);
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           addr297:
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr297);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr217);
                                                                                 }
                                                                                 addr319:
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                              continue;
                                                                           }
                                                                           §§goto(addr296);
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                     §§goto(addr217);
                                                                  }
                                                                  §§goto(addr228);
                                                               }
                                                               §§goto(addr337);
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   §§goto(addr269);
                                                }
                                                §§goto(addr298);
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr228);
                                    }
                                    §§goto(addr298);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr340);
                        }
                        _loc8_ = §§pop();
                     }
                     §§goto(addr233);
                  }
                  continue;
               }
               §§push(_loc4_);
               if(_loc10_ || param1)
               {
                  §§goto(addr319);
                  §§push(Math.random() * (720 / _loc3_));
               }
               §§goto(addr333);
            }
            return;
         }
         §§goto(addr47);
      }
      
      override public function addDamageParticles(param1:§;U§, param2:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!_loc9_)
         {
            if(param2 < 6)
            {
               if(_loc10_)
               {
                  §§goto(addr30);
               }
            }
            §§push(§=!k§() / 10);
            if(!(_loc9_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(!(_loc9_ && this))
            {
               §§push(_loc3_);
               if(_loc10_)
               {
                  addr70:
                  §§push(§§pop() * §+<§(false));
                  if(!(_loc9_ && _loc3_))
                  {
                     addr66:
                     §§push(§§pop() * 0.12);
                  }
                  var _loc4_:int = §§pop() + §§pop();
                  var _loc5_:Number = 90;
                  if(!_loc9_)
                  {
                     §§push(param2);
                     loop0:
                     while(true)
                     {
                        §§push(scale * scale);
                        addr464:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr465:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop3:
                              while(true)
                              {
                                 param2 = §§pop();
                                 addr467:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    addr418:
                                    while(!(_loc9_ && this))
                                    {
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr459);
               }
               §§goto(addr66);
            }
            §§goto(addr70);
         }
         addr30:
      }
   }
}
