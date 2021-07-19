package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2BodyDef;
   import §+#$§.b2FilterData;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§'§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §^#>§.§`"]§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   import com.angrybirds.§,!q§;
   
   public class §?"N§ extends §^#$§
   {
      
      public static const §4!8§:String = "special";
      
      public static const §;!U§:String = "fly";
      
      public static const §-"[§:String = "fly_yell";
      
      protected static const §0M§:Number = 20000;
      
      protected static const §??§:Number = 3000;
      
      protected static const §1"U§:Number = 0.2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §4!8§ = "special";
            while(true)
            {
               §;!U§ = "fly";
               addr98:
               while(true)
               {
                  §-"[§ = "fly_yell";
                  addr52:
                  if(!(_loc1_ && §?"N§))
                  {
                     return;
                     addr59:
                  }
               }
            }
            addr102:
         }
         loop2:
         while(true)
         {
            §0M§ = 20000;
            while(true)
            {
               §??§ = 3000;
               continue loop2;
               addr35:
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr52);
            }
         }
         §§goto(addr59);
      }
      
      private var §=#E§:Number;
      
      protected var §[!o§:Boolean = false;
      
      protected var §;!H§:int = 0;
      
      protected var §9"e§:Boolean = false;
      
      protected var §>#R§:int;
      
      private var §6!d§:Boolean = false;
      
      private var §+"0§:Boolean = false;
      
      public function §?"N§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
            loop0:
            while(!param7)
            {
               this.fly();
               if(_loc8_ || param1)
               {
                  if(!(_loc9_ && param3))
                  {
                     if(_loc9_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        this.playScreamingSoundEffect();
                        addr58:
                        addr60:
                        while(_loc9_)
                        {
                           break loop0;
                        }
                     }
                     addr66:
                  }
                  return;
               }
               §§goto(addr58);
            }
            while(true)
            {
               this.scream();
               §§goto(addr66);
            }
         }
         §§goto(addr60);
      }
      
      public function set §^u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§+"0§ = param1;
         }
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.§[!o§;
      }
      
      public function get launchForce() : Number
      {
         return §`"]§.§8!M§;
      }
      
      public function get §8!_§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(Boolean(§3!t§().IsAwake()));
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr92:
                     while(true)
                     {
                        §§push(health == healthMax);
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                        §§goto(addr57);
                     }
                  }
                  addr91:
               }
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(true);
                     }
                     else
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           addr24:
                           while(true)
                           {
                              §§push(false);
                              if(!_loc2_)
                              {
                                 break loop0;
                              }
                           }
                        }
                     }
                     addr57:
                     while(!(_loc1_ || _loc1_))
                     {
                        continue loop3;
                     }
                     return §§pop();
                  }
                  §§goto(addr24);
               }
               return §§pop();
            }
            §§goto(addr91);
         }
         §§goto(addr67);
      }
      
      override public function get isNormal() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(!§5!+§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr85:
                        loop5:
                        while(true)
                        {
                           §§push(!§;e§);
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   §§push(this.specialPowerUsed);
                                                   if(!_loc1_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   if(!_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop5;
                                             }
                                             addr61:
                                          }
                                          return §§pop();
                                       }
                                       break;
                                    }
                                    continue loop1;
                                    addr56:
                                 }
                                 continue loop0;
                              }
                              continue;
                           }
                           §§goto(addr61);
                        }
                     }
                  }
                  §§goto(addr56);
               }
            }
         }
         §§goto(addr85);
      }
      
      override protected function initializeHealth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               if(§§pop() < 2)
               {
                  while(true)
                  {
                     §§push(Number(2));
                     addr70:
                     while(true)
                     {
                        param1 = §§pop();
                        addr71:
                        while(true)
                        {
                        }
                     }
                     addr40:
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     return;
                     addr47:
                  }
               }
               while(true)
               {
                  super.initializeHealth(param1);
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr40);
               }
               §§goto(addr47);
            }
            §§goto(addr70);
         }
         §§goto(addr47);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2FilterData = super.createFilterData();
         if(!_loc3_)
         {
            _loc1_.§=#0§ = §7!6§;
            do
            {
               §§push(_loc1_);
               §§push(65535);
               if(!_loc3_)
               {
                  §§push(§§pop() & ~§!z§);
               }
               §§pop().§8"A§ = §§pop();
            }
            while(_loc3_ && _loc1_);
            
         }
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§[!o§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr90:
                        while(true)
                        {
                           §§push(getSpecialAnimationProgress() >= 0);
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr89:
                  }
                  loop0:
                  while(!§§pop())
                  {
                     do
                     {
                        super.normalize();
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              return;
                           }
                           break loop0;
                        }
                     }
                     while(!(_loc1_ && _loc2_));
                     
                     §§goto(addr90);
                  }
                  §§goto(addr61);
               }
            }
            §§goto(addr89);
         }
         addr61:
      }
      
      override public function scream() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§[!o§);
            if(!(_loc2_ && _loc2_))
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
                        while(_loc1_)
                        {
                           addr72:
                           §§push(this.§8!_§);
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc1_)
                                    {
                                       §2N§.setAnimation(§-"[§,false);
                                    }
                                    if(!(_loc1_ || this))
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          if(_loc1_ || this)
                                          {
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                §§goto(addr82);
                                             }
                                             §§goto(addr72);
                                          }
                                          else
                                          {
                                             if(_loc2_ && _loc2_)
                                             {
                                                break;
                                             }
                                             addr90:
                                             while(true)
                                             {
                                                super.scream();
                                                continue loop6;
                                                §§goto(addr90);
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 return;
                              }
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     §§goto(addr45);
                  }
               }
            }
         }
         addr82:
      }
      
      override public function blink() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§[!o§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        do
                        {
                           super.blink();
                        }
                        while(!_loc2_);
                        
                        if(_loc2_)
                        {
                           break;
                        }
                     }
                     if(_loc2_)
                     {
                        return;
                     }
                     addr85:
                     loop4:
                     while(true)
                     {
                        §§push(getSpecialAnimationProgress() >= 0);
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        addr84:
                        while(true)
                        {
                           §§pop();
                           continue loop4;
                        }
                     }
                  }
                  return;
                  addr61:
               }
               §§goto(addr84);
            }
         }
         §§goto(addr85);
      }
      
      protected function fly() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §2N§.setAnimation(§;!U§,false);
         }
      }
      
      protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §2N§.setAnimation(§4!8§,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§;$§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(param1);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() > 0)
               {
                  if(_loc4_)
                  {
                     addr58:
                     param1 = 1;
                  }
               }
               return super.setDamageState(param1,param2);
            }
         }
         §§goto(addr58);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!(_loc4_ && param1))
         {
            _loc3_.§%#2§ = true;
            do
            {
               _loc3_.§>!f§ = 2;
            }
            while(_loc4_);
            
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
                           §§push(Boolean(§+"6§()));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§=#E§ = 0;
                                          if(!_loc3_)
                                          {
                                             if(_loc2_ || this)
                                             {
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   addr107:
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§=#E§);
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop() + param1);
                                                      }
                                                      §§pop().§=#E§ = §§pop();
                                                      addr115:
                                                      while(true)
                                                      {
                                                         if(this.§=#E§ >= §??§)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  §§push(true);
                                                                  continue loop9;
                                                               }
                                                               continue loop3;
                                                            }
                                                            addr61:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr33:
                                                         }
                                                      }
                                                   }
                                                   addr107:
                                                }
                                                while(true)
                                                {
                                                   §§push(false);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         break loop8;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             §§goto(addr61);
                                          }
                                          else
                                          {
                                             if(_loc2_ || param1)
                                             {
                                                addr91:
                                                if(!(_loc2_ || _loc3_))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§8=§);
                                                      addr102:
                                                      addr124:
                                                      while(!_loc3_)
                                                      {
                                                         §§push(!§§pop());
                                                         continue loop8;
                                                      }
                                                      while(!_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop2;
                                                      §§goto(addr91);
                                                   }
                                                   addr144:
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr115);
                                             }
                                             §§goto(addr33);
                                          }
                                       }
                                       §§goto(addr107);
                                    }
                                    if(!_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr102);
                                 }
                                 return §§pop();
                                 addr105:
                              }
                              §§goto(addr124);
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr105);
               }
            }
         }
         §§goto(addr107);
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
            do
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr83:
                     while(true)
                     {
                        §§push(§3!t§() == null);
                     }
                  }
                  addr82:
               }
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc1_ || this)
                        {
                           if(!_loc2_)
                           {
                              §§push(false);
                              break;
                           }
                        }
                        §§goto(addr83);
                     }
                     §§push(this.§6!d§);
                     if(!_loc1_)
                     {
                        break;
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        break loop2;
                     }
                     §§goto(addr82);
                  }
                  continue loop0;
               }
               return §§pop();
            }
            while(_loc2_);
            
            return §§pop();
         }
         §§goto(addr83);
      }
      
      override public function set isLeavingTrail(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§6!d§ = param1;
         }
      }
      
      override protected function handleInitialCollision() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§6!d§ = false;
         }
         do
         {
            super.handleInitialCollision();
         }
         while(!_loc2_);
         
      }
      
      override protected function addTrail(param1:§;$§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(_loc5_ || _loc3_)
         {
            §§push(this.isLeavingTrail);
            if(_loc5_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc6_)
                  {
                     §§push(false);
                     if(_loc5_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr58:
                     §§push(true);
                  }
               }
               else
               {
                  if(!param1)
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§goto(addr58);
                     }
                  }
                  §§push(x * §#_§.§8]§);
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(y * §#_§.§8]§);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc6_ && param1))
                  {
                     §§push(this.§9"e§);
                     loop0:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§<z§ <= 1)
                           {
                              §§push(§ U§.PARTICLE_NAME_BIRD_TRAIL1);
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
                                       §§push(this.§;!H§);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(1);
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(this.§;!H§);
                                             if(!_loc5_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(2);
                                             if(_loc6_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§ U§.PARTICLE_NAME_BIRD_TRAIL3);
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr212:
                                                         §§push(§§pop());
                                                         if(!_loc6_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr246:
                                                         while(!(_loc6_ && _loc2_))
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                         continue loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || _loc2_)
                                                            {
                                                               addr141:
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§;!H§ + 1);
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() % 3);
                                                                  }
                                                                  §§pop().§;!H§ = §§pop();
                                                                  continue loop6;
                                                               }
                                                               addr141:
                                                            }
                                                            else
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     this.§+#a§(param1);
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        if(_loc6_ && _loc2_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr222:
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§goto(addr141);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§;!H§ = 0;
                                                                                    addr303:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§9"e§ = false;
                                                                                    }
                                                                                 }
                                                                                 addr331:
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              break loop10;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           addr277:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              addr307:
                                                                              while(true)
                                                                              {
                                                                                 param1.§;!0§(§ U§.§[#"§,§,!w§.§9F§,§ U§.§+!Q§,_loc2_,_loc3_,-1,"",§ U§.§9"W§);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr136:
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            §§goto(addr141);
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                   }
                                                   §§goto(addr212);
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr141);
                                          }
                                          while(true)
                                          {
                                             if(_loc6_ && this)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr246);
                                             §§push(§ U§.PARTICLE_NAME_BIRD_TRAIL2);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr277);
                        }
                        §§goto(addr307);
                     }
                  }
                  §§goto(addr188);
               }
               §§goto(addr58);
            }
            return §§pop();
         }
         §§goto(addr58);
      }
      
      protected function §+#a§(param1:§;$§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:Number = §>o§();
         §§push(§`"]§.§6#a§);
         if(!(_loc7_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc7_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§§pop() > _loc3_);
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr174:
                        while(true)
                        {
                           §§push(Math.random() < §1"U§);
                           if(_loc6_)
                           {
                              break;
                           }
                           continue loop8;
                        }
                     }
                     addr173:
                  }
                  loop1:
                  while(§§pop())
                  {
                     loop2:
                     while(!_loc7_)
                     {
                        §§push(-Math.PI);
                        if(!_loc7_)
                        {
                           §§push(§§pop() / 2);
                           while(_loc6_)
                           {
                              §§push(Number(§§pop()));
                              addr122:
                              if(_loc6_ || _loc3_)
                              {
                                 _loc5_ = §§pop();
                                 while(!_loc7_)
                                 {
                                    param1.§;!0§(§ U§.§7!i§,§,!w§.§ !B§,§ U§.§'# §,§3!t§().GetPosition().x,§3!t§().GetPosition().y,1250,"",§ U§.§`"I§(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
                                    if(_loc7_ && param1)
                                    {
                                       continue;
                                    }
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       addr110:
                                       break loop1;
                                    }
                                    while(true)
                                    {
                                       §§push(Number(Math.random()));
                                       if(_loc7_ && _loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr122);
                                    }
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       §§goto(addr155);
                                    }
                                    addr155:
                                    addr154:
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr174);
                  }
                  return;
               }
               §§goto(addr173);
            }
         }
         §§goto(addr110);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§8!_§)
            {
               super.playScreamingSoundEffect();
               if(_loc2_)
               {
                  addr65:
               }
               return;
            }
            if(_loc1_ || _loc2_)
            {
               addr61:
               §[v§(§'#2§.§=#C§);
            }
            §§goto(addr65);
         }
         §§goto(addr61);
      }
      
      public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(this.§[!o§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     return false;
                  }
                  else
                  {
                     loop5:
                     while(true)
                     {
                        addr76:
                        while(true)
                        {
                           §§push(this.canActivateSpecialPower);
                           while(true)
                           {
                              if(_loc4_ || param2)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       this.§[!o§ = true;
                                       addr92:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop5;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 else
                                 {
                                    §§push(false);
                                    if(_loc4_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 if(!_loc5_)
                                 {
                                    return §§pop();
                                 }
                                 continue;
                              }
                           }
                           continue loop0;
                        }
                     }
                     addr112:
                  }
                  return §§pop();
               }
               §§goto(addr76);
            }
         }
         §§goto(addr112);
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§8!_§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §;#H§(param1:int) : int
      {
         return Math.min(§,!q§.§9!,§.§>_§,param1);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
               addr64:
               while(_loc4_ || _loc3_)
               {
               }
               §§goto(addr89);
            }
         }
         loop4:
         while(true)
         {
            if(this.§8!_§)
            {
               while(true)
               {
                  this.updateFlying();
                  addr56:
                  while(_loc4_)
                  {
                  }
                  §§goto(addr64);
                  addr30:
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     break loop4;
                  }
                  §§goto(addr86);
               }
            }
            while(true)
            {
               this.addTrail(param2);
               if(_loc4_)
               {
                  §§goto(addr30);
               }
               §§goto(addr56);
            }
         }
      }
      
      protected function updateFlying() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Vec2 = null;
         §§push(0);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(this.§+"0§)
            {
               if(_loc4_)
               {
                  _loc2_ = §3!t§().GetLinearVelocity();
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(_loc2_.x);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(0);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc4_)
                           {
                              §§push(!§§pop());
                              if(_loc4_ || _loc2_)
                              {
                                 addr87:
                                 if(!§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       addr91:
                                       §§pop();
                                       if(_loc4_)
                                       {
                                          addr94:
                                          §§push(_loc2_.y);
                                          if(_loc4_)
                                          {
                                             addr99:
                                             §§push(§§pop() == 0);
                                             if(!_loc3_)
                                             {
                                                §§goto(addr103);
                                             }
                                             addr103:
                                             if(!§§pop())
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                }
                                             }
                                             §§goto(addr129);
                                          }
                                          §§goto(addr128);
                                       }
                                       addr128:
                                       _loc1_ = §§pop();
                                       addr129:
                                       §6#<§(_loc1_);
                                       return;
                                       §§push(Number(Math.atan2(_loc2_.y,_loc2_.x)));
                                    }
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr94);
               }
            }
         }
         §§goto(addr129);
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(health == healthMax)
            {
               while(true)
               {
                  §?!x§(-1);
                  addr103:
                  while(true)
                  {
                  }
               }
               addr100:
            }
            loop1:
            while(true)
            {
               this.addDamageParticles(param2,param1);
               loop2:
               while(true)
               {
                  this.setDamageState(0.5,param2);
                  loop3:
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc6_)
                     {
                        if(§§pop() > defence)
                        {
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 continue loop3;
                              }
                              if(_loc5_)
                              {
                                 §§push(Number(defence));
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    addr74:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr73:
                              }
                              else
                              {
                                 §§goto(addr100);
                              }
                              addr39:
                              if(_loc5_ || param1)
                              {
                                 if(!_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       return super.applyDamage(param1,param2,param3,param4);
                                    }
                                    break;
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           playDamagedSound();
                           if(!(_loc5_ || param3))
                           {
                              continue;
                           }
                           §§goto(addr39);
                        }
                     }
                     §§goto(addr73);
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      override public function causedDamageToObjects() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§>#R§ = §3! §;
         }
      }
      
      protected function get §8=§() : Boolean
      {
         return §3! § - this.§>#R§ < §0M§;
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(_loc9_ || _loc3_)
         {
            if(!param1)
            {
               if(!_loc10_)
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:Number = 5;
            var _loc3_:* = int(§0"X§(false) + 1);
            var _loc4_:* = Number(90);
            if(!_loc10_)
            {
               §§push(this.§;#H§(_loc3_));
               if(_loc9_ || _loc2_)
               {
                  §§push(int(§§pop()));
                  if(_loc9_)
                  {
                     _loc3_ = §§pop();
                     addr63:
                     §§push(0);
                  }
               }
               var _loc5_:* = §§pop();
               loop0:
               while(true)
               {
                  if(_loc5_ >= _loc3_)
                  {
                     if(!(_loc10_ && this))
                     {
                        if(!_loc10_)
                        {
                           if(!_loc10_)
                           {
                              break;
                           }
                           loop7:
                           while(true)
                           {
                              §§push(-§2N§.width);
                              loop8:
                              while(true)
                              {
                                 §§push(§#_§.§8]§);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc10_)
                                    {
                                       if(_loc9_)
                                       {
                                          §§push(Number(§§pop()));
                                          loop10:
                                          while(_loc9_ || _loc2_)
                                          {
                                             §§push(§§pop());
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   _loc7_ = §§pop();
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(Math.random() * -_loc7_);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(2);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr232:
                                                            §§push(2);
                                                            if(_loc10_ && _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            addr241:
                                                            §§push(§§pop() + §§pop() * §§pop());
                                                            if(_loc9_)
                                                            {
                                                               addr244:
                                                               if(_loc10_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(_loc9_)
                                                               {
                                                                  addr312:
                                                                  if(!(_loc10_ && param1))
                                                                  {
                                                                     addr256:
                                                                     _loc8_ = Number(§§pop());
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        param1.§;!0§(§ U§.§7!i§,§,!w§.§ !B§,§ U§.§'# §,§3!t§().GetPosition().x + _loc7_,§3!t§().GetPosition().y + _loc8_,1500,"",§ U§.§`"I§(itemName),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                                        addr135:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              _loc5_++;
                                                                              while(!(_loc9_ || _loc3_))
                                                                              {
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(-§2N§.height);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          §§push(§#_§.§8]§);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr155:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr204:
                                                                                                   if(_loc10_ && this)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   §§push(Math.random() * -_loc8_);
                                                                                                   if(!(_loc10_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(_loc9_ || _loc2_)
                                                                                                         {
                                                                                                            §§goto(addr232);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            addr324:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(180 / Math.PI);
                                                                                                               break loop11;
                                                                                                            }
                                                                                                         }
                                                                                                         addr323:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         addr290:
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr241);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr292:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr244);
                                                                                          }
                                                                                          §§goto(addr241);
                                                                                       }
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                    §§goto(addr155);
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop0;
                                                                              addr86:
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr323);
                                                                  }
                                                                  addr312:
                                                               }
                                                               §§goto(addr324);
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                      }
                                                      §§goto(addr290);
                                                   }
                                                }
                                                break;
                                                addr185:
                                                if(_loc10_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                if(_loc10_)
                                                {
                                                   continue loop9;
                                                }
                                                addr194:
                                                if(!(_loc10_ && param1))
                                                {
                                                   _loc8_ = §§pop();
                                                   if(_loc9_)
                                                   {
                                                      §§goto(addr204);
                                                   }
                                                   §§goto(addr244);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr311:
                                                      while(true)
                                                      {
                                                      }
                                                      §§goto(addr194);
                                                   }
                                                   addr310:
                                                }
                                                §§goto(addr312);
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                break loop10;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             continue loop7;
                                          }
                                          addr270:
                                          addr329:
                                       }
                                       else
                                       {
                                          §§goto(addr311);
                                       }
                                       §§goto(addr312);
                                    }
                                    §§goto(addr270);
                                 }
                              }
                           }
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr86);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(_loc9_ || _loc2_)
                     {
                        §§goto(addr310);
                        §§push(Math.random() * (720 / _loc3_));
                     }
                  }
                  §§goto(addr329);
               }
               return;
            }
            §§goto(addr63);
         }
         addr33:
      }
      
      override public function addDamageParticles(param1:§;$§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(_loc9_ || _loc3_)
         {
            if(param2 < 6)
            {
               if(!_loc10_)
               {
                  return;
               }
            }
         }
         §§push(§>o§() / 10);
         if(_loc9_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(_loc9_)
         {
            §§push(_loc3_);
            if(_loc9_ || this)
            {
               addr69:
               §§push(§§pop() * §0"X§(false));
               if(_loc9_)
               {
                  addr65:
                  §§push(§§pop() * 0.12);
               }
               var _loc4_:* = int(§§pop() + §§pop());
               var _loc5_:Number = 90;
               if(!_loc10_)
               {
                  §§push(param2);
                  while(true)
                  {
                     §§push(scale * scale);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        loop2:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop3:
                           while(true)
                           {
                              param2 = §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 while(true)
                                 {
                                    §§push(3 + param2 / 20);
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc9_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(int(§§pop()));
                                    loop6:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       addr456:
                                       while(_loc9_)
                                       {
                                          §§push(this.§;#H§(_loc4_));
                                          if(!_loc10_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          continue loop6;
                                       }
                                       continue loop4;
                                    }
                                    if(_loc10_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc9_ || _loc3_))
                                    {
                                       continue loop3;
                                    }
                                    _loc4_ = §§pop();
                                    while(!_loc10_)
                                    {
                                       §§goto(addr441);
                                    }
                                    §§goto(addr456);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     if(_loc10_ && _loc3_)
                     {
                        continue;
                     }
                     _loc6_ = §§pop();
                     if(_loc10_)
                     {
                        §§goto(addr439);
                     }
                     §§goto(addr409);
                  }
               }
               §§goto(addr441);
            }
            §§goto(addr65);
         }
         §§goto(addr69);
      }
   }
}
