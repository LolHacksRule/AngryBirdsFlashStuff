package §3p§
{
   import § D§.§]!B§;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §2!H§.LevelMain;
   import §2!H§.LevelSlingshot;
   import §6!7§.Sprite;
   import §;T§.LevelItemSoundResource;
   import §]=§.b2BodyDef;
   import §]=§.b2World;
   
   public class §4!G§ extends §"!§
   {
      
      protected static const §for §:Boolean = false;
      
      protected static const §5F§:Number = 2000;
      
      protected static const §9!H§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §for § = false;
         }
         do
         {
            §5F§ = 2000;
            do
            {
               §9!H§ = 0.2;
            }
            while(!_loc1_);
            
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private var §3;§:Number;
      
      private var §&!7§:Boolean = false;
      
      protected var §,b§:int = 0;
      
      public function §4!G§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            while(param10)
            {
               if(_loc12_)
               {
                  if(_loc12_)
                  {
                     §7!O§.mTryToScream = LevelObjectRenderer.§9!g§ + 1;
                     addr63:
                     break;
                  }
                  continue;
               }
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function get §2s§() : Boolean
      {
         return this.§&!7§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!_loc5_)
         {
            _loc3_.§3^§ = true;
         }
         do
         {
            _loc3_.§=!8§ = 2;
         }
         while(_loc5_ && _loc3_);
         
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§0o§ < §]!3§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr153:
                        while(true)
                        {
                           §§push(Boolean(§&E§()));
                           addr101:
                           while(_loc3_)
                           {
                              if(_loc2_ && this)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  loop5:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§3;§ = 0;
                        if(_loc3_ || _loc3_)
                        {
                           if(!(_loc2_ && param1))
                           {
                              if(!(_loc3_ || _loc2_))
                              {
                                 loop6:
                                 while(true)
                                 {
                                    if(this.§3;§ >= §5F§)
                                    {
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(true);
                                             break loop6;
                                          }
                                          continue loop6;
                                       }
                                       addr83:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr32:
                                    }
                                 }
                                 addr86:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       break loop5;
                                    }
                                    §§goto(addr101);
                                 }
                                 return §§pop();
                              }
                              if(_loc3_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(false);
                                    if(_loc3_ || _loc3_)
                                    {
                                       return §§pop();
                                    }
                                    addr95:
                                    §§goto(addr86);
                                 }
                                 addr20:
                              }
                              §§goto(addr153);
                              §§goto(addr20);
                           }
                           §§goto(addr83);
                        }
                        else
                        {
                           while(true)
                           {
                           }
                           addr96:
                        }
                        §§goto(addr32);
                     }
                     §§goto(addr112);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr96);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(false);
         if(!(_loc5_ && param1))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(false);
         if(_loc4_ || param1)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            §§push(this.§&!7§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(§#>§.toUpperCase() != "BIRD_WHITE")
                     {
                        §§push(§#>§.toUpperCase() == "BIRD_YELLOW");
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop7:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop8:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      while(true)
                                                      {
                                                         §§push(§#>§.toUpperCase() == "BIRD_RED");
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           if(!(_loc4_ || param1))
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§7!O§.mTryToFly)
                                                                                    {
                                                                                       addr286:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(true);
                                                                                          addr287:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             addr288:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                addr289:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_ && _loc3_)
                                                                                                   {
                                                                                                      addr415:
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr415:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr286:
                                                                                    }
                                                                                    addr155:
                                                                                    if(!(_loc4_ || _loc2_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §7!O§.mTryToSpecial = false;
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             if(§7!O§.mIsSpecial)
                                                                                             {
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr133:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(true);
                                                                                                   if(_loc5_ && this)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc5_ && param1))
                                                                                                            {
                                                                                                               addr185:
                                                                                                               if(_loc4_ || this)
                                                                                                               {
                                                                                                                  if(!(_loc4_ || param1))
                                                                                                                  {
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        break loop24;
                                                                                                                     }
                                                                                                                     addr212:
                                                                                                                     if(_loc4_ || _loc2_)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        while(_loc4_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr39);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr220:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§goto(addr212);
                                                                                                                        }
                                                                                                                        addr344:
                                                                                                                     }
                                                                                                                     while(_loc4_ || this)
                                                                                                                     {
                                                                                                                        §§push(§#>§.toUpperCase() == "BIRD_RED_BIG");
                                                                                                                        break loop26;
                                                                                                                     }
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  §§goto(addr288);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            addr237:
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc5_ && param1)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               if(!(_loc4_ || _loc3_))
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(!(_loc5_ && _loc2_))
                                                                                                                  {
                                                                                                                     §7!O§.mTryToSpecial = true;
                                                                                                                     break loop27;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§#>§.toUpperCase() == "BIRD_GREEN");
                                                                                                                     if(!(_loc5_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                     }
                                                                                                                     §§goto(addr367);
                                                                                                                     §§goto(addr402);
                                                                                                                  }
                                                                                                                  addr403:
                                                                                                                  addr252:
                                                                                                               }
                                                                                                               addr233:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                            }
                                                                                                            continue;
                                                                                                            §§goto(addr134);
                                                                                                         }
                                                                                                         while(!_loc5_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            continue loop0;
                                                                                                            §§goto(addr185);
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr402:
                                                                                                      addr367:
                                                                                                      while(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§goto(addr367);
                                                                                                      }
                                                                                                      addr367:
                                                                                                      addr402:
                                                                                                      §§goto(addr403);
                                                                                                   }
                                                                                                   §§goto(addr210);
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                             §§goto(addr39);
                                                                                          }
                                                                                          §§goto(addr286);
                                                                                       }
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(true);
                                                                                       addr413:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          addr414:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             §§goto(addr415);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           addr280:
                                                                        }
                                                                     }
                                                                     continue loop5;
                                                                     addr325:
                                                                  }
                                                                  §§goto(addr344);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr413);
                                                               }
                                                            }
                                                            §§goto(addr414);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr325);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr402);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr412);
                  }
               }
               addr39:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     if(!(_loc5_ && this))
                     {
                        break;
                     }
                     break loop28;
                  }
                  continue loop25;
               }
               return §§pop();
            }
         }
         §§goto(addr415);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         §§push(false);
         if(!_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            §§push(Boolean(§9f§().IsAwake()));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(§0o§ == §]!3§);
                              if(_loc4_)
                              {
                                 if(!(_loc4_ || this))
                                 {
                                    break;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                              }
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    if(§7!O§.mTryToFly)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                §7!O§.mTryToFly = false;
                                                loop7:
                                                while(§7!O§.mIsFlying)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc5_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc4_ || param1)
                                                      {
                                                         §7!O§.mIsFlying = false;
                                                         continue loop6;
                                                      }
                                                      loop31:
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         loop32:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop33:
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               addr379:
                                                               while(true)
                                                               {
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     if(§#>§.toUpperCase() != "BIRD_GREEN")
                                                                     {
                                                                        §§push(§#>§.toUpperCase() == "BIRD_WHITE");
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr294:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc5_ && this)
                                                                                 {
                                                                                    break loop11;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop32;
                                                                                       }
                                                                                       §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§&!7§);
                                                                                          addr260:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop32;
                                                                                    addr306:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                §§goto(addr133);
                                                                                             }
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                          addr263:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(§for §);
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§push(!§?O§());
                                                                                                   continue loop17;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §,!'§();
                                                                                                   addr284:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                             addr230:
                                                                                             loop20:
                                                                                             for(; !(_loc5_ && param1); while(_loc4_ || _loc3_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      while(_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr172);
                                                                                                      }
                                                                                                      continue loop17;
                                                                                                      addr170:
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                                §§goto(addr260);
                                                                                             })
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr249:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc5_ && param1))
                                                                                                         {
                                                                                                            §§push(!§3g§());
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§goto(addr367);
                                                                                                      }
                                                                                                      §§goto(addr415);
                                                                                                      addr42:
                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                      {
                                                                                                         §§goto(addr49);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            §;V§(0);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr281);
                                                                                                         }
                                                                                                         §§goto(addr133);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(_loc5_ && _loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr309);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                      addr187:
                                                                                                   }
                                                                                                   §§goto(addr133);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr414);
                                                                                       }
                                                                                       §§goto(addr133);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(param1);
                                                                        if(_loc4_)
                                                                        {
                                                                           if(this.§&!7§)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr333:
                                                                                 §§push(2 * (!_loc5_ ? §§pop() : §§pop()));
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(360);
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          addr357:
                                                                                          §§push(§§pop() / 1000);
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                          }
                                                                                          addr366:
                                                                                          _loc3_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                §;V§(§=Y§() - _loc3_);
                                                                                                while(true)
                                                                                                {
                                                                                                   addr133:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      break loop7;
                                                                                                   }
                                                                                                }
                                                                                                addr318:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(!§7!O§.mTryToFly);
                                                                                                   addr414:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §7!O§.mTryToFly = true;
                                                                                                         continue loop31;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr410:
                                                                                             }
                                                                                          }
                                                                                          addr367:
                                                                                       }
                                                                                       §§goto(addr366);
                                                                                    }
                                                                                    §§goto(addr357);
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr357);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§goto(addr341);
                                                                              }
                                                                           }
                                                                           §§goto(addr357);
                                                                        }
                                                                        §§goto(addr333);
                                                                     }
                                                                     §§goto(addr414);
                                                                  }
                                                                  continue loop33;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   continue loop6;
                                                }
                                                loop39:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr42);
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   else
                                                   {
                                                      addr64:
                                                      while(_loc4_ || param1)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc5_ && param1)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(_loc4_ || param1)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  continue loop39;
                                                               }
                                                               §§goto(addr415);
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                      addr64:
                                                   }
                                                   §§goto(addr158);
                                                }
                                                addr49:
                                                return §§pop();
                                                addr31:
                                             }
                                             §§goto(addr325);
                                          }
                                          §§goto(addr284);
                                       }
                                    }
                                    §§goto(addr31);
                                 }
                                 §§goto(addr410);
                              }
                           }
                        }
                     }
                     §§goto(addr408);
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:LevelMain = §]!B§.§>F§;
         if(_loc7_)
         {
            §§push(§0o§ < §]!3§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc8_)
               {
                  §§push(§§pop());
                  if(_loc7_ || this)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr106:
                        while(true)
                        {
                           §§push(§9f§() == null);
                           if(!(_loc8_ && this))
                           {
                              if(_loc8_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           addr64:
                           if(_loc7_ || this)
                           {
                           }
                           continue loop4;
                        }
                        continue loop0;
                     }
                     addr105:
                  }
                  while(§§pop())
                  {
                     if(!_loc8_)
                     {
                        _loc1_.§[]§(this);
                     }
                     loop2:
                     while(_loc7_ || _loc1_)
                     {
                        while(true)
                        {
                           _loc1_.§>!=§ = false;
                           if(!(_loc8_ && _loc1_))
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                     }
                     §§goto(addr106);
                     §§goto(addr64);
                  }
                  §§push(x * LevelMain.§8N§);
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(y * LevelMain.§8N§);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(_loc7_ || _loc2_)
                  {
                     addr647:
                     if(_loc1_.§>!=§)
                     {
                        addr667:
                        _loc1_.particles.§@4§(§0'§.§6!L§,LevelParticleManager.§^![§,§0'§.§ 6§,_loc2_,_loc3_,-1,"",§0'§.§&"§);
                        _loc1_.§>!=§ = false;
                        this.§,b§ = 0;
                        addr382:
                        addr666:
                        addr663:
                        addr662:
                        addr661:
                        addr660:
                        addr668:
                        addr659:
                        addr656:
                        addr653:
                        addr650:
                        addr644:
                        addr648:
                        addr639:
                        §§push(§5!c§() > LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN);
                        if(!_loc8_)
                        {
                           addr392:
                           §§push(Boolean(§§pop()));
                           §§push(Boolean(§§pop()));
                           if(_loc7_ || _loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              addr402:
                              §§pop();
                              addr403:
                              §§push(Math.random() < §9!H§);
                              if(_loc7_)
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    if(!_loc8_)
                                    {
                                       addr335:
                                       §§push(Boolean(§§pop()));
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§goto(addr342);
                                       }
                                       §§goto(addr402);
                                    }
                                    §§goto(addr667);
                                 }
                                 §§goto(addr392);
                              }
                              §§goto(addr335);
                           }
                           addr342:
                           if(§§pop())
                           {
                              addr344:
                              if(_loc7_)
                              {
                                 if(_loc7_ || this)
                                 {
                                    if(_loc7_)
                                    {
                                       if(!_loc8_)
                                       {
                                          addr357:
                                          §§push(-Math.PI);
                                          if(_loc7_ || _loc2_)
                                          {
                                             addr378:
                                             §§push(§§pop() / 2);
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                addr377:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc5_ = §§pop();
                                             addr379:
                                             if(_loc7_)
                                             {
                                                §§push(Number(Math.random()));
                                                if(!(_loc8_ && this))
                                                {
                                                   _loc6_ = §§pop();
                                                   addr287:
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      if(!(_loc8_ && _loc2_))
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§push(_loc1_.particles);
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_ || _loc1_)
                                                                  {
                                                                     if(!(_loc8_ && _loc3_))
                                                                     {
                                                                        §§push(§0'§.§@R§);
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(LevelParticleManager.§[K§);
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(_loc7_ || _loc1_)
                                                                                 {
                                                                                    §§push(§0'§.§&A§);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(§§pop().§@4§(§§pop(),§§pop(),§§pop(),§9f§().GetPosition().x,§9f§().GetPosition().y,1250,"",§0'§.§%!`§(§#>§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale)));
                                                                                             if(!(_loc8_ && this))
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         if(!(_loc8_ && _loc1_))
                                                                                                         {
                                                                                                            if(!(_loc7_ || _loc3_))
                                                                                                            {
                                                                                                               addr512:
                                                                                                               if(!(_loc8_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§0'§.PARTICLE_NAME_BIRD_TRAIL3);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                  }
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        if(_loc7_ || _loc3_)
                                                                                                                        {
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           addr537:
                                                                                                                           if(!(_loc8_ && this))
                                                                                                                           {
                                                                                                                              if(!(_loc8_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(_loc7_ || this)
                                                                                                                                 {
                                                                                                                                    addr479:
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§,b§ + 1);
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() % 3);
                                                                                                                                    }
                                                                                                                                    §§pop().§,b§ = §§pop();
                                                                                                                                    §§push(_loc1_.particles);
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    if(!(_loc8_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr418:
                                                                                                                                       §§push(LevelParticleManager.§^![§);
                                                                                                                                       if(!(_loc8_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr605:
                                                                                                                                          §§push(§0'§.§ 6§);
                                                                                                                                          §§push(_loc2_);
                                                                                                                                          if(!(_loc8_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             if(!(_loc8_ && this))
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   addr614:
                                                                                                                                                   §§push(-1);
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      §§push("");
                                                                                                                                                      if(_loc7_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§0'§.§&"§);
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               addr475:
                                                                                                                                                               §§push(§§pop().§@4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop()));
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr478:
                                                                                                                                                                  §§goto(addr382);
                                                                                                                                                               }
                                                                                                                                                               addr623:
                                                                                                                                                               §§pop();
                                                                                                                                                               §§goto(addr382);
                                                                                                                                                               addr624:
                                                                                                                                                            }
                                                                                                                                                            addr620:
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr623);
                                                                                                                                                               §§push(§§pop().§@4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop()));
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr666);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr663);
                                                                                                                                                      }
                                                                                                                                                      addr617:
                                                                                                                                                      §§goto(addr620);
                                                                                                                                                      §§push(§0'§.§&"§);
                                                                                                                                                   }
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr617);
                                                                                                                                                      §§push("");
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr662);
                                                                                                                                                }
                                                                                                                                                §§goto(addr661);
                                                                                                                                             }
                                                                                                                                             addr613:
                                                                                                                                             §§goto(addr614);
                                                                                                                                             §§push(-1);
                                                                                                                                          }
                                                                                                                                          if(!(_loc8_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr613);
                                                                                                                                             §§push(_loc3_);
                                                                                                                                          }
                                                                                                                                          §§goto(addr660);
                                                                                                                                       }
                                                                                                                                       addr601:
                                                                                                                                       §§goto(addr605);
                                                                                                                                       §§push(§0'§.§ 6§);
                                                                                                                                       §§push(_loc2_);
                                                                                                                                    }
                                                                                                                                    §§goto(addr601);
                                                                                                                                    §§push(LevelParticleManager.§^![§);
                                                                                                                                    addr490:
                                                                                                                                 }
                                                                                                                                 §§goto(addr668);
                                                                                                                              }
                                                                                                                              §§goto(addr624);
                                                                                                                           }
                                                                                                                           §§goto(addr479);
                                                                                                                           addr576:
                                                                                                                        }
                                                                                                                        addr584:
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        if(this.§,b§ == 1)
                                                                                                                        {
                                                                                                                           addr567:
                                                                                                                           §§push(§0'§.PARTICLE_NAME_BIRD_TRAIL2);
                                                                                                                           if(_loc7_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr575:
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              §§goto(addr576);
                                                                                                                           }
                                                                                                                           §§goto(addr584);
                                                                                                                        }
                                                                                                                        §§push(this.§,b§);
                                                                                                                        if(_loc7_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(2);
                                                                                                                           if(!(_loc8_ && this))
                                                                                                                           {
                                                                                                                              if(§§pop() == §§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr512);
                                                                                                                              }
                                                                                                                              §§goto(addr479);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr584);
                                                                                                                        addr585:
                                                                                                                        addr583:
                                                                                                                     }
                                                                                                                     §§goto(addr567);
                                                                                                                  }
                                                                                                                  §§goto(addr575);
                                                                                                               }
                                                                                                               §§goto(addr567);
                                                                                                            }
                                                                                                            §§goto(addr140);
                                                                                                         }
                                                                                                         §§goto(addr478);
                                                                                                      }
                                                                                                      §§goto(addr344);
                                                                                                   }
                                                                                                   §§goto(addr287);
                                                                                                }
                                                                                                §§goto(addr667);
                                                                                             }
                                                                                             §§goto(addr475);
                                                                                          }
                                                                                          §§goto(addr659);
                                                                                       }
                                                                                       §§goto(addr601);
                                                                                    }
                                                                                    §§goto(addr605);
                                                                                 }
                                                                                 §§goto(addr656);
                                                                              }
                                                                              §§goto(addr418);
                                                                           }
                                                                           §§goto(addr653);
                                                                        }
                                                                        §§goto(addr479);
                                                                     }
                                                                     §§goto(addr650);
                                                                  }
                                                                  addr595:
                                                                  §§goto(addr479);
                                                                  §§push(§0'§.§8d§);
                                                               }
                                                               §§goto(addr479);
                                                            }
                                                            §§goto(addr644);
                                                         }
                                                         addr593:
                                                         §§goto(addr595);
                                                         §§push(_loc1_.particles);
                                                      }
                                                      §§goto(addr490);
                                                   }
                                                   §§goto(addr379);
                                                }
                                                §§goto(addr378);
                                             }
                                             §§goto(addr585);
                                          }
                                          §§goto(addr377);
                                       }
                                       §§goto(addr648);
                                    }
                                    §§goto(addr639);
                                 }
                                 §§goto(addr537);
                              }
                              §§goto(addr403);
                           }
                           addr140:
                           return;
                        }
                        §§goto(addr647);
                     }
                     if(§[t§ > 1)
                     {
                        §§goto(addr593);
                     }
                     §§goto(addr583);
                     §§push(§0'§.PARTICLE_NAME_BIRD_TRAIL1);
                  }
                  §§goto(addr357);
               }
               §§goto(addr105);
            }
         }
         §§goto(addr86);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(!§7!O§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(!(_loc1_ && this))
               {
                  if(_loc1_)
                  {
                     addr69:
                     §@r§(LevelItemSoundResource.§+m§);
                     addr75:
                  }
                  else
                  {
                     addr64:
                  }
                  return;
               }
               §§goto(addr75);
            }
            §§goto(addr69);
         }
         §§goto(addr64);
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§&!7§);
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §@r§(LevelItemSoundResource.§-q§);
                  loop2:
                  while(true)
                  {
                     if(_loc2_ || param1)
                     {
                        if(_loc3_ && _loc2_)
                        {
                           break loop0;
                        }
                        this.§&!7§ = true;
                        if(_loc2_)
                        {
                           while(true)
                           {
                              §§push(true);
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           return §§pop();
                           addr54:
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  §§goto(addr81);
               }
            }
            addr81:
            return §§pop();
            §§push(false);
         }
         §§goto(addr54);
      }
      
      private function §#!H§(param1:int) : int
      {
         return Math.min(§]!B§.§>F§.§`A§,param1);
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§%W§(false) + 1);
         var _loc4_:Number = 90;
         if(_loc9_ || _loc3_)
         {
            §§push(this.§#!H§(_loc3_));
            if(_loc9_ || _loc3_)
            {
               §§push(int(§§pop()));
               if(!(_loc10_ && this))
               {
                  _loc3_ = §§pop();
                  addr61:
                  §§push(0);
                  if(_loc9_ || _loc3_)
                  {
                     addr69:
                     §§push(int(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               while(true)
               {
                  §§push(_loc5_);
                  if(!_loc10_)
                  {
                     if(§§pop() >= _loc3_)
                     {
                        if(_loc9_)
                        {
                           if(!(_loc10_ && _loc3_))
                           {
                              break;
                           }
                           while(true)
                           {
                              if(!_loc10_)
                              {
                                 param1.§@4§(§0'§.§@R§,LevelParticleManager.§[K§,§0'§.§&A§,§9f§().GetPosition().x + _loc7_,§9f§().GetPosition().y + _loc8_,1500,"",§0'§.§%!`§(§#>§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(!_loc10_)
                                       {
                                          addr98:
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             continue loop2;
                                          }
                                          addr98:
                                       }
                                    }
                                    §§goto(addr98);
                                 }
                              }
                              §§goto(addr367);
                              _loc8_ = §§pop();
                           }
                        }
                        §§goto(addr99);
                     }
                     else
                     {
                        §§push(_loc4_);
                     }
                     §§goto(addr373);
                  }
                  §§goto(addr98);
               }
               return;
            }
            §§goto(addr69);
         }
         §§goto(addr61);
      }
      
      override public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!(_loc9_ && param2))
         {
            if(§3g§())
            {
               if(!_loc9_)
               {
                  return;
               }
            }
            else if(param2 < 6)
            {
               if(!(_loc9_ && _loc3_))
               {
                  return;
               }
            }
         }
         §§push(§5!c§() / 10);
         if(_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(!(_loc9_ && _loc3_))
         {
            §§push(_loc3_);
            if(!(_loc9_ && param2))
            {
               §§push(§§pop() * §%W§(false));
               if(_loc10_)
               {
                  §§push(§§pop() * 0.12);
               }
            }
            §§push(int(§§pop() + §§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Number = 90;
         if(_loc10_)
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
                     addr511:
                     while(true)
                     {
                        param2 = §§pop();
                        addr512:
                        loop4:
                        while(true)
                        {
                           §§push(_loc4_);
                           addr468:
                           while(true)
                           {
                              §§push(3 + param2 / 20);
                              if(_loc9_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc9_ && param2)
                              {
                                 continue loop2;
                              }
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 addr495:
                                 while(_loc10_ || this)
                                 {
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            addr504:
         }
         loop8:
         while(true)
         {
            §§push(this.§#!H§(_loc4_));
            if(_loc10_)
            {
               §§push(int(§§pop()));
            }
            loop9:
            for(; !_loc9_; if(_loc9_ && param1)
            {
               continue;
            },§§goto(addr438),§§push(int(§§pop())))
            {
               if(!_loc9_)
               {
                  _loc4_ = §§pop();
                  while(true)
                  {
                     §§push(0);
                     if(_loc9_)
                     {
                        if(_loc10_)
                        {
                           if(_loc10_)
                           {
                              _loc6_ = §§pop();
                              if(_loc9_)
                              {
                                 continue;
                              }
                              if(!(_loc9_ && this))
                              {
                                 break loop8;
                              }
                              §§goto(addr495);
                           }
                           else
                           {
                              §§goto(addr504);
                           }
                        }
                        break;
                     }
                     addr438:
                     continue loop9;
                  }
                  §§goto(addr468);
               }
               §§goto(addr511);
            }
            §§goto(addr494);
         }
         loop11:
         while(true)
         {
            §§push(_loc6_);
            if(_loc10_)
            {
               if(!_loc9_)
               {
                  §§push(_loc4_);
                  loop12:
                  while(true)
                  {
                     if(§§pop() >= §§pop() / 3)
                     {
                        if(!(_loc9_ && param2))
                        {
                           §§push(0);
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr356:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                              }
                           }
                           addr355:
                        }
                        while(_loc10_ || this)
                        {
                           loop15:
                           while(true)
                           {
                              §§push(_loc6_);
                              if(!(_loc9_ && _loc3_))
                              {
                                 if(_loc10_)
                                 {
                                    continue loop12;
                                 }
                                 while(true)
                                 {
                                    if(_loc10_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc10_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr355);
                                    }
                                 }
                                 §§goto(addr356);
                                 addr131:
                              }
                              while(true)
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    if(!_loc9_)
                                    {
                                       _loc6_ = §§pop();
                                       while(true)
                                       {
                                          if(_loc10_)
                                          {
                                             if(!(_loc10_ || this))
                                             {
                                                break;
                                             }
                                             continue loop15;
                                          }
                                          addr220:
                                          while(true)
                                          {
                                             §§goto(addr131);
                                          }
                                       }
                                       addr147:
                                    }
                                    else
                                    {
                                       addr371:
                                       _loc6_ = §§pop();
                                    }
                                    continue loop11;
                                 }
                                 §§goto(addr356);
                              }
                           }
                           continue loop12;
                        }
                        addr357:
                     }
                     else
                     {
                        addr424:
                        _loc5_ += Math.random() * (720 / _loc4_);
                        addr409:
                        param1.§@4§(§0'§.§#!V§,LevelParticleManager.§[K§,§0'§.§&A§,§9f§().GetPosition().x,§9f§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
                        addr415:
                        addr422:
                        addr423:
                        addr425:
                     }
                  }
               }
               §§push(§§pop() + 1);
               if(_loc10_)
               {
                  §§push(int(§§pop()));
               }
               §§goto(addr371);
            }
            §§goto(addr356);
         }
      }
   }
}
