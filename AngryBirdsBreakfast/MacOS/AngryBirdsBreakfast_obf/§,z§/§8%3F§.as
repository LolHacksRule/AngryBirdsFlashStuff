package §,z§
{
   import § ! §.§5!v§;
   import §"y§.b2CircleShape;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §1T§.§'!c§;
   import §3!`§.b2Body;
   import §3!`§.b2Fixture;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§8K§;
   import §@L§.§?!'§;
   
   public class §8?§ extends §?!z§
   {
      
      public static const §+P§:int = 6;
      
      private static const §&!!§:int = 200;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§§findproperty(§+P§));
            §§push(241 * §?!'§.§'!i§);
            if(!_loc2_)
            {
               §§push(§§pop() / 2);
            }
            §§pop().§+P§ = §§pop();
            do
            {
               §&!!§ = 200;
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      private const §4!y§:Number = -5;
      
      private const §"K§:int = 1500;
      
      private const §]O§:int = 3500;
      
      private const §3!Z§:int = 1500;
      
      private var §@!5§:Boolean = false;
      
      private var §'!`§:Boolean = false;
      
      private var §,!]§:Boolean = false;
      
      private var §#3§:Boolean = false;
      
      private var §0<§:Number = -5;
      
      private var §&!8§:Number = -5;
      
      private var §<!h§:Number = -5;
      
      private var §"!p§:Number = 0;
      
      private var §'!m§:int = 0;
      
      private var §;j§:Number = 0;
      
      private var §@!T§:Number = 0;
      
      private var §^! §:Number = 0;
      
      private var §=!y§:Number = 1000;
      
      private var §6!k§:Boolean = false;
      
      public function §8?§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
         do
         {
            this.§^! § = 0;
         }
         while(_loc9_);
         
      }
      
      private function get §!%§() : Number
      {
         return §+P§ * scale;
      }
      
      override public function addDamageParticles(param1:§3!#§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(2);
               addr136:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr137:
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
                                 §§push(this.§=!y§);
                                 while(true)
                                 {
                                    §§push(§§pop() < §&!!§);
                                    addr116:
                                    while(_loc3_)
                                    {
                                    }
                                    addr78:
                                    continue loop2;
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§&!8§);
                                       if(_loc4_ && param2)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() == this.§4!y§);
                                       if(_loc3_)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop());
                                             if(_loc4_)
                                             {
                                                continue loop3;
                                             }
                                             if(§§pop())
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr77:
                                                      if(_loc3_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         this.§`!z§(param1,1,param2 > 20);
                                                      }
                                                      while(true)
                                                      {
                                                         break loop11;
                                                      }
                                                      addr77:
                                                   }
                                                   §§push(§§pop() > §§pop());
                                                   addr44:
                                                   break;
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            addr109:
                                                            §§pop();
                                                            continue loop0;
                                                         }
                                                         continue loop4;
                                                      }
                                                      §§goto(addr116);
                                                   }
                                                   addr100:
                                                }
                                                while(true)
                                                {
                                                   this.§=!y§ = 0;
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                   §§goto(addr77);
                                                }
                                                return;
                                             }
                                          }
                                       }
                                       §§goto(addr100);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr78);
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      override public function activateSpecialPower(param1:§3!#§, param2:Number, param3:Number) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §§push(this.§2!v§(param1));
            if(!(_loc6_ && param3))
            {
               if(!§§pop())
               {
                  if(!(_loc6_ && param2))
                  {
                     §§goto(addr38);
                  }
               }
               var _loc4_:Number = §^`§().GetPosition().x;
               var _loc5_:Number = §^`§().GetPosition().y;
               if(!(_loc6_ && param2))
               {
                  param1.§-!,§(§2_§.§'l§,§!u§.§%c§,§2_§.§,!R§,_loc4_,_loc5_,-1,"",§2_§.§7!=§);
                  do
                  {
                     this.§-!E§(param1,0);
                  }
                  while(!_loc7_);
                  
               }
               return true;
            }
            §§goto(addr38);
         }
         addr38:
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         if(_loc7_)
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
                           §§push(this.§0<§);
                           while(true)
                           {
                              §§push(§§pop() == this.§4!y§);
                              loop16:
                              while(!(_loc6_ && param1))
                              {
                                 §§push(5);
                                 if(!(_loc6_ && param3))
                                 {
                                    §§push(§§pop() > §§pop());
                                    loop17:
                                    for(; !_loc6_; if(!(_loc7_ || param3))
                                    {
                                       continue;
                                    },if(_loc7_ || param1)
                                    {
                                       if(!(_loc6_ && param3))
                                       {
                                          §§goto(addr138);
                                       }
                                       §§goto(addr197);
                                    },§§goto(addr208))
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          if(_loc6_ && this)
                                          {
                                             continue loop1;
                                          }
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(super.applyDamage(param1,param2,param3,param4));
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(_loc7_ || param3)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop23:
                                                         for(; _loc7_; §§push(_loc5_),if(!_loc6_)
                                                         {
                                                            continue loop22;
                                                         })
                                                         {
                                                            _loc5_ = §§pop();
                                                            loop24:
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§@!5§ = true;
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                        continue loop24;
                                                                     }
                                                                     addr35:
                                                                     return §§pop();
                                                                     addr38:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr209:
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_ || param3)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(param1);
                                                                           continue loop16;
                                                                        }
                                                                     }
                                                                     continue loop3;
                                                                     addr209:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr227:
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ && param3))
                                                                     {
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr38);
                                                                           }
                                                                           addr88:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_ && param1)
                                                                              {
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§@!5§);
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    addr191:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop20;
                                                                                    }
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              §]Y§(§,4§.§-!A§);
                                                                           }
                                                                           addr140:
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc7_ || param1))
                                                                        {
                                                                           break loop25;
                                                                        }
                                                                        §§push(Number(health));
                                                                        while(true)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           continue loop25;
                                                                        }
                                                                     }
                                                                     addr238:
                                                                     §§pop().§-!E§(param2);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr238);
                                                                  }
                                                                  addr227:
                                                               }
                                                               while(true)
                                                               {
                                                                  addr193:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     break loop23;
                                                                  }
                                                                  §§goto(addr209);
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(12);
                                                            addr196:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() < §§pop());
                                                               addr197:
                                                               addr226:
                                                               while(_loc7_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr227);
                                                                  }
                                                                  §§goto(addr193);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr73);
                                                      if(!(_loc7_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      §§goto(addr35);
                                                   }
                                                }
                                                §§goto(addr140);
                                             }
                                             addr138:
                                          }
                                          §§goto(addr191);
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr209);
                                             }
                                             addr208:
                                          }
                                          else
                                          {
                                             §§goto(addr179);
                                          }
                                          §§goto(addr227);
                                       }
                                       addr179:
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr196);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr226);
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      protected function §21§(param1:§3!#§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!specialPowerUsed)
            {
               if(!_loc2_)
               {
                  this.§2!v§(null);
               }
               this.§-!E§(param1,0);
               §§push(true);
               addr75:
            }
            else
            {
               §§push(false);
               if(_loc3_ || _loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr75);
      }
      
      private function §-!E§(param1:§3!#§, param2:Number = -1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§'!`§ = true;
            do
            {
               §§push(param2);
               while(true)
               {
                  §§push(0);
                  addr106:
                  addr107:
                  addr110:
                  §§goto(addr19);
               }
            }
            while(_loc4_ && _loc3_);
            
         }
         addr19:
         while(§§pop() != §§pop())
         {
            continue loop1;
         }
         this.§0<§ = 0;
         this.update(0,param1);
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2)
            {
               loop0:
               while(true)
               {
                  super.update(param1,param2);
                  loop1:
                  while(!(_loc3_ && param1))
                  {
                     §§push(this);
                     §§push(this.§=!y§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§=!y§ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§'!`§);
                        loop3:
                        for(; !§§pop(); if(!(_loc4_ || param1))
                        {
                           continue;
                        },if(§§pop())
                        {
                           if(_loc4_)
                           {
                              continue loop2;
                           }
                           §§goto(addr178);
                        },§§goto(addr24))
                        {
                           §§push(this.§&!8§);
                           loop4:
                           while(true)
                           {
                              if(§§pop() != this.§4!y§)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(this.§@!5§);
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                              §§push(this.§,!]§);
                              if(_loc3_ && this)
                              {
                                 continue loop3;
                              }
                              if(§§pop())
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          if(_loc3_)
                                          {
                                             break loop3;
                                          }
                                          this.§8!8§(param1,param2);
                                          addr59:
                                          if(!_loc3_)
                                          {
                                             §§goto(addr20);
                                          }
                                          continue;
                                       }
                                       addr187:
                                       if(!_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr20);
                                    }
                                    else
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc4_ || param2)
                                          {
                                             break loop4;
                                          }
                                          loop8:
                                          while(_loc4_)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr89:
                                                if(!(_loc3_ && param2))
                                                {
                                                   §]Y§(§,4§.§ !x§);
                                                   continue loop9;
                                                }
                                                addr127:
                                                while(true)
                                                {
                                                   this.§,!]§ = true;
                                                   §§goto(addr89);
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§&!8§ = this.§4!y§;
                                                break loop8;
                                             }
                                          }
                                          while(!_loc3_)
                                          {
                                             this.§<!h§ = this.§3!Z§;
                                             §§goto(addr80);
                                          }
                                          addr80:
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr59);
                              }
                              §§goto(addr20);
                           }
                           addr20:
                           return;
                        }
                        this.§#>§(param1,param2);
                        §§goto(addr187);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr189);
      }
      
      protected function §#>§(param1:Number, param2:§3!#§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(this.§0<§);
            if(_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§0<§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§0<§);
               loop1:
               while(true)
               {
                  §§push(0);
                  addr226:
                  while(§§pop() <= §§pop())
                  {
                     if(_loc3_)
                     {
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        if(this.§#3§)
                        {
                           continue loop1;
                        }
                        addr234:
                        param2.§ !%§(§@q§.§2!q§,§^`§().GetPosition().x,§^`§().GetPosition().y,id);
                     }
                     this.§2!v§(null);
                     §?",§(param2.§9?§("BIRD_ORANGE_BIG"));
                     sprite.scaleX = this.§^! §;
                     sprite.scaleY = this.§^! §;
                     this.§#3§ = true;
                     if(_loc4_ && this)
                     {
                        §§goto(addr234);
                     }
                     return;
                  }
                  addr24:
                  return;
               }
            }
         }
         §§goto(addr48);
      }
      
      protected function §8!8§(param1:Number, param2:§3!#§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(!_loc8_)
         {
            §§push(this.§<!h§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§<!h§);
                        if(_loc9_ || _loc3_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§<!h§ = §§pop();
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§"!p§);
                           if(!_loc8_)
                           {
                              §§push(§§pop() - param1);
                           }
                           §§pop().§"!p§ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§"!p§);
                              loop5:
                              while(true)
                              {
                                 §§push(0);
                                 loop6:
                                 while(_loc9_)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             this.§"!p§ = this.§3!Z§ / 5;
                                             loop11:
                                             while(true)
                                             {
                                                if(!_loc9_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(this);
                                                §§push(Math.random() * 100);
                                                if(!_loc8_)
                                                {
                                                   §§push(50);
                                                   if(_loc9_)
                                                   {
                                                      addr171:
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc8_ && this))
                                                      {
                                                         §§push(10);
                                                      }
                                                      §§pop().§;j§ = §§pop();
                                                      if(_loc9_)
                                                      {
                                                         §§push(this);
                                                         §§push(Math.random() * 100);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(50);
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               addr141:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc9_)
                                                               {
                                                                  §§push(10);
                                                               }
                                                               §§pop().§@!T§ = §§pop();
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§<!h§);
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(this.§3!Z§);
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    if(_loc8_ && param2)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(!(_loc8_ && this))
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr68:
                                                                                          if(!(_loc8_ && _loc3_))
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   addr236:
                                                                                                   var _loc6_:*;
                                                                                                   §§push((_loc6_ = this).§'!m§);
                                                                                                   if(!(_loc8_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                   }
                                                                                                   var _loc7_:* = §§pop();
                                                                                                   if(!(_loc8_ && this))
                                                                                                   {
                                                                                                      _loc6_.§'!m§ = _loc7_;
                                                                                                   }
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      addr268:
                                                                                                      if(this.§'!m§ % 3 == 0)
                                                                                                      {
                                                                                                         if(_loc9_ || param2)
                                                                                                         {
                                                                                                            addr276:
                                                                                                            §`!f§.setScale(_loc3_ * _loc3_);
                                                                                                            if(_loc9_ || param2)
                                                                                                            {
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         addr288:
                                                                                                         §§push(this);
                                                                                                         §§push(this.§!%§);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            if(!(_loc8_ && _loc3_))
                                                                                                            {
                                                                                                               addr302:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               §§push(0.00001);
                                                                                                            }
                                                                                                            §§pop().§5w§(§§pop(),§§pop(),0,0);
                                                                                                            if(!(_loc9_ || this))
                                                                                                            {
                                                                                                               addr390:
                                                                                                               param2.removeObject(this);
                                                                                                               break;
                                                                                                            }
                                                                                                            _loc5_ = (_loc4_ = §^`§()).GetLinearVelocity();
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               _loc4_.ApplyImpulse(new b2Vec2(this.§;j§,this.§@!T§),§^`§().GetPosition());
                                                                                                            }
                                                                                                            addr341:
                                                                                                            _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                                                                                                            this.§`!z§(param2,0.02,true);
                                                                                                            addr368:
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(!(_loc8_ && param2))
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr341);
                                                                                                                  }
                                                                                                                  addr369:
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr368);
                                                                                                            }
                                                                                                            addr356:
                                                                                                            §§goto(addr356);
                                                                                                         }
                                                                                                         §§goto(addr302);
                                                                                                      }
                                                                                                      §§goto(addr369);
                                                                                                   }
                                                                                                   §§goto(addr390);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              §§goto(addr393);
                                                                           }
                                                                           addr99:
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                     §§goto(addr99);
                                                                  }
                                                                  continue loop2;
                                                                  addr82:
                                                               }
                                                               §§goto(addr276);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr141);
                                                      }
                                                      §§goto(addr268);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§goto(addr171);
                                             }
                                          }
                                          addr199:
                                       }
                                       §§goto(addr276);
                                    }
                                    §§goto(addr82);
                                 }
                                 continue loop1;
                              }
                           }
                           addr55:
                           if(_loc8_ && this)
                           {
                              continue;
                           }
                           §§push(1);
                           if(_loc9_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc8_)
                              {
                                 §§goto(addr68);
                              }
                           }
                           §§goto(addr268);
                        }
                     }
                  }
                  else
                  {
                     this.§6!k§ = true;
                     if(!(_loc8_ && this))
                     {
                        §§goto(addr390);
                     }
                  }
                  addr393:
                  return;
               }
            }
         }
         §§goto(addr199);
      }
      
      private function §5w§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §^`§()).GetFixtureList()).GetShape() as b2CircleShape;
         if(!(_loc9_ && this))
         {
            _loc5_.SetAwake(true);
            loop0:
            while(true)
            {
               _loc7_.§>!w§(param1);
               loop1:
               while(true)
               {
                  §§push(param2);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     addr117:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           addr118:
                           while(true)
                           {
                              _loc6_.§[r§(param2);
                              addr121:
                              while(true)
                              {
                                 if(_loc9_)
                                 {
                                    continue loop0;
                                 }
                                 _loc5_.§5!Z§();
                                 while(true)
                                 {
                                    if(_loc9_)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           addr118:
                        }
                        while(true)
                        {
                           §§push(param3);
                           loop5:
                           while(true)
                           {
                              §§push(0);
                              addr92:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       if(_loc8_ || param3)
                                       {
                                          if(_loc8_)
                                          {
                                             _loc6_.§^X§(param3);
                                             while(true)
                                             {
                                                addr42:
                                                addr38:
                                                while(true)
                                                {
                                                   §§push(param4);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop5;
                                                }
                                                addr38:
                                                return;
                                                if(!(_loc8_ || param1))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr38);
                                             }
                                             addr107:
                                          }
                                          else
                                          {
                                             §§goto(addr118);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr107);
                                 }
                                 §§goto(addr42);
                              }
                              §§goto(addr121);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§3!#§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!specialPowerUsed)
            {
               if(_loc2_ || param1)
               {
                  §§push(super.addTrail(param1));
                  if(!_loc3_)
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
         }
         §§goto(addr53);
      }
      
      private function §`!z§(param1:§3!#§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         §§push((§^`§().GetFixtureList().GetShape() as b2CircleShape).§5!W§());
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(§^`§().GetLinearVelocity().Length() / 40);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(1);
         if(_loc12_)
         {
            §§push(_loc5_);
            if(_loc12_)
            {
               addr57:
               §§push(§§pop() * §[z§(true));
               if(!_loc13_)
               {
                  addr53:
                  §§push(§§pop() * 0.9);
               }
               var _loc6_:* = int(§§pop() + §§pop());
               §§push(Math.PI / 2);
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(_loc4_);
               if(!_loc13_)
               {
                  §§push(§§pop() / this.§!%§);
                  if(!(_loc13_ && this))
                  {
                     addr79:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  if(_loc12_)
                  {
                     §§push(_loc6_);
                     if(!_loc13_)
                     {
                        §§push(_loc8_);
                        if(_loc12_)
                        {
                           §§push(§§pop() * 3);
                           if(!_loc13_)
                           {
                              addr135:
                              §§push(§§pop() * param2);
                           }
                           §§push(§§pop() * §§pop());
                           loop0:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              if(_loc12_)
                              {
                                 §§push(§§pop());
                                 if(!_loc13_)
                                 {
                                    _loc6_ = §§pop();
                                    addr165:
                                    if(!(_loc13_ && param3))
                                    {
                                       §§push(30);
                                    }
                                    var _loc10_:* = §§pop();
                                    if(!_loc13_)
                                    {
                                       _loc10_ = 0;
                                    }
                                    addr475:
                                    §§push(_loc10_);
                                    if(_loc12_ || param3)
                                    {
                                       addr485:
                                       if(§§pop() >= _loc6_ / 3)
                                       {
                                          addr488:
                                          if(_loc12_ || this)
                                          {
                                             addr496:
                                             _loc10_ = 0;
                                             addr169:
                                             addr497:
                                             §§push(_loc10_);
                                             if(!_loc13_)
                                             {
                                                §§push(_loc6_);
                                                if(_loc12_ || param2)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc13_ && this)
                                                      {
                                                         addr194:
                                                         if(!(_loc13_ && param1))
                                                         {
                                                            if(_loc12_ || this)
                                                            {
                                                               if(!(_loc13_ && param1))
                                                               {
                                                                  if(_loc12_ || this)
                                                                  {
                                                                     §§goto(addr169);
                                                                  }
                                                                  §§goto(addr497);
                                                               }
                                                               addr425:
                                                               §§push(0.5);
                                                               if(_loc12_ || param1)
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     if(!(_loc13_ && param1))
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc12_)
                                                                        {
                                                                           if(!(_loc13_ && param2))
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc12_ || param2)
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       if(_loc12_ || this)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(!(_loc13_ && this))
                                                                                          {
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   addr351:
                                                                                                   §§push(§§pop() + §§pop() * (Math.random() * 0.5));
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      addr354:
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            addr359:
                                                                                                            _loc11_ = §§pop();
                                                                                                            addr360:
                                                                                                            if(_loc12_ || param1)
                                                                                                            {
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  param1.§-!,§(§2_§.§0!2§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§^`§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§2_§.§%!l§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
                                                                                                                  _loc10_++;
                                                                                                                  §§goto(addr194);
                                                                                                                  addr276:
                                                                                                               }
                                                                                                               §§goto(addr488);
                                                                                                            }
                                                                                                            addr460:
                                                                                                            if(!(_loc13_ && param3))
                                                                                                            {
                                                                                                               if(!(_loc13_ && param2))
                                                                                                               {
                                                                                                                  §§push(Math.random() * this.§!%§);
                                                                                                                  if(!(_loc13_ && this))
                                                                                                                  {
                                                                                                                     §§push(this.§!%§);
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        §§push(2);
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           addr391:
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc12_)
                                                                                                                              {
                                                                                                                                 addr396:
                                                                                                                                 if(_loc12_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(2);
                                                                                                                                    if(!(_loc13_ && param1))
                                                                                                                                    {
                                                                                                                                       addr412:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          addr415:
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(_loc12_ || param2)
                                                                                                                                          {
                                                                                                                                             addr424:
                                                                                                                                             _loc9_ = §§pop() * §§pop();
                                                                                                                                             §§goto(addr425);
                                                                                                                                          }
                                                                                                                                          addr574:
                                                                                                                                          addr575:
                                                                                                                                          addr448:
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             addr452:
                                                                                                                                             addr451:
                                                                                                                                             §§push(Number(§§pop() + §§pop()));
                                                                                                                                             if(_loc12_ || param3)
                                                                                                                                             {
                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                §§goto(addr460);
                                                                                                                                             }
                                                                                                                                             addr572:
                                                                                                                                             §§push(_loc8_);
                                                                                                                                          }
                                                                                                                                          _loc9_ = §§pop() * §§pop();
                                                                                                                                          param1.§-!,§(§2_§.§5§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§^`§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
                                                                                                                                          addr545:
                                                                                                                                          if(_loc12_ || this)
                                                                                                                                          {
                                                                                                                                             _loc10_++;
                                                                                                                                             addr500:
                                                                                                                                             §§goto(addr475);
                                                                                                                                          }
                                                                                                                                          addr603:
                                                                                                                                          §§push(Math.random() * this.§!%§);
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             addr563:
                                                                                                                                             §§push(§§pop() - this.§!%§ / 2);
                                                                                                                                             if(!_loc13_)
                                                                                                                                             {
                                                                                                                                                addr601:
                                                                                                                                                if(_loc12_)
                                                                                                                                                {
                                                                                                                                                   addr571:
                                                                                                                                                   §§goto(addr572);
                                                                                                                                                   §§push(§§pop() * 2);
                                                                                                                                                }
                                                                                                                                                _loc7_ = Number(§§pop() + Math.random() * (Math.PI * 4 / _loc6_));
                                                                                                                                                §§goto(addr603);
                                                                                                                                             }
                                                                                                                                             §§goto(addr574);
                                                                                                                                          }
                                                                                                                                          §§goto(addr575);
                                                                                                                                          addr576:
                                                                                                                                       }
                                                                                                                                       §§goto(addr452);
                                                                                                                                    }
                                                                                                                                    §§goto(addr571);
                                                                                                                                 }
                                                                                                                                 §§goto(addr574);
                                                                                                                              }
                                                                                                                              §§goto(addr424);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr563);
                                                                                                                     }
                                                                                                                     §§goto(addr415);
                                                                                                                  }
                                                                                                                  §§goto(addr396);
                                                                                                               }
                                                                                                               §§goto(addr545);
                                                                                                            }
                                                                                                            §§goto(addr500);
                                                                                                         }
                                                                                                         §§goto(addr601);
                                                                                                      }
                                                                                                      §§goto(addr412);
                                                                                                   }
                                                                                                   §§goto(addr359);
                                                                                                }
                                                                                                §§goto(addr601);
                                                                                             }
                                                                                             §§goto(addr415);
                                                                                          }
                                                                                          §§goto(addr351);
                                                                                       }
                                                                                       §§goto(addr451);
                                                                                    }
                                                                                    §§goto(addr424);
                                                                                 }
                                                                                 §§goto(addr354);
                                                                              }
                                                                              §§goto(addr563);
                                                                           }
                                                                           §§goto(addr391);
                                                                        }
                                                                        §§goto(addr351);
                                                                     }
                                                                     addr430:
                                                                     if(!_loc13_)
                                                                     {
                                                                        if(!(_loc13_ && param3))
                                                                        {
                                                                           §§goto(addr448);
                                                                           §§push(Math.random() * (Math.PI * 4 / _loc6_));
                                                                        }
                                                                        §§goto(addr601);
                                                                     }
                                                                     §§goto(addr415);
                                                                  }
                                                                  §§goto(addr424);
                                                               }
                                                               §§goto(addr354);
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr430);
                                                   §§push(_loc7_);
                                                }
                                                §§goto(addr485);
                                             }
                                             §§goto(addr496);
                                          }
                                          §§goto(addr576);
                                       }
                                       §§goto(addr601);
                                       §§push(_loc7_);
                                    }
                                    §§goto(addr496);
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(30);
                                       if(_loc12_ || param3)
                                       {
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                             addr163:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr162:
                                       }
                                       §§goto(addr165);
                                    }
                                    addr154:
                                 }
                                 loop2:
                                 while(param3)
                                 {
                                    if(!(_loc13_ && param1))
                                    {
                                       while(true)
                                       {
                                          §§push(8);
                                          addr123:
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                          }
                                       }
                                       addr122:
                                    }
                                    while(true)
                                    {
                                       §§push(8);
                                       if(!_loc13_)
                                       {
                                          if(_loc12_ || param2)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc12_)
                                             {
                                                break;
                                             }
                                             _loc5_ = §§pop();
                                             if(_loc13_)
                                             {
                                                continue;
                                             }
                                             if(_loc12_ || param2)
                                             {
                                                if(_loc12_)
                                                {
                                                   if(true)
                                                   {
                                                      break loop2;
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr154);
                                             }
                                             §§goto(addr163);
                                          }
                                          else
                                          {
                                             §§goto(addr123);
                                          }
                                       }
                                       §§goto(addr165);
                                    }
                                    continue loop0;
                                 }
                                 §§push(0);
                              }
                              §§goto(addr165);
                           }
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr122);
               }
               §§goto(addr79);
            }
            §§goto(addr53);
         }
         §§goto(addr57);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(specialPowerUsed)
            {
               if(_loc2_)
               {
                  §§push(1);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr47:
                  return -1;
               }
               return §§pop();
            }
         }
         §§goto(addr47);
      }
      
      private function §2!v§(param1:§3!#§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§!"$§)
            {
               if(_loc2_)
               {
                  return false;
               }
               else
               {
                  loop2:
                  while(true)
                  {
                     addr50:
                     while(true)
                     {
                        §'!c§.§"V§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
                        do
                        {
                           §!"$§ = true;
                        }
                        while(!_loc2_);
                        
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     §§push(true);
                     if(!(_loc3_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  addr81:
               }
               return §§pop();
            }
            §§goto(addr50);
         }
         §§goto(addr81);
      }
   }
}
