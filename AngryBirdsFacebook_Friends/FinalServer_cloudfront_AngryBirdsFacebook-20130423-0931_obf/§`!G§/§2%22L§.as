package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §-f§.§[!J§;
   import §4!<§.§&=§;
   import §4!<§.§'!S§;
   import §6"1§.b2BodyDef;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   
   public class §2"L§ extends §<N§
   {
      
      protected static const §"w§:Boolean = false;
      
      protected static const §false§:Number = 2000;
      
      protected static const §'"@§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §2"L§))
         {
            §"w§ = false;
            while(true)
            {
               §false§ = 2000;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §'"@§ = 0.2;
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      private var §"!7§:Number;
      
      protected var §<k§:Boolean = false;
      
      protected var §%b§:int = 0;
      
      public function §2"L§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            loop0:
            for(; param10; while(true)
            {
               if(_loc12_ || param2)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!_loc12_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            §2!8§.mTryToScream = §+T§.§<!t§ + 1;
            §§goto(addr54);
         }
      }
      
      public static function §"x§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         §§push(param3);
         if(!_loc11_)
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
               if(_loc12_)
               {
                  break;
               }
               while(_loc11_ && param1)
               {
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(!(_loc11_ && §2"L§))
                        {
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           §§push(0.5);
                           if(_loc12_ || param1)
                           {
                              §§push(param5);
                              if(_loc12_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc11_ && param2))
                                 {
                                    if(_loc12_)
                                    {
                                       §§push(param5);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          continue loop3;
                                       }
                                       addr201:
                                    }
                                 }
                                 addr187:
                                 §§push(Number(§§pop()));
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§push(§§pop() + §§pop() * (Math.random() * 0.5));
                              if(_loc11_)
                              {
                              }
                           }
                           §§goto(addr187);
                        }
                        _loc10_ = §§pop();
                     }
                     §§push(§?l§.§'h§.particles);
                     §§push("STAR_PARTICLE");
                     §§push(§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES);
                     §§push(§6!O§.PARTICLE_GROUP_GAME_EFFECTS);
                     §§push(§0i§.PARTICLE_TYPE_KINETIC_PARTICLE);
                     §§push(param1);
                     §§push(param2);
                     §§push(750);
                     §§push("");
                     §§push(§0i§.getParticleMaterialFromEngineMaterial("BIRD_RED"));
                     §§push(_loc10_);
                     if(_loc12_)
                     {
                        §§push(§§pop() * Math.cos(_loc9_));
                        if(!(_loc11_ && §2"L§))
                        {
                           §§push(_loc7_);
                           if(_loc12_)
                           {
                              addr102:
                              §§push(§§pop() * §§pop());
                              §§push(_loc10_);
                              if(!(_loc11_ && param1))
                              {
                                 addr110:
                                 §§push(-§§pop());
                                 if(_loc11_ && param2)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() * Math.sin(_loc9_));
                                 if(!_loc12_)
                                 {
                                    continue;
                                 }
                              }
                              §§push(§§pop() * _loc7_);
                              continue;
                           }
                           §§goto(addr110);
                        }
                     }
                     §§goto(addr102);
                  }
                  _loc8_++;
               }
               continue;
            }
            §§push(Math.random() * (Math.PI * 2));
            §§goto(addr201);
         }
      }
      
      public function get §#P§() : Boolean
      {
         return this.§<k§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!_loc5_)
         {
            _loc3_.§1p§ = true;
            do
            {
               _loc3_.§6"9§ = 2;
            }
            while(!(_loc4_ || param2));
            
         }
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(§ d§ < §^!2§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr128:
                     while(true)
                     {
                        §§push(Boolean(§]!!§()));
                        addr107:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  addr127:
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     this.§"!7§ = 0;
                     if(_loc2_ || this)
                     {
                        if(_loc3_ && _loc2_)
                        {
                           loop3:
                           while(true)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr82:
                                 §§push(true);
                                 if(!_loc3_)
                                 {
                                    return §§pop();
                                 }
                                 break;
                              }
                              addr111:
                              while(_loc2_)
                              {
                                 §§push(this);
                                 §§push(this.§"!7§);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() + param1);
                                 }
                                 §§pop().§"!7§ = §§pop();
                                 continue loop3;
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr107);
                        }
                        §§push(false);
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && param1))
                           {
                              return §§pop();
                           }
                           §§goto(addr127);
                        }
                        else
                        {
                           §§goto(addr82);
                        }
                     }
                     else
                     {
                        if(_loc3_ && param1)
                        {
                           §§goto(addr121);
                        }
                        §§goto(addr38);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr111);
               }
            }
         }
         §§goto(addr128);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:* = false;
         if(_loc4_)
         {
            §§push(this.§<k§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(§@x§.toUpperCase() != "BIRD_WHITE")
                     {
                        §§push(§@x§.toUpperCase() == "BIRD_YELLOW");
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
                                    if(_loc4_)
                                    {
                                       §§pop();
                                       while(true)
                                       {
                                          §§push(§@x§.toUpperCase() == "BIRD_GREEN");
                                          if(_loc4_ || param1)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop34:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      addr295:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr296:
                                                         while(true)
                                                         {
                                                            §§push(§@x§.toUpperCase() == "BIRD_RED");
                                                         }
                                                      }
                                                      addr295:
                                                   }
                                                   while(true)
                                                   {
                                                      addr245:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                               continue loop34;
                                                            }
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr262:
                                                                  loop12:
                                                                  while(!(_loc5_ && this))
                                                                  {
                                                                     §§push(§@x§.toUpperCase() == "BIRD_RED_BIG");
                                                                     while(true)
                                                                     {
                                                                        addr221:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc5_ && param1)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr231:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || param1)
                                                                                    {
                                                                                       §§push(§@x§.toUpperCase() == "BIRD_ORANGE");
                                                                                       while(true)
                                                                                       {
                                                                                          addr199:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§2!8§.mTryToFly)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(true);
                                                                                                         addr204:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            _loc3_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc4_ || this))
                                                                                                               {
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr203:
                                                                                                   }
                                                                                                }
                                                                                                addr200:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr198:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          addr318:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             continue loop17;
                                                                                          }
                                                                                       }
                                                                                       addr319:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       addr136:
                                                                                       while(_loc4_ || _loc3_)
                                                                                       {
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             if(!(_loc5_ && _loc2_))
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§goto(addr295);
                                                                                       }
                                                                                       §§goto(addr204);
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              addr230:
                                                                           }
                                                                           §§goto(addr198);
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                                  §§goto(addr296);
                                                               }
                                                               addr261:
                                                            }
                                                            §§goto(addr220);
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                             }
                                             addr292:
                                          }
                                          §§goto(addr295);
                                          addr68:
                                          if(_loc4_ || _loc2_)
                                          {
                                             addr75:
                                             loop36:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   §§goto(addr199);
                                                }
                                                else
                                                {
                                                   loop37:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  addr50:
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr68);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr185:
                                                                              while(_loc4_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §2!8§.mTryToSpecial = true;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(true);
                                                                                       addr121:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   break loop37;
                                                                                                }
                                                                                                §§goto(addr261);
                                                                                             }
                                                                                             §§goto(addr230);
                                                                                          }
                                                                                          §§goto(addr136);
                                                                                       }
                                                                                       §§goto(addr262);
                                                                                    }
                                                                                    addr192:
                                                                                 }
                                                                                 §§goto(addr203);
                                                                              }
                                                                              §§goto(addr207);
                                                                              addr185:
                                                                           }
                                                                        }
                                                                        §§goto(addr192);
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr116:
                                                                  addr317:
                                                                  while(_loc4_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!§2!8§.mIsSpecial)
                                                                        {
                                                                           continue loop36;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              §2!8§.mIsSpecial = false;
                                                                              while(!(_loc4_ || _loc3_))
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(true);
                                                                              continue loop37;
                                                                              addr90:
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr50);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr318);
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                               §§goto(addr80);
                                                            }
                                                            §§goto(addr90);
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      §§goto(addr121);
                                                   }
                                                   while(true)
                                                   {
                                                      addr98:
                                                      while(true)
                                                      {
                                                         continue loop36;
                                                      }
                                                   }
                                                }
                                                §§goto(addr136);
                                             }
                                             return §§pop();
                                             addr23:
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr318);
                                    }
                                    §§goto(addr319);
                                 }
                              }
                              §§goto(addr292);
                           }
                        }
                     }
                     §§goto(addr317);
                  }
               }
               §§goto(addr23);
            }
         }
         §§goto(addr118);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         if(_loc5_)
         {
            §§push(Boolean(getBody().IsAwake()));
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
                        addr347:
                        while(true)
                        {
                           addr327:
                           §§push(§ d§ == §^!2§);
                        }
                     }
                     addr346:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§2!8§.mTryToFly)
                           {
                              loop6:
                              while(true)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    if(_loc5_)
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          if(_loc5_)
                                          {
                                             §2!8§.mTryToFly = false;
                                             loop7:
                                             while(true)
                                             {
                                                if(§2!8§.mIsFlying)
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §2!8§.mIsFlying = false;
                                                         loop9:
                                                         while(_loc5_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(true);
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        continue loop9;
                                                                        continue loop9;
                                                                     }
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(!§#b§());
                                                                              addr139:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §6"!§(0);
                                                                                             addr146:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   loop38:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§<k§);
                                                                                                      addr183:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            loop13:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop14:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr107:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop10;
                                                                                                                              addr250:
                                                                                                                           }
                                                                                                                           addr107:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           loop17:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§goto(addr250);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§2!8§.mTryToFly)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §2!8§.mTryToFly = true;
                                                                                                                                          loop29:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(true);
                                                                                                                                             loop21:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                addr319:
                                                                                                                                                loop30:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§@x§.toUpperCase() != "BIRD_GREEN")
                                                                                                                                                         {
                                                                                                                                                            §§push(§@x§.toUpperCase() == "BIRD_WHITE");
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc5_ || _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  continue loop21;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop13;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     continue loop38;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop5;
                                                                                                                                                            addr226:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               continue loop29;
                                                                                                                                                            }
                                                                                                                                                            §§push(param1);
                                                                                                                                                            if(_loc5_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(this.§<k§)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     addr271:
                                                                                                                                                                     §§push(2);
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        addr285:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(360);
                                                                                                                                                                           if(!(_loc4_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr300:
                                                                                                                                                                                 §§push(§§pop() / 1000);
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr300);
                                                                                                                                                                        }
                                                                                                                                                                        _loc3_ = §§pop();
                                                                                                                                                                        continue loop17;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr300);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(1);
                                                                                                                                                                  if(!(_loc4_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr285);
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr300);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr271);
                                                                                                                                                         }
                                                                                                                                                         continue loop30;
                                                                                                                                                      }
                                                                                                                                                      addr251:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr347);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr327);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr336:
                                                                                                                                    }
                                                                                                                                    §§goto(addr251);
                                                                                                                                 }
                                                                                                                                 addr333:
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr107);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr205:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §8"F§();
                                                                                                                           addr207:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ && param1))
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr107);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr336);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr319);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr205:
                                                                                                                     }
                                                                                                                     §§goto(addr256);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(§"w§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr205);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(!§8!1§());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              continue loop1;
                                                                                                                              addr33:
                                                                                                                              if(!(_loc5_ || _loc2_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(!(_loc5_ || param1))
                                                                                                                              {
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                              if(!(_loc4_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    return §§pop();
                                                                                                                                 }
                                                                                                                                 §§goto(addr346);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr226);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr236);
                                                                                                                     }
                                                                                                                     addr204:
                                                                                                                  }
                                                                                                                  §§goto(addr205);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr237);
                                                                                                         continue loop38;
                                                                                                      }
                                                                                                   }
                                                                                                   addr238:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr143:
                                                                                       }
                                                                                       §§goto(addr107);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr204);
                                                                              }
                                                                           }
                                                                           addr179:
                                                                        }
                                                                        §§goto(addr183);
                                                                     }
                                                                  }
                                                                  §§goto(addr139);
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop7;
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                }
                                                §§goto(addr24);
                                             }
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr146);
                              }
                           }
                           §§goto(addr24);
                        }
                        §§goto(addr333);
                     }
                  }
               }
            }
         }
         §§goto(addr238);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§'!S§ = §?l§.§'h§;
         if(!(_loc7_ && _loc2_))
         {
            §§push(§ d§ < §^!2§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr84:
                     do
                     {
                        §§push(getBody() == null);
                        if(!_loc8_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc8_);
                     
                     continue loop0;
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§goto(addr84);
                  }
                  else
                  {
                     §§push(x * §'!S§.§2"<§);
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(y * §'!S§.§2"<§);
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc7_)
                     {
                        addr545:
                        if(_loc1_.§!^§)
                        {
                           addr560:
                           _loc1_.particles.§"!J§(§0i§.§4"[§,§6!O§.§-4§,§0i§.§>!c§,_loc2_,_loc3_,-1,"",§0i§.§7!z§);
                           _loc1_.§!^§ = false;
                           this.§%b§ = 0;
                           addr554:
                           addr557:
                           addr556:
                           addr555:
                           addr546:
                           addr558:
                           addr552:
                           addr550:
                           addr548:
                           addr542:
                           if(_loc8_)
                           {
                              addr303:
                              if(_loc1_.slingshot.§]K§())
                              {
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    if(!_loc7_)
                                    {
                                       §"x§(_loc2_,_loc3_,0,3,10);
                                       §§goto(addr276);
                                    }
                                    §§goto(addr419);
                                 }
                                 §§goto(addr276);
                              }
                              addr276:
                              addr324:
                              §§push(§4"Q§() > §&=§.BIRD_LAUNCH_FORCE_GREEN);
                              if(§4"Q§() > §&=§.BIRD_LAUNCH_FORCE_GREEN)
                              {
                                 addr278:
                                 if(_loc8_ || this)
                                 {
                                    if(!_loc7_)
                                    {
                                       §§pop();
                                       addr288:
                                       if(_loc8_ || _loc2_)
                                       {
                                          if(_loc8_ || this)
                                          {
                                             §§push(Math.random() < §'"@§);
                                             if(!_loc7_)
                                             {
                                                if(_loc8_ || this)
                                                {
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr276);
                                             }
                                             §§goto(addr278);
                                          }
                                          §§goto(addr389);
                                       }
                                       §§goto(addr324);
                                    }
                                    §§goto(addr545);
                                 }
                                 §§goto(addr303);
                              }
                              addr230:
                              if(§§pop())
                              {
                                 addr232:
                                 if(_loc8_)
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       if(_loc8_)
                                       {
                                          addr258:
                                          §§push(-Math.PI);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() / 2);
                                             if(!(_loc7_ && _loc1_))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc5_ = §§pop();
                                          addr259:
                                          §§push(Number(Math.random()));
                                          if(_loc8_ || this)
                                          {
                                             _loc6_ = §§pop();
                                             addr208:
                                             if(_loc8_ || this)
                                             {
                                                addr328:
                                                §§push(_loc1_.particles);
                                                if(!(_loc7_ && _loc1_))
                                                {
                                                   addr336:
                                                   §§push(§0i§.§#"D§);
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§6!O§.PARTICLE_GROUP_GAME_EFFECTS);
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               §§push(§0i§.PARTICLE_TYPE_KINETIC_PARTICLE);
                                                               if(!_loc7_)
                                                               {
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§pop().§"!J§(§§pop(),§§pop(),§§pop(),getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§0i§.getParticleMaterialFromEngineMaterial(§@x§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
                                                                        if(_loc8_)
                                                                        {
                                                                           if(!(_loc7_ && _loc1_))
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§goto(addr232);
                                                                              }
                                                                              §§goto(addr104);
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        §§goto(addr208);
                                                                     }
                                                                     §§goto(addr554);
                                                                  }
                                                                  addr501:
                                                                  §§push(_loc2_);
                                                                  if(_loc8_)
                                                                  {
                                                                     addr504:
                                                                     §§push(_loc3_);
                                                                     if(_loc8_)
                                                                     {
                                                                        addr507:
                                                                        §§push(-1);
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr512:
                                                                           §§push("");
                                                                           §§push(§0i§.§7!z§);
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              §§pop().§"!J§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                              addr520:
                                                                              §§goto(addr303);
                                                                              addr520:
                                                                           }
                                                                           §§goto(addr560);
                                                                        }
                                                                        §§goto(addr557);
                                                                     }
                                                                     §§goto(addr556);
                                                                  }
                                                                  §§goto(addr555);
                                                               }
                                                               addr347:
                                                               §§push(_loc2_);
                                                               if(_loc8_ || _loc2_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(-1);
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        §§push("");
                                                                        if(_loc8_)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(§0i§.§7!z§);
                                                                              if(_loc8_ || _loc2_)
                                                                              {
                                                                                 §§pop().§"!J§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                 addr381:
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    §§goto(addr303);
                                                                                 }
                                                                                 §§goto(addr546);
                                                                              }
                                                                              §§goto(addr512);
                                                                           }
                                                                           §§goto(addr558);
                                                                        }
                                                                        §§goto(addr512);
                                                                     }
                                                                     §§goto(addr507);
                                                                  }
                                                                  §§goto(addr504);
                                                               }
                                                               §§goto(addr501);
                                                            }
                                                            addr496:
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               §§goto(addr347);
                                                               §§push(§0i§.§>!c§);
                                                            }
                                                            if(_loc8_)
                                                            {
                                                               §§goto(addr501);
                                                               §§push(§0i§.§>!c§);
                                                            }
                                                            §§goto(addr552);
                                                         }
                                                         §§goto(addr550);
                                                      }
                                                      addr494:
                                                      §§goto(addr496);
                                                      §§push(§6!O§.§-4§);
                                                   }
                                                   §§goto(addr496);
                                                   §§push(§6!O§.§-4§);
                                                }
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   §§goto(addr336);
                                                   §§push(_loc4_);
                                                }
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr494);
                                                   §§push(§0i§.§%9§);
                                                }
                                                §§goto(addr548);
                                             }
                                             addr434:
                                             if(_loc8_ || _loc2_)
                                             {
                                                addr389:
                                                §§push(this);
                                                §§push(this.§%b§ + 1);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() % 3);
                                                }
                                                §§pop().§%b§ = §§pop();
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   §§goto(addr328);
                                                   §§push(_loc1_.particles);
                                                }
                                                if(_loc8_)
                                                {
                                                   §§goto(addr328);
                                                   §§push(_loc1_.particles);
                                                }
                                                §§goto(addr560);
                                             }
                                             addr447:
                                             if(_loc8_)
                                             {
                                                if(_loc8_)
                                                {
                                                   addr456:
                                                   §§push(§0i§.PARTICLE_NAME_BIRD_TRAIL2);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   if(_loc8_ || this)
                                                   {
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         _loc4_ = §§pop();
                                                         §§goto(addr389);
                                                         addr471:
                                                      }
                                                      addr477:
                                                      §§push(§§pop());
                                                   }
                                                   _loc4_ = §§pop();
                                                   addr446:
                                                   addr445:
                                                   if(this.§%b§ == 1)
                                                   {
                                                      §§goto(addr447);
                                                   }
                                                   §§push(this.§%b§);
                                                   if(_loc8_)
                                                   {
                                                      §§push(2);
                                                      if(_loc8_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            addr419:
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§0i§.PARTICLE_NAME_BIRD_TRAIL3);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§§pop());
                                                               }
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  §§goto(addr434);
                                                               }
                                                               §§goto(addr456);
                                                            }
                                                            §§goto(addr520);
                                                         }
                                                         §§goto(addr389);
                                                      }
                                                      §§goto(addr446);
                                                   }
                                                   §§goto(addr445);
                                                   addr479:
                                                }
                                                §§goto(addr542);
                                             }
                                             §§goto(addr479);
                                          }
                                          §§goto(addr258);
                                       }
                                       §§goto(addr471);
                                    }
                                    §§goto(addr381);
                                 }
                                 §§goto(addr288);
                              }
                              addr104:
                              return;
                           }
                           addr561:
                           §§goto(addr561);
                        }
                        if(§-v§ > 1)
                        {
                           §§goto(addr389);
                        }
                        §§goto(addr477);
                        §§push(§0i§.PARTICLE_NAME_BIRD_TRAIL1);
                     }
                     §§goto(addr520);
                  }
               }
            }
         }
         _loc1_.§-"?§(this);
         _loc1_.§!^§ = false;
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!§2!8§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(!_loc1_)
               {
                  addr46:
               }
               else
               {
                  addr61:
               }
               return;
            }
            if(!(_loc1_ && this))
            {
               §8X§(§[!J§.§-8§);
            }
            §§goto(addr61);
         }
         §§goto(addr46);
      }
      
      override public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§<k§);
            loop0:
            for(; !§§pop(); if(!(_loc3_ || this))
            {
               continue;
            },§§goto(addr46))
            {
               loop1:
               while(true)
               {
                  §8X§(§[!J§.§]!+§);
                  loop2:
                  while(true)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!(_loc2_ && this))
                        {
                           while(true)
                           {
                              this.§<k§ = true;
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(true);
                                 if(!_loc3_)
                                 {
                                    break loop2;
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           addr46:
                           return §§pop();
                           addr90:
                        }
                        break loop0;
                     }
                     continue loop1;
                  }
                  §§goto(addr95);
               }
            }
            addr95:
            return §§pop();
            §§push(false);
         }
         §§goto(addr90);
      }
      
      private function §continue§(param1:int) : int
      {
         return Math.min(§?l§.§'h§.§0!p§,param1);
      }
      
      override public function addDestructionParticles(param1:§6!O§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§`!A§(false) + 1);
         var _loc4_:* = Number(90);
         if(!(_loc9_ && _loc3_))
         {
            §§push(this.§continue§(_loc3_));
            if(_loc10_ || this)
            {
               §§push(int(§§pop()));
               if(!_loc9_)
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
                     if(_loc10_)
                     {
                        if(_loc10_)
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           if(!_loc10_)
                           {
                              continue;
                           }
                           if(_loc10_ || _loc2_)
                           {
                              _loc5_++;
                              while(!(_loc10_ || _loc3_))
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(-§2!8§.mH);
                                    if(!_loc9_)
                                    {
                                       §§push(§'!S§.§2"<§);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc10_ || param1)
                                             {
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      _loc8_ = §§pop();
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         addr186:
                                                         if(_loc10_)
                                                         {
                                                            §§push(Math.random() * -_loc8_);
                                                            if(_loc10_ || param1)
                                                            {
                                                               addr200:
                                                               if(_loc10_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     addr204:
                                                                     §§push(2);
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        addr213:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc10_)
                                                                           {
                                                                              addr223:
                                                                              if(!(_loc9_ && _loc2_))
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr233:
                                                                                    _loc8_ = Number(§§pop());
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr333:
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          addr338:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(180 / Math.PI);
                                                                                             addr342:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                addr343:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr337:
                                                                                    }
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       addr345:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(-§2!8§.mW);
                                                                                          if(!(_loc9_ && _loc2_))
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(§'!S§.§2"<§);
                                                                                                if(_loc10_ || this)
                                                                                                {
                                                                                                   if(_loc10_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc10_ || this)
                                                                                                         {
                                                                                                            addr275:
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc10_ || param1)
                                                                                                            {
                                                                                                               addr283:
                                                                                                               _loc7_ = §§pop();
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && _loc3_))
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               continue loop15;
                                                                                                               addr297:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr296:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr297);
                                                                                                               }
                                                                                                               §§goto(addr233);
                                                                                                            }
                                                                                                            addr295:
                                                                                                         }
                                                                                                         §§push(Math.random() * -_loc7_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§push(2);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr295);
                                                                                                                  §§goto(addr204);
                                                                                                               }
                                                                                                               addr294:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               addr332:
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                         addr291:
                                                                                                      }
                                                                                                      §§goto(addr275);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr342);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr283);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr338);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr275);
                                                                                          continue loop15;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr233);
                                                                              }
                                                                              §§goto(addr296);
                                                                           }
                                                                           §§goto(addr233);
                                                                        }
                                                                        §§goto(addr275);
                                                                     }
                                                                     §§goto(addr294);
                                                                  }
                                                                  §§goto(addr337);
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            §§goto(addr213);
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr283);
                                             }
                                          }
                                          §§goto(addr186);
                                       }
                                       §§goto(addr213);
                                    }
                                    §§goto(addr186);
                                 }
                              }
                              continue loop0;
                              addr73:
                           }
                           §§goto(addr345);
                        }
                     }
                     §§goto(addr73);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(_loc10_ || _loc2_)
                     {
                        §§goto(addr332);
                        §§push(Math.random() * (720 / _loc3_));
                     }
                  }
                  §§goto(addr333);
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      override public function addDamageParticles(param1:§6!O§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!(_loc10_ && param1))
         {
            if(§#b§())
            {
               if(!_loc10_)
               {
                  return;
               }
            }
            else
            {
               if(param2 < 6)
               {
                  if(_loc9_)
                  {
                     §§goto(addr42);
                  }
               }
               §§push(§4"Q§() / 10);
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(1);
               if(!_loc10_)
               {
                  §§push(_loc3_);
                  if(_loc9_ || this)
                  {
                     addr77:
                     §§push(§§pop() * §`!A§(false));
                     if(!(_loc10_ && this))
                     {
                        addr73:
                        §§push(§§pop() * 0.12);
                     }
                     var _loc4_:* = int(§§pop() + §§pop());
                     var _loc5_:Number = 90;
                     if(!(_loc10_ && param1))
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
                                 while(true)
                                 {
                                    param2 = §§pop();
                                    addr499:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(3 + param2 / 20);
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(_loc10_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(int(§§pop()));
                                          loop6:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             addr491:
                                             while(true)
                                             {
                                                §§push(this.§continue§(_loc4_));
                                                if(!(_loc10_ && param1))
                                                {
                                                   continue loop5;
                                                }
                                                continue loop6;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(0);
                        if(_loc9_)
                        {
                           _loc6_ = §§pop();
                           if(_loc10_)
                           {
                              continue;
                           }
                           if(_loc9_ || this)
                           {
                              if(_loc9_)
                              {
                                 break;
                              }
                              §§goto(addr499);
                           }
                           §§goto(addr491);
                        }
                        §§goto(addr456);
                     }
                     loop10:
                     while(true)
                     {
                        §§push(_loc6_);
                        if(_loc9_ || param2)
                        {
                           §§push(_loc4_);
                           while(true)
                           {
                              if(§§pop() < §§pop() / 3)
                              {
                                 §§push(_loc5_);
                              }
                              while(!(_loc10_ && _loc3_))
                              {
                                 §§push(0);
                                 loop13:
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                    addr356:
                                    while(_loc9_ || this)
                                    {
                                       continue loop13;
                                    }
                                    continue loop10;
                                 }
                              }
                              _loc6_++;
                              continue loop10;
                           }
                           §§goto(addr410);
                           §§push(Math.random() * (720 / _loc4_));
                        }
                        §§goto(addr355);
                     }
                  }
                  §§goto(addr73);
               }
               §§goto(addr77);
            }
         }
         addr42:
      }
   }
}
