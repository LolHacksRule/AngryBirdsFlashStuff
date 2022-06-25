package §6!!§
{
   import §#!,§.Sprite;
   import §>!L§.b2BodyDef;
   import §>!L§.b2World;
   import §?!Y§.§`S§;
   import §@!-§.§ !_§;
   import §@!-§.LevelParticleManager;
   import §]!@§.LevelMain;
   import §]!@§.LevelSlingshot;
   import §package§.LevelItemSoundResource;
   
   public class §6!f§ extends §;!4§
   {
      
      protected static const §!h§:Boolean = false;
      
      protected static const § O§:Number = 2000;
      
      protected static const §7m§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §6!f§)
         {
            §!h§ = false;
            while(true)
            {
               § O§ = 2000;
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     §7m§ = 0.2;
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      private var §[!G§:Number;
      
      private var §#! §:Boolean = false;
      
      protected var §5!X§:int = 0;
      
      public function §6!f§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            while(param10)
            {
               if(!_loc13_)
               {
                  §`!P§.mTryToScream = LevelObjectRenderer.§9I§ + 1;
               }
               if(_loc12_)
               {
                  addr63:
                  break;
               }
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function get §+!O§() : Boolean
      {
         return this.§#! §;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!_loc4_)
         {
            _loc3_.§ 5§ = true;
         }
         do
         {
            _loc3_.§4n§ = 2;
         }
         while(_loc4_ && this);
         
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(§3W§ < §>!"§);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               do
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     addr147:
                     while(true)
                     {
                        §§pop();
                        addr148:
                        while(true)
                        {
                           §§push(Boolean(§5_§()));
                        }
                     }
                     addr147:
                  }
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && param1))
                           {
                              §§push(this);
                              §§push(this.§[!G§);
                              if(_loc3_ || this)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§[!G§ = §§pop();
                           }
                           loop3:
                           for(; _loc3_ || _loc3_; if(_loc2_ && _loc2_)
                           {
                              continue;
                           },§§goto(addr57),§§push(true))
                           {
                              while(true)
                              {
                                 if(this.§[!G§ >= § O§)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    addr89:
                                    while(true)
                                    {
                                    }
                                 }
                                 while(true)
                                 {
                                    addr25:
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc3_)
                                       {
                                          break loop2;
                                       }
                                       addr57:
                                       while(true)
                                       {
                                          if(!(_loc3_ || this))
                                          {
                                             continue loop2;
                                          }
                                          if(_loc3_ || _loc3_)
                                          {
                                             break loop1;
                                          }
                                          §§goto(addr147);
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                        this.§[!G§ = 0;
                        if(_loc2_)
                        {
                           §§goto(addr89);
                        }
                        §§goto(addr25);
                        §§goto(addr89);
                     }
                     return §§pop();
                  }
               }
               while(_loc2_ && this);
               
               return §§pop();
            }
            §§goto(addr147);
         }
         §§goto(addr133);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(false);
         if(!(_loc4_ && this))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(false);
         if(_loc5_ || this)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.§#! §);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(§ I§.toUpperCase() != "BIRD_WHITE")
                     {
                        §§push(§ I§.toUpperCase() == "BIRD_YELLOW");
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
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr349:
                                          while(true)
                                          {
                                             §§push(§ I§.toUpperCase() == "BIRD_GREEN");
                                             addr308:
                                             while(_loc5_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             continue loop3;
                                          }
                                       }
                                       addr348:
                                    }
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc5_)
                                          {
                                             if(!(_loc5_ || this))
                                             {
                                                break;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(_loc4_ && param1)
                                                      {
                                                         continue loop11;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      loop33:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§pop();
                                                            loop34:
                                                            while(true)
                                                            {
                                                               §§push(§ I§.toUpperCase() == "BIRD_RED_BIG");
                                                               loop35:
                                                               while(!_loc4_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     loop37:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop38:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 if(§`!P§.mTryToFly)
                                                                                 {
                                                                                    loop39:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc4_ && param1))
                                                                                       {
                                                                                          §§push(true);
                                                                                          loop40:
                                                                                          while(_loc5_)
                                                                                          {
                                                                                             addr243:
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop41:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   loop42:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr154:
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         loop20:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               if(§`!P§.mTryToSpecial)
                                                                                                               {
                                                                                                                  loop21:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc4_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                        {
                                                                                                                           §`!P§.mTryToSpecial = false;
                                                                                                                           loop22:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       continue loop38;
                                                                                                                                    }
                                                                                                                                    if(_loc4_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(!§`!P§.mTryToSpecial);
                                                                                                                                 }
                                                                                                                                 continue loop1;
                                                                                                                                 addr157:
                                                                                                                              }
                                                                                                                              if(§`!P§.mIsSpecial)
                                                                                                                              {
                                                                                                                                 if(!(_loc4_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §`!P§.mIsSpecial = false;
                                                                                                                                 }
                                                                                                                                 loop23:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(true);
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc2_ = §§pop();
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop34;
                                                                                                                                                               }
                                                                                                                                                               continue loop21;
                                                                                                                                                            }
                                                                                                                                                            continue loop22;
                                                                                                                                                         }
                                                                                                                                                         continue loop23;
                                                                                                                                                      }
                                                                                                                                                      addr81:
                                                                                                                                                      loop44:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            addr44:
                                                                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop37;
                                                                                                                                                            }
                                                                                                                                                            loop25:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     while(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop40;
                                                                                                                                                                        }
                                                                                                                                                                        _loc2_ = §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_ && _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr197:
                                                                                                                                                                                    §`!P§.mTryToSpecial = true;
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc5_ || param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop39;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(true);
                                                                                                                                                                                          continue loop25;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr358:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(true);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr197);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                    addr201:
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop42;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop42;
                                                                                                                                                                              addr190:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop44;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop20;
                                                                                                                                                                     addr141:
                                                                                                                                                                  }
                                                                                                                                                                  continue loop33;
                                                                                                                                                               }
                                                                                                                                                               addr334:
                                                                                                                                                               addr180:
                                                                                                                                                               while(_loc5_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop0;
                                                                                                                                                                  }
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr190);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr101);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr335:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§ I§.toUpperCase() == "BIRD_RED");
                                                                                                                                                                     addr259:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           break loop40;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr243);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  addr360:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc3_ = §§pop();
                                                                                                                                                                     addr361:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop19;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr72);
                                                                                                                                                      }
                                                                                                                                                      addr72:
                                                                                                                                                      return §§pop();
                                                                                                                                                      addr40:
                                                                                                                                                   }
                                                                                                                                                   continue loop35;
                                                                                                                                                }
                                                                                                                                                continue loop41;
                                                                                                                                             }
                                                                                                                                             §§goto(addr141);
                                                                                                                                          }
                                                                                                                                          §§goto(addr81);
                                                                                                                                       }
                                                                                                                                       addr100:
                                                                                                                                    }
                                                                                                                                    §§goto(addr349);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr40);
                                                                                                                              §§goto(addr180);
                                                                                                                           }
                                                                                                                           continue loop38;
                                                                                                                        }
                                                                                                                        §§goto(addr201);
                                                                                                                     }
                                                                                                                     §§goto(addr146);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr40);
                                                                                                            }
                                                                                                            §§goto(addr157);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr259);
                                                                                          }
                                                                                          while(_loc5_)
                                                                                          {
                                                                                             if(!(_loc4_ && param1))
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§goto(addr348);
                                                                                          }
                                                                                          §§goto(addr308);
                                                                                       }
                                                                                       §§goto(addr361);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr154);
                                                                              }
                                                                              §§goto(addr335);
                                                                           }
                                                                        }
                                                                        §§goto(addr154);
                                                                     }
                                                                  }
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                         §§goto(addr360);
                                                      }
                                                   }
                                                   §§goto(addr220);
                                                }
                                                continue loop5;
                                                addr278:
                                             }
                                             §§goto(addr334);
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr358);
                  }
               }
               §§goto(addr40);
            }
         }
         §§goto(addr100);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = NaN;
         §§push(false);
         if(_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_ || _loc2_)
         {
            §§push(Boolean(§@!'§().IsAwake()));
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
                           addr449:
                           while(true)
                           {
                              §§push(§3W§ == §>!"§);
                              addr428:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr448:
                     }
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              if(§`!P§.mTryToFly)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             §`!P§.mTryToFly = false;
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(§`!P§.mIsFlying)
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §`!P§.mIsFlying = false;
                                                            while(!_loc4_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(true);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              addr294:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    loop18:
                                                                                    while(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   addr261:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(§!h§);
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break loop29;
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                         addr304:
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         §§push(!§4!b§());
                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(_loc5_ || this)
                                                                                                                     {
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  addr230:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr231:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           addr233:
                                                                                                                           if(!(_loc5_ || param1))
                                                                                                                           {
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                           §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 §§push(!§do §());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    addr147:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc4_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr156:
                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §'g§(0);
                                                                                                                                                   addr167:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            addr117:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop12;
                                                                                                                                                            }
                                                                                                                                                            addr117:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr449);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(!§`!P§.mTryToFly);
                                                                                                                                                            addr435:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §`!P§.mTryToFly = true;
                                                                                                                                                                     addr440:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(true);
                                                                                                                                                                        addr419:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           break loop29;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr436:
                                                                                                                                                               }
                                                                                                                                                               addr331:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§ I§.toUpperCase() != "BIRD_GREEN")
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§ I§.toUpperCase() == "BIRD_WHITE");
                                                                                                                                                                     continue loop7;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1);
                                                                                                                                                                        if(!(_loc4_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(this.§#! §)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(2 * (!(_loc4_ && param1) ? §§pop() : §§pop()));
                                                                                                                                                                                 if(!(_loc4_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(360);
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr404:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc5_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(1000);
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §'g§(§ %§() - _loc3_);
                                                                                                                                                                                          addr330:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr117);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr406:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr404);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr404);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(1);
                                                                                                                                                                              if(_loc5_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr380);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr404);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr440);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr431:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr117);
                                                                                                                                                   }
                                                                                                                                                   addr167:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   loop30:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §4!9§();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr117);
                                                                                                                                                         }
                                                                                                                                                         addr277:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§#! §);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           continue loop27;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr448);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr435);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr428);
                                                                                                                                                               addr247:
                                                                                                                                                            }
                                                                                                                                                            continue loop30;
                                                                                                                                                         }
                                                                                                                                                         addr314:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr117);
                                                                                                                                                   }
                                                                                                                                                   addr267:
                                                                                                                                                }
                                                                                                                                                §§goto(addr436);
                                                                                                                                             }
                                                                                                                                             §§goto(addr167);
                                                                                                                                          }
                                                                                                                                          §§goto(addr117);
                                                                                                                                          addr41:
                                                                                                                                          if(_loc5_ || param1)
                                                                                                                                          {
                                                                                                                                             continue loop28;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr146:
                                                                                                                              }
                                                                                                                              §§goto(addr406);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr247);
                                                                                                                     }
                                                                                                                     addr231:
                                                                                                                  }
                                                                                                                  §§goto(addr147);
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                               addr195:
                                                                                                            }
                                                                                                            §§goto(addr419);
                                                                                                         }
                                                                                                         §§goto(addr231);
                                                                                                      }
                                                                                                      §§goto(addr267);
                                                                                                   }
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      addr421:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr331);
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr117);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr304);
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr195);
                                                                        }
                                                                        §§goto(addr231);
                                                                     }
                                                                     §§goto(addr146);
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr241);
                                                            }
                                                            continue loop8;
                                                         }
                                                         §§goto(addr277);
                                                      }
                                                   }
                                                   §§goto(addr32);
                                                }
                                                §§goto(addr167);
                                                if(!(_loc5_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(_loc5_ || param1)
                                                {
                                                   §§goto(addr32);
                                                }
                                                §§goto(addr421);
                                             }
                                          }
                                          §§goto(addr337);
                                       }
                                       §§goto(addr330);
                                    }
                                    §§goto(addr261);
                                 }
                              }
                              §§goto(addr32);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr431);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:LevelMain = §`S§.§[o§;
         if(_loc7_ || _loc3_)
         {
            §§push(§3W§ < §>!"§);
            loop3:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop4:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc7_ || _loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr116:
                        while(true)
                        {
                           §§push(§@!'§() == null);
                           if(!(_loc8_ && _loc1_))
                           {
                              if(_loc8_)
                              {
                                 continue loop4;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(!(_loc8_ && this))
                           {
                              if(!_loc8_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           continue loop5;
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           if(_loc7_ || _loc3_)
                           {
                              addr94:
                              _loc1_.§6B§(this);
                              while(true)
                              {
                                 _loc1_.static = false;
                                 if(!(_loc8_ && this))
                                 {
                                    break;
                                 }
                                 continue loop1;
                                 §§goto(addr94);
                              }
                              return;
                              addr49:
                           }
                           §§goto(addr116);
                        }
                        addr117:
                        §§push(x * LevelMain.§@!d§);
                        if(_loc7_)
                        {
                           addr125:
                           §§push(Number(§§pop()));
                           break;
                        }
                        break;
                     }
                     §§goto(addr117);
                     §§goto(addr125);
                  }
                  var _loc2_:* = §§pop();
                  §§push(y * LevelMain.§@!d§);
                  if(_loc7_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(_loc7_ || _loc1_)
                  {
                     §§push(_loc1_.static);
                     loop7:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§?!9§ <= 1)
                           {
                              §§push(§ !_§.PARTICLE_NAME_BIRD_TRAIL1);
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop9:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       if(!(_loc8_ && this))
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push(this.§5!X§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(1);
                                                loop12:
                                                while(§§pop() != §§pop())
                                                {
                                                   §§push(this.§5!X§);
                                                   if(!_loc7_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§push(2);
                                                   if(!(_loc7_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   if(§§pop() == §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§push(§ !_§.PARTICLE_NAME_BIRD_TRAIL3);
                                                            if(_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  addr498:
                                                                  _loc4_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ || _loc2_)
                                                                     {
                                                                        addr506:
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§5!X§ + 1);
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(§§pop() % 3);
                                                                           }
                                                                           §§pop().§5!X§ = §§pop();
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 break loop12;
                                                                              }
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(_loc1_.particles);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc8_ && _loc2_))
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(LevelParticleManager.§%F§);
                                                                                             addr399:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§push(§ !_§.§'!R§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            if(_loc7_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc7_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(-1);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§push("");
                                                                                                                     if(_loc7_ || this)
                                                                                                                     {
                                                                                                                        §§push(§ !_§.§>N§);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§?`§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop()));
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc8_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       loop24:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§+l§() > LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN);
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                          }
                                                                                                                                          loop25:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(!(_loc8_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                             }
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                while(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(-Math.PI);
                                                                                                                                                         if(!(_loc8_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr571:
                                                                                                                                                            §§push(§§pop() / 2);
                                                                                                                                                            if(!(_loc8_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               addr356:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            loop28:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc5_ = §§pop();
                                                                                                                                                               addr358:
                                                                                                                                                               while(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop28;
                                                                                                                                                               }
                                                                                                                                                               continue loop17;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc8_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(LevelParticleManager.§%F§);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§ !_§.§'!R§);
                                                                                                                                                                     addr584:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc2_);
                                                                                                                                                                        addr585:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              addr591:
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(-1);
                                                                                                                                                                                    addr594:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push("");
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                             if(_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                addr603:
                                                                                                                                                                                                if(!this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§ !_§.§>N§);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().§?`§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop()));
                                                                                                                                                                                                      addr608:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         addr609:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop24;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr607:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr603);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr597:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr647:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push("");
                                                                                                                                                                                          }
                                                                                                                                                                                          addr647:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§ !_§.§>N§);
                                                                                                                                                                                          addr651:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().§?`§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop()));
                                                                                                                                                                                             addr652:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                addr653:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc1_.static = false;
                                                                                                                                                                                                   addr629:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§5!X§ = 0;
                                                                                                                                                                                                      addr624:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop24;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr593:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr647);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr591);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr581:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(LevelParticleManager.§%F§);
                                                                                                                                                                     addr641:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§ !_§.§'!R§);
                                                                                                                                                                        addr644:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc2_);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr638:
                                                                                                                                                               }
                                                                                                                                                               addr645:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                  addr646:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr647);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr571:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr356);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr384);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr358);
                                                                                                                                                   §§goto(addr308);
                                                                                                                                                }
                                                                                                                                                return;
                                                                                                                                             }
                                                                                                                                             loop26:
                                                                                                                                             while(!_loc8_)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Math.random() < §7m§);
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         continue loop26;
                                                                                                                                                      }
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   addr308:
                                                                                                                                                   if(_loc8_ && _loc2_)
                                                                                                                                                   {
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr150:
                                                                                                                                             continue loop7;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop16;
                                                                                                                                       if(!(_loc7_ || _loc1_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop10;
                                                                                                                                       }
                                                                                                                                       §§goto(addr150);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr653);
                                                                                                                              }
                                                                                                                              addr443:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr651);
                                                                                                                           }
                                                                                                                           §§goto(addr652);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr607);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr597);
                                                                                                                     }
                                                                                                                     §§goto(addr603);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr594);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr646);
                                                                                                               }
                                                                                                               §§goto(addr647);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr593);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr585);
                                                                                                         }
                                                                                                         §§goto(addr591);
                                                                                                         addr171:
                                                                                                         §§push(§ !_§.§0o§);
                                                                                                         if(!(_loc7_ || this))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc7_ || this)
                                                                                                         {
                                                                                                            if(_loc7_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop().§?`§(§§pop(),§§pop(),§§pop(),§@!'§().GetPosition().x,§@!'§().GetPosition().y,1250,"",§ !_§.§ do§(§ I§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale)));
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§goto(addr243);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr608);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr443);
                                                                                                               }
                                                                                                               §§goto(addr652);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr644);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr584);
                                                                                                         }
                                                                                                         §§goto(addr585);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr641);
                                                                                                   }
                                                                                                   §§goto(addr644);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr581);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr396:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc8_ && _loc1_))
                                                                                             {
                                                                                                §§goto(addr571);
                                                                                                §§push(§ !_§.§,D§);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr635:
                                                                                             }
                                                                                          }
                                                                                          addr561:
                                                                                       }
                                                                                       §§goto(addr638);
                                                                                       §§push(_loc1_.particles);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§ !_§.§8,§);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(LevelParticleManager.§9!H§);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§goto(addr171);
                                                                                             }
                                                                                             §§goto(addr399);
                                                                                          }
                                                                                          §§goto(addr571);
                                                                                       }
                                                                                       §§goto(addr396);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr653);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr559:
                                                                              }
                                                                              §§goto(addr561);
                                                                           }
                                                                        }
                                                                        addr452:
                                                                     }
                                                                     §§goto(addr624);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  addr526:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ || _loc1_)
                                                                     {
                                                                        §§goto(addr452);
                                                                     }
                                                                     §§goto(addr629);
                                                                  }
                                                               }
                                                               addr525:
                                                            }
                                                            §§goto(addr498);
                                                         }
                                                         §§goto(addr526);
                                                      }
                                                   }
                                                   §§goto(addr506);
                                                }
                                                while(true)
                                                {
                                                   §§push(§ !_§.PARTICLE_NAME_BIRD_TRAIL2);
                                                   if(!_loc8_)
                                                   {
                                                      if(_loc8_ && _loc1_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr525);
                                                }
                                                continue loop9;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr633:
                                          }
                                          §§goto(addr635);
                                       }
                                       §§goto(addr609);
                                    }
                                 }
                              }
                           }
                           §§goto(addr559);
                        }
                        §§goto(addr633);
                     }
                  }
                  §§goto(addr384);
               }
            }
         }
         else if(false)
         {
            §§goto(addr49);
         }
         §§goto(addr117);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!§`!P§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(!_loc1_)
               {
                  if(!(_loc2_ || this))
                  {
                     addr69:
                     §!d§(LevelItemSoundResource.§`!"§);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§#! §);
            if(!(_loc2_ && _loc3_))
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §!d§(LevelItemSoundResource.§%!O§);
                     while(true)
                     {
                        if(!(_loc3_ || this))
                        {
                           continue loop0;
                        }
                        if(!_loc2_)
                        {
                           this.§#! § = true;
                           if(_loc3_)
                           {
                              §§push(true);
                              if(!(_loc2_ && param1))
                              {
                                 return §§pop();
                              }
                              break;
                           }
                           continue;
                        }
                     }
                     §§goto(addr92);
                  }
               }
               §§push(false);
            }
            addr92:
            return §§pop();
         }
         §§goto(addr93);
      }
      
      private function §;d§(param1:int) : int
      {
         return Math.min(§`S§.§[o§.§>5§,param1);
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§0!"§(false) + 1);
         var _loc4_:* = Number(90);
         if(!_loc10_)
         {
            §§push(this.§;d§(_loc3_));
            if(!_loc10_)
            {
               §§push(int(§§pop()));
               if(_loc9_)
               {
                  _loc3_ = §§pop();
                  §§goto(addr46);
               }
            }
            §§goto(addr49);
         }
         addr46:
         §§push(0);
         if(_loc9_)
         {
            addr49:
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc10_ && param1))
            {
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
                        loop3:
                        while(true)
                        {
                           if(!(_loc10_ && _loc3_))
                           {
                              param1.§?`§(§ !_§.§8,§,LevelParticleManager.§9!H§,§ !_§.§0o§,§@!'§().GetPosition().x + _loc7_,§@!'§().GetPosition().y + _loc8_,1500,"",§ !_§.§ do§(§ I§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                              loop4:
                              while(!_loc10_)
                              {
                                 if(!_loc10_)
                                 {
                                    if(!_loc10_)
                                    {
                                       §§push(_loc5_);
                                       if(_loc9_)
                                       {
                                          addr82:
                                          §§push(§§pop() + 1);
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             addr83:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                addr84:
                                                while(true)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   loop24:
                                                   while(true)
                                                   {
                                                      §§push(-§`!P§.mH);
                                                      if(!(_loc10_ && this))
                                                      {
                                                         addr244:
                                                         if(_loc9_ || this)
                                                         {
                                                            §§push(LevelMain.§@!d§);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc9_ || this)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     break loop4;
                                                                  }
                                                                  addr263:
                                                                  if(!(_loc10_ && param1))
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           addr352:
                                                                           while(true)
                                                                           {
                                                                              §§push(-§`!P§.mW);
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(LevelMain.§@!d§);
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             addr324:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                addr267:
                                                                                                loop6:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(Math.random() * -_loc7_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(2);
                                                                                                         addr278:
                                                                                                         addr191:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr279:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc10_ && _loc3_))
                                                                                                               {
                                                                                                                  addr288:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop10:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc9_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ && this))
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        addr372:
                                                                                                                        addr372:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           addr373:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              break loop10;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break;
                                                                                                                     §§goto(addr244);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(180 / Math.PI);
                                                                                                                     addr332:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr288:
                                                                                                               }
                                                                                                               §§goto(addr288);
                                                                                                            }
                                                                                                         }
                                                                                                         if(_loc10_ && this)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§push(2);
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               addr204:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§goto(addr263);
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            §§goto(addr278);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr371:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr372);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc10_ && this))
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      §§goto(addr371);
                                                                                                      §§goto(addr332);
                                                                                                   }
                                                                                                }
                                                                                                continue loop21;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr322:
                                                                                    }
                                                                                    §§goto(addr332);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr322);
                                                                  }
                                                                  §§goto(addr267);
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            addr254:
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                }
                                                continue loop0;
                                             }
                                          }
                                          addr82:
                                       }
                                       §§goto(addr82);
                                    }
                                    §§goto(addr373);
                                 }
                                 §§goto(addr324);
                              }
                              while(true)
                              {
                                 §§push(_loc8_);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(Math.random() * -_loc8_);
                                    if(_loc9_ || _loc3_)
                                    {
                                       if(!(_loc10_ && this))
                                       {
                                          if(!(_loc10_ && param1))
                                          {
                                             §§goto(addr191);
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr254);
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr263);
                                 §§goto(addr263);
                              }
                              continue;
                           }
                           §§goto(addr352);
                        }
                     }
                     §§goto(addr84);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(_loc9_ || this)
                     {
                        §§goto(addr370);
                        §§push(Math.random() * (720 / _loc3_));
                     }
                  }
                  §§goto(addr372);
               }
               §§goto(addr82);
            }
            §§goto(addr83);
         }
      }
      
      override public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!_loc9_)
         {
            if(§do §())
            {
               if(_loc10_ || param2)
               {
                  return;
               }
            }
            else
            {
               addr43:
               if(param2 < 6)
               {
                  if(!_loc9_)
                  {
                     §§goto(addr48);
                  }
               }
               §§push(§+l§() / 10);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(1);
               if(_loc10_)
               {
                  §§push(_loc3_);
                  if(_loc10_ || param2)
                  {
                     §§push(§§pop() * §0!"§(false));
                     if(!(_loc9_ && param2))
                     {
                        §§push(§§pop() * 0.12);
                     }
                  }
                  §§push(int(§§pop() + §§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:Number = 90;
               if(!(_loc9_ && this))
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
                           loop3:
                           while(true)
                           {
                              param2 = §§pop();
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(3 + param2 / 20);
                                    if(_loc9_ && _loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc10_ || _loc3_))
                                    {
                                       continue loop2;
                                    }
                                    §§push(int(§§pop()));
                                 }
                                 while(!_loc9_)
                                 {
                                    _loc4_ = §§pop();
                                    loop8:
                                    while(!(_loc9_ && this))
                                    {
                                       if(_loc9_)
                                       {
                                          continue loop0;
                                       }
                                       _loc4_ = §§pop();
                                       while(true)
                                       {
                                          §§push(0);
                                          if(_loc10_ || param2)
                                          {
                                             addr460:
                                             if(_loc9_ && param1)
                                             {
                                                break;
                                             }
                                             §§push(int(§§pop()));
                                          }
                                          if(_loc10_)
                                          {
                                             continue;
                                          }
                                          continue loop8;
                                       }
                                       while(true)
                                       {
                                          continue loop8;
                                          §§goto(addr460);
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               §§goto(addr552);
            }
            addr48:
            return;
         }
         §§goto(addr43);
      }
   }
}
