package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §#I§.b2BodyDef;
   import §#I§.b2World;
   import §0S§.§6!D§;
   import §40§.§1!g§;
   import §40§.§5G§;
   import §;!y§.§,!s§;
   import §`g§.Sprite;
   
   public class §3!5§ extends §&Y§
   {
      
      protected static const §]j§:Boolean = false;
      
      protected static const §2"!§:Number = 2000;
      
      protected static const §=!z§:Number = 0.2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]j§ = false;
            while(true)
            {
               §2"!§ = 2000;
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            §=!z§ = 0.2;
            if(!_loc1_)
            {
               if(!(_loc1_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §#!4§:Number;
      
      protected var §[A§:Boolean = false;
      
      protected var §]9§:int = 0;
      
      public function §3!5§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            loop0:
            for(; param10; while(true)
            {
               if(_loc12_ || param3)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(_loc13_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            §+!j§.mTryToScream = §7!r§.§<!c§ + 1;
            §§goto(addr59);
         }
      }
      
      public static function §5%§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         §§push(param3);
         if(_loc12_ || param2)
         {
            §§push(int(§§pop() + Math.random() * param4));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Number = 1;
         var _loc8_:int = 0;
         while(true)
         {
            if(_loc8_ >= _loc6_)
            {
               if(_loc12_ || §3!5§)
               {
                  break;
               }
               while(true)
               {
                  if(!_loc11_)
                  {
                     if(!_loc11_)
                     {
                        break;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(0.5);
                        if(!_loc11_)
                        {
                           §§push(param5);
                           if(!_loc11_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc11_ && §3!5§))
                              {
                                 addr167:
                                 §§push(§§pop() + param5 * (Math.random() * 0.5));
                                 if(_loc12_ || param2)
                                 {
                                    addr190:
                                    if(!_loc12_)
                                    {
                                       continue;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                              }
                              if(_loc12_)
                              {
                                 break;
                              }
                              addr206:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 continue loop2;
                              }
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr190);
                     }
                     _loc10_ = §§pop();
                     while(true)
                     {
                        §§push(§,!s§.§=!I§.particles);
                        §§push("STAR_PARTICLE");
                        §§push(§>p§.§,+§);
                        §§push(§=!%§.§2k§);
                        §§push(§>p§.§%§);
                        §§push(param1);
                        §§push(param2);
                        §§push(750);
                        §§push("");
                        §§push(§>p§.§=!f§("BIRD_RED"));
                        §§push(_loc10_);
                        if(!_loc11_)
                        {
                           §§push(§§pop() * Math.cos(_loc9_));
                           if(_loc12_)
                           {
                              addr90:
                              §§push(_loc7_);
                              if(_loc12_ || §3!5§)
                              {
                                 addr109:
                                 §§push(§§pop() * §§pop());
                                 §§push(_loc10_);
                                 if(!_loc11_)
                                 {
                                    addr112:
                                    §§push(-§§pop());
                                    if(!(_loc11_ && §3!5§))
                                    {
                                       addr120:
                                       §§push(§§pop() * Math.sin(_loc9_));
                                       if(!_loc11_)
                                       {
                                          §§push(§§pop() * _loc7_);
                                       }
                                    }
                                    §§push(5);
                                    §§push(_loc10_);
                                    if(!(_loc11_ && §3!5§))
                                    {
                                       §§push(§§pop() * 20);
                                    }
                                    §§pop().§;4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.sqrt(_loc7_));
                                    continue;
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr90);
                     }
                     addr196:
                  }
                  while(!(_loc12_ || param2))
                  {
                     §§goto(addr196);
                  }
                  _loc8_++;
               }
               continue;
            }
            §§push(Math.random() * (Math.PI * 2));
            §§goto(addr206);
         }
      }
      
      public function get §2!K§() : Boolean
      {
         return this.§[A§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(_loc4_)
         {
            _loc3_.§2!C§ = true;
         }
         do
         {
            _loc3_.§"!K§ = 2;
         }
         while(_loc5_ && param2);
         
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(§0M§ < §]!3§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr134:
                     while(true)
                     {
                        §§push(Boolean(§,1§()));
                     }
                  }
                  addr133:
               }
               while(true)
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§#!4§ = 0;
                        if(!(_loc3_ || param1))
                        {
                           loop5:
                           while(true)
                           {
                              if(_loc3_ || this)
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§#!4§);
                                       if(!(_loc2_ && this))
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§#!4§ = §§pop();
                                       addr127:
                                       while(this.§#!4§ >= §2"!§)
                                       {
                                          continue loop5;
                                       }
                                    }
                                    addr114:
                                 }
                                 while(true)
                                 {
                                    §§push(false);
                                    if(_loc2_ && _loc2_)
                                    {
                                       break loop5;
                                    }
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 return §§pop();
                                 addr25:
                              }
                              §§goto(addr127);
                           }
                           continue;
                        }
                        while(true)
                        {
                        }
                        §§goto(addr25);
                     }
                     §§goto(addr114);
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr133);
               }
               return §§pop();
            }
         }
         §§goto(addr52);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§[A§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     if(§-!>§.toUpperCase() != "BIRD_WHITE")
                     {
                        §§push(§-!>§.toUpperCase() == "BIRD_YELLOW");
                        loop1:
                        while(true)
                        {
                           §§push(§§pop());
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr283:
                                    while(true)
                                    {
                                       §§push(§-!>§.toUpperCase() == "BIRD_GREEN");
                                    }
                                 }
                                 addr282:
                              }
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop12:
                                             while(_loc5_ || _loc2_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop2;
                                                }
                                                if(!§§pop())
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr252:
                                                      while(true)
                                                      {
                                                         §§push(§-!>§.toUpperCase() == "BIRD_RED_BIG");
                                                      }
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ || _loc3_))
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               §§push(§-!>§.toUpperCase() == "BIRD_ORANGE");
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop33:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop34:
                                                                           while(true)
                                                                           {
                                                                              if(§+!j§.mTryToFly)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       break loop17;
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(true);
                                                                                       loop19:
                                                                                       while(!_loc4_)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             addr148:
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                while(!_loc4_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   if(§+!j§.mTryToSpecial)
                                                                                                   {
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §+!j§.mTryToSpecial = false;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc4_ && this))
                                                                                                               {
                                                                                                                  if(§+!j§.mIsSpecial)
                                                                                                                  {
                                                                                                                     loop25:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §+!j§.mIsSpecial = false;
                                                                                                                        loop26:
                                                                                                                        while(!_loc4_)
                                                                                                                        {
                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              while(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    _loc2_ = §§pop();
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                    continue loop26;
                                                                                                                                 }
                                                                                                                                 addr294:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    addr295:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop19;
                                                                                                                              addr54:
                                                                                                                           }
                                                                                                                           continue loop34;
                                                                                                                        }
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr29);
                                                                                                               }
                                                                                                               §§goto(addr145);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr173);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr29);
                                                                                                }
                                                                                                addr212:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   continue loop33;
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop6;
                                                                                       addr202:
                                                                                    }
                                                                                    §§goto(addr295);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr148);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr282);
                                                                  }
                                                                  §§goto(addr283);
                                                               }
                                                               §§goto(addr202);
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr271:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            break loop17;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§-!>§.toUpperCase() == "BIRD_RED");
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr212);
                                                }
                                             }
                                             continue loop7;
                                          }
                                          addr239:
                                       }
                                       §§goto(addr271);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr293);
               }
               §§goto(addr49);
            }
         }
         §§goto(addr170);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         if(!_loc5_)
         {
            §§push(Boolean(§63§().IsAwake()));
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
                        addr356:
                        while(true)
                        {
                           §§push(§0M§ == §]!3§);
                        }
                     }
                     addr355:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§+!j§.mTryToFly)
                           {
                              if(_loc4_)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(_loc4_ || this)
                                    {
                                       if(!_loc5_)
                                       {
                                          §+!j§.mTryToFly = false;
                                          loop32:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(§+!j§.mIsFlying)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §+!j§.mIsFlying = false;
                                                                  loop33:
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     loop34:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop32;
                                                                              }
                                                                              continue loop33;
                                                                           }
                                                                           loop16:
                                                                           while(_loc4_)
                                                                           {
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§push(§]j§);
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§push(!§'!j§());
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr202:
                                                                                                   loop23:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_ || this)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         while(!_loc5_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(!§1!b§());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc4_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                 {
                                                                                                                                    if(!(_loc5_ && param1))
                                                                                                                                    {
                                                                                                                                       §4I§(0);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc4_ || param1)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr101:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop34;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr182:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr101);
                                                                                                                                             }
                                                                                                                                             addr230:
                                                                                                                                          }
                                                                                                                                          §§goto(addr101);
                                                                                                                                          addr67:
                                                                                                                                          if(_loc4_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop34;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §,!!§();
                                                                                                                                       }
                                                                                                                                       addr233:
                                                                                                                                    }
                                                                                                                                    §§goto(addr101);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr148:
                                                                                                                           }
                                                                                                                           §§goto(addr101);
                                                                                                                        }
                                                                                                                        addr146:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           break loop18;
                                                                                                                        }
                                                                                                                        addr243:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr218:
                                                                                                                  while(_loc4_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  loop8:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     addr335:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop10:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§-!>§.toUpperCase() == "BIRD_GREEN")
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1);
                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(this.§[A§)
                                                                                                                                    {
                                                                                                                                       if(_loc4_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(2);
                                                                                                                                          if(!(_loc5_ && param1))
                                                                                                                                          {
                                                                                                                                             addr299:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(360);
                                                                                                                                                if(_loc4_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr310:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr314:
                                                                                                                                                      §§push(§§pop() / 1000);
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr328:
                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                      while(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §4I§(§3C§() - _loc3_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr101);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§+!j§.mTryToFly)
                                                                                                                                                         {
                                                                                                                                                            continue loop10;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §+!j§.mTryToFly = true;
                                                                                                                                                            addr348:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop8;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr329:
                                                                                                                                                      addr342:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr328);
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr314);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr314);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(1);
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr299);
                                                                                                                                          §§push(§§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr310);
                                                                                                                                 }
                                                                                                                                 §§goto(addr314);
                                                                                                                              }
                                                                                                                              addr267:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr243);
                                                                                                                              §§push(§-!>§.toUpperCase() == "BIRD_WHITE");
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr137:
                                                                                                            }
                                                                                                            §§goto(addr261);
                                                                                                         }
                                                                                                         break;
                                                                                                         addr210:
                                                                                                      }
                                                                                                      addr245:
                                                                                                      while(_loc4_ || param1)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         break loop23;
                                                                                                      }
                                                                                                      §§goto(addr355);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr218);
                                                                                                   }
                                                                                                   addr202:
                                                                                                }
                                                                                                §§goto(addr146);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr202);
                                                                                       }
                                                                                       §§goto(addr233);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       §§goto(addr245);
                                                                                    }
                                                                                    addr232:
                                                                                 }
                                                                                 §§goto(addr230);
                                                                              }
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        §§goto(addr202);
                                                                     }
                                                                     continue loop32;
                                                                  }
                                                                  addr100:
                                                               }
                                                               §§goto(addr335);
                                                            }
                                                            §§goto(addr329);
                                                         }
                                                         §§goto(addr148);
                                                      }
                                                      §§goto(addr100);
                                                   }
                                                   §§goto(addr23);
                                                }
                                                §§goto(addr348);
                                             }
                                             §§goto(addr267);
                                          }
                                          addr128:
                                       }
                                       break;
                                    }
                                    §§goto(addr345);
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr23);
                        }
                        §§goto(addr342);
                     }
                     §§goto(addr356);
                  }
               }
               if(_loc4_ || _loc3_)
               {
                  return §§pop();
               }
            }
         }
         §§goto(addr182);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§5G§ = §,!s§.§=!I§;
         if(!_loc8_)
         {
            §§push(§0M§ < §]!3§);
            if(!_loc8_)
            {
               if(!§§pop())
               {
                  loop57:
                  while(true)
                  {
                     §§pop();
                     addr83:
                     while(true)
                     {
                        §§push(§63§() == null);
                        if(_loc7_)
                        {
                           break;
                        }
                        continue loop57;
                     }
                  }
                  addr82:
               }
               loop0:
               for(; §§pop(); §§goto(addr83))
               {
                  loop1:
                  while(true)
                  {
                     _loc1_.§-!7§(this);
                     loop2:
                     while(!(_loc8_ && _loc2_))
                     {
                        while(true)
                        {
                           _loc1_.§[!f§ = false;
                           if(_loc7_ || _loc1_)
                           {
                              if(_loc7_ || _loc1_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
               §§push(x * §5G§.§6+§);
               if(_loc7_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(y * §5G§.§6+§);
               if(_loc7_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(!_loc8_)
               {
                  §§push(_loc1_.§[!f§);
                  loop4:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(§,z§ <= 1)
                        {
                           §§push(§>p§.PARTICLE_NAME_BIRD_TRAIL1);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              loop6:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§]9§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(1);
                                       addr423:
                                       addr354:
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             continue loop8;
                                          }
                                          if(_loc7_)
                                          {
                                             if(!(_loc8_ && _loc1_))
                                             {
                                                §§push(§>p§.PARTICLE_NAME_BIRD_TRAIL2);
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   §§push(§§pop());
                                                }
                                                continue loop5;
                                             }
                                             addr473:
                                             while(true)
                                             {
                                                §§push(_loc1_.particles);
                                                loop11:
                                                while(true)
                                                {
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      §§push(§>p§.§8_§);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(_loc7_ || _loc1_)
                                                         {
                                                            §§push(§=!%§.§#,§);
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(_loc7_ || _loc1_)
                                                               {
                                                                  §§push(§>p§.§?-§);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc8_ && _loc3_))
                                                                     {
                                                                        §§push(_loc2_);
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(-1);
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push("");
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc8_ && _loc1_))
                                                                                          {
                                                                                             §§push(§>p§.§9§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().§-M§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         loop21:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc1_.slingshot.§^F§());
                                                                                                            loop22:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr418:
                                                                                                                  loop23:
                                                                                                                  while(_loc7_)
                                                                                                                  {
                                                                                                                     §5%§(_loc2_,_loc3_,0,3,10);
                                                                                                                     loop24:
                                                                                                                     while(!_loc8_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§6!E§() > §1!g§.BIRD_LAUNCH_FORCE_GREEN);
                                                                                                                           if(!(_loc8_ && _loc1_))
                                                                                                                           {
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                           addr258:
                                                                                                                           loop32:
                                                                                                                           while(_loc7_)
                                                                                                                           {
                                                                                                                              addr260:
                                                                                                                              §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc7_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(Math.random() < §=!z§);
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop32;
                                                                                                                                    addr268:
                                                                                                                                 }
                                                                                                                                 addr551:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§]9§ = 0;
                                                                                                                                    addr546:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr260);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop23;
                                                                                                                                       }
                                                                                                                                       §§push(-Math.PI);
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / 2);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          addr229:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                       }
                                                                                                                                       addr230:
                                                                                                                                    }
                                                                                                                                    loop29:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop24;
                                                                                                                                       }
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(Math.random()));
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc1_.particles);
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§>p§.§&@§);
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§=!%§.§2k§);
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop13;
                                                                                                                                                               }
                                                                                                                                                               §§push(§>p§.§%§);
                                                                                                                                                               if(!(_loc8_ && this))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               addr315:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop14;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop15;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     if(!(_loc8_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop17;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop16;
                                                                                                                                                                  }
                                                                                                                                                                  addr564:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     addr565:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-1);
                                                                                                                                                                        addr566:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push("");
                                                                                                                                                                           addr567:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§>p§.§9§);
                                                                                                                                                                              addr569:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().§-M§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                                 break loop29;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop11;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                            }
                                                                                                                                                            addr299:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§=!%§.§#,§);
                                                                                                                                                               continue loop13;
                                                                                                                                                            }
                                                                                                                                                            continue loop12;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop21;
                                                                                                                                                         }
                                                                                                                                                         addr353:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr261);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr551);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr229);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr230);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr451:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && this))
                                                                                                                                             {
                                                                                                                                                break loop9;
                                                                                                                                             }
                                                                                                                                             break loop29;
                                                                                                                                          }
                                                                                                                                          addr451:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc1_.§[!f§ = false;
                                                                                                                                       §§goto(addr551);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 §§goto(addr268);
                                                                                                                              }
                                                                                                                              addr261:
                                                                                                                              return;
                                                                                                                           }
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                                  loop47:
                                                                                                                  while(!_loc8_)
                                                                                                                  {
                                                                                                                     if(_loc8_ && _loc1_)
                                                                                                                     {
                                                                                                                        while(!(_loc8_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(§>p§.PARTICLE_NAME_BIRD_TRAIL3);
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              if(!(_loc7_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              §§push(§§pop());
                                                                                                                           }
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           break loop47;
                                                                                                                        }
                                                                                                                        continue loop7;
                                                                                                                        addr396:
                                                                                                                     }
                                                                                                                     §§goto(addr299);
                                                                                                                     §§push(_loc1_.particles);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     break loop9;
                                                                                                                  }
                                                                                                                  addr370:
                                                                                                                  addr418:
                                                                                                               }
                                                                                                               §§goto(addr236);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc1_.particles);
                                                                                                            addr557:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§>p§.§@=§);
                                                                                                               addr559:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§=!%§.§#,§);
                                                                                                                  addr561:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§>p§.§?-§);
                                                                                                                     addr563:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr555:
                                                                                                      }
                                                                                                      §§goto(addr564);
                                                                                                   }
                                                                                                   §§goto(addr546);
                                                                                                }
                                                                                             }
                                                                                             addr526:
                                                                                          }
                                                                                          §§goto(addr567);
                                                                                       }
                                                                                       addr517:
                                                                                    }
                                                                                    §§goto(addr566);
                                                                                 }
                                                                              }
                                                                              §§goto(addr565);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr563);
                                                                  }
                                                               }
                                                               §§goto(addr561);
                                                            }
                                                         }
                                                         §§goto(addr559);
                                                      }
                                                   }
                                                   §§goto(addr557);
                                                }
                                             }
                                          }
                                          §§goto(addr451);
                                       }
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§]9§ + 1);
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             §§push(§§pop() % 3);
                                          }
                                          §§pop().§]9§ = §§pop();
                                          §§goto(addr370);
                                          §§goto(addr418);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr473);
                     }
                     §§goto(addr555);
                  }
               }
               §§goto(addr418);
            }
            §§goto(addr82);
         }
         §§goto(addr74);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§+!j§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(!_loc1_)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     addr52:
                     §'!S§(§6!D§.§8!n§);
                     addr56:
                  }
                  return;
               }
               §§goto(addr56);
            }
         }
         §§goto(addr52);
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§[A§);
            if(!(_loc2_ && param1))
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §'!S§(§6!D§.§ try§);
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           this.§[A§ = true;
                           if(_loc3_ || param1)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(true);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    return §§pop();
                                 }
                                 break;
                                 addr75:
                              }
                              continue loop0;
                           }
                           continue;
                        }
                     }
                     §§goto(addr95);
                  }
               }
               §§push(false);
            }
            addr95:
            return §§pop();
         }
         §§goto(addr75);
      }
      
      private function §1b§(param1:int) : int
      {
         return Math.min(§,!s§.§=!I§.§1![§,param1);
      }
      
      override public function addDestructionParticles(param1:§=!%§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§^!e§(false) + 1);
         var _loc4_:* = Number(90);
         if(!_loc9_)
         {
            §§push(this.§1b§(_loc3_));
            if(_loc10_ || param1)
            {
               §§push(int(§§pop()));
               if(_loc10_ || _loc2_)
               {
                  addr56:
                  _loc3_ = §§pop();
                  §§push(0);
               }
               var _loc5_:* = §§pop();
               loop0:
               while(true)
               {
                  if(_loc5_ >= _loc3_)
                  {
                     if(!_loc9_)
                     {
                        if(!(_loc9_ && this))
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(-§+!j§.mH);
                           if(_loc10_ || param1)
                           {
                              if(!_loc10_)
                              {
                                 continue;
                              }
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§push(§5G§.§6+§);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc10_)
                                       {
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc9_)
                                             {
                                                addr182:
                                                if(!_loc9_)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      _loc8_ = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         addr189:
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               if(_loc10_ || this)
                                                               {
                                                                  §§push(Math.random() * -_loc8_);
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     §§push(2);
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        addr221:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc10_)
                                                                           {
                                                                              addr231:
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 addr239:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       param1.§-M§(§>p§.§&@§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x + _loc7_,§63§().GetPosition().y + _loc8_,1500,"",§>p§.§=!f§(§-!>§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_++;
                                                                                          addr78:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_ && _loc3_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(-§+!j§.mW);
                                                                                                addr247:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(§5G§.§6+§);
                                                                                                      if(_loc10_ || _loc2_)
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr262:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        addr271:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              §§push(Math.random() * -_loc7_);
                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(2);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    addr287:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr313:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(_loc10_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                      addr323:
                                                                                                                                                      loop11:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(180 / Math.PI);
                                                                                                                                                         addr327:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            addr328:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               addr329:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc6_ = §§pop();
                                                                                                                                                                  continue loop19;
                                                                                                                                                               }
                                                                                                                                                               continue loop11;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr322:
                                                                                                                                                }
                                                                                                                                                §§goto(addr323);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr312:
                                                                                                                                       }
                                                                                                                                       addr290:
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr286:
                                                                                                                              }
                                                                                                                              §§goto(addr287);
                                                                                                                           }
                                                                                                                           §§goto(addr329);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr270:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr306:
                                                                                                                  }
                                                                                                                  §§goto(addr312);
                                                                                                               }
                                                                                                            }
                                                                                                            addr261:
                                                                                                         }
                                                                                                         §§goto(addr322);
                                                                                                      }
                                                                                                      §§goto(addr287);
                                                                                                   }
                                                                                                   §§goto(addr323);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr328);
                                                                              }
                                                                              §§goto(addr261);
                                                                           }
                                                                           §§goto(addr239);
                                                                        }
                                                                        §§goto(addr270);
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                   §§goto(addr327);
                                                }
                                                §§goto(addr287);
                                             }
                                             §§goto(addr221);
                                          }
                                          §§goto(addr313);
                                       }
                                    }
                                    §§goto(addr231);
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr290);
                           }
                           §§goto(addr189);
                        }
                     }
                     §§goto(addr78);
                  }
                  else
                  {
                     §§push(_loc4_);
                  }
                  §§goto(addr306);
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      override public function addDamageParticles(param1:§=!%§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(_loc9_)
         {
            if(§1!b§())
            {
               if(!_loc10_)
               {
                  return;
               }
            }
            if(param2 < 6)
            {
               if(!(_loc10_ && this))
               {
                  return;
               }
            }
         }
         §§push(§6!E§() / 10);
         if(_loc9_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(_loc9_ || this)
         {
            §§push(_loc3_);
            if(!(_loc10_ && _loc3_))
            {
               addr82:
               §§push(§§pop() * §^!e§(false));
               if(_loc9_)
               {
                  addr78:
                  §§push(§§pop() * 0.12);
               }
               var _loc4_:* = int(§§pop() + §§pop());
               var _loc5_:* = Number(90);
               if(_loc9_ || this)
               {
                  §§push(param2);
                  loop0:
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
                           while(true)
                           {
                              param2 = §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc10_ && param1))
                                 {
                                    if(_loc10_ && param1)
                                    {
                                       break;
                                    }
                                    if(_loc10_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(3 + param2 / 20);
                                    if(_loc10_ && _loc3_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc9_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(int(§§pop()));
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§1b§(_loc4_));
                                       if(_loc9_)
                                       {
                                          continue loop5;
                                       }
                                       addr420:
                                       loop7:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          addr421:
                                          while(true)
                                          {
                                             if(!_loc10_)
                                             {
                                                if(_loc10_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             continue loop6;
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               loop9:
               while(true)
               {
                  §§push(_loc6_);
                  loop10:
                  while(true)
                  {
                     §§push(_loc4_);
                     loop11:
                     while(true)
                     {
                        if(§§pop() >= §§pop() / 3)
                        {
                           if(!(_loc10_ && _loc3_))
                           {
                              §§push(0);
                              while(true)
                              {
                                 _loc6_ = §§pop();
                              }
                              addr335:
                           }
                           loop13:
                           while(true)
                           {
                              loop14:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                                 if(_loc10_)
                                 {
                                    continue loop10;
                                 }
                                 §§push(_loc4_);
                                 if(!(_loc9_ || param2))
                                 {
                                    continue loop11;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc9_ || this)
                                    {
                                       if(_loc9_)
                                       {
                                          return;
                                       }
                                       while(true)
                                       {
                                          _loc6_++;
                                          addr278:
                                          param1.§-M§(§>p§.§&@§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x,§63§().GetPosition().y,1250,"",§>p§.§=!f§(§-!>§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
                                       }
                                    }
                                    loop22:
                                    while(true)
                                    {
                                       if(_loc9_ || param1)
                                       {
                                          if(!_loc10_)
                                          {
                                             continue loop14;
                                          }
                                          loop23:
                                          for(; !(_loc10_ && param2); _loc7_ = §§pop())
                                          {
                                             §§push(0.5);
                                             if(!_loc10_)
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc9_ || param2)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc9_ || this)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     addr224:
                                                                     if(_loc9_)
                                                                     {
                                                                        addr241:
                                                                        §§push(§§pop() * (Math.random() * 0.5));
                                                                        if(!(_loc10_ && param2))
                                                                        {
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr259:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       addr269:
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       if(!(_loc9_ || param2))
                                                                                       {
                                                                                          break loop22;
                                                                                       }
                                                                                       §§goto(addr278);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       addr292:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       loop18:
                                                                                       while(!(_loc10_ && param2))
                                                                                       {
                                                                                          §§push(180 / Math.PI);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() / §§pop());
                                                                                             addr309:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr310:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop() + Math.random() * (720 / _loc4_)));
                                                                                                      break loop18;
                                                                                                   }
                                                                                                   addr378:
                                                                                                   addr384:
                                                                                                   continue loop23;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       _loc5_ = §§pop();
                                                                                       break loop22;
                                                                                       addr297:
                                                                                    }
                                                                                    §§goto(addr308);
                                                                                 }
                                                                              }
                                                                              §§goto(addr259);
                                                                           }
                                                                           §§goto(addr384);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr241);
                                                                           }
                                                                           addr291:
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                     §§goto(addr308);
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               §§goto(addr384);
                                                            }
                                                            §§goto(addr309);
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr297);
                                                }
                                                §§goto(addr310);
                                             }
                                             §§goto(addr259);
                                          }
                                          addr339:
                                          if(!_loc10_)
                                          {
                                             continue loop9;
                                          }
                                          addr373:
                                          _loc6_++;
                                          §§goto(addr339);
                                       }
                                       §§goto(addr269);
                                    }
                                    param1.§-M§(§>p§.§'f§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x,§63§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
                                    §§goto(addr373);
                                 }
                                 else
                                 {
                                    §§push(_loc5_);
                                    if(!_loc10_)
                                    {
                                       §§goto(addr291);
                                       §§push(Math.random() * (720 / _loc4_));
                                    }
                                 }
                                 §§goto(addr310);
                              }
                              §§goto(addr335);
                           }
                        }
                        else
                        {
                           §§push(_loc5_);
                        }
                        §§goto(addr378);
                     }
                  }
               }
            }
            §§goto(addr78);
         }
         §§goto(addr82);
      }
   }
}
