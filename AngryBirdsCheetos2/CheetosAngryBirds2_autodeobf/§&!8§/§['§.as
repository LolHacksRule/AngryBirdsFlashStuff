package §&!8§
{
   import § g§.§<n§;
   import § o§.b2Body;
   import § o§.b2Fixture;
   import § o§.b2World;
   import §!r§.§"B§;
   import §!r§.§3!!§;
   import §!r§.§9!,§;
   import §,§.§ p§;
   import §-!Q§.§,!7§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §6!H§.b2Vec2;
   import §]!S§.b2CircleShape;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §['§ extends §]V§
   {
      
      public static const §%^§:int = 6;
      
      private static const §8F§:int = 200;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§§findproperty(§%^§));
            §§push(241 * § p§.§]!E§);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop() / 2);
            }
            §§pop().§%^§ = §§pop();
            do
            {
               §8F§ = 200;
            }
            while(!_loc1_);
            
         }
      }
      
      private const §0w§:Number = -5;
      
      private const §>!C§:int = 1500;
      
      private const §&!`§:int = 3500;
      
      private const §[!1§:int = 1500;
      
      private var §#!S§:Boolean = false;
      
      private var §;!O§:Boolean = false;
      
      private var §-,§:Number = -5;
      
      private var §7!g§:Number = -5;
      
      private var §@!Y§:Number = -5;
      
      private var §&e§:Number = 0;
      
      private var §+$§:int = 0;
      
      private var §4Y§:Number = 0;
      
      private var §;!A§:Number = 0;
      
      private var §"q§:Number = 0;
      
      private var §#!<§:Number = 1000;
      
      private var §`!'§:Boolean = false;
      
      private var §8! §:§+!6§;
      
      public function §['§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            while(true)
            {
               this.§8! § = param1;
               while(_loc12_)
               {
                  while(!(_loc13_ && param3))
                  {
                     this.§"q§ = 0;
                     if(!(_loc13_ && param2))
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §5d§.mTryToFly = true;
            §§goto(addr49);
         }
      }
      
      private function get §+U§() : Number
      {
         return §%^§ * scale;
      }
      
      override public function addDamageParticles(param1:§do§, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(2);
               addr171:
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
                                 §§push(this.§#!<§);
                                 while(true)
                                 {
                                    §§push(§§pop() < §8F§);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§7!g§);
                                       if(_loc3_ && this)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() == this.§0w§);
                                       if(_loc4_)
                                       {
                                          §§push(!§§pop());
                                          if(_loc4_ || this)
                                          {
                                             §§push(§§pop());
                                             if(_loc4_ || param1)
                                             {
                                                if(!§§pop())
                                                {
                                                   addr130:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                               addr142:
                                                            }
                                                            addr141:
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop5;
                                                               §§goto(addr141);
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr156:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop9;
                                                         }
                                                      }
                                                   }
                                                   continue loop2;
                                                   addr130:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop11:
                                                         while(_loc4_ || param2)
                                                         {
                                                            if(!(_loc3_ && param2))
                                                            {
                                                               this.§0m§(1,param2 > 20);
                                                               loop12:
                                                               while(_loc4_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§#!<§ = 0;
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                            continue loop9;
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                      §§goto(addr29);
                                                   }
                                                   addr63:
                                                }
                                                addr167:
                                             }
                                             continue loop3;
                                             return;
                                          }
                                       }
                                       §§goto(addr130);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr156);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      override public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§^!?§(param1));
            if(_loc3_ || this)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§goto(addr109);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        addr61:
                        addr60:
                        while(true)
                        {
                           §@!Z§.§;!,§.particles.addParticle(§7!?§.§`f§,§do§.§[N§,§7!?§.§<!h§,§`e§().GetPosition().x,§`e§().GetPosition().y,-1,"",§7!?§.§7^§);
                           do
                           {
                              this.§5!L§(0);
                           }
                           while(_loc2_);
                           
                           if(!(_loc2_ && _loc3_))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§push(true);
                        if(!(_loc2_ && _loc3_))
                        {
                           return §§pop();
                        }
                        §§goto(addr109);
                     }
                  }
               }
               §§goto(addr61);
            }
            addr109:
            return false;
         }
         §§goto(addr60);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = NaN;
         if(!(_loc9_ && param1))
         {
            §§push(!§,B§);
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
                        addr219:
                        while(true)
                        {
                           §§push(this.§-,§);
                           addr196:
                           while(true)
                           {
                              §§push(§§pop() == this.§0w§);
                           }
                        }
                     }
                     addr218:
                  }
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§5!L§();
                              addr213:
                              while(true)
                              {
                              }
                              addr134:
                              if(_loc9_ && param1)
                              {
                                 continue;
                              }
                              if(_loc8_)
                              {
                                 §§push(Number(§+_§));
                                 loop23:
                                 while(!_loc9_)
                                 {
                                    if(!_loc9_)
                                    {
                                       _loc7_ = §§pop();
                                       loop24:
                                       while(true)
                                       {
                                          addr33:
                                          loop22:
                                          while(true)
                                          {
                                             this.§#!S§ = true;
                                             if(!_loc9_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   continue loop24;
                                                }
                                                if(_loc8_)
                                                {
                                                   addr43:
                                                   §§push(_loc7_);
                                                   if(_loc8_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr56:
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            break loop22;
                                                         }
                                                         break;
                                                      }
                                                      continue loop23;
                                                      §§goto(addr43);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   break loop23;
                                                }
                                             }
                                             break;
                                          }
                                          loop21:
                                          while(true)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§goto(addr33);
                                                }
                                                loop25:
                                                while(true)
                                                {
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      §0!5§(§"B§.§>!W§);
                                                      while(true)
                                                      {
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            §§goto(addr134);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr213);
                                                         }
                                                      }
                                                      addr127:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§#!S§);
                                                         if(!_loc9_)
                                                         {
                                                            addr80:
                                                            if(_loc8_ || this)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  addr156:
                                                                  break;
                                                                  addr181:
                                                               }
                                                               addr90:
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  addr97:
                                                                  if(!(_loc8_ || param2))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_ || param2)
                                                                        {
                                                                           §§pop();
                                                                           break loop21;
                                                                        }
                                                                        §§goto(addr218);
                                                                        §§goto(addr97);
                                                                     }
                                                                     §§goto(addr219);
                                                                     addr184:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop25;
                                                                     }
                                                                     §§goto(addr56);
                                                                     §§push(Number(super.applyDamage(param1,param2,param3,param4,param5,param6)));
                                                                  }
                                                                  addr114:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc8_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     while(_loc8_)
                                                                     {
                                                                        continue loop0;
                                                                        §§goto(addr80);
                                                                     }
                                                                     continue loop6;
                                                                     addr165:
                                                                  }
                                                                  §§goto(addr114);
                                                               }
                                                               while(!_loc9_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr184);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr156);
                                                                     addr154:
                                                                  }
                                                               }
                                                               addr156:
                                                               continue loop1;
                                                            }
                                                            §§goto(addr165);
                                                         }
                                                         §§goto(addr90);
                                                         continue loop25;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr181);
                                                      }
                                                      addr180:
                                                      addr175:
                                                   }
                                                   §§goto(addr156);
                                                }
                                             }
                                             §§goto(addr127);
                                          }
                                          §§goto(addr192);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(12);
                                       addr179:
                                       while(true)
                                       {
                                          §§goto(addr180);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(5);
                                    if(_loc8_ || param3)
                                    {
                                       §§goto(addr154);
                                    }
                                    §§goto(addr179);
                                 }
                              }
                              §§goto(addr219);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr178);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr192);
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!§,B§)
            {
               loop0:
               while(true)
               {
                  this.§^!?§(null);
                  loop1:
                  while(true)
                  {
                     §!]§ = true;
                     do
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                        this.§5!L§(0);
                     }
                     while(!(_loc1_ || _loc1_));
                     
                     addr63:
                  }
               }
            }
            else
            {
               §§push(false);
               if(!_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr63);
      }
      
      private function §5!L§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr113:
               addr114:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               addr117:
               addr110:
               this.§-,§ = 0;
               addr110:
               this.update(0);
               return;
            }
         }
         §§goto(addr90);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Vector.<§[g§> = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(!_loc8_)
         {
            §§push(this);
            §§push(this.§#!<§);
            if(!_loc8_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§#!<§ = §§pop();
            if(!(_loc8_ && this))
            {
               §!]§ = true;
               loop0:
               while(true)
               {
                  §§push(this.§-,§);
                  if(_loc9_)
                  {
                     §§push(this.§0w§);
                     if(_loc9_)
                     {
                        if(§§pop() != §§pop())
                        {
                           if(!(_loc8_ && this))
                           {
                              if(_loc8_)
                              {
                                 continue;
                              }
                              §§push(this);
                              §§push(this.§-,§);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§-,§ = §§pop();
                              if(!(_loc8_ && _loc2_))
                              {
                                 §§push(this.§-,§);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(0);
                                    if(!_loc8_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push(this.§"q§);
                                             if(_loc9_)
                                             {
                                                §§push(1);
                                                if(!(_loc8_ && this))
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc9_ || param1)
                                                      {
                                                         this.§-,§ = this.§0w§;
                                                         if(_loc9_ || param1)
                                                         {
                                                            this.§"q§ = 1;
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               this.§[o§(this.§+U§);
                                                               if(_loc9_ || this)
                                                               {
                                                                  this.§7!g§ = this.§&!`§;
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     §<n§.§@B§(false);
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§+U§);
                                                                           if(!(_loc8_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() * this.§"q§);
                                                                           }
                                                                           §§pop().§[o§(§§pop(),§0o§.material.mValues[§9!,§.§?!=§],§0o§.material.mValues[§9!,§.§&b§],§0o§.material.mValues[§9!,§.§3z§]);
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §5d§.setScale(this.§"q§ * scale);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr355:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§@!Y§);
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                loop6:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(this.§@!Y§);
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() - param1);
                                                                                                      }
                                                                                                      §§pop().§@!Y§ = §§pop();
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         if(_loc9_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(this);
                                                                                                            §§push(this.§&e§);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§push(§§pop() - param1);
                                                                                                            }
                                                                                                            §§pop().§&e§ = §§pop();
                                                                                                            loop8:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§&e§);
                                                                                                               addr579:
                                                                                                               loop2:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  loop10:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop() <= §§pop())
                                                                                                                     {
                                                                                                                        loop3:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc8_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§&e§ = this.§[!1§ / 5;
                                                                                                                              loop4:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(Math.random() * 100);
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(50);
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             addr564:
                                                                                                                                             §§push(§§pop() * 10);
                                                                                                                                          }
                                                                                                                                          §§pop().§4Y§ = §§pop();
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             break loop3;
                                                                                                                                          }
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr564);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc8_ && param1)
                                                                                                                                       {
                                                                                                                                          break loop4;
                                                                                                                                       }
                                                                                                                                       continue loop28;
                                                                                                                                    }
                                                                                                                                    addr612:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr669:
                                                                                                                              §§goto(addr825);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr718:
                                                                                                                        §5d§.setScale(_loc3_ * scale);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           addr725:
                                                                                                                           §§push(this);
                                                                                                                           §§push(this.§+U§);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 addr734:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 §§push(0.00001);
                                                                                                                              }
                                                                                                                              §§pop().§[o§(§§pop(),§§pop(),0,0);
                                                                                                                              if(!(_loc8_ && _loc2_))
                                                                                                                              {
                                                                                                                                 break loop6;
                                                                                                                              }
                                                                                                                              addr821:
                                                                                                                              this.§8! §.§9?§(this);
                                                                                                                              §§goto(addr825);
                                                                                                                           }
                                                                                                                           §§goto(addr734);
                                                                                                                        }
                                                                                                                        addr825:
                                                                                                                        §0!5§(§"B§.§!G§);
                                                                                                                        addr825:
                                                                                                                        return;
                                                                                                                        addr581:
                                                                                                                     }
                                                                                                                     addr482:
                                                                                                                     loop5:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§@!Y§);
                                                                                                                        if(_loc9_ || _loc2_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§[!1§);
                                                                                                                              loop11:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                 loop12:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ || param1))
                                                                                                                                    {
                                                                                                                                       continue loop7;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr503:
                                                                                                                                       loop30:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_);
                                                                                                                                                if(_loc9_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop30;
                                                                                                                                                   }
                                                                                                                                                   if(_loc8_ && _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop12;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc9_ || this))
                                                                                                                                                   {
                                                                                                                                                      break loop0;
                                                                                                                                                   }
                                                                                                                                                   §§push(1);
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         continue loop11;
                                                                                                                                                      }
                                                                                                                                                      if(_loc8_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop10;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         continue loop9;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(1);
                                                                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop2;
                                                                                                                                                                        }
                                                                                                                                                                        _loc3_ = §§pop();
                                                                                                                                                                        if(_loc9_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop5;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr688:
                                                                                                                                                                                 var _loc6_:*;
                                                                                                                                                                                 §§push((_loc6_ = this).§+$§);
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + 1);
                                                                                                                                                                                 }
                                                                                                                                                                                 var _loc7_:* = §§pop();
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc6_.§+$§ = _loc7_;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc9_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr714:
                                                                                                                                                                                    addr712:
                                                                                                                                                                                    addr715:
                                                                                                                                                                                    addr710:
                                                                                                                                                                                    if(this.§+$§ % 3 == 0)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr718);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr821);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr825);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr725);
                                                                                                                                                                              }
                                                                                                                                                                              addr480:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr825);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr825);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr714);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr712);
                                                                                                                                                               }
                                                                                                                                                               addr457:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr581);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr825);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr718);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr688);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr715);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr801:
                                                                                                                                             this.§`!'§ = true;
                                                                                                                                             §§push(_loc9_);
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                addr820:
                                                                                                                                                if(param1)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr821);
                                                                                                                                                }
                                                                                                                                                §§goto(addr825);
                                                                                                                                             }
                                                                                                                                             §§goto(addr820);
                                                                                                                                             addr506:
                                                                                                                                          }
                                                                                                                                          §§goto(addr710);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr492:
                                                                                                                        }
                                                                                                                        §§goto(addr714);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr682:
                                                                                                         this.§;!O§ = true;
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            this.§7!g§ = this.§0w§;
                                                                                                            addr687:
                                                                                                         }
                                                                                                         §§goto(addr825);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   this.§@!Y§ = this.§[!1§;
                                                                                                   §§goto(addr669);
                                                                                                }
                                                                                                addr745:
                                                                                                _loc5_ = (_loc4_ = §`e§()).GetLinearVelocity();
                                                                                                if(!(_loc8_ && _loc3_))
                                                                                                {
                                                                                                   _loc4_.ApplyImpulse(new b2Vec2(this.§4Y§,this.§;!A§),§`e§().GetPosition());
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_.§@o§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                                                                                                      do
                                                                                                      {
                                                                                                         this.§0m§(0.02,true);
                                                                                                      }
                                                                                                      while(!_loc9_);
                                                                                                      
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(false)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr714);
                                                                                                   }
                                                                                                }
                                                                                                addr623:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr801);
                                                                                             }
                                                                                             §§goto(addr820);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr619:
                                                                                 }
                                                                                 §§goto(addr825);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop27;
                                                                                 }
                                                                                 addr91:
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(Math.random() * 100);
                                                                           if(!(_loc8_ && this))
                                                                           {
                                                                              §§push(50);
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    addr537:
                                                                                    §§push(§§pop() * 10);
                                                                                 }
                                                                                 §§pop().§;!A§ = §§pop();
                                                                                 if(!(_loc8_ && _loc3_))
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§goto(addr482);
                                                                                    }
                                                                                    §§goto(addr623);
                                                                                 }
                                                                                 §§goto(addr825);
                                                                              }
                                                                           }
                                                                           §§goto(addr537);
                                                                        }
                                                                     }
                                                                     §§goto(addr745);
                                                                  }
                                                                  §§goto(addr588);
                                                               }
                                                               §§goto(addr619);
                                                            }
                                                            §§goto(addr682);
                                                            addr189:
                                                         }
                                                         §§goto(addr457);
                                                      }
                                                      §§goto(addr687);
                                                   }
                                                   else
                                                   {
                                                      §§push(this);
                                                      §§push(this.§"q§);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() + 0.2);
                                                      }
                                                      §§pop().§"q§ = §§pop();
                                                   }
                                                   §§goto(addr91);
                                                }
                                                addr681:
                                                if(§§pop() < §§pop())
                                                {
                                                   §§goto(addr682);
                                                }
                                                §§goto(addr825);
                                             }
                                             §§goto(addr503);
                                          }
                                          §§goto(addr825);
                                       }
                                       else
                                       {
                                          §§push(this.§-,§);
                                          if(_loc9_)
                                          {
                                             §§push(param1);
                                             if(_loc9_)
                                             {
                                                addr254:
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      _loc2_ = new Vector.<§[g§>(1,true);
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         _loc2_[0] = this;
                                                         while(true)
                                                         {
                                                            container.addExplosions(§7@§.§^S§,§`e§().GetPosition().x,§`e§().GetPosition().y,_loc2_);
                                                            while(true)
                                                            {
                                                               this.§^!?§(null);
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §>p§ = "BIRD_ORANGE_BIG";
                                                                  addr329:
                                                                  while(true)
                                                                  {
                                                                     §0o§ = §3!!§.§^!-§(§>p§);
                                                                     continue loop15;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr294);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr506);
                                                   }
                                                   §§goto(addr825);
                                                }
                                                §§goto(addr355);
                                             }
                                             else
                                             {
                                                addr367:
                                                if(§§pop() != §§pop())
                                                {
                                                   if(_loc9_ || param1)
                                                   {
                                                      §§push(this.§#!S§);
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§7!g§);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop() - param1);
                                                               }
                                                               §§pop().§7!g§ = §§pop();
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(this.§7!g§);
                                                                  break;
                                                                  addr397:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr801);
                                                               }
                                                            }
                                                            §§goto(addr669);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr611:
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr612);
                                                         }
                                                      }
                                                      §§goto(addr825);
                                                   }
                                                   §§goto(addr718);
                                                }
                                                else
                                                {
                                                   §§push(this.§;!O§);
                                                }
                                                §§goto(addr611);
                                             }
                                          }
                                       }
                                       §§goto(addr579);
                                    }
                                    §§goto(addr681);
                                 }
                                 §§goto(addr492);
                              }
                              §§goto(addr397);
                           }
                           §§goto(addr714);
                        }
                        else
                        {
                           §§push(this.§7!g§);
                           if(!(_loc8_ && this))
                           {
                              §§goto(addr367);
                              §§push(this.§0w§);
                           }
                        }
                        §§goto(addr502);
                     }
                     §§goto(addr254);
                  }
                  break;
               }
               §§push(0);
               if(!_loc8_)
               {
                  §§goto(addr681);
               }
               else
               {
                  §§goto(addr714);
               }
            }
            §§goto(addr480);
         }
         §§goto(addr189);
      }
      
      private function §[o§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §`e§()).GetFixtureList()).GetShape() as b2CircleShape;
         if(!(_loc8_ && param2))
         {
            _loc5_.SetAwake(true);
            while(true)
            {
               _loc7_.§#!3§(param1);
               loop1:
               while(_loc9_ || this)
               {
                  §§push(param2);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           loop4:
                           while(true)
                           {
                              _loc6_.§?!8§(param2);
                              addr122:
                              while(true)
                              {
                                 _loc5_.§2!<§();
                                 addr112:
                                 while(_loc9_)
                                 {
                                    while(true)
                                    {
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(param3);
                           loop8:
                           while(_loc9_)
                           {
                              §§push(0);
                              loop9:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc9_ || this)
                                    {
                                       _loc6_.§`!f§(param3);
                                    }
                                    loop10:
                                    for(; _loc9_; if(!(_loc8_ && param2))
                                    {
                                       continue loop1;
                                    })
                                    {
                                       if(_loc9_ || param2)
                                       {
                                          while(true)
                                          {
                                             §§push(param4);
                                             if(_loc9_)
                                             {
                                                §§push(0);
                                                if(!_loc8_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      addr82:
                                                      continue loop10;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop9;
                                             }
                                             continue loop8;
                                          }
                                          return;
                                          addr43:
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr43);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  if(!(_loc9_ || param3))
                  {
                     continue;
                  }
                  _loc6_.§6K§(param4);
                  §§goto(addr82);
               }
            }
         }
         §§goto(addr114);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!§,B§)
            {
               if(_loc1_)
               {
                  addr32:
                  super.addTrail();
               }
            }
            return;
         }
         §§goto(addr32);
      }
      
      private function §0m§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         §§push((§`e§().GetFixtureList().GetShape() as b2CircleShape).§[!;§());
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(§&L§() / 40);
         if(!(_loc13_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(1);
         if(_loc12_)
         {
            §§push(_loc4_);
            if(!_loc13_)
            {
               §§push(§§pop() * §>!+§(true));
               if(!_loc13_)
               {
                  §§push(§§pop() * 0.9);
               }
            }
            §§push(int(§§pop() + §§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(Math.PI / 2);
         if(!(_loc13_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(_loc3_);
         if(!_loc13_)
         {
            §§push(§§pop() / this.§+U§);
            if(!_loc13_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         if(!_loc13_)
         {
            §§push(_loc5_);
            if(!_loc13_)
            {
               §§push(_loc7_);
               if(!(_loc13_ && param2))
               {
                  §§push(§§pop() * 3);
                  if(_loc12_ || _loc3_)
                  {
                     §§push(§§pop() * param1);
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
                     if(!(_loc13_ && param1))
                     {
                        _loc5_ = §§pop();
                        while(true)
                        {
                           §§push(30);
                        }
                        addr682:
                     }
                     loop3:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           while(true)
                           {
                              §§push(30);
                              addr685:
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 addr686:
                                 while(true)
                                 {
                                 }
                              }
                              addr627:
                              if(_loc13_ && param1)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 §§push(8);
                                 loop14:
                                 while(true)
                                 {
                                    if(!_loc12_)
                                    {
                                       continue loop1;
                                    }
                                    addr637:
                                    _loc5_ = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       §§push(8);
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc13_)
                                          {
                                             continue loop14;
                                          }
                                          if(!_loc13_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc13_)
                                             {
                                                addr613:
                                                _loc4_ = §§pop();
                                                while(!(_loc12_ || param1))
                                                {
                                                   continue loop9;
                                                   §§goto(addr613);
                                                }
                                                while(true)
                                                {
                                                   §§push(0);
                                                   if(!_loc12_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(!_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   _loc9_ = §§pop();
                                                   if(!(_loc13_ && this))
                                                   {
                                                      if(_loc12_ || _loc3_)
                                                      {
                                                         addr473:
                                                         if(_loc9_ >= _loc5_ / 3)
                                                         {
                                                            addr480:
                                                            _loc9_ = 0;
                                                            addr91:
                                                            addr479:
                                                            addr481:
                                                            §§push(_loc9_);
                                                            if(_loc12_ || _loc3_)
                                                            {
                                                               if(!(_loc13_ && param1))
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc12_)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        if(_loc12_ || this)
                                                                        {
                                                                           if(_loc12_ || param1)
                                                                           {
                                                                              if(_loc13_ && param1)
                                                                              {
                                                                                 addr497:
                                                                                 §@!Z§.§;!,§.particles.addParticle(§7!?§.§=!H§,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§`e§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
                                                                                 _loc9_++;
                                                                                 addr484:
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§goto(addr473);
                                                                                 }
                                                                                 addr533:
                                                                                 §§goto(addr533);
                                                                                 addr495:
                                                                                 addr493:
                                                                                 addr491:
                                                                                 addr490:
                                                                                 addr567:
                                                                              }
                                                                              return;
                                                                           }
                                                                           addr316:
                                                                           if(_loc12_ || _loc3_)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 if(!(_loc13_ && this))
                                                                                 {
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§push(§@!Z§.§;!,§);
                                                                                       if(_loc12_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop().particles);
                                                                                          if(!(_loc13_ && param1))
                                                                                          {
                                                                                             §§push(§7!?§.§=!E§);
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                §§push(§do§.§+!c§);
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   §§push(§7!?§.§22§);
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      §§pop().addParticle(§§pop(),§§pop(),§§pop(),§`e§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§`e§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§7!?§.§`4§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
                                                                                                      addr220:
                                                                                                      if(!(_loc13_ && this))
                                                                                                      {
                                                                                                         _loc9_++;
                                                                                                         addr137:
                                                                                                         if(_loc12_ || param1)
                                                                                                         {
                                                                                                            §§goto(addr91);
                                                                                                         }
                                                                                                         §§goto(addr220);
                                                                                                      }
                                                                                                      §§goto(addr484);
                                                                                                   }
                                                                                                   §§goto(addr497);
                                                                                                }
                                                                                                §§goto(addr495);
                                                                                             }
                                                                                             §§goto(addr493);
                                                                                          }
                                                                                          §§goto(addr491);
                                                                                       }
                                                                                       §§goto(addr490);
                                                                                    }
                                                                                    addr540:
                                                                                    §§push(Math.random() * this.§+U§);
                                                                                    if(_loc12_ || param2)
                                                                                    {
                                                                                       addr552:
                                                                                       §§push((§§pop() - this.§+U§ / 2) * 2);
                                                                                       if(!(_loc13_ && param1))
                                                                                       {
                                                                                          addr566:
                                                                                          §§push(§§pop() * _loc7_);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             addr565:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          _loc8_ = §§pop();
                                                                                          §§goto(addr567);
                                                                                       }
                                                                                       §§goto(addr565);
                                                                                    }
                                                                                    _loc6_ = Number(§§pop() + Math.random() * (720 / _loc5_));
                                                                                    addr581:
                                                                                    §§goto(addr581);
                                                                                 }
                                                                                 §§goto(addr479);
                                                                              }
                                                                              §§goto(addr481);
                                                                           }
                                                                           if(_loc12_ || this)
                                                                           {
                                                                              §§push(0.5);
                                                                              if(_loc12_ || param1)
                                                                              {
                                                                                 if(_loc12_ || param2)
                                                                                 {
                                                                                    if(!(_loc13_ && _loc3_))
                                                                                    {
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(_loc12_ || param1)
                                                                                          {
                                                                                             if(!(_loc13_ && this))
                                                                                             {
                                                                                                if(_loc12_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc13_ && param2))
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            addr293:
                                                                                                            §§push(§§pop() * (Math.random() * 0.5));
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc13_ && _loc3_))
                                                                                                               {
                                                                                                                  if(!(_loc13_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        addr313:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           _loc11_ = §§pop();
                                                                                                                           §§goto(addr316);
                                                                                                                        }
                                                                                                                        addr384:
                                                                                                                        if(!(_loc13_ && param2))
                                                                                                                        {
                                                                                                                           addr392:
                                                                                                                           _loc8_ = Number(§§pop());
                                                                                                                           §§goto(addr316);
                                                                                                                        }
                                                                                                                        §§goto(addr540);
                                                                                                                     }
                                                                                                                     §§goto(addr552);
                                                                                                                  }
                                                                                                                  addr351:
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     §§push(this.§+U§);
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        §§push(2);
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(_loc12_ || param1)
                                                                                                                           {
                                                                                                                              addr368:
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              §§push(2);
                                                                                                                              if(_loc12_ || this)
                                                                                                                              {
                                                                                                                                 addr378:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc12_)
                                                                                                                                 {
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       addr383:
                                                                                                                                       §§goto(addr384);
                                                                                                                                       §§push(§§pop() * _loc7_);
                                                                                                                                    }
                                                                                                                                    §§goto(addr540);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc12_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc12_ || this)
                                                                                                                                    {
                                                                                                                                       if(!(_loc13_ && param2))
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          if(_loc12_ || param1)
                                                                                                                                          {
                                                                                                                                             addr452:
                                                                                                                                             if(!_loc13_)
                                                                                                                                             {
                                                                                                                                                addr455:
                                                                                                                                                §§push(180);
                                                                                                                                                if(_loc12_)
                                                                                                                                                {
                                                                                                                                                   addr460:
                                                                                                                                                   §§push(§§pop() / (§§pop() / Math.PI));
                                                                                                                                                   if(_loc12_)
                                                                                                                                                   {
                                                                                                                                                      addr464:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(!(_loc13_ && this))
                                                                                                                                                      {
                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                         §§goto(addr351);
                                                                                                                                                         §§push(Math.random() * this.§+U§);
                                                                                                                                                         addr472:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr540);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr464);
                                                                                                                                                }
                                                                                                                                                §§goto(addr552);
                                                                                                                                             }
                                                                                                                                             §§goto(addr566);
                                                                                                                                          }
                                                                                                                                          §§goto(addr464);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr552);
                                                                                                                                 }
                                                                                                                                 §§goto(addr460);
                                                                                                                              }
                                                                                                                              §§goto(addr455);
                                                                                                                           }
                                                                                                                           §§goto(addr383);
                                                                                                                        }
                                                                                                                        §§goto(addr552);
                                                                                                                     }
                                                                                                                     §§goto(addr368);
                                                                                                                  }
                                                                                                                  §§goto(addr464);
                                                                                                               }
                                                                                                               §§goto(addr313);
                                                                                                            }
                                                                                                            §§goto(addr566);
                                                                                                         }
                                                                                                         §§goto(addr460);
                                                                                                      }
                                                                                                      §§goto(addr293);
                                                                                                   }
                                                                                                   §§goto(addr313);
                                                                                                }
                                                                                                §§goto(addr540);
                                                                                             }
                                                                                             §§goto(addr383);
                                                                                          }
                                                                                          §§goto(addr293);
                                                                                       }
                                                                                       §§goto(addr368);
                                                                                    }
                                                                                    §§goto(addr378);
                                                                                 }
                                                                                 §§goto(addr392);
                                                                              }
                                                                              §§goto(addr313);
                                                                           }
                                                                           §§goto(addr472);
                                                                        }
                                                                        §§goto(addr137);
                                                                     }
                                                                     §§push(_loc6_);
                                                                     if(_loc12_ || param2)
                                                                     {
                                                                        §§goto(addr378);
                                                                        §§push(Number(§§pop() + §?!b§(Math.random() * (720 / _loc5_))));
                                                                     }
                                                                     §§goto(addr452);
                                                                  }
                                                               }
                                                               §§goto(addr473);
                                                            }
                                                            §§goto(addr480);
                                                         }
                                                         §§goto(addr540);
                                                         §§push(_loc6_);
                                                      }
                                                      else
                                                      {
                                                         while(_loc12_)
                                                         {
                                                            §§goto(addr627);
                                                         }
                                                         addr625:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr614);
                                                   }
                                                }
                                                addr614:
                                                continue loop3;
                                                addr582:
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr685);
                                          §§goto(addr686);
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(param2)
                           {
                              §§goto(addr625);
                           }
                           §§goto(addr582);
                           §§goto(addr686);
                        }
                     }
                  }
               }
            }
            §§goto(addr685);
         }
         §§goto(addr634);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§,B§)
            {
               if(!(_loc2_ && this))
               {
                  §§push(1);
                  if(_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr51:
                  return -1;
               }
               return §§pop();
            }
         }
         §§goto(addr51);
      }
      
      private function §^!?§(param1:§+!6§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!§8!d§)
            {
               loop0:
               while(true)
               {
                  §,!7§.§5%§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     if(!_loc3_)
                     {
                        §8!d§ = true;
                        if(!_loc3_)
                        {
                           §§push(true);
                           if(_loc2_ || _loc3_)
                           {
                              return §§pop();
                           }
                           break;
                        }
                        continue;
                     }
                  }
                  §§goto(addr80);
               }
            }
            addr80:
            return §§pop();
            §§push(false);
         }
         §§goto(addr81);
      }
   }
}
