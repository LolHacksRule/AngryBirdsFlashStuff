package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §3!`§.b2BodyDef;
   import §3!`§.b2FilterData;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§8K§;
   import §@L§.§3!&§;
   import §@L§.§?!'§;
   import com.angrybirds.§&!"§;
   
   public class §?!z§ extends § !o§
   {
      
      public static const §-"§:String = "special";
      
      public static const §15§:String = "fly";
      
      public static const §`;§:String = "fly_yell";
      
      protected static const §<+§:Number = 20000;
      
      protected static const §!E§:Number = 3000;
      
      protected static const §#s§:Number = 0.2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-"§ = "special";
            loop0:
            while(true)
            {
               §15§ = "fly";
               while(true)
               {
                  §`;§ = "fly_yell";
                  while(!_loc1_)
                  {
                     §<+§ = 20000;
                     while(_loc2_)
                     {
                        §!E§ = 3000;
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      private var §3!E§:Number;
      
      protected var §!"$§:Boolean = false;
      
      protected var §2!V§:int = 0;
      
      protected var §3!^§:Boolean = false;
      
      protected var §+W§:int;
      
      private var §]E§:Boolean = false;
      
      private var §'p§:Boolean = false;
      
      public function §?!z§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6);
            do
            {
               if(!param7)
               {
                  this.fly();
                  if(!(_loc9_ && param1))
                  {
                     if(!_loc9_)
                     {
                        §§goto(addr19);
                     }
                     else
                     {
                        addr66:
                     }
                     while(true)
                     {
                        this.playScreamingSoundEffect();
                     }
                     addr66:
                  }
                  while(_loc9_)
                  {
                     §§goto(addr66);
                  }
                  continue;
               }
               while(true)
               {
                  this.scream();
               }
            }
            while(!(_loc8_ || param2));
            
            addr19:
            return;
         }
         §§goto(addr66);
      }
      
      public function set §8"+§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'p§ = param1;
         }
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.§!"$§;
      }
      
      public function get launchForce() : Number
      {
         return §3!&§.§9!i§;
      }
      
      public function get §1!q§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(Boolean(§^`§().IsAwake()));
            if(!(_loc2_ && _loc1_))
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(true);
                           while(true)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 break loop0;
                              }
                              addr91:
                              while(true)
                              {
                                 §§pop();
                              }
                           }
                           addr57:
                        }
                        else if(!_loc2_)
                        {
                           while(true)
                           {
                              addr19:
                              while(true)
                              {
                                 §§push(false);
                                 if(!_loc2_)
                                 {
                                    if(_loc1_ || _loc2_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr57);
                              }
                           }
                           addr67:
                        }
                        while(true)
                        {
                           continue loop0;
                        }
                     }
                     §§goto(addr19);
                  }
                  return §§pop();
               }
            }
            §§goto(addr91);
         }
         §§goto(addr67);
      }
      
      override public function get isNormal() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(!§#y§);
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
                        addr110:
                        while(true)
                        {
                           §§push(!§%`§);
                        }
                     }
                     addr109:
                  }
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc2_ || _loc2_))
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           addr62:
                           return §§pop();
                        }
                        while(true)
                        {
                           if(_loc2_ || this)
                           {
                              §§pop();
                              if(!(_loc2_ || this))
                              {
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr110);
                        addr38:
                        if(!(_loc1_ && _loc2_))
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.specialPowerUsed);
            if(!_loc1_)
            {
               §§push(!§§pop());
            }
            if(!(_loc1_ && _loc2_))
            {
               §§goto(addr38);
            }
            §§goto(addr79);
         }
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
                  if(!(_loc2_ && param1))
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
                  if(!_loc2_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2FilterData = super.createFilterData();
         if(!_loc3_)
         {
            _loc1_.§9!W§ = §8"!§;
            do
            {
               §§push(_loc1_);
               §§push(65535);
               if(!_loc3_)
               {
                  §§push(§§pop() & ~§,O§);
               }
               §§pop().§`"%§ = §§pop();
            }
            while(!_loc2_);
            
         }
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§!"$§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
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
                           if(!(_loc1_ && this))
                           {
                              while(!§§pop())
                              {
                                 while(true)
                                 {
                                    super.normalize();
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 if(_loc2_ || this)
                                 {
                                    return;
                                 }
                                 break loop1;
                              }
                              break;
                              addr64:
                           }
                           continue loop0;
                        }
                        return;
                     }
                     addr89:
                  }
                  §§goto(addr64);
               }
               §§goto(addr89);
            }
            §§goto(addr87);
         }
         §§goto(addr69);
      }
      
      override public function scream() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§!"$§);
            if(_loc2_ || _loc1_)
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
                        while(_loc2_)
                        {
                           addr73:
                           §§push(this.§1!q§);
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc1_)
                                    {
                                       if(_loc1_ && _loc1_)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr73);
                                             }
                                             else
                                             {
                                                if(_loc1_)
                                                {
                                                   break;
                                                }
                                                addr86:
                                                while(true)
                                                {
                                                   super.scream();
                                                   continue loop6;
                                                   §§goto(addr86);
                                                }
                                             }
                                          }
                                          continue loop2;
                                       }
                                       if(_loc1_)
                                       {
                                          §§goto(addr83);
                                       }
                                       §`!f§.setAnimation(§`;§,false);
                                    }
                                    addr67:
                                 }
                                 return;
                              }
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               while(!§§pop())
               {
                  §§goto(addr68);
               }
               addr83:
               return;
            }
         }
         §§goto(addr67);
      }
      
      override public function blink() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§!"$§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr89:
                        while(true)
                        {
                           §§push(getSpecialAnimationProgress() >= 0);
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr88:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           return;
                        }
                        addr63:
                        while(true)
                        {
                        }
                        addr63:
                     }
                     while(true)
                     {
                        super.blink();
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§goto(addr63);
                     }
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§goto(addr89);
                  }
                  return;
               }
            }
            §§goto(addr88);
         }
         §§goto(addr63);
      }
      
      protected function fly() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §`!f§.setAnimation(§15§,false);
         }
      }
      
      protected function specialPower(param1:§3!#§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §`!f§.setAnimation(§-"§,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§3!#§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr62:
                     param1 = 1;
                  }
               }
               return super.setDamageState(param1,param2);
            }
         }
         §§goto(addr62);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.§6!D§ = true;
            do
            {
               _loc3_.§&!&§ = 2;
            }
            while(!(_loc4_ || this));
            
         }
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
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
                     while(true)
                     {
                        §§pop();
                        addr156:
                        loop8:
                        while(true)
                        {
                           §§push(Boolean(§^" §()));
                           if(!_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              §§push(§§pop());
                              if(_loc3_ && param1)
                              {
                                 continue loop1;
                              }
                              if(§§pop())
                              {
                              }
                              loop3:
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(_loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop8;
                                          }
                                          §§push(this);
                                          §§push(this.§3!E§);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(§§pop() + param1);
                                          }
                                          §§pop().§3!E§ = §§pop();
                                          while(this.§3!E§ >= §!E§)
                                          {
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             addr87:
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr67:
                                                   §§push(true);
                                                   if(!_loc3_)
                                                   {
                                                      break loop4;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          §§push(false);
                                          if(!(_loc3_ && this))
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr67);
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§with§);
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(!§§pop());
                                             continue loop3;
                                          }
                                          addr148:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop7;
                                          }
                                       }
                                       continue;
                                    }
                                    this.§3!E§ = 0;
                                    if(_loc3_ && this)
                                    {
                                       §§goto(addr87);
                                    }
                                    §§goto(addr24);
                                    §§goto(addr87);
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr148);
                        }
                     }
                  }
                  §§goto(addr101);
               }
            }
         }
         §§goto(addr156);
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
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(§^`§() == null);
                        if(_loc2_)
                        {
                           break;
                        }
                        if(_loc1_)
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(false);
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                                 addr76:
                                 while(true)
                                 {
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.§]E§);
                                 if(!_loc2_)
                                 {
                                    break loop3;
                                 }
                                 break loop2;
                              }
                           }
                           return §§pop();
                           addr46:
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        if(_loc1_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
                  return §§pop();
               }
               §§goto(addr46);
            }
         }
         §§goto(addr76);
      }
      
      override public function set isLeavingTrail(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§]E§ = param1;
         }
      }
      
      override protected function handleInitialCollision() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§]E§ = false;
            do
            {
               super.handleInitialCollision();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      override protected function addTrail(param1:§3!#§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(!(_loc6_ && param1))
         {
            §§push(this.isLeavingTrail);
            if(!(_loc6_ && param1))
            {
               if(!§§pop())
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     addr43:
                     §§push(false);
                     if(_loc5_)
                     {
                        return §§pop();
                     }
                     §§goto(addr64);
                  }
               }
               else if(!param1)
               {
                  if(!(_loc6_ && param1))
                  {
                     addr64:
                     return §§pop();
                     §§push(true);
                  }
               }
               §§push(x * §?!'§.§'!i§);
               if(_loc5_ || param1)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(y * §?!'§.§'!i§);
               if(_loc5_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(!_loc6_)
               {
                  §§push(this.§3!^§);
                  loop0:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(§["+§ <= 1)
                        {
                           §§push(§2_§.PARTICLE_NAME_BIRD_TRAIL1);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§2!V§);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(1);
                                       addr237:
                                       addr151:
                                       loop5:
                                       while(true)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             continue loop4;
                                          }
                                          if(!_loc6_)
                                          {
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(§2_§.PARTICLE_NAME_BIRD_TRAIL2);
                                                if(!(_loc6_ && this))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break loop3;
                                                   }
                                                   §§push(§§pop());
                                                }
                                                loop14:
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   addr260:
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break loop5;
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         addr101:
                                                         addr134:
                                                         for(; !_loc6_; §§goto(addr101))
                                                         {
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               continue loop3;
                                                            }
                                                            addr191:
                                                            while(true)
                                                            {
                                                               if(_loc6_ && this)
                                                               {
                                                                  continue loop16;
                                                               }
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  §§push(§2_§.PARTICLE_NAME_BIRD_TRAIL3);
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               addr336:
                                                               while(true)
                                                               {
                                                                  this.§2!V§ = 0;
                                                                  §§goto(addr308);
                                                               }
                                                            }
                                                         }
                                                         addr172:
                                                         while(true)
                                                         {
                                                            this.§@!l§(param1);
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            if(_loc5_ || _loc2_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr308:
                                                            addr308:
                                                            while(true)
                                                            {
                                                               this.§3!^§ = false;
                                                               continue loop10;
                                                            }
                                                            continue loop10;
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               while(_loc6_ && _loc2_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        param1.§-!,§(§2_§.§`H§,§!u§.§%c§,§2_§.§,!R§,_loc2_,_loc3_,-1,"",§2_§.§7!=§);
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr101);
                                                                        }
                                                                        addr298:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           param1.§-!,§(§2_§.§'l§,§!u§.§%c§,§2_§.§,!R§,_loc2_,_loc3_,-1,"",§2_§.§7!=§);
                                                                        }
                                                                        addr312:
                                                                     }
                                                                  }
                                                               }
                                                               break loop5;
                                                               addr225:
                                                            }
                                                            param1.§-!,§(_loc4_,§!u§.§%c§,§2_§.§,!R§,_loc2_,_loc3_,-1,"",§2_§.§7!=§);
                                                            §§goto(addr134);
                                                            §§goto(addr336);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr298);
                                          }
                                          §§goto(addr260);
                                       }
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§2!V§ + 1);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() % 3);
                                          }
                                          §§pop().§2!V§ = §§pop();
                                          §§goto(addr172);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr277);
                     }
                     §§goto(addr312);
                  }
               }
               §§goto(addr308);
            }
            §§goto(addr64);
         }
         §§goto(addr43);
      }
      
      protected function §@!l§(param1:§3!#§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:Number = §;<§();
         §§push(§3!&§.§%"#§);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc6_ && _loc3_))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§§pop() > _loc3_);
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§pop();
                        addr175:
                        while(true)
                        {
                           §§push(Math.random() < §#s§);
                           if(_loc7_ || _loc3_)
                           {
                              break;
                           }
                           continue loop7;
                        }
                     }
                     addr174:
                  }
                  while(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(-Math.PI);
                        if(_loc7_)
                        {
                           §§push(§§pop() / 2);
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        while(!_loc6_)
                        {
                           _loc4_ = §§pop();
                           while(true)
                           {
                              §§push(Number(Math.random()));
                              if(!_loc7_)
                              {
                                 break;
                              }
                              _loc5_ = §§pop();
                              while(!(_loc6_ && param1))
                              {
                                 param1.§-!,§(§2_§.§0!2§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x,§^`§().GetPosition().y,1250,"",§2_§.§%j§(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
                                 if(_loc7_ || this)
                                 {
                                    if(_loc7_ || _loc3_)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                     if(_loc7_)
                     {
                        addr113:
                        break;
                     }
                     §§goto(addr175);
                  }
                  return;
               }
               §§goto(addr174);
            }
         }
         §§goto(addr113);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§1!q§)
            {
               super.playScreamingSoundEffect();
               if(_loc2_ || _loc2_)
               {
                  if(_loc1_)
                  {
                     addr62:
                     §]Y§(§,4§.§1x§);
                     addr66:
                  }
                  else
                  {
                     addr58:
                  }
                  return;
               }
               §§goto(addr66);
            }
            §§goto(addr62);
         }
         §§goto(addr58);
      }
      
      public function activateSpecialPower(param1:§3!#§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§!"$§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.canActivateSpecialPower);
                     loop2:
                     while(_loc5_)
                     {
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        if(§§pop())
                        {
                           this.§!"$§ = true;
                           §]Y§(§,4§.§>!P§);
                           this.specialPower(param1,param2,param3);
                           while(_loc5_)
                           {
                              this.§3!^§ = this.shouldShowCloudOnSpecialPowerUse;
                              if(_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    addr29:
                                    §§push(true);
                                    if(_loc5_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                           addr111:
                           §§push(false);
                           break;
                        }
                        §§push(false);
                        if(!_loc4_)
                        {
                           return §§pop();
                        }
                        §§goto(addr29);
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§1!q§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §?E§(param1:int) : int
      {
         return Math.min(§&!"§.§1!D§.§ K§,param1);
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(getSpecialAnimationProgress() >= 0)
            {
               if(!(_loc4_ && param2))
               {
                  addr95:
                  this.specialPower(param2);
               }
               while(true)
               {
                  addr36:
                  if(!(_loc4_ && _loc3_))
                  {
                     return;
                  }
               }
               addr98:
            }
            while(true)
            {
               super.update(param1,param2);
               loop2:
               while(true)
               {
                  if(!this.§1!q§)
                  {
                     do
                     {
                        this.addTrail(param2);
                        if(_loc4_ && _loc3_)
                        {
                           continue loop2;
                        }
                     }
                     while(!_loc3_);
                     
                     §§goto(addr36);
                     addr23:
                  }
                  while(true)
                  {
                     this.updateFlying();
                     continue loop2;
                  }
               }
               §§goto(addr98);
            }
         }
         §§goto(addr95);
      }
      
      protected function updateFlying() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Vec2 = null;
         §§push(0);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(this.§'p§)
            {
               if(_loc4_)
               {
                  _loc2_ = §^`§().GetLinearVelocity();
                  if(_loc4_)
                  {
                     §§push(_loc2_.x);
                     if(!_loc3_)
                     {
                        §§push(0);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc4_ || _loc1_)
                           {
                              §§push(!§§pop());
                              if(!(_loc3_ && this))
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §§pop();
                                       if(_loc4_ || _loc1_)
                                       {
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
                                             if(§§pop())
                                             {
                                             }
                                             §§goto(addr129);
                                          }
                                          _loc1_ = §§pop();
                                       }
                                       §§goto(addr129);
                                    }
                                 }
                                 §§goto(addr103);
                              }
                           }
                           §§goto(addr103);
                        }
                     }
                     §§goto(addr99);
                  }
               }
            }
            §§goto(addr129);
         }
         addr129:
         if(!(_loc3_ && _loc2_))
         {
            §§push(Number(Math.atan2(_loc2_.y,_loc2_.x)));
         }
         §,3§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(health == healthMax)
            {
               if(_loc5_ || this)
               {
                  §>!;§(-1);
               }
               while(true)
               {
                  addr82:
                  while(!(_loc6_ && this))
                  {
                     this.setDamageState(0.5,param2);
                     loop3:
                     for(; !_loc6_; while(!(_loc6_ && this))
                     {
                        §§goto(addr67);
                        §§push(Number(defence));
                     })
                     {
                        §§push(param1);
                        if(!_loc6_)
                        {
                           if(§§pop() <= defence)
                           {
                              loop5:
                              while(true)
                              {
                                 §]?§();
                                 if(!(_loc6_ && param1))
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 addr68:
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                           continue;
                           return super.applyDamage(param1,param2,param3,param4);
                        }
                        addr67:
                        while(true)
                        {
                           param1 = §§pop();
                        }
                        §§goto(addr68);
                     }
                  }
               }
               addr113:
            }
            while(true)
            {
               this.addDamageParticles(param2,param1);
               §§goto(addr82);
               §§goto(addr113);
            }
         }
         §§goto(addr68);
      }
      
      override public function causedDamageToObjects() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§+W§ = §<E§;
         }
      }
      
      protected function get §with§() : Boolean
      {
         return §<E§ - this.§+W§ < §<+§;
      }
      
      override protected function addDestructionParticles(param1:§3!#§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(_loc10_)
         {
            if(!param1)
            {
               if(!(_loc9_ && _loc3_))
               {
                  return;
               }
            }
         }
         var _loc2_:Number = 5;
         var _loc3_:* = int(§[z§(false) + 1);
         var _loc4_:* = Number(90);
         if(!(_loc9_ && param1))
         {
            §§push(this.§?E§(_loc3_));
            if(!_loc9_)
            {
               §§push(int(§§pop()));
               if(_loc10_)
               {
                  _loc3_ = §§pop();
                  addr64:
                  §§push(0);
               }
            }
            var _loc5_:* = §§pop();
            loop0:
            while(true)
            {
               if(_loc5_ >= _loc3_)
               {
                  if(_loc9_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc10_)
                  {
                     if(!_loc9_)
                     {
                        if(!_loc9_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(-§`!f§.width);
                           loop2:
                           while(true)
                           {
                              §§push(§?!'§.§'!i§);
                              loop3:
                              while(_loc10_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc10_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc10_)
                                    {
                                       §§push(§§pop());
                                       loop4:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          loop5:
                                          while(true)
                                          {
                                             §§push(Math.random() * -_loc7_);
                                             loop6:
                                             while(true)
                                             {
                                                §§push(2);
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr303:
                                                      addr350:
                                                      loop10:
                                                      while(!(_loc9_ && _loc3_))
                                                      {
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            while(true)
                                                            {
                                                               _loc7_ = §§pop();
                                                               addr319:
                                                               while(true)
                                                               {
                                                                  §§push(-§`!f§.height);
                                                                  if(_loc9_ && _loc2_)
                                                                  {
                                                                     addr213:
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc9_ && _loc3_))
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §§push(§§pop());
                                                                        if(!_loc9_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr229:
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 if(!(_loc9_ && _loc2_))
                                                                                 {
                                                                                    §§push(Math.random() * -_loc8_);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       addr250:
                                                                                       if(_loc9_ && _loc2_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       §§push(2);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                    if(!(_loc10_ || this))
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc9_ && _loc2_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr277:
                                                                                    _loc8_ = §§pop();
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       param1.§-!,§(§2_§.§0!2§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x + _loc7_,§^`§().GetPosition().y + _loc8_,1500,"",§2_§.§%j§(itemName),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                                                       addr131:
                                                                                       while(!(_loc10_ || _loc3_))
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       _loc5_++;
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    addr330:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    §§goto(addr345);
                                                                                 }
                                                                                 break loop3;
                                                                              }
                                                                           }
                                                                           §§goto(addr277);
                                                                        }
                                                                        §§goto(addr250);
                                                                     }
                                                                     break;
                                                                  }
                                                                  if(_loc9_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§?!'§.§'!i§);
                                                                     if(!(_loc9_ && _loc3_))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(180 / Math.PI);
                                                                        break loop3;
                                                                     }
                                                                     addr345:
                                                                  }
                                                                  §§goto(addr250);
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            addr318:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Math.random() * (720 / _loc3_));
                                                               addr329:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            addr323:
                                                         }
                                                         §§goto(addr330);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr318);
                                 }
                                 §§goto(addr303);
                              }
                              while(true)
                              {
                                 §§goto(addr350);
                              }
                           }
                        }
                     }
                     §§goto(addr319);
                  }
                  §§goto(addr131);
               }
               else
               {
                  §§push(_loc4_);
               }
               §§goto(addr323);
            }
            return;
         }
         §§goto(addr64);
      }
      
      override public function addDamageParticles(param1:§3!#§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(!_loc10_)
         {
            if(param2 < 6)
            {
               if(_loc9_)
               {
                  §§goto(addr29);
               }
            }
            §§push(§;<§() / 10);
            if(_loc9_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(_loc9_)
            {
               §§push(_loc3_);
               if(!_loc10_)
               {
                  §§push(§§pop() * §[z§(false));
                  if(_loc9_ || this)
                  {
                     §§push(§§pop() * 0.12);
                  }
               }
               §§push(int(§§pop() + §§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(90);
            if(!(_loc10_ && _loc3_))
            {
               §§push(param2);
               loop0:
               while(true)
               {
                  §§push(scale * scale);
                  addr463:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     addr464:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        addr465:
                        while(true)
                        {
                           param2 = §§pop();
                        }
                     }
                  }
                  loop8:
                  while(true)
                  {
                     if(_loc10_ && param1)
                     {
                        continue loop0;
                     }
                     _loc4_ = §§pop();
                     loop9:
                     while(true)
                     {
                        if(!(_loc10_ && param2))
                        {
                           continue loop8;
                        }
                        addr466:
                        addr441:
                        addr466:
                        while(_loc9_ || this)
                        {
                           §§push(this.§?E§(_loc4_));
                           if(!(_loc10_ && _loc3_))
                           {
                              §§push(int(§§pop()));
                           }
                           continue loop8;
                        }
                        while(true)
                        {
                           §§push(_loc4_);
                           break loop9;
                        }
                        addr385:
                        _loc6_ = §§pop();
                        if(_loc10_ && param2)
                        {
                           continue;
                        }
                        addr294:
                        §§push(_loc6_);
                        if(!_loc10_)
                        {
                           addr299:
                           if(§§pop() >= _loc4_ / 3)
                           {
                              if(!_loc10_)
                              {
                                 addr305:
                                 _loc6_ = 0;
                              }
                              addr306:
                              if(!(_loc10_ && this))
                              {
                                 addr76:
                                 §§push(_loc6_);
                                 if(_loc9_ || this)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!(_loc10_ && param2))
                                          {
                                             if(!(_loc9_ || this))
                                             {
                                                _loc6_++;
                                                addr316:
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr294);
                                                }
                                                param1.§-!,§(§2_§.§5§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x,§^`§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
                                                addr350:
                                                §§goto(addr350);
                                                addr364:
                                             }
                                             return;
                                          }
                                          addr113:
                                          if(_loc9_)
                                          {
                                             if(!(_loc10_ && param2))
                                             {
                                                §§goto(addr76);
                                             }
                                             §§goto(addr306);
                                          }
                                          if(!_loc10_)
                                          {
                                             _loc6_++;
                                             §§goto(addr113);
                                          }
                                          addr251:
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             param1.§-!,§(§2_§.§0!2§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x,§^`§().GetPosition().y,1250,"",§2_§.§%j§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
                                             §§goto(addr113);
                                          }
                                          addr293:
                                          §§push(0.5);
                                          if(_loc9_)
                                          {
                                             if(_loc9_)
                                             {
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc9_)
                                                      {
                                                         addr194:
                                                         if(_loc9_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc9_ || this)
                                                            {
                                                               addr204:
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  addr216:
                                                                  §§push(§§pop() * (Math.random() * 0.5));
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc9_)
                                                                        {
                                                                           addr238:
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr248:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    §§goto(addr251);
                                                                                 }
                                                                                 addr283:
                                                                                 addr285:
                                                                                 addr284:
                                                                                 addr263:
                                                                                 §§push(Math.random() * (720 / _loc4_));
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§push(Number(§§pop() / §§pop()));
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    §§goto(addr293);
                                                                                 }
                                                                                 _loc5_ = §§pop();
                                                                                 §§goto(addr364);
                                                                              }
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr276:
                                                                                 §§push(_loc5_ = §§pop());
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§goto(addr283);
                                                                                    §§push(180 / Math.PI);
                                                                                 }
                                                                                 §§goto(addr285);
                                                                              }
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                     addr362:
                                                                     §§goto(addr248);
                                                                     §§push(Number(§§pop() + §§pop()));
                                                                  }
                                                                  §§goto(addr276);
                                                               }
                                                               §§goto(addr248);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         §§goto(addr362);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr204);
                                                }
                                                addr355:
                                                §§goto(addr362);
                                                §§push(Math.random() * (720 / _loc4_));
                                             }
                                             §§goto(addr248);
                                          }
                                          §§goto(addr194);
                                       }
                                       §§goto(addr263);
                                       §§push(_loc5_);
                                    }
                                    §§goto(addr299);
                                 }
                                 §§goto(addr305);
                              }
                              §§goto(addr316);
                           }
                           §§goto(addr355);
                           §§push(_loc5_);
                        }
                        §§goto(addr305);
                     }
                     loop5:
                     while(true)
                     {
                        §§push(3 + param2 / 20);
                        if(_loc10_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(!(_loc10_ && param1))
                        {
                           §§push(int(§§pop()));
                           while(true)
                           {
                              _loc4_ = §§pop();
                              §§goto(addr441);
                              addr369:
                              if(!(_loc9_ || param1))
                              {
                                 continue;
                              }
                              if(!_loc9_)
                              {
                                 continue loop5;
                              }
                              if(!(_loc10_ && this))
                              {
                                 §§goto(addr385);
                              }
                              else
                              {
                                 §§goto(addr465);
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr464);
                        }
                        §§goto(addr441);
                     }
                     §§goto(addr463);
                  }
               }
            }
            §§goto(addr466);
         }
         addr29:
      }
   }
}
