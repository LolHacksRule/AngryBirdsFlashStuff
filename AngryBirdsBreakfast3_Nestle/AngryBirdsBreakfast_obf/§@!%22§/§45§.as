package §@!"§
{
   import §%8§.§89§;
   import §%8§.§@-§;
   import §0"!§.b2Body;
   import §0"!§.b2Fixture;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §=!!§.b2CircleShape;
   import §@!E§.b2Vec2;
   import §@V§.§#=§;
   import §[!Z§.§>D§;
   import §`2§.§"w§;
   import §`2§.§`""§;
   
   public class §45§ extends §^"2§
   {
      
      public static const §[!d§:int = 6;
      
      private static const §2,§:int = 200;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§§findproperty(§[!d§));
            §§push(241 * §#=§.§^!2§);
            if(!_loc2_)
            {
               §§push(§§pop() / 2);
            }
            §§pop().§[!d§ = §§pop();
         }
         do
         {
            §2,§ = 200;
         }
         while(_loc2_);
         
      }
      
      private const §5F§:Number = -5;
      
      private const §-!?§:int = 1500;
      
      private const §9"%§:int = 3500;
      
      private const §!"+§:int = 1500;
      
      private var §-!>§:Boolean = false;
      
      private var §1P§:Boolean = false;
      
      private var §]h§:Boolean = false;
      
      private var §'@§:Boolean = false;
      
      private var §]8§:Number = -5;
      
      private var §<"'§:Number = -5;
      
      private var §&!c§:Number = -5;
      
      private var §3!j§:Number = 0;
      
      private var § use§:int = 0;
      
      private var §#t§:Number = 0;
      
      private var §#l§:Number = 0;
      
      private var §%r§:Number = 0;
      
      private var §#!@§:Number = 1000;
      
      private var §-!I§:Boolean = false;
      
      public function §45§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
            do
            {
               this.§%r§ = 0;
            }
            while(_loc8_ && param2);
            
         }
      }
      
      private function get §3Q§() : Number
      {
         return §[!d§ * scale;
      }
      
      override public function addDamageParticles(param1:§`!m§, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(2);
               addr167:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§#!@§);
                                 while(true)
                                 {
                                    §§push(§§pop() < §2,§);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§<"'§);
                                       if(!(_loc4_ || param2))
                                       {
                                          break;
                                       }
                                       §§push(§§pop() == this.§5F§);
                                       if(_loc4_)
                                       {
                                          addr114:
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(!§§pop());
                                             if(!(_loc3_ && param2))
                                             {
                                                addr131:
                                                if(!_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                                §§push(§§pop());
                                                if(_loc3_ && this)
                                                {
                                                   continue loop3;
                                                }
                                                if(!§§pop())
                                                {
                                                   addr142:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                   }
                                                   addr142:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            this.§<!b§(param1,1,param2 > 20);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && param2))
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop9;
                                                            }
                                                            addr143:
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr163:
                                                         return;
                                                         addr72:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§#!@§ = 0;
                                                         if(!(_loc3_ && this))
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr72);
                                                      }
                                                      return;
                                                   }
                                                   addr61:
                                                }
                                                §§goto(addr143);
                                             }
                                             §§goto(addr142);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop9;
                                                }
                                                §§goto(addr114);
                                             }
                                             addr152:
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr131);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr152);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr163);
      }
      
      override public function activateSpecialPower(param1:§`!m§, param2:Number, param3:Number) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §§push(this.§]!@§(param1));
            if(_loc7_ || param3)
            {
               if(!§§pop())
               {
                  if(!_loc6_)
                  {
                     §§goto(addr33);
                  }
               }
               var _loc4_:Number = §!!I§().GetPosition().x;
               var _loc5_:Number = §!!I§().GetPosition().y;
               if(_loc7_ || this)
               {
                  param1.§9!@§(§`""§.§6"6§,§"w§.§6$§,§`""§.§ -§,_loc4_,_loc5_,-1,"",§`""§.§4F§);
                  do
                  {
                     this.§0!P§(param1,0);
                  }
                  while(!_loc7_);
                  
               }
               return true;
            }
            §§goto(addr33);
         }
         addr33:
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         if(!(_loc6_ && this))
         {
            §§push(!specialPowerUsed);
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
                           §§push(this.§]8§);
                           while(true)
                           {
                              §§push(§§pop() == this.§5F§);
                              addr206:
                              while(_loc7_)
                              {
                              }
                              continue loop2;
                              loop20:
                              while(!(_loc6_ && this))
                              {
                                 _loc5_ = §§pop();
                                 loop21:
                                 while(true)
                                 {
                                    addr36:
                                    loop18:
                                    while(true)
                                    {
                                       this.§-!>§ = true;
                                       if(!(_loc6_ && param2))
                                       {
                                          if(!_loc7_)
                                          {
                                             continue loop21;
                                          }
                                          if(!(_loc6_ && this))
                                          {
                                             addr56:
                                             §§push(_loc5_);
                                             if(_loc7_)
                                             {
                                                addr31:
                                                if(_loc6_)
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(12);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop());
                                                            loop10:
                                                            while(!(_loc6_ && param1))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1);
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(5);
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           §§push(§§pop() > §§pop());
                                                                           if(_loc7_)
                                                                           {
                                                                              addr167:
                                                                              if(_loc7_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_ && param2)
                                                                                          {
                                                                                             continue loop24;
                                                                                          }
                                                                                          §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§-!>§);
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             if(_loc6_ && param2)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr151:
                                                                                             while(!(_loc6_ && param1))
                                                                                             {
                                                                                                §§push(Number(health));
                                                                                                continue loop20;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr206);
                                                                                       }
                                                                                       continue loop9;
                                                                                       addr174:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                §8!U§(§89§.§&7§);
                                                                                                §§goto(addr151);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_ && param1)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                addr230:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop8;
                                                                                                   §§goto(addr230);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop23;
                                                                                          addr138:
                                                                                       }
                                                                                       §§push(super.applyDamage(param1,param2,param3,param4));
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc7_ || this)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                break loop18;
                                                                                             }
                                                                                             continue loop20;
                                                                                             §§goto(addr56);
                                                                                          }
                                                                                          §§goto(addr31);
                                                                                          addr76:
                                                                                       }
                                                                                       §§goto(addr76);
                                                                                    }
                                                                                    §§goto(addr167);
                                                                                 }
                                                                                 addr169:
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr174);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr198:
                                                               }
                                                               §§goto(addr169);
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr198);
                                                      }
                                                   }
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr76);
                                          }
                                          §§goto(addr138);
                                       }
                                       break;
                                    }
                                    loop17:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc7_ || param3)
                                          {
                                             continue;
                                          }
                                          addr210:
                                          addr210:
                                          while(true)
                                          {
                                             this.§0!P§(param2);
                                             break loop17;
                                          }
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr213);
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§goto(addr210);
                     }
                     §§goto(addr183);
                  }
               }
            }
         }
         §§goto(addr210);
      }
      
      protected function §8P§(param1:§`!m§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(specialPowerUsed)
            {
               §§push(false);
               if(!_loc3_)
               {
                  return §§pop();
               }
               addr38:
               return true;
            }
            loop0:
            while(true)
            {
               this.§]!@§(null);
               addr72:
               while(true)
               {
                  this.§0!P§(param1,0);
                  if(_loc2_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr38);
            }
         }
         §§goto(addr72);
      }
      
      private function §0!P§(param1:§`!m§, param2:Number = -1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§1P§ = true;
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  §§push(0);
                  while(§§pop() != §§pop())
                  {
                     §§push(param2);
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           if(§§pop() > §§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 this.§]8§ = param2;
                                 break loop0;
                              }
                              break loop0;
                           }
                           this.§]8§ = this.§-!?§;
                           if(_loc4_ && this)
                           {
                              break loop0;
                           }
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue;
                     }
                     continue loop1;
                  }
               }
            }
            if(_loc4_)
            {
               addr102:
            }
            §§goto(addr19);
         }
         this.§]8§ = 0;
         §§goto(addr102);
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param2)
            {
               loop0:
               while(true)
               {
                  super.update(param1,param2);
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§#!@§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§#!@§ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§1P§);
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(this.§<"'§);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() == this.§5F§)
                                 {
                                    §§push(this.§]h§);
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   this.§"!1§(param1,param2);
                                                   addr52:
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc4_ || this)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr200);
                                                                  }
                                                                  §8!U§(§89§.§6K§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  addr20:
                                                                  return;
                                                                  addr24:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§<"'§);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        §§push(§§pop() - param1);
                                                                     }
                                                                     §§pop().§<"'§ = §§pop();
                                                                  }
                                                                  addr147:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§]h§ = true;
                                                                  addr119:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr142:
                                                                        addr142:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§-!>§);
                                                                           addr144:
                                                                           while(_loc4_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr147);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr24);
                                                                              }
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr133:
                                                                  this.§<"'§ = this.§5F§;
                                                                  while(_loc4_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        this.§&!c§ = this.§!"+§;
                                                                        continue loop10;
                                                                     }
                                                                     continue loop2;
                                                                     §§goto(addr133);
                                                                  }
                                                                  §§goto(addr20);
                                                               }
                                                               addr116:
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               continue loop0;
                                                               §§goto(addr119);
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr119);
                                                      }
                                                   }
                                                   §§goto(addr67);
                                                }
                                                else
                                                {
                                                   addr167:
                                                   this.§ D§(param1,param2);
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr52);
                                       }
                                       §§goto(addr20);
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr20);
                           }
                           §§goto(addr167);
                        }
                     }
                  }
               }
            }
            addr200:
            return;
         }
         §§goto(addr142);
      }
      
      protected function § D§(param1:Number, param2:§`!m§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this);
            §§push(this.§]8§);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§]8§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§]8§);
               loop1:
               while(true)
               {
                  §§push(0);
                  loop2:
                  while(§§pop() <= §§pop())
                  {
                     loop3:
                     while(true)
                     {
                        if(this.§'@§)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§%r§);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(1);
                              if(_loc4_)
                              {
                                 continue loop2;
                              }
                              if(§§pop() < §§pop())
                              {
                                 §§push(this);
                                 §§push(this.§%r§);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + 0.2);
                                 }
                                 §§pop().§%r§ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc3_)
                                                {
                                                   this.§+D§(this.§3Q§);
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            this.§<"'§ = this.§9"%§;
                                                            while(true)
                                                            {
                                                               if(_loc4_ && param2)
                                                               {
                                                                  addr201:
                                                                  param2.§<!Q§(§=q§.§2Y§,§!!I§().GetPosition().x,§!!I§().GetPosition().y,id);
                                                                  addr210:
                                                                  addr40:
                                                               }
                                                               else
                                                               {
                                                                  addr224:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§3Q§);
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     §§push(§§pop() * this.§%r§);
                                                                  }
                                                                  §§pop().§+D§(§§pop(),§93§.getItemDensity(),§93§.getItemFriction(),§93§.getItemRestitution());
                                                                  continue loop5;
                                                                  §§goto(addr106);
                                                               }
                                                               addr106:
                                                               sprite.scaleX = this.§%r§;
                                                               if(_loc3_)
                                                               {
                                                                  sprite.scaleY = this.§%r§;
                                                                  break loop8;
                                                               }
                                                               continue loop3;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§]!@§(null);
                                                            }
                                                            continue loop3;
                                                            addr237:
                                                            addr99:
                                                         }
                                                         §!+§(param2.§+"%§("BIRD_ORANGE_BIG"));
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   addr112:
                                                }
                                                break;
                                             }
                                             addr179:
                                             while(true)
                                             {
                                                this.§%r§ = 1;
                                                continue loop8;
                                             }
                                          }
                                          this.§'@§ = true;
                                       }
                                       else
                                       {
                                          addr187:
                                       }
                                       continue loop0;
                                       if(_loc4_)
                                       {
                                          §§goto(addr237);
                                       }
                                       return;
                                    }
                                    §§goto(addr99);
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(!(_loc4_ && param2))
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          this.§1P§ = false;
                                          §§goto(addr179);
                                       }
                                       §§goto(addr201);
                                    }
                                    break;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr187);
                           }
                           continue loop1;
                        }
                        §§goto(addr224);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      protected function §"!1§(param1:Number, param2:§`!m§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(!_loc9_)
         {
            §§push(this.§&!c§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     this.§-!I§ = true;
                     if(_loc8_ || _loc3_)
                     {
                        §§goto(addr394);
                     }
                     break;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§&!c§);
                     if(!_loc9_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§&!c§ = §§pop();
                     if(_loc8_ || this)
                     {
                        §§push(this);
                        §§push(this.§3!j§);
                        if(!_loc9_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§3!j§ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§3!j§);
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              addr204:
                              while(true)
                              {
                                 if(_loc9_)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       this.§3!j§ = this.§!"+§ / 5;
                                       if(_loc8_ || this)
                                       {
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          §§push(this);
                                          §§push(Math.random() * 100);
                                          if(_loc8_)
                                          {
                                             §§push(50);
                                             if(_loc8_ || param2)
                                             {
                                                addr179:
                                                §§push(§§pop() - §§pop());
                                                if(_loc8_ || _loc3_)
                                                {
                                                   §§push(10);
                                                }
                                                §§pop().§#t§ = §§pop();
                                                if(!(_loc9_ && param1))
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(this);
                                                   §§push(Math.random() * 100);
                                                   if(_loc8_)
                                                   {
                                                      §§push(50);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc9_)
                                                         {
                                                            addr143:
                                                            §§push(§§pop() * 10);
                                                         }
                                                         §§pop().§#l§ = §§pop();
                                                         if(!(_loc9_ && param2))
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(this.§&!c§);
                                                               if(_loc8_ || param2)
                                                               {
                                                                  §§push(this.§!"+§);
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(_loc9_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc3_);
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           addr77:
                                                                           if(_loc9_ && param2)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           _loc3_ = §§pop();
                                                                           if(!(_loc8_ || _loc3_))
                                                                           {
                                                                              addr394:
                                                                              param2.removeObject(this);
                                                                              break loop1;
                                                                           }
                                                                           if(false)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           addr255:
                                                                           addr297:
                                                                           var _loc6_:*;
                                                                           §§push((_loc6_ = this).§ use§);
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                           }
                                                                           var _loc7_:* = §§pop();
                                                                           if(_loc8_)
                                                                           {
                                                                              _loc6_.§ use§ = _loc7_;
                                                                           }
                                                                           addr297:
                                                                           if(_loc8_ || this)
                                                                           {
                                                                              addr282:
                                                                              §§push(this.§ use§ % 3);
                                                                              break loop6;
                                                                           }
                                                                           §§push(this);
                                                                           §§push(this.§3Q§);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr306:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 §§push(0.00001);
                                                                              }
                                                                              §§pop().§+D§(§§pop(),§§pop(),0,0);
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              break loop1;
                                                                           }
                                                                           §§goto(addr306);
                                                                        }
                                                                        addr317:
                                                                        _loc5_ = (_loc4_ = §!!I§()).GetLinearVelocity();
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           _loc4_.ApplyImpulse(new b2Vec2(this.§#t§,this.§#l§),§!!I§().GetPosition());
                                                                           addr343:
                                                                           _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                                                                           if(!_loc9_)
                                                                           {
                                                                              this.§<!b§(param2,0.02,true);
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr343);
                                                                                 }
                                                                                 addr373:
                                                                                 break loop1;
                                                                              }
                                                                              §§goto(addr343);
                                                                              addr360:
                                                                           }
                                                                           addr372:
                                                                           §§goto(addr372);
                                                                        }
                                                                        §§goto(addr360);
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr287:
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr290:
                                                                        §=K§.setScale(_loc3_ * _loc3_);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§goto(addr297);
                                                                        }
                                                                        §§goto(addr317);
                                                                     }
                                                                     §§goto(addr297);
                                                                  }
                                                                  §§goto(addr373);
                                                               }
                                                               break;
                                                            }
                                                            addr286:
                                                            §§goto(addr287);
                                                            §§push(0);
                                                            addr96:
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                   }
                                                   §§goto(addr143);
                                                }
                                                §§goto(addr282);
                                             }
                                             §§push(§§pop() * §§pop());
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr297);
                                    }
                                    break loop1;
                                 }
                                 §§goto(addr96);
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  §§goto(addr394);
               }
               return;
            }
         }
         §§goto(addr239);
      }
      
      private function §+D§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §!!I§()).GetFixtureList()).GetShape() as b2CircleShape;
         if(!_loc9_)
         {
            _loc5_.SetAwake(true);
         }
         loop0:
         while(true)
         {
            _loc7_.§0!J§(param1);
            loop1:
            while(true)
            {
               §§push(param2);
               loop2:
               while(true)
               {
                  §§push(0);
                  addr144:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        while(true)
                        {
                           _loc6_.§ !u§(param2);
                           addr158:
                           while(true)
                           {
                              _loc5_.§&!g§();
                              loop6:
                              while(!(_loc9_ && param2))
                              {
                                 while(true)
                                 {
                                    if(!(_loc9_ && this))
                                    {
                                       continue loop0;
                                    }
                                    continue loop6;
                                    addr64:
                                    if(!(_loc9_ && param1))
                                    {
                                       if(_loc8_)
                                       {
                                          _loc6_.§,!C§(param4);
                                          addr33:
                                          return;
                                          addr86:
                                       }
                                       continue loop1;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        addr145:
                     }
                     addr87:
                     while(true)
                     {
                        §§push(param3);
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§`!m§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(!specialPowerUsed)
            {
               if(!_loc3_)
               {
                  addr47:
                  §§push(super.addTrail(param1));
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr47);
      }
      
      private function §<!b§(param1:§`!m§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:Number = NaN;
         var _loc11_:* = NaN;
         §§push((§!!I§().GetFixtureList().GetShape() as b2CircleShape).§%<§());
         if(_loc13_ || param3)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(§!!I§().GetLinearVelocity().Length() / 40);
         if(!_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(1);
         if(!(_loc12_ && param2))
         {
            §§push(_loc5_);
            if(!(_loc12_ && param3))
            {
               addr78:
               §§push(§§pop() * §&!a§(true));
               if(!(_loc12_ && param1))
               {
                  addr74:
                  §§push(§§pop() * 0.9);
               }
               var _loc6_:* = int(§§pop() + §§pop());
               §§push(Math.PI / 2);
               if(_loc13_ || param2)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(_loc4_);
               if(_loc13_ || this)
               {
                  §§push(§§pop() / this.§3Q§);
                  if(_loc13_ || param3)
                  {
                     addr110:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  if(_loc13_)
                  {
                     §§push(_loc6_);
                     if(!_loc12_)
                     {
                        §§push(_loc8_);
                        if(_loc13_ || this)
                        {
                           §§push(§§pop() * 3);
                           if(_loc13_)
                           {
                              §§push(§§pop() * param2);
                           }
                        }
                        §§push(§§pop() * §§pop());
                        loop0:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc13_)
                              {
                                 _loc6_ = §§pop();
                                 addr201:
                                 if(_loc13_)
                                 {
                                    §§push(30);
                                 }
                                 var _loc10_:* = §§pop();
                                 if(!(_loc12_ && this))
                                 {
                                    _loc10_ = 0;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    §§push(_loc10_);
                                    if(!(_loc12_ && this))
                                    {
                                       §§push(_loc6_);
                                       while(true)
                                       {
                                          if(§§pop() < §§pop() / 3)
                                          {
                                             §§push(_loc7_);
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(0);
                                          }
                                       }
                                       addr628:
                                       _loc7_ = Number(§§pop() + Math.random() * (Math.PI * 4 / _loc6_));
                                       addr601:
                                       addr591:
                                       addr592:
                                       addr593:
                                       addr589:
                                       addr600:
                                       §§push(Math.random() * this.§3Q§ - this.§3Q§ / 2);
                                       if(!_loc12_)
                                       {
                                          addr599:
                                          §§push(§§pop() * 2 * _loc8_);
                                       }
                                       _loc9_ = §§pop();
                                       param1.§9!@§(§`""§.§-!0§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§!!I§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
                                       _loc10_++;
                                       continue;
                                       addr582:
                                       addr629:
                                       addr607:
                                       addr627:
                                       addr626:
                                       addr522:
                                       addr602:
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       loop11:
                                       while(_loc13_ || param2)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§push(_loc10_);
                                             if(!(_loc13_ || param2))
                                             {
                                                continue loop10;
                                             }
                                             §§push(_loc6_);
                                             if(!_loc12_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc13_)
                                                   {
                                                      if(!(_loc13_ || this))
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  _loc10_++;
                                                                  while(!(_loc13_ || param2))
                                                                  {
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        §§push(0.5);
                                                                        if(!(_loc12_ && this))
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr340:
                                                                           if(!(_loc12_ && param1))
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(!(_loc12_ && param3))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc13_ || param1)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(_loc13_ || this)
                                                                                             {
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   if(!(_loc12_ && this))
                                                                                                   {
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         addr393:
                                                                                                         §§push(§§pop() * (Math.random() * 0.5));
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc13_ || param2)
                                                                                                            {
                                                                                                               addr403:
                                                                                                               if(_loc13_ || param3)
                                                                                                               {
                                                                                                                  addr411:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc13_ || param1)
                                                                                                                  {
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        _loc11_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc13_ || param1))
                                                                                                                           {
                                                                                                                              break loop13;
                                                                                                                           }
                                                                                                                           if(_loc13_ || param1)
                                                                                                                           {
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                           §§goto(addr629);
                                                                                                                        }
                                                                                                                        addr421:
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  loop19:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc12_)
                                                                                                                     {
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           if(!(_loc12_ && param2))
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              while(!_loc12_)
                                                                                                                              {
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    while(_loc13_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       continue loop24;
                                                                                                                                       §§goto(addr340);
                                                                                                                                    }
                                                                                                                                    §§goto(addr601);
                                                                                                                                    addr486:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr591);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr599);
                                                                                                                              addr481:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr628);
                                                                                                                           }
                                                                                                                           §§goto(addr628);
                                                                                                                        }
                                                                                                                        §§goto(addr599);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Math.random() * (Math.PI * 4 / _loc6_));
                                                                                                                           break loop19;
                                                                                                                        }
                                                                                                                        addr495:
                                                                                                                     }
                                                                                                                     §§goto(addr411);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        addr508:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc12_)
                                                                                                                           {
                                                                                                                              addr510:
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Math.random() * this.§3Q§);
                                                                                                                                 addr442:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§3Q§);
                                                                                                                                    addr444:
                                                                                                                                    while(!_loc12_)
                                                                                                                                    {
                                                                                                                                       §§push(2);
                                                                                                                                       if(!(_loc12_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                          while(_loc13_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc12_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(2);
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr469);
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr599);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr607);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr627);
                                                                                                                                          }
                                                                                                                                          §§goto(addr626);
                                                                                                                                          addr455:
                                                                                                                                       }
                                                                                                                                       §§goto(addr592);
                                                                                                                                    }
                                                                                                                                    §§goto(addr593);
                                                                                                                                 }
                                                                                                                                 §§goto(addr510);
                                                                                                                              }
                                                                                                                              addr511:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr508:
                                                                                                                     }
                                                                                                                     §§goto(addr508);
                                                                                                                  }
                                                                                                                  addr469:
                                                                                                                  addr504:
                                                                                                                  §§goto(addr589);
                                                                                                               }
                                                                                                               §§goto(addr458);
                                                                                                            }
                                                                                                            §§goto(addr411);
                                                                                                         }
                                                                                                         §§goto(addr455);
                                                                                                      }
                                                                                                      §§goto(addr504);
                                                                                                   }
                                                                                                   §§goto(addr444);
                                                                                                }
                                                                                                §§goto(addr481);
                                                                                             }
                                                                                             §§goto(addr393);
                                                                                          }
                                                                                          §§goto(addr411);
                                                                                       }
                                                                                       §§goto(addr393);
                                                                                    }
                                                                                    §§goto(addr628);
                                                                                 }
                                                                                 §§goto(addr508);
                                                                              }
                                                                              §§goto(addr442);
                                                                           }
                                                                           §§goto(addr486);
                                                                        }
                                                                        §§goto(addr403);
                                                                     }
                                                                     §§goto(addr600);
                                                                  }
                                                                  if(_loc13_ || param2)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  continue loop11;
                                                                  addr246:
                                                               }
                                                               §§goto(addr511);
                                                            }
                                                            §§goto(addr421);
                                                         }
                                                         continue loop7;
                                                      }
                                                      if(_loc12_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc13_ || this)
                                                      {
                                                         return;
                                                      }
                                                      §§goto(addr582);
                                                   }
                                                   §§goto(addr246);
                                                }
                                                else
                                                {
                                                   §§push(_loc7_);
                                                }
                                                §§goto(addr495);
                                             }
                                             else
                                             {
                                                §§goto(addr522);
                                             }
                                          }
                                          §§goto(addr525);
                                       }
                                       §§goto(addr602);
                                    }
                                 }
                              }
                              if(§§pop() > §§pop())
                              {
                                 while(true)
                                 {
                                    §§push(30);
                                    addr198:
                                    while(true)
                                    {
                                       _loc6_ = §§pop();
                                       addr199:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr139:
                                    if(_loc12_ && param1)
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       while(param3)
                                       {
                                          if(_loc13_)
                                          {
                                             while(true)
                                             {
                                                §§push(8);
                                                if(_loc13_ || param2)
                                                {
                                                   if(!(_loc12_ && this))
                                                   {
                                                      _loc6_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(8);
                                                         if(_loc13_)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr129:
                                                         _loc5_ = §§pop();
                                                         if(_loc12_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc12_)
                                                         {
                                                            §§goto(addr139);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr199);
                                                         }
                                                      }
                                                      continue loop1;
                                                      addr169:
                                                   }
                                                   §§goto(addr198);
                                                }
                                                §§goto(addr201);
                                             }
                                             addr153:
                                          }
                                          §§goto(addr169);
                                       }
                                       addr148:
                                    }
                                    §§goto(addr201);
                                    §§push(0);
                                 }
                              }
                              §§goto(addr148);
                           }
                        }
                     }
                     §§goto(addr201);
                  }
                  §§goto(addr153);
               }
               §§goto(addr110);
            }
            §§goto(addr74);
         }
         §§goto(addr78);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(specialPowerUsed)
            {
               if(!(_loc2_ && this))
               {
                  addr42:
                  §§push(1);
                  if(_loc1_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr61:
                  return -1;
               }
               return §§pop();
            }
            §§goto(addr61);
         }
         §§goto(addr42);
      }
      
      private function §]!@§(param1:§`!m§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§>!6§)
            {
               if(!_loc3_)
               {
                  §§goto(addr85);
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     addr55:
                     while(true)
                     {
                        §>D§.§4W§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
                        do
                        {
                           §>!6§ = true;
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§push(true);
                     if(_loc2_ || _loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr85);
                  }
               }
            }
            §§goto(addr55);
         }
         addr85:
         return false;
      }
   }
}
