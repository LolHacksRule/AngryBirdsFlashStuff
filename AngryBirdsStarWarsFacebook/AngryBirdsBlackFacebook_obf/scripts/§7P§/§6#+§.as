package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2Fixture;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§'§;
   import §4!$§.b2CircleShape;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §="2§.§?!r§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   
   public class §6#+§ extends §?"N§
   {
      
      public static const §]"a§:int;
      
      private static const §@d§:int = 200;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §6#+§))
         {
            §§push(§§findproperty(§]"a§));
            §§push(241 * §#_§.§8]§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() / 2);
            }
            §§pop().§]"a§ = §§pop();
            do
            {
               §@d§ = 200;
            }
            while(!_loc1_);
            
         }
      }
      
      private const §&#8§:Number = -5;
      
      private const §?M§:int = 1500;
      
      private const §5#X§:int = 3500;
      
      private const §^#6§:int = 1500;
      
      private var §1,§:Boolean = false;
      
      private var §>!N§:Boolean = false;
      
      private var § i§:Boolean = false;
      
      private var §4"y§:Boolean = false;
      
      private var §'#>§:Number = -5;
      
      private var §,#6§:Number = -5;
      
      private var §"#M§:Number = -5;
      
      private var §'j§:Number = 0;
      
      private var §<!?§:int = 0;
      
      private var §@m§:Number = 0;
      
      private var §>!E§:Number = 0;
      
      private var §^!@§:Number = 0;
      
      private var §4t§:Number = 1000;
      
      private var §2#,§:Boolean = false;
      
      public function §6#+§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
         do
         {
            this.§^!@§ = 0;
         }
         while(!_loc9_);
         
      }
      
      private function get §0#>§() : Number
      {
         return §]"a§ * scale;
      }
      
      override public function addDamageParticles(param1:§;$§, param2:int) : void
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
                                 §§push(this.§4t§);
                                 while(true)
                                 {
                                    §§push(§§pop() < §@d§);
                                    addr144:
                                    while(!(_loc3_ && _loc3_))
                                    {
                                    }
                                    addr89:
                                    continue loop4;
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§,#6§);
                                       if(_loc3_ && _loc3_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() == this.§&#8§);
                                       if(_loc4_ || param1)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc3_)
                                          {
                                             §§goto(addr112);
                                          }
                                          §§goto(addr128);
                                       }
                                       addr112:
                                       if(!(_loc3_ && param1))
                                       {
                                          §§push(§§pop());
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             continue loop3;
                                          }
                                          if(!§§pop())
                                          {
                                             while(!_loc3_)
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop9;
                                                }
                                                §§push(§§pop() > §§pop());
                                                if(_loc3_ && param2)
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_ || param2)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               §§goto(addr163);
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            this.§<#@§(param1,1,param2 > 20);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr131);
                                                         }
                                                         §§goto(addr29);
                                                      }
                                                      §§goto(addr88);
                                                   }
                                                   §§goto(addr29);
                                                }
                                                addr56:
                                             }
                                             §§goto(addr144);
                                             addr128:
                                          }
                                          else
                                          {
                                             §§goto(addr56);
                                          }
                                          addr29:
                                       }
                                       continue loop2;
                                       this.§4t§ = 0;
                                       if(!_loc4_)
                                       {
                                          addr88:
                                          §§goto(addr29);
                                       }
                                       return;
                                    }
                                 }
                              }
                           }
                        }
                        while(!§§pop())
                        {
                           §§goto(addr89);
                        }
                     }
                  }
               }
            }
         }
         addr163:
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §§push(this.§>!h§(param1));
            if(_loc7_ || this)
            {
               if(!§§pop())
               {
                  if(_loc7_)
                  {
                     §§goto(addr33);
                  }
               }
               var _loc4_:Number = §3!t§().GetPosition().x;
               var _loc5_:Number = §3!t§().GetPosition().y;
               if(_loc7_)
               {
                  param1.§;!0§(§ U§.§[#"§,§,!w§.§9F§,§ U§.§+!Q§,_loc4_,_loc5_,-1,"",§ U§.§9"W§);
                  do
                  {
                     this.§8"§(param1,0);
                  }
                  while(_loc6_);
                  
               }
               return true;
            }
            §§goto(addr33);
         }
         addr33:
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         if(!_loc7_)
         {
            §§push(!specialPowerUsed);
            if(_loc6_ || param2)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr224:
                     while(true)
                     {
                        §§pop();
                        addr225:
                        while(true)
                        {
                           §§push(this.§'#>§);
                           addr194:
                           while(true)
                           {
                              §§push(§§pop() == this.§&#8§);
                           }
                        }
                     }
                     addr224:
                  }
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§8"§(param2);
                              addr202:
                              while(true)
                              {
                              }
                           }
                           addr199:
                        }
                        while(true)
                        {
                           §§push(param1);
                           while(true)
                           {
                              §§push(12);
                              addr177:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 addr178:
                                 while(!_loc7_)
                                 {
                                    §§push(§§pop());
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              loop20:
                              while(!(_loc7_ && param1))
                              {
                                 §§push(5);
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(§§pop() > §§pop());
                                    if(!_loc7_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc6_ || param1))
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§pop();
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(this.§1,§);
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr178);
                                                         }
                                                      }
                                                      if(!(_loc6_ || param1))
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(super.applyDamage(param1,param2,param3,param4));
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           this.§1,§ = true;
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc7_ && this)
                                                                                       {
                                                                                          break loop13;
                                                                                       }
                                                                                       continue loop17;
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 addr132:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ || param2))
                                                                                    {
                                                                                       break loop19;
                                                                                       addr72:
                                                                                    }
                                                                                    §§push(Number(health));
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          continue loop19;
                                                                                       }
                                                                                       continue loop20;
                                                                                       §§goto(addr139);
                                                                                    }
                                                                                    addr139:
                                                                                    continue loop20;
                                                                                 }
                                                                              }
                                                                              §§goto(addr199);
                                                                           }
                                                                           §§goto(addr202);
                                                                        }
                                                                        continue;
                                                                     }
                                                                     addr121:
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_ && param3)
                                                                        {
                                                                           break loop16;
                                                                        }
                                                                        §[v§(§'#2§.§@N§);
                                                                     }
                                                                     §§goto(addr132);
                                                                  }
                                                                  addr190:
                                                                  while(true)
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr121);
                                                         }
                                                         addr119:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr224);
                                                      }
                                                   }
                                                   §§goto(addr225);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                   }
                                                   addr189:
                                                }
                                                §§goto(addr190);
                                             }
                                             addr170:
                                          }
                                          §§goto(addr119);
                                       }
                                       continue loop0;
                                       addr160:
                                    }
                                    §§goto(addr170);
                                 }
                                 else
                                 {
                                    §§goto(addr177);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr224);
         }
         §§goto(addr190);
      }
      
      protected function §0f§(param1:§;$§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(specialPowerUsed)
            {
               §§push(false);
               if(!(_loc3_ && _loc3_))
               {
                  return §§pop();
               }
               addr48:
               return true;
            }
            loop0:
            while(true)
            {
               this.§>!h§(null);
               addr77:
               while(true)
               {
                  this.§8"§(param1,0);
                  if(!_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               §§goto(addr48);
            }
         }
         §§goto(addr77);
      }
      
      private function §8"§(param1:§;$§, param2:Number = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§>!N§ = true;
            loop0:
            do
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  §§push(0);
                  while(§§pop() != §§pop())
                  {
                     §§push(param2);
                     if(_loc3_)
                     {
                        continue loop1;
                     }
                     §§push(0);
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(§§pop() <= §§pop())
                     {
                        this.§'#>§ = this.§?M§;
                        if(!(_loc3_ && param2))
                        {
                           if(!(_loc3_ && this))
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              addr73:
                              if(_loc4_)
                              {
                                 this.§'#>§ = param2;
                                 addr78:
                                 if(!(_loc4_ || param1))
                                 {
                                    break;
                                 }
                                 addr85:
                              }
                              else
                              {
                                 addr91:
                              }
                           }
                           return;
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr73);
                  }
                  this.§'#>§ = 0;
                  continue loop0;
               }
            }
            while(!(_loc4_ || param2));
            
            this.update(0,param1);
            §§goto(addr91);
         }
         §§goto(addr85);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2)
            {
               loop0:
               while(true)
               {
                  super.update(param1,param2);
                  addr226:
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§4t§);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§4t§ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§>!N§);
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              addr195:
                              §§push(this.§,#6§);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() != this.§&#8§)
                                 {
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(_loc4_ && param2)
                                    {
                                       continue loop2;
                                    }
                                    §§push(this.§1,§);
                                 }
                                 else
                                 {
                                    §§push(this.§ i§);
                                    if(_loc3_ || param2)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                addr171:
                                                §§push(this);
                                                §§push(this.§,#6§);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§,#6§ = §§pop();
                                                continue;
                                             }
                                             this.§,!f§(param1,param2);
                                          }
                                          if(!(_loc4_ && param1))
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                §§goto(addr19);
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   addr86:
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                               addr99:
                                                            }
                                                            this.§,#6§ = this.§&#8§;
                                                            while(true)
                                                            {
                                                               this.§"#M§ = this.§^#6§;
                                                               continue loop8;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop1;
                                                      addr134:
                                                   }
                                                   §[v§(§'#2§.§&x§);
                                                   addr64:
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      break loop4;
                                                   }
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr19);
                                                }
                                                §§goto(addr99);
                                             }
                                             §§goto(addr19);
                                          }
                                          §§goto(addr64);
                                       }
                                       §§goto(addr19);
                                    }
                                    else
                                    {
                                       addr168:
                                       if(!_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       if(§§pop())
                                       {
                                          §§goto(addr171);
                                       }
                                    }
                                    §§goto(addr23);
                                 }
                                 §§goto(addr168);
                              }
                           }
                           continue loop2;
                           addr19:
                           return;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr226);
      }
      
      protected function §0d§(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(this.§'#>§);
            if(_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§'#>§ = §§pop();
            while(true)
            {
               §§push(this.§'#>§);
               loop1:
               while(true)
               {
                  §§push(0);
                  addr215:
                  while(§§pop() <= §§pop())
                  {
                     while(true)
                     {
                        if(this.§4"y§)
                        {
                           continue loop1;
                        }
                        param2.§1!R§(§>"_§.§4D§,§3!t§().GetPosition().x,§3!t§().GetPosition().y,id);
                        this.§>!h§(null);
                        §?#V§(param2.§0"I§("BIRD_ORANGE_BIG"));
                        sprite.scaleX = this.§^!@§;
                        addr191:
                        if(_loc3_ || param2)
                        {
                           sprite.scaleY = this.§^!@§;
                           addr178:
                           if(!(_loc3_ || param2))
                           {
                              §§goto(addr191);
                           }
                           this.§4"y§ = true;
                           return;
                           addr172:
                        }
                        addr205:
                        §§goto(addr205);
                     }
                  }
                  addr24:
                  return;
               }
            }
         }
         §§goto(addr44);
      }
      
      protected function §,!f§(param1:Number, param2:§;$§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(!_loc8_)
         {
            §§push(this.§"#M§);
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
                        §§push(this.§"#M§);
                        if(!_loc8_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§"#M§ = §§pop();
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§'j§);
                           if(!(_loc8_ && param2))
                           {
                              §§push(§§pop() - param1);
                           }
                           §§pop().§'j§ = §§pop();
                           while(!_loc8_)
                           {
                              §§push(this.§'j§);
                              loop5:
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc9_ || param2)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       while(true)
                                       {
                                          this.§'j§ = this.§^#6§ / 5;
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          §§push(this);
                                          §§push(Math.random() * 100);
                                          if(!(_loc8_ && this))
                                          {
                                             §§push(50);
                                             if(_loc9_ || param2)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   addr215:
                                                   §§push(§§pop() * 10);
                                                }
                                                §§pop().§@m§ = §§pop();
                                                if(_loc9_)
                                                {
                                                   §§push(this);
                                                   §§push(Math.random() * 100);
                                                   if(_loc9_ || param1)
                                                   {
                                                      §§push(50);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         addr166:
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            §§push(10);
                                                         }
                                                         §§pop().§>!E§ = §§pop();
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            addr94:
                                                            while(true)
                                                            {
                                                               §§push(this.§"#M§);
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(this.§^#6§);
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        if(_loc8_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(Number(§§pop()));
                                                                        continue loop5;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               addr297:
                                                               break loop5;
                                                            }
                                                            continue loop0;
                                                            addr94:
                                                         }
                                                         §2N§.setScale(_loc3_ * _loc3_);
                                                         if(!(_loc8_ && this))
                                                         {
                                                            addr313:
                                                            §§push(this);
                                                            §§push(this.§0#>§);
                                                            if(_loc9_ || param2)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  addr332:
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(0.00001);
                                                               }
                                                               §§pop().§]!F§(§§pop(),§§pop(),0,0);
                                                               if(!_loc8_)
                                                               {
                                                                  addr338:
                                                                  _loc5_ = (_loc4_ = §3!t§()).GetLinearVelocity();
                                                                  if(_loc9_)
                                                                  {
                                                                     _loc4_.ApplyImpulse(new b2Vec2(this.§@m§,this.§>!E§),§3!t§().GetPosition());
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        addr364:
                                                                        while(true)
                                                                        {
                                                                           _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                                                                           continue loop10;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§<#@§(param2,0.02,true);
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr364);
                                                                     }
                                                                     §§goto(addr379);
                                                                  }
                                                                  addr418:
                                                                  return;
                                                                  addr399:
                                                               }
                                                               else
                                                               {
                                                                  addr415:
                                                               }
                                                               addr415:
                                                               param2.removeObject(this);
                                                               §§goto(addr418);
                                                               §§goto(addr418);
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                         §§goto(addr338);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr415);
                                             }
                                          }
                                          §§goto(addr215);
                                       }
                                       addr293:
                                       §§goto(addr297);
                                       §§push(this.§<!?§ % 3);
                                       addr232:
                                    }
                                    §§goto(addr94);
                                 }
                                 break;
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    §§goto(addr166);
                                 }
                                 §§goto(addr338);
                              }
                              §§goto(addr399);
                              if(_loc8_ && param2)
                              {
                                 continue;
                              }
                              §§push(1);
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc9_)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc9_ || _loc3_)
                                    {
                                       if(!_loc9_)
                                       {
                                          continue loop2;
                                       }
                                       if(false)
                                       {
                                          §§goto(addr94);
                                       }
                                       §§goto(addr271);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr297);
                              }
                              §§goto(addr293);
                           }
                        }
                     }
                  }
                  else
                  {
                     this.§2#,§ = true;
                     if(_loc9_)
                     {
                        §§goto(addr415);
                     }
                  }
                  §§goto(addr338);
               }
            }
         }
         §§goto(addr313);
      }
      
      private function §]!F§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §3!t§()).GetFixtureList()).GetShape() as b2CircleShape;
         if(_loc9_ || param3)
         {
            _loc5_.SetAwake(true);
            loop0:
            while(true)
            {
               _loc7_.§>#X§(param1);
               while(true)
               {
                  §§push(param2);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     addr118:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           while(true)
                           {
                              _loc6_.SetDensity(param2);
                              continue loop0;
                           }
                           addr119:
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(param3);
                              continue loop2;
                           }
                           addr85:
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr43);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§;$§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!specialPowerUsed)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§push(super.addTrail(param1));
                  if(!(_loc2_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr59:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr59);
      }
      
      private function §<#@§(param1:§;$§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         §§push((§3!t§().GetFixtureList().GetShape() as b2CircleShape).§[p§());
         if(!_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(§3!t§().GetLinearVelocity().Length() / 40);
         if(_loc13_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(1);
         if(!_loc12_)
         {
            §§push(_loc5_);
            if(!_loc12_)
            {
               addr63:
               §§push(§§pop() * §0"X§(true));
               if(_loc13_)
               {
                  addr59:
                  §§push(§§pop() * 0.9);
               }
               var _loc6_:* = int(§§pop() + §§pop());
               §§push(Math.PI / 2);
               if(_loc13_ || param3)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(_loc4_);
               if(_loc13_ || param1)
               {
                  §§push(§§pop() / this.§0#>§);
                  if(!_loc12_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc8_:* = §§pop();
               if(!(_loc12_ && param1))
               {
                  §§push(_loc6_);
                  loop0:
                  while(true)
                  {
                     §§push(_loc8_);
                     if(_loc13_)
                     {
                        §§push(§§pop() * 3);
                        if(!(_loc12_ && param3))
                        {
                           §§push(§§pop() * param2);
                        }
                     }
                     §§push(§§pop() * §§pop());
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc13_ || this)
                           {
                              _loc6_ = §§pop();
                              while(true)
                              {
                                 §§push(30);
                              }
                              addr180:
                           }
                           loop4:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 addr182:
                                 while(true)
                                 {
                                    §§push(30);
                                    addr183:
                                    while(true)
                                    {
                                       _loc6_ = §§pop();
                                       addr184:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr182:
                              }
                              loop5:
                              while(param3)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(8);
                                    loop7:
                                    while(_loc13_)
                                    {
                                       if(_loc12_)
                                       {
                                          continue loop2;
                                       }
                                       _loc6_ = §§pop();
                                       while(true)
                                       {
                                          if(!_loc12_)
                                          {
                                             §§push(8);
                                             if(_loc13_)
                                             {
                                                if(_loc12_ && param2)
                                                {
                                                   continue loop7;
                                                }
                                                if(!_loc12_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr183);
                                             }
                                             else
                                             {
                                                addr186:
                                                var _loc10_:* = §§pop();
                                                if(!_loc12_)
                                                {
                                                   _loc10_ = 0;
                                                }
                                                addr508:
                                                if(_loc10_ >= _loc6_ / 3)
                                                {
                                                   addr515:
                                                   _loc10_ = 0;
                                                   addr516:
                                                   addr514:
                                                   if(_loc13_ || param3)
                                                   {
                                                      addr190:
                                                      §§push(_loc10_);
                                                      if(_loc13_ || param2)
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc13_ || this)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(_loc13_ || param1)
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        if(_loc13_ || param2)
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§goto(addr516);
                                                                           }
                                                                           return;
                                                                        }
                                                                        addr420:
                                                                        addr507:
                                                                        §§push(Math.random() * this.§0#>§);
                                                                        if(!(_loc12_ && param1))
                                                                        {
                                                                           if(!(_loc12_ && this))
                                                                           {
                                                                              addr436:
                                                                              §§push(this.§0#>§);
                                                                              if(!(_loc12_ && param3))
                                                                              {
                                                                                 if(_loc13_ || param3)
                                                                                 {
                                                                                    §§push(2);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       addr454:
                                                                                       §§push(§§pop() - §§pop() / §§pop());
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          §§push(2);
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             addr461:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc13_ || this)
                                                                                             {
                                                                                                addr471:
                                                                                                §§push(Number(§§pop() * _loc8_));
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   _loc9_ = §§pop();
                                                                                                   addr474:
                                                                                                   §§push(0.5);
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         if(_loc13_ || param3)
                                                                                                         {
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(!_loc12_)
                                                                                                                  {
                                                                                                                     if(_loc13_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc12_ && param3))
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(!(_loc12_ && this))
                                                                                                                           {
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 addr359:
                                                                                                                                 §§push(§§pop() * (Math.random() * 0.5));
                                                                                                                                 if(_loc13_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc13_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc12_ && param2))
                                                                                                                                       {
                                                                                                                                          addr381:
                                                                                                                                          if(!_loc12_)
                                                                                                                                          {
                                                                                                                                             addr384:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(_loc13_ || this)
                                                                                                                                             {
                                                                                                                                                if(_loc13_ || param2)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc12_ && param2))
                                                                                                                                                   {
                                                                                                                                                      _loc11_ = §§pop();
                                                                                                                                                      addr406:
                                                                                                                                                      if(_loc13_ || param1)
                                                                                                                                                      {
                                                                                                                                                         param1.§;!0§(§ U§.§7!i§,§,!w§.§ !B§,§ U§.§'# §,§3!t§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§3!t§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§ U§.§-"W§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
                                                                                                                                                         addr289:
                                                                                                                                                         if(_loc13_ || param3)
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               _loc10_++;
                                                                                                                                                               addr233:
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr190);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr406);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr514);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr474);
                                                                                                                                                      }
                                                                                                                                                      addr526:
                                                                                                                                                      if(!_loc12_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr508);
                                                                                                                                                      }
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         _loc10_++;
                                                                                                                                                         §§goto(addr526);
                                                                                                                                                      }
                                                                                                                                                      param1.§;!0§(§ U§.§?#;§,§,!w§.§ !B§,§ U§.§'# §,§3!t§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§3!t§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
                                                                                                                                                      §§goto(addr526);
                                                                                                                                                      addr607:
                                                                                                                                                   }
                                                                                                                                                   addr633:
                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                   §§push(Math.random() * this.§0#>§);
                                                                                                                                                   §§push(this.§0#>§ / 2);
                                                                                                                                                   if(_loc13_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr598:
                                                                                                                                                      addr594:
                                                                                                                                                      addr595:
                                                                                                                                                      addr597:
                                                                                                                                                      addr596:
                                                                                                                                                      addr599:
                                                                                                                                                      §§push(Number((§§pop() - §§pop()) * 2 * _loc8_));
                                                                                                                                                      if(_loc13_ || param2)
                                                                                                                                                      {
                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                         §§goto(addr607);
                                                                                                                                                      }
                                                                                                                                                      addr632:
                                                                                                                                                      §§goto(addr633);
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr632);
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   addr634:
                                                                                                                                                }
                                                                                                                                                §§goto(addr420);
                                                                                                                                             }
                                                                                                                                             §§goto(addr471);
                                                                                                                                          }
                                                                                                                                          §§goto(addr461);
                                                                                                                                       }
                                                                                                                                       §§goto(addr384);
                                                                                                                                    }
                                                                                                                                    addr497:
                                                                                                                                    if(!(_loc12_ && this))
                                                                                                                                    {
                                                                                                                                       addr506:
                                                                                                                                       _loc7_ = Number(§§pop() + §§pop());
                                                                                                                                       addr505:
                                                                                                                                       §§goto(addr507);
                                                                                                                                    }
                                                                                                                                    §§goto(addr633);
                                                                                                                                 }
                                                                                                                                 §§goto(addr471);
                                                                                                                              }
                                                                                                                              §§goto(addr436);
                                                                                                                           }
                                                                                                                           §§goto(addr359);
                                                                                                                        }
                                                                                                                        §§goto(addr384);
                                                                                                                     }
                                                                                                                     §§goto(addr454);
                                                                                                                  }
                                                                                                                  §§goto(addr359);
                                                                                                               }
                                                                                                               §§goto(addr633);
                                                                                                            }
                                                                                                            §§goto(addr598);
                                                                                                         }
                                                                                                         §§goto(addr505);
                                                                                                      }
                                                                                                      §§goto(addr471);
                                                                                                   }
                                                                                                   §§goto(addr381);
                                                                                                }
                                                                                                §§goto(addr594);
                                                                                             }
                                                                                             §§goto(addr506);
                                                                                          }
                                                                                          §§goto(addr595);
                                                                                       }
                                                                                       §§goto(addr471);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr633);
                                                                              }
                                                                              §§goto(addr597);
                                                                           }
                                                                           addr612:
                                                                           §§goto(addr633);
                                                                           §§push(Math.random() * (Math.PI * 4 / _loc6_));
                                                                        }
                                                                        §§goto(addr596);
                                                                     }
                                                                     §§goto(addr289);
                                                                  }
                                                                  §§goto(addr233);
                                                               }
                                                               §§push(_loc7_);
                                                               if(!_loc12_)
                                                               {
                                                                  if(_loc13_ || param2)
                                                                  {
                                                                     §§goto(addr497);
                                                                     §§push(Math.random() * (Math.PI * 4 / _loc6_));
                                                                  }
                                                                  §§goto(addr599);
                                                               }
                                                               §§goto(addr506);
                                                            }
                                                         }
                                                         §§goto(addr508);
                                                      }
                                                      §§goto(addr515);
                                                   }
                                                   §§goto(addr634);
                                                }
                                                §§goto(addr612);
                                                §§push(_loc7_);
                                             }
                                          }
                                          break;
                                          addr128:
                                          _loc5_ = §§pop();
                                          if(!(_loc13_ || this))
                                          {
                                             continue;
                                          }
                                          if(_loc12_)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc13_)
                                          {
                                             if(true)
                                             {
                                                break loop5;
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr182);
                                       }
                                       §§goto(addr184);
                                    }
                                    continue loop4;
                                 }
                              }
                              §§goto(addr186);
                           }
                        }
                        addr120:
                        §§push(Number(§§pop()));
                        if(!(_loc13_ || param1))
                        {
                           continue;
                        }
                        §§goto(addr128);
                     }
                  }
               }
               §§goto(addr182);
            }
            §§goto(addr59);
         }
         §§goto(addr63);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(specialPowerUsed)
            {
               if(_loc2_ || _loc2_)
               {
                  addr53:
                  §§push(1);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return -1;
               }
               return §§pop();
            }
            §§goto(addr57);
         }
         §§goto(addr53);
      }
      
      private function §>!h§(param1:§;$§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§[!o§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr80);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr81:
               }
            }
            while(true)
            {
               §?!r§.§]!H§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
               while(_loc2_)
               {
                  §[!o§ = true;
                  if(_loc2_)
                  {
                     §§push(true);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  continue;
                  addr80:
                  return false;
               }
               §§goto(addr81);
            }
         }
         §§goto(addr42);
      }
   }
}
