package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §#I§.b2Body;
   import §#I§.b2Fixture;
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §0S§.§ L§;
   import §0S§.§6!D§;
   import §0S§.§7!Z§;
   import §3b§.b2CircleShape;
   import §40§.§5G§;
   import §48§.§3!K§;
   import §;!y§.§,!s§;
   import §[!b§.§-!Q§;
   import §`g§.Sprite;
   
   public class § !V§ extends §3!5§
   {
      
      public static const §<a§:int;
      
      private static const §9!g§:int = 200;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§§findproperty(§<a§));
            §§push(241 * §5G§.§6+§);
            if(!(_loc1_ && § !V§))
            {
               §§push(§§pop() / 2);
            }
            §§pop().§<a§ = §§pop();
            do
            {
               §9!g§ = 200;
            }
            while(!_loc2_);
            
         }
      }
      
      private const § !u§:Number = -5;
      
      private const §?!"§:int = 1500;
      
      private const §+W§:int = 3500;
      
      private const §!!W§:int = 1500;
      
      private var §2!h§:Boolean = false;
      
      private var §5!!§:Boolean = false;
      
      private var §^U§:Number = -5;
      
      private var §!!t§:Number = -5;
      
      private var §2C§:Number = -5;
      
      private var §+!v§:Number = 0;
      
      private var §@!'§:int = 0;
      
      private var §#!Y§:Number = 0;
      
      private var §#!h§:Number = 0;
      
      private var §4^§:Number = 0;
      
      private var § !^§:Number = 1000;
      
      private var §&!X§:Boolean = false;
      
      private var §3B§:§ 4§;
      
      public function § !V§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            loop0:
            while(true)
            {
               this.§3B§ = param1;
               loop1:
               do
               {
                  §+!j§.mTryToFly = true;
                  while(_loc12_)
                  {
                     this.§4^§ = 0;
                     if(_loc12_ || param3)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!_loc12_);
               
            }
         }
      }
      
      private function get §[!I§() : Number
      {
         return §<a§ * scale;
      }
      
      override public function addDamageParticles(param1:§=!%§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(2);
               addr155:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr156:
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr159:
                              while(true)
                              {
                                 §§push(this.§ !^§);
                                 addr145:
                                 while(true)
                                 {
                                    §§push(§§pop() < §9!g§);
                                 }
                              }
                           }
                           addr158:
                        }
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 addr152:
                                 while(true)
                                 {
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.§!!t§);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() == this.§ !u§);
                                 if(_loc3_ || this)
                                 {
                                    continue loop8;
                                 }
                                 addr140:
                                 addr140:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                              }
                              §§goto(addr145);
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr31);
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§=!b§(param1));
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §,!s§.§=!I§.particles.§-M§(§>p§.§@=§,§=!%§.§#,§,§>p§.§?-§,§63§().GetPosition().x,§63§().GetPosition().y,-1,"",§>p§.§9§);
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  §§goto(addr99);
               }
            }
         }
         addr99:
         false;
         return §§pop();
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = NaN;
         if(_loc8_)
         {
            §§push(!§2!K§);
            if(!(_loc9_ && param1))
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr228:
                     while(true)
                     {
                        §§pop();
                        addr229:
                        while(true)
                        {
                           §§push(this.§^U§);
                           addr209:
                           while(true)
                           {
                              §§push(§§pop() == this.§ !u§);
                           }
                        }
                     }
                     addr228:
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
                              this.§@h§();
                              addr216:
                              while(true)
                              {
                              }
                           }
                           addr214:
                        }
                        while(true)
                        {
                           §§push(param1);
                           loop6:
                           while(true)
                           {
                              §§push(12);
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§pop();
                                             loop11:
                                             while(true)
                                             {
                                                §§push(param1);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(5);
                                                   if(_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() > §§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(!(_loc8_ || param3))
                                                      {
                                                         §§goto(addr228);
                                                      }
                                                      addr118:
                                                      if(!(_loc8_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc8_ || param1))
                                                      {
                                                         continue loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop19:
                                                            while(_loc8_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  break loop13;
                                                               }
                                                               §'!S§(§6!D§.§@""§);
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        if(_loc8_ || param3)
                                                                        {
                                                                           §§push(Number(§0M§));
                                                                           loop21:
                                                                           while(!_loc9_)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              loop22:
                                                                              for(; _loc8_; if(!(_loc9_ && this))
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(_loc8_ || param2)
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    continue loop12;
                                                                                    addr57:
                                                                                 }
                                                                                 continue loop20;
                                                                              })
                                                                              {
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§2!h§ = true;
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                    addr78:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop23;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr209);
                                                                              }
                                                                              continue loop19;
                                                                              if(_loc9_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              §§goto(addr209);
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        §§goto(addr214);
                                                                     }
                                                                     break;
                                                                  }
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§2!h§);
                                                                     if(_loc8_)
                                                                     {
                                                                        addr93:
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           if(_loc9_ && param3)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              continue loop16;
                                                                              §§goto(addr93);
                                                                           }
                                                                           addr186:
                                                                        }
                                                                     }
                                                                     §§goto(addr118);
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                            continue loop11;
                                                         }
                                                         §§push(Number(super.applyDamage(param1,param2,param3,param4,param5,param6)));
                                                         continue loop12;
                                                      }
                                                   }
                                                   §§goto(addr229);
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc9_ && this)
                                          {
                                             break;
                                          }
                                          if(!_loc8_)
                                          {
                                             continue loop0;
                                          }
                                          if(§§pop())
                                          {
                                             §§goto(addr186);
                                          }
                                          §§goto(addr132);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr228);
         }
         §§goto(addr78);
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(§2!K§)
            {
               §§push(false);
               if(!_loc1_)
               {
                  return §§pop();
               }
               addr44:
               return true;
            }
            loop0:
            while(true)
            {
               this.§=!b§(null);
               addr89:
               while(true)
               {
                  §,![§ = true;
                  this.§@h§(0);
                  if(_loc2_ || this)
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr44);
            }
         }
         §§goto(addr89);
      }
      
      private function §@h§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr107:
               addr108:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               addr111:
               addr19:
               this.§^U§ = 0;
               this.update(0);
               return;
            }
         }
         §§goto(addr61);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:Vector.<§!u§> = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(_loc8_)
         {
            §§push(this);
            §§push(this.§ !^§);
            if(_loc8_ || _loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§ !^§ = §§pop();
            if(_loc8_ || this)
            {
               §,![§ = true;
               if(_loc8_)
               {
                  §§push(this.§^U§);
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(this.§ !u§);
                     if(!_loc9_)
                     {
                        if(§§pop() != §§pop())
                        {
                           if(_loc8_)
                           {
                              §§push(this);
                              §§push(this.§^U§);
                              if(!(_loc9_ && _loc2_))
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§^U§ = §§pop();
                              if(_loc8_)
                              {
                                 §§push(this.§^U§);
                                 if(!_loc9_)
                                 {
                                    §§push(0);
                                    if(!_loc9_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             §§push(this.§4^§);
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                §§push(1);
                                                if(!_loc9_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         this.§^U§ = this.§ !u§;
                                                         loop11:
                                                         while(true)
                                                         {
                                                            this.§4^§ = 1;
                                                            if(!_loc9_)
                                                            {
                                                               this.§]!O§(this.§[!I§);
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  this.§!!t§ = this.§+W§;
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     §3!K§.§ !8§(false);
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§[!I§);
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              §§push(§§pop() * this.§4^§);
                                                                           }
                                                                           §§pop().§]!O§(§§pop(),§,!;§.material.mValues[§ L§.§@q§],§,!;§.material.mValues[§ L§.§82§],§,!;§.material.mValues[§ L§.§'!x§]);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §+!j§.setScale(this.§4^§ * scale);
                                                                              if(_loc8_ || _loc2_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    §§goto(addr849);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr359:
                                                                                 }
                                                                                 addr849:
                                                                                 continue;
                                                                              }
                                                                              addr729:
                                                                              addr729:
                                                                              if(this.§@!'§ % 3 == 0)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr744:
                                                                                 §§push(this);
                                                                                 §§push(this.§[!I§);
                                                                                 if(_loc8_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(_loc8_ || _loc2_)
                                                                                    {
                                                                                       addr763:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       §§push(0.00001);
                                                                                    }
                                                                                    §§pop().§]!O§(§§pop(),§§pop(),0,0);
                                                                                    if(!(_loc9_ && _loc2_))
                                                                                    {
                                                                                       addr774:
                                                                                       _loc5_ = (_loc4_ = §63§()).GetLinearVelocity();
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          _loc4_.ApplyImpulse(new b2Vec2(this.§#!Y§,this.§#!h§),§63§().GetPosition());
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          addr794:
                                                                                          §§goto(addr839);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr845:
                                                                                       this.§3B§.§&!l§(this);
                                                                                       §§goto(addr849);
                                                                                    }
                                                                                    §§goto(addr849);
                                                                                 }
                                                                                 §§goto(addr763);
                                                                              }
                                                                              addr839:
                                                                              while(true)
                                                                              {
                                                                                 _loc4_.§?!=§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                                                                                 continue loop16;
                                                                              }
                                                                              addr849:
                                                                              return;
                                                                              §§goto(addr849);
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr737:
                                                                        §+!j§.setScale(_loc3_ * scale);
                                                                        if(_loc8_)
                                                                        {
                                                                           §§goto(addr744);
                                                                        }
                                                                        §§goto(addr849);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr391:
                                                                        §§push(this);
                                                                        §§push(this.§!!t§);
                                                                        if(_loc8_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() - param1);
                                                                        }
                                                                        §§pop().§!!t§ = §§pop();
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           addr685:
                                                                           addr684:
                                                                           if(this.§!!t§ < 0)
                                                                           {
                                                                              if(_loc8_ || _loc3_)
                                                                              {
                                                                                 addr693:
                                                                                 this.§5!!§ = true;
                                                                                 loop31:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§!!t§ = this.§ !u§;
                                                                                    addr681:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§2C§ = this.§!!W§;
                                                                                       addr673:
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop31;
                                                                                    }
                                                                                    addr667:
                                                                                    §'!S§(§6!D§.§84§);
                                                                                    addr667:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr737);
                                                                              }
                                                                           }
                                                                           §§goto(addr849);
                                                                           addr411:
                                                                        }
                                                                        else
                                                                        {
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§2C§);
                                                                              if(_loc8_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() - param1);
                                                                              }
                                                                              §§pop().§2C§ = §§pop();
                                                                              loop1:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§+!v§);
                                                                                 if(_loc8_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop() - param1);
                                                                                 }
                                                                                 §§pop().§+!v§ = §§pop();
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    §§push(this.§+!v§);
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       loop3:
                                                                                       while(!(_loc9_ && this))
                                                                                       {
                                                                                          if(§§pop() <= §§pop())
                                                                                          {
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                this.§+!v§ = this.§!!W§ / 5;
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(Math.random() * 100);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(50);
                                                                                                         if(_loc8_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!(_loc9_ && _loc3_))
                                                                                                            {
                                                                                                               addr575:
                                                                                                               §§push(§§pop() * 10);
                                                                                                            }
                                                                                                            §§pop().§#!Y§ = §§pop();
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  break loop11;
                                                                                                               }
                                                                                                               §§goto(addr667);
                                                                                                            }
                                                                                                            §§goto(addr849);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr575);
                                                                                                   }
                                                                                                   break;
                                                                                                   addr457:
                                                                                                   if(_loc9_ && this)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   §§push(1);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         loop15:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc9_ && _loc2_))
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  if(_loc8_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           addr500:
                                                                                                                           loop5:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§2C§);
                                                                                                                              if(_loc8_ || this)
                                                                                                                              {
                                                                                                                                 §§push(this.§!!W§);
                                                                                                                                 loop6:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    addr513:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr514:
                                                                                                                                       addr639:
                                                                                                                                       while(_loc8_ || param1)
                                                                                                                                       {
                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                          loop8:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_);
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   continue loop15;
                                                                                                                                                }
                                                                                                                                                if(_loc8_ || param1)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(1);
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            continue loop6;
                                                                                                                                                         }
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop3;
                                                                                                                                                         }
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            addr442:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop8;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr774);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr697:
                                                                                                                                                                  var _loc6_:*;
                                                                                                                                                                  §§push((_loc6_ = this).§@!'§);
                                                                                                                                                                  if(_loc8_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + 1);
                                                                                                                                                                  }
                                                                                                                                                                  var _loc7_:* = §§pop();
                                                                                                                                                                  if(!(_loc9_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     _loc6_.§@!'§ = _loc7_;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc8_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr729);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr737);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr442:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr685);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr849);
                                                                                                                                                      }
                                                                                                                                                      break loop5;
                                                                                                                                                   }
                                                                                                                                                   addr433:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr684);
                                                                                                                                                }
                                                                                                                                                §§goto(addr685);
                                                                                                                                             }
                                                                                                                                             §§goto(addr673);
                                                                                                                                          }
                                                                                                                                          continue loop15;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          break loop3;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr514);
                                                                                                                           }
                                                                                                                           §§goto(addr729);
                                                                                                                           addr500:
                                                                                                                        }
                                                                                                                        §§goto(addr697);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr637:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr637:
                                                                                                                     }
                                                                                                                     §§goto(addr639);
                                                                                                                  }
                                                                                                                  §§goto(addr849);
                                                                                                               }
                                                                                                               §§goto(addr513);
                                                                                                            }
                                                                                                            §§goto(addr514);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr729);
                                                                                                }
                                                                                                §§goto(addr681);
                                                                                             }
                                                                                             §§goto(addr845);
                                                                                          }
                                                                                          §§goto(addr500);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          this.§&!X§ = true;
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§goto(addr845);
                                                                                          }
                                                                                          §§goto(addr849);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr744);
                                                                           }
                                                                        }
                                                                        §§goto(addr744);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr637);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(Math.random() * 100);
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               §§push(50);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr545:
                                                                     §§push(§§pop() * 10);
                                                                  }
                                                                  §§pop().§#!h§ = §§pop();
                                                                  if(!_loc9_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr500);
                                                                     }
                                                                     addr549:
                                                                  }
                                                                  §§goto(addr729);
                                                               }
                                                            }
                                                            §§goto(addr545);
                                                         }
                                                      }
                                                      §§goto(addr774);
                                                   }
                                                   else
                                                   {
                                                      §§push(this);
                                                      §§push(this.§4^§);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop() + 0.2);
                                                      }
                                                      §§pop().§4^§ = §§pop();
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr46);
                                                      }
                                                   }
                                                }
                                                §§goto(addr442);
                                             }
                                             else
                                             {
                                                addr250:
                                                §§push(param1);
                                                if(_loc8_ || _loc2_)
                                                {
                                                   addr258:
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         _loc2_ = new Vector.<§!u§>(1,true);
                                                         if(_loc8_)
                                                         {
                                                            _loc2_[0] = this;
                                                            while(true)
                                                            {
                                                               §^!W§.addExplosions(§3!b§.§]!-§,§63§().GetPosition().x,§63§().GetPosition().y,_loc2_);
                                                               loop28:
                                                               while(_loc8_ || param1)
                                                               {
                                                                  sprite.scaleY = this.§4^§;
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr284:
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     addr291:
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        addr298:
                                                                        if(false)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              sprite.scaleX = this.§4^§;
                                                                              continue loop28;
                                                                              §§goto(addr298);
                                                                           }
                                                                           §§goto(addr359);
                                                                           addr300:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr359);
                                                                        }
                                                                        §§goto(addr359);
                                                                     }
                                                                     else
                                                                     {
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           §,!;§ = §7!Z§.§`!H§(§-!>§);
                                                                           addr319:
                                                                           while(!_loc9_)
                                                                           {
                                                                              §§goto(addr284);
                                                                           }
                                                                           addr331:
                                                                           while(_loc8_ || _loc2_)
                                                                           {
                                                                              §-!>§ = "BIRD_ORANGE_BIG";
                                                                              continue loop25;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§=!b§(null);
                                                                              §§goto(addr331);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr300);
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr331);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr681);
                                                      }
                                                   }
                                                   §§goto(addr359);
                                                }
                                                else
                                                {
                                                   addr371:
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         §§push(this.§2!h§);
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  §§goto(addr391);
                                                               }
                                                               §§goto(addr667);
                                                            }
                                                            §§goto(addr685);
                                                         }
                                                         else
                                                         {
                                                            addr636:
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr637);
                                                            }
                                                            §§goto(addr359);
                                                         }
                                                      }
                                                      §§goto(addr667);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§5!!§);
                                                   }
                                                   §§goto(addr636);
                                                }
                                             }
                                             §§goto(addr359);
                                          }
                                          §§goto(addr693);
                                       }
                                       else
                                       {
                                          §§push(this.§^U§);
                                          if(_loc8_ || _loc3_)
                                          {
                                             §§goto(addr250);
                                          }
                                       }
                                       §§goto(addr433);
                                    }
                                    §§goto(addr442);
                                 }
                                 §§goto(addr513);
                              }
                              §§goto(addr774);
                           }
                           §§goto(addr549);
                        }
                        else
                        {
                           §§push(this.§!!t§);
                           if(_loc8_ || _loc2_)
                           {
                              §§goto(addr371);
                              §§push(this.§ !u§);
                           }
                        }
                        §§goto(addr513);
                     }
                     §§goto(addr258);
                  }
                  §§goto(addr639);
               }
               §§goto(addr744);
            }
            §§goto(addr693);
         }
         §§goto(addr411);
      }
      
      private function §]!O§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §63§()).GetFixtureList()).GetShape() as b2CircleShape;
         if(_loc8_ || this)
         {
            _loc5_.SetAwake(true);
            while(true)
            {
               _loc7_.§8&§(param1);
            }
            addr147:
         }
         loop1:
         while(true)
         {
            §§push(param2);
            loop2:
            while(true)
            {
               §§push(0);
               addr132:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     loop4:
                     while(true)
                     {
                        _loc6_.§!!F§(param2);
                        addr136:
                        while(_loc8_)
                        {
                           _loc5_.§'!d§();
                           while(true)
                           {
                              addr74:
                              if(_loc9_ && param2)
                              {
                                 continue;
                              }
                              if(!_loc8_)
                              {
                                 continue loop4;
                              }
                              if(_loc8_)
                              {
                                 _loc6_.§5!,§(param4);
                                 addr38:
                                 return;
                                 addr88:
                              }
                              §§goto(addr147);
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     §§push(param3);
                     continue loop2;
                  }
               }
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§2!K§)
            {
               if(_loc2_ || _loc2_)
               {
                  super.addTrail();
               }
            }
         }
      }
      
      private function §<!!§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc8_:Number = NaN;
         var _loc9_:* = 0;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         §§push((§63§().GetFixtureList().GetShape() as b2CircleShape).§4!Y§());
         if(!(_loc12_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(§6!E§() / 40);
         if(!_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(1);
         if(_loc13_ || this)
         {
            §§push(_loc4_);
            if(_loc13_ || _loc3_)
            {
               §§push(§§pop() * §^!e§(true));
               if(!(_loc12_ && param1))
               {
                  §§push(§§pop() * 0.9);
               }
            }
            §§push(int(§§pop() + §§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(Math.PI / 2);
         if(_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(_loc3_);
         if(!_loc12_)
         {
            §§push(§§pop() / this.§[!I§);
            if(_loc13_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         if(_loc13_)
         {
            §§push(_loc5_);
            loop0:
            while(true)
            {
               §§push(_loc7_);
               if(!_loc12_)
               {
                  §§push(§§pop() * 3);
                  if(_loc13_ || _loc3_)
                  {
                     §§push(§§pop() * param1);
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
                     if(_loc13_ || _loc3_)
                     {
                        _loc5_ = §§pop();
                        while(true)
                        {
                           §§push(30);
                           addr582:
                           if(_loc12_ && _loc3_)
                           {
                              continue;
                           }
                           if(!(_loc13_ || _loc3_))
                           {
                              continue loop2;
                           }
                           addr596:
                           _loc9_ = §§pop();
                           if(_loc13_ || param1)
                           {
                              if(!_loc13_)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    if(!(_loc12_ && param2))
                                    {
                                       §§push(8);
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc13_ || param1)
                                          {
                                             if(!_loc13_)
                                             {
                                                break;
                                             }
                                             _loc5_ = §§pop();
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                addr702:
                                                while(true)
                                                {
                                                   addr640:
                                                   while(true)
                                                   {
                                                      if(param2)
                                                      {
                                                         continue loop6;
                                                      }
                                                      addr573:
                                                      addr573:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         if(_loc12_ && param1)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§goto(addr582);
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                             addr701:
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             continue loop7;
                                             addr625:
                                             while(true)
                                             {
                                                if(!(_loc13_ || this))
                                                {
                                                   continue loop8;
                                                }
                                                if(!(_loc13_ || param1))
                                                {
                                                   break;
                                                }
                                                §§goto(addr573);
                                                §§goto(addr596);
                                             }
                                             §§goto(addr702);
                                          }
                                       }
                                       continue loop0;
                                    }
                                    addr700:
                                    addr700:
                                    while(true)
                                    {
                                    }
                                    §§goto(addr701);
                                 }
                              }
                              addr467:
                              §§push(_loc9_);
                              if(_loc13_ || _loc3_)
                              {
                                 addr477:
                                 if(§§pop() >= _loc5_ / 3)
                                 {
                                    addr481:
                                    _loc9_ = 0;
                                    addr482:
                                    addr480:
                                    §§push(_loc9_);
                                    if(_loc13_)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc12_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc13_ || param2)
                                             {
                                                if(_loc13_ || param1)
                                                {
                                                   if(_loc13_)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            _loc9_++;
                                                            addr485:
                                                            §§goto(addr467);
                                                            addr532:
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr485);
                                                   }
                                                   §§goto(addr482);
                                                }
                                                addr427:
                                                if(_loc13_)
                                                {
                                                   §§push(0.5);
                                                   if(!_loc12_)
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc12_ && _loc3_))
                                                            {
                                                               if(_loc13_ || param1)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc13_ || this)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc13_ || param1)
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           addr289:
                                                                           §§push(§§pop() * (Math.random() * 0.5));
                                                                           if(_loc13_ || _loc3_)
                                                                           {
                                                                              if(!(_loc12_ && param1))
                                                                              {
                                                                                 if(_loc13_ || _loc3_)
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          if(!(_loc12_ && _loc3_))
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                addr325:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc12_ && param1))
                                                                                                {
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      if(_loc13_ || this)
                                                                                                      {
                                                                                                         _loc11_ = §§pop();
                                                                                                         addr352:
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            if(!(_loc12_ && param2))
                                                                                                            {
                                                                                                               §§push(§,!s§.§=!I§);
                                                                                                               if(!(_loc12_ && param2))
                                                                                                               {
                                                                                                                  §§push(§§pop().particles);
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     §§push(§>p§.§&@§);
                                                                                                                     if(!(_loc12_ && param2))
                                                                                                                     {
                                                                                                                        §§push(§=!%§.§2k§);
                                                                                                                        if(!(_loc12_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§>p§.§%§);
                                                                                                                           if(!(_loc12_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§pop().§-M§(§§pop(),§§pop(),§§pop(),§63§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§63§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§>p§.§1>§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
                                                                                                                              _loc9_++;
                                                                                                                              addr140:
                                                                                                                              if(!(_loc12_ && param1))
                                                                                                                              {
                                                                                                                                 if(_loc13_ || param2)
                                                                                                                                 {
                                                                                                                                    if(!_loc12_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr482);
                                                                                                                                    }
                                                                                                                                    addr496:
                                                                                                                                    §,!s§.§=!I§.particles.§-M§(§>p§.§'f§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§63§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
                                                                                                                                    §§goto(addr532);
                                                                                                                                    addr556:
                                                                                                                                 }
                                                                                                                                 §§goto(addr352);
                                                                                                                              }
                                                                                                                              addr242:
                                                                                                                              §§goto(addr242);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr496);
                                                                                                            }
                                                                                                            §§push(Math.random() * this.§[!I§);
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               addr547:
                                                                                                               §§push(this.§[!I§);
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  addr546:
                                                                                                                  §§push(§§pop() / 2);
                                                                                                               }
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  addr555:
                                                                                                                  _loc8_ = §§pop() * 2 * _loc7_;
                                                                                                                  addr554:
                                                                                                                  §§goto(addr556);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr554);
                                                                                                            addr572:
                                                                                                         }
                                                                                                         addr466:
                                                                                                         §§push(Math.random() * this.§[!I§);
                                                                                                         if(!(_loc12_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc13_ || _loc3_)
                                                                                                            {
                                                                                                               addr384:
                                                                                                               §§push(this.§[!I§);
                                                                                                               §§push(2);
                                                                                                               if(!(_loc12_ && _loc3_))
                                                                                                               {
                                                                                                                  addr393:
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(!(_loc12_ && param2))
                                                                                                                  {
                                                                                                                     addr401:
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        §§push(2);
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           addr408:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(!_loc12_)
                                                                                                                           {
                                                                                                                              addr411:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc12_ && param1))
                                                                                                                              {
                                                                                                                                 if(_loc13_ || param2)
                                                                                                                                 {
                                                                                                                                    addr426:
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    §§goto(addr427);
                                                                                                                                 }
                                                                                                                                 addr571:
                                                                                                                                 _loc6_ = §§pop();
                                                                                                                                 §§goto(addr572);
                                                                                                                              }
                                                                                                                              addr465:
                                                                                                                              _loc10_ = §§pop();
                                                                                                                              addr464:
                                                                                                                              §§goto(addr466);
                                                                                                                           }
                                                                                                                           §§goto(addr547);
                                                                                                                        }
                                                                                                                        addr458:
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           addr463:
                                                                                                                           §§goto(addr464);
                                                                                                                           §§push(§§pop() / (§§pop() / Math.PI));
                                                                                                                        }
                                                                                                                        §§goto(addr554);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr555);
                                                                                                               }
                                                                                                               §§goto(addr546);
                                                                                                            }
                                                                                                            §§goto(addr465);
                                                                                                         }
                                                                                                         §§goto(addr411);
                                                                                                      }
                                                                                                      §§goto(addr555);
                                                                                                   }
                                                                                                   §§goto(addr401);
                                                                                                }
                                                                                                §§goto(addr426);
                                                                                             }
                                                                                             §§goto(addr555);
                                                                                          }
                                                                                          §§goto(addr411);
                                                                                       }
                                                                                       §§goto(addr325);
                                                                                    }
                                                                                    addr567:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    §§goto(addr571);
                                                                                 }
                                                                                 §§goto(addr384);
                                                                              }
                                                                              §§goto(addr393);
                                                                           }
                                                                           §§goto(addr408);
                                                                        }
                                                                        addr449:
                                                                        _loc6_ = §§pop();
                                                                        addr450:
                                                                        if(_loc13_ || this)
                                                                        {
                                                                           §§goto(addr458);
                                                                           §§push(180);
                                                                        }
                                                                        §§goto(addr567);
                                                                        §§push(Math.random() * (720 / _loc5_));
                                                                     }
                                                                     §§goto(addr289);
                                                                  }
                                                                  §§goto(addr325);
                                                               }
                                                               §§goto(addr463);
                                                            }
                                                            §§goto(addr289);
                                                         }
                                                         §§goto(addr450);
                                                      }
                                                      §§goto(addr408);
                                                   }
                                                   §§goto(addr325);
                                                }
                                                §§goto(addr480);
                                             }
                                             §§goto(addr140);
                                          }
                                          §§push(_loc6_);
                                          if(_loc13_)
                                          {
                                             §§push(Number(§§pop() + §[!R§(Math.random() * (720 / _loc5_))));
                                             if(_loc13_)
                                             {
                                                addr448:
                                                §§goto(addr449);
                                                §§push(§§pop());
                                             }
                                             §§goto(addr449);
                                          }
                                          §§goto(addr448);
                                       }
                                       §§goto(addr477);
                                    }
                                    §§goto(addr481);
                                 }
                                 §§goto(addr449);
                                 §§push(_loc6_);
                              }
                              §§goto(addr481);
                           }
                           §§goto(addr625);
                        }
                        addr698:
                     }
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           §§goto(addr700);
                        }
                        §§goto(addr640);
                        §§goto(addr698);
                     }
                  }
                  §§push(Number(§§pop()));
                  if(!(_loc13_ || param2))
                  {
                     continue;
                  }
                  _loc4_ = §§pop();
                  §§goto(addr625);
               }
            }
         }
         §§goto(addr700);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§2!K§)
            {
               if(!(_loc2_ && this))
               {
                  addr27:
                  §§push(1);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr31:
                  return -1;
               }
               return §§pop();
            }
            §§goto(addr31);
         }
         §§goto(addr27);
      }
      
      private function §=!b§(param1:§ 4§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!§[A§)
            {
               while(true)
               {
                  §§push(§-!Q§);
                  §§push("Globe_Bird_Special_Activation_");
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop() + Math.round(Math.random() * 2 + 1));
                  }
                  §§pop().§7"$§(§§pop(),"ChannelOrangeBird");
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr97);
               }
            }
            addr97:
            return §§pop();
            §§push(false);
         }
         §§goto(addr93);
      }
   }
}
