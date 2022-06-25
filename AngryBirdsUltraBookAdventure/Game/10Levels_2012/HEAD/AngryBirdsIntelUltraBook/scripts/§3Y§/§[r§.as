package §3Y§
{
   import §%!M§.§8!;§;
   import §%!M§.LevelParticleManager;
   import §-!>§.§4!T§;
   import §1!&§.Sprite;
   import §1%§.b2BodyDef;
   import §1%§.b2World;
   import §?A§.LevelMain;
   import §?A§.LevelSlingshot;
   import §^L§.LevelItemSoundResource;
   
   public class §[r§ extends §5!E§
   {
      
      protected static const §2d§:Boolean = false;
      
      protected static const §#!K§:Number = 2000;
      
      protected static const §+!'§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §[r§)
         {
            §2d§ = false;
         }
         do
         {
            §#!K§ = 2000;
            do
            {
               §+!'§ = 0.2;
            }
            while(!_loc1_);
            
         }
         while(_loc2_);
         
      }
      
      private var §#q§:Number;
      
      private var §^w§:Boolean = false;
      
      protected var § !E§:int = 0;
      
      public function §[r§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         }
         while(param10)
         {
            if(!(_loc12_ && param3))
            {
               § get§.mTryToScream = LevelObjectRenderer.§6!H§ + 1;
            }
            if(_loc13_ || param3)
            {
               break;
            }
         }
      }
      
      public function get §6!9§() : Boolean
      {
         return this.§^w§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(_loc5_)
         {
            _loc3_.§4x§ = true;
            do
            {
               _loc3_.§<!D§ = 2;
            }
            while(_loc4_);
            
         }
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§19§ < §^V§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop());
                  if(_loc2_ || this)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     addr131:
                     while(true)
                     {
                        §§pop();
                        addr132:
                        while(true)
                        {
                           §§push(Boolean(§[q§()));
                        }
                     }
                     addr131:
                  }
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.§#q§ = 0;
                           if(_loc3_ && this)
                           {
                              loop3:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§#q§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§#q§ = §§pop();
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             break loop3;
                                          }
                                          if(this.§#q§ >= §#!K§)
                                          {
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                    addr68:
                                    §§push(true);
                                    if(_loc2_ || _loc2_)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                    addr87:
                                 }
                              }
                              continue loop1;
                           }
                           §§push(false);
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 return §§pop();
                              }
                              §§goto(addr131);
                           }
                           else
                           {
                              §§goto(addr68);
                           }
                        }
                        §§goto(addr87);
                     }
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     continue loop0;
                  }
               }
               §§goto(addr131);
            }
         }
         §§goto(addr132);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(false);
         if(!_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(false);
         if(!_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            §§push(this.§^w§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(§4!W§.toUpperCase() != "BIRD_WHITE")
                     {
                        §§push(§4!W§.toUpperCase() == "BIRD_YELLOW");
                        if(_loc4_ || this)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc4_)
                           {
                              addr340:
                              if(_loc4_)
                              {
                                 §§push(§§pop());
                                 loop36:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             §§pop();
                                             loop3:
                                             while(true)
                                             {
                                                §§push(§4!W§.toUpperCase() == "BIRD_GREEN");
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop34:
                                                   while(_loc4_ || _loc2_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop16:
                                                      while(!_loc5_)
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            _loc3_ = §§pop();
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ && param1)
                                                                     {
                                                                        continue loop34;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(!§ get§.mTryToSpecial);
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(!_loc5_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          § get§.mTryToSpecial = true;
                                                                                          loop42:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(_loc4_ || param1)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc4_ || _loc3_))
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            while(_loc4_)
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc4_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue loop42;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr29);
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop34;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc5_ && param1)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            §§goto(addr234);
                                                                                                         }
                                                                                                      }
                                                                                                      addr219:
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   addr355:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      if(!(_loc5_ && param1))
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                      }
                                                                                                      addr364:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr365);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr226);
                                                                                                }
                                                                                                addr287:
                                                                                             }
                                                                                             §§goto(addr247);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(_loc4_)
                                                                                    {
                                                                                       §§push(§4!W§.toUpperCase() == "BIRD_RED");
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr274);
                                                                                       }
                                                                                    }
                                                                                    continue loop3;
                                                                                    addr197:
                                                                                 }
                                                                                 §§goto(addr117);
                                                                              }
                                                                           }
                                                                           §§goto(addr197);
                                                                        }
                                                                        else if(§ get§.mTryToSpecial)
                                                                        {
                                                                           §§goto(addr124);
                                                                        }
                                                                        §§goto(addr29);
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                                  continue loop34;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                      while(_loc4_)
                                                      {
                                                         §§pop();
                                                         §§goto(addr287);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc5_ && this)
                                                            {
                                                               continue loop36;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr345:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr296);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr364);
                           }
                           §§goto(addr345);
                        }
                        §§goto(addr340);
                     }
                     §§goto(addr355);
                  }
               }
               addr29:
               loop40:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_ || _loc3_)
                  {
                     if(_loc4_)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           break;
                        }
                        continue loop30;
                     }
                     continue loop26;
                  }
                  addr307:
                  loop24:
                  while(true)
                  {
                     if(_loc4_ || param1)
                     {
                        addr71:
                        _loc2_ = §§pop();
                        if(!(_loc5_ && param1))
                        {
                           addr79:
                           if(_loc4_ || this)
                           {
                              addr86:
                              if(_loc4_ || param1)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    continue loop40;
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue loop29;
                                 }
                                 if(!§ get§.mIsSpecial)
                                 {
                                    continue loop40;
                                 }
                                 §§goto(addr86);
                              }
                              addr135:
                           }
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 § get§.mIsSpecial = false;
                                 break loop24;
                              }
                              break;
                              §§goto(addr79);
                           }
                           loop20:
                           while(true)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 § get§.mTryToSpecial = false;
                                 §§goto(addr135);
                              }
                              addr236:
                              while(true)
                              {
                                 if(_loc5_ && _loc2_)
                                 {
                                    break loop20;
                                 }
                                 if(§ get§.mTryToFly)
                                 {
                                    break loop27;
                                 }
                                 continue loop18;
                              }
                           }
                           while(true)
                           {
                              continue loop18;
                           }
                           addr365:
                           addr124:
                        }
                        break;
                     }
                     continue loop25;
                  }
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        continue loop27;
                     }
                     if(!_loc4_)
                     {
                        continue loop17;
                     }
                     §§push(true);
                     if(!_loc5_)
                     {
                        addr54:
                        if(_loc5_ && _loc3_)
                        {
                           break;
                        }
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                        §§push(Boolean(§§pop()));
                     }
                     §§goto(addr64);
                     §§goto(addr71);
                  }
                  addr64:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           addr281:
                           §§push(Boolean(§§pop()));
                           if(_loc5_)
                           {
                              continue loop37;
                           }
                           if(!§§pop())
                           {
                              break loop16;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 continue loop18;
                              }
                              §§goto(addr236);
                           }
                        }
                        break;
                     }
                     §§goto(addr281);
                     §§goto(addr54);
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           break loop29;
                        }
                        addr308:
                     }
                     addr274:
                     while(true)
                     {
                        §§goto(addr275);
                     }
                  }
                  addr275:
               }
               return §§pop();
            }
         }
         §§goto(addr199);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = NaN;
         §§push(false);
         if(!(_loc4_ && _loc3_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            §§push(Boolean(§8!N§().IsAwake()));
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
                           addr434:
                           while(true)
                           {
                              §§push(§19§ == §^V§);
                              addr411:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr412:
                                 while(_loc5_)
                                 {
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        addr433:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§ get§.mTryToFly)
                           {
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       § get§.mTryToFly = false;
                                       loop40:
                                       while(true)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(§ get§.mIsFlying)
                                             {
                                                loop41:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         § get§.mIsFlying = false;
                                                         loop42:
                                                         while(!_loc4_)
                                                         {
                                                            §§push(true);
                                                            loop43:
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     addr66:
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop44:
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop42;
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop41;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(!(_loc4_ && param1))
                                                                                             {
                                                                                                loop46:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop44;
                                                                                                   }
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      continue loop43;
                                                                                                   }
                                                                                                   addr38:
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      addr45:
                                                                                                      if(_loc5_ || _loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            §§push(!§3s§());
                                                                                                            loop24:
                                                                                                            while(_loc5_)
                                                                                                            {
                                                                                                               addr195:
                                                                                                               if(_loc5_ || _loc2_)
                                                                                                               {
                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     loop25:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr233:
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 if(!(_loc4_ && param1))
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          loop27:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(!§#j§());
                                                                                                                                                while(_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   loop29:
                                                                                                                                                   while(_loc5_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_ || this)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop27;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     § 4§(0);
                                                                                                                                                                     addr179:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc5_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           addr389:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              § 4§(§=W§() - _loc3_);
                                                                                                                                                                              addr330:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr389:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr173:
                                                                                                                                                            }
                                                                                                                                                            addr125:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop46;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr171:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  § get§.mTryToFly = true;
                                                                                                                                                                  addr425:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(true);
                                                                                                                                                                     loop10:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        addr393:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc2_ = §§pop();
                                                                                                                                                                           addr404:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr306:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_ && _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop10;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§^w§);
                                                                                                                                                                                 break loop24;
                                                                                                                                                                                 addr258:
                                                                                                                                                                                 while(_loc5_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr125);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr433);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr434);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr421:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§4!W§.toUpperCase() == "BIRD_GREEN")
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1);
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(this.§^w§)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              addr345:
                                                                                                                                                                              §§push(2);
                                                                                                                                                                              if(_loc5_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 addr364:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(360);
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr388:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(1000);
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                                                                       §§goto(addr389);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr388);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(1);
                                                                                                                                                                           if(_loc5_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr364);
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr388);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr345);
                                                                                                                                                                  }
                                                                                                                                                                  addr337:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(§4!W§.toUpperCase() == "BIRD_WHITE");
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     break loop29;
                                                                                                                                                                     §§goto(addr195);
                                                                                                                                                                  }
                                                                                                                                                                  addr288:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr420:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr389);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      addr290:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         break loop25;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop24;
                                                                                                                                                addr154:
                                                                                                                                             }
                                                                                                                                             addr269:
                                                                                                                                             while(_loc5_ || param1)
                                                                                                                                             {
                                                                                                                                                §3!$§();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr125);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr404);
                                                                                                                                          }
                                                                                                                                          §§goto(addr66);
                                                                                                                                       }
                                                                                                                                       addr241:
                                                                                                                                    }
                                                                                                                                    §§goto(addr171);
                                                                                                                                 }
                                                                                                                                 §§goto(addr290);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr233);
                                                                                                                        }
                                                                                                                        §§goto(addr306);
                                                                                                                        §§goto(addr38);
                                                                                                                     }
                                                                                                                     while(_loc5_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr306);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr257:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §§push(§2d§);
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              §§goto(addr258);
                                                                                                                              continue loop44;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                     addr220:
                                                                                                                  }
                                                                                                                  §§goto(addr412);
                                                                                                               }
                                                                                                               §§goto(addr288);
                                                                                                            }
                                                                                                            while(!(_loc4_ && this))
                                                                                                            {
                                                                                                               §§goto(addr256);
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr393);
                                                                                                         }
                                                                                                         §§goto(addr269);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr220);
                                                                                                }
                                                                                                return §§pop();
                                                                                                addr32:
                                                                                             }
                                                                                             §§goto(addr434);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             addr416:
                                                                                          }
                                                                                          §§goto(addr420);
                                                                                       }
                                                                                       §§goto(addr425);
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                                 §§goto(addr258);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr257);
                                                                        }
                                                                        §§goto(addr411);
                                                                     }
                                                                     §§goto(addr241);
                                                                  }
                                                                  §§goto(addr154);
                                                               }
                                                               §§goto(addr157);
                                                            }
                                                         }
                                                         continue loop40;
                                                      }
                                                      §§goto(addr330);
                                                   }
                                                   §§goto(addr279);
                                                }
                                             }
                                             §§goto(addr32);
                                          }
                                          §§goto(addr173);
                                       }
                                       addr142:
                                    }
                                    §§goto(addr421);
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr32);
                        }
                        §§goto(addr416);
                     }
                  }
               }
            }
         }
         §§goto(addr175);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:LevelMain = §4!T§.§1t§;
         if(!(_loc7_ && _loc3_))
         {
            §§push(§19§ < §^V§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc7_ && _loc1_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr112:
                        while(true)
                        {
                           §§push(§8!N§() == null);
                           if(!(_loc7_ && this))
                           {
                              continue loop2;
                           }
                           addr79:
                           if(!_loc8_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(§§pop())
                  {
                  }
                  §§push(x * LevelMain.§!5§);
                  if(_loc8_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(y * LevelMain.§!5§);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(_loc8_ || _loc1_)
                  {
                     addr621:
                     if(_loc1_.§4-§)
                     {
                        if(!(_loc7_ && _loc2_))
                        {
                           addr648:
                           _loc1_.particles.§%!!§(§8!;§.§&!5§,LevelParticleManager.§`v§,§8!;§.§2!b§,_loc2_,_loc3_,-1,"",§8!;§.§9!0§);
                        }
                        _loc1_.§4-§ = false;
                        this.§ !E§ = 0;
                        addr348:
                        §§push(Boolean(§--§() > LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN));
                        §§push(Boolean(§--§() > LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN));
                        if(_loc8_ || _loc1_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        addr603:
                        addr649:
                        addr608:
                        if(§§pop())
                        {
                           addr366:
                           §§pop();
                           addr367:
                           if(!(_loc7_ && _loc2_))
                           {
                              §§push(Math.random() < §+!'§);
                              if(!_loc7_)
                              {
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    if(_loc8_ || this)
                                    {
                                       addr296:
                                       §§push(Boolean(§§pop()));
                                       if(_loc8_ || _loc1_)
                                       {
                                          if(_loc8_)
                                          {
                                             §§goto(addr305);
                                          }
                                          §§goto(addr621);
                                       }
                                    }
                                    §§goto(addr348);
                                 }
                                 §§goto(addr366);
                              }
                              §§goto(addr296);
                           }
                           §§goto(addr543);
                        }
                        addr305:
                        if(§§pop())
                        {
                           if(!(_loc7_ && _loc3_))
                           {
                              if(!_loc7_)
                              {
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push(-Math.PI);
                                    if(!_loc7_)
                                    {
                                       addr344:
                                       §§push(§§pop() / 2);
                                       if(_loc8_)
                                       {
                                          addr343:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc5_ = §§pop();
                                       addr345:
                                       if(_loc8_)
                                       {
                                          §§push(Number(Math.random()));
                                          if(_loc8_)
                                          {
                                             _loc6_ = §§pop();
                                             addr264:
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §§push(_loc1_.particles);
                                                if(!_loc7_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         §§push(§8!;§.§=!5§);
                                                         if(_loc8_ || _loc3_)
                                                         {
                                                            §§push(LevelParticleManager.§1!'§);
                                                            if(_loc8_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§8!;§.§;Z§);
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop().§%!!§(§§pop(),§§pop(),§§pop(),§8!N§().GetPosition().x,§8!N§().GetPosition().y,1250,"",§8!;§.§"K§(§4!W§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale)));
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(!(_loc7_ && _loc2_))
                                                                           {
                                                                              if(_loc8_ || _loc3_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§goto(addr367);
                                                                                       }
                                                                                       §§goto(addr146);
                                                                                    }
                                                                                    §§goto(addr345);
                                                                                 }
                                                                                 §§goto(addr264);
                                                                              }
                                                                              §§goto(addr648);
                                                                           }
                                                                           addr597:
                                                                           §§pop();
                                                                           §§goto(addr348);
                                                                           addr598:
                                                                        }
                                                                        addr445:
                                                                        §§pop();
                                                                        addr446:
                                                                        if(!(_loc7_ && _loc1_))
                                                                        {
                                                                           §§goto(addr348);
                                                                        }
                                                                        §§push(§8!;§.PARTICLE_NAME_BIRD_TRAIL3);
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              if(_loc8_ || _loc2_)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    addr508:
                                                                                    _loc4_ = §§pop();
                                                                                    addr454:
                                                                                    §§push(this);
                                                                                    §§push(this.§ !E§ + 1);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() % 3);
                                                                                    }
                                                                                    §§pop().§ !E§ = §§pop();
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          addr379:
                                                                                          addr378:
                                                                                          §§push(_loc1_.particles);
                                                                                          §§push(_loc4_);
                                                                                          if(_loc8_ || this)
                                                                                          {
                                                                                             addr389:
                                                                                             §§push(LevelParticleManager.§`v§);
                                                                                             if(_loc8_ || _loc1_)
                                                                                             {
                                                                                                addr399:
                                                                                                §§push(§8!;§.§2!b§);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr576:
                                                                                                   §§push(_loc2_);
                                                                                                   if(!(_loc7_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(_loc8_ || this)
                                                                                                      {
                                                                                                         if(_loc8_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(-1);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  §§push("");
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr589:
                                                                                                                        §§push(§8!;§.§9!0§);
                                                                                                                        if(!(_loc7_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§goto(addr445);
                                                                                                                           §§push(§§pop().§%!!§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop()));
                                                                                                                        }
                                                                                                                        if(!(_loc7_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§goto(addr597);
                                                                                                                           §§push(§§pop().§%!!§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr648);
                                                                                                                  }
                                                                                                                  addr586:
                                                                                                                  §§goto(addr589);
                                                                                                                  §§push(§8!;§.§9!0§);
                                                                                                               }
                                                                                                               §§goto(addr648);
                                                                                                            }
                                                                                                            addr585:
                                                                                                            §§goto(addr586);
                                                                                                            §§push("");
                                                                                                         }
                                                                                                         §§goto(addr648);
                                                                                                      }
                                                                                                      addr584:
                                                                                                      §§goto(addr585);
                                                                                                      §§push(-1);
                                                                                                   }
                                                                                                   if(_loc8_ || _loc1_)
                                                                                                   {
                                                                                                      §§goto(addr584);
                                                                                                      §§push(_loc3_);
                                                                                                   }
                                                                                                   §§goto(addr648);
                                                                                                }
                                                                                                addr575:
                                                                                                §§goto(addr576);
                                                                                                §§push(_loc2_);
                                                                                             }
                                                                                             §§goto(addr648);
                                                                                          }
                                                                                          addr567:
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             addr572:
                                                                                             §§goto(addr575);
                                                                                             §§push(LevelParticleManager.§`v§);
                                                                                             §§push(§8!;§.§2!b§);
                                                                                          }
                                                                                          §§goto(addr648);
                                                                                       }
                                                                                       addr564:
                                                                                       §§goto(addr567);
                                                                                       §§push(_loc1_.particles);
                                                                                       §§push(§8!;§.§%"§);
                                                                                    }
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       if(!(_loc7_ && _loc1_))
                                                                                       {
                                                                                          if(!(_loc7_ && _loc2_))
                                                                                          {
                                                                                             addr539:
                                                                                             §§push(§8!;§.PARTICLE_NAME_BIRD_TRAIL2);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                addr542:
                                                                                                _loc4_ = §§pop();
                                                                                                §§goto(addr454);
                                                                                                addr543:
                                                                                             }
                                                                                             addr551:
                                                                                             _loc4_ = §§pop();
                                                                                             addr552:
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                addr514:
                                                                                                addr513:
                                                                                                if(this.§ !E§ == 1)
                                                                                                {
                                                                                                   §§goto(addr454);
                                                                                                }
                                                                                                §§push(this.§ !E§);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§push(2);
                                                                                                   if(_loc8_ || _loc2_)
                                                                                                   {
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         §§goto(addr445);
                                                                                                      }
                                                                                                      §§goto(addr454);
                                                                                                   }
                                                                                                   §§goto(addr514);
                                                                                                }
                                                                                                §§goto(addr513);
                                                                                             }
                                                                                             §§goto(addr603);
                                                                                          }
                                                                                          §§goto(addr649);
                                                                                       }
                                                                                       §§goto(addr608);
                                                                                    }
                                                                                    §§goto(addr552);
                                                                                    addr509:
                                                                                 }
                                                                                 addr550:
                                                                                 §§goto(addr551);
                                                                                 §§push(§§pop());
                                                                              }
                                                                              §§goto(addr539);
                                                                           }
                                                                           §§goto(addr542);
                                                                        }
                                                                        §§goto(addr508);
                                                                     }
                                                                     §§goto(addr648);
                                                                  }
                                                                  §§goto(addr399);
                                                               }
                                                               §§goto(addr572);
                                                            }
                                                            §§goto(addr389);
                                                         }
                                                         §§goto(addr379);
                                                      }
                                                      §§goto(addr648);
                                                   }
                                                   §§goto(addr564);
                                                }
                                                §§goto(addr378);
                                             }
                                             §§goto(addr446);
                                          }
                                          §§goto(addr344);
                                       }
                                       §§goto(addr509);
                                    }
                                    §§goto(addr343);
                                 }
                                 §§goto(addr598);
                              }
                              §§goto(addr508);
                           }
                           §§goto(addr344);
                        }
                        addr146:
                        return;
                     }
                     if(§,!]§ > 1)
                     {
                        §§goto(addr564);
                     }
                     §§goto(addr550);
                     §§push(§8!;§.PARTICLE_NAME_BIRD_TRAIL1);
                  }
                  §§goto(addr445);
               }
            }
         }
         loop5:
         do
         {
            _loc1_.§^#§(this);
            while(!(_loc7_ && _loc3_))
            {
               _loc1_.§4-§ = false;
               if(_loc8_)
               {
                  continue loop5;
               }
            }
            §§goto(addr112);
         }
         while(_loc7_);
         
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§ get§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(!(_loc1_ || _loc1_))
               {
                  addr74:
               }
               return;
            }
            if(_loc1_ || _loc2_)
            {
               addr68:
               §8!9§(LevelItemSoundResource.§1!i§);
            }
            §§goto(addr74);
         }
         §§goto(addr68);
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§^w§);
            loop0:
            for(; !§§pop(); if(_loc2_ && _loc2_)
            {
               continue;
            },§§goto(addr41))
            {
               loop1:
               while(true)
               {
                  §8!9§(LevelItemSoundResource.§^H§);
                  loop2:
                  while(true)
                  {
                     if(_loc2_ && param1)
                     {
                        break loop0;
                     }
                     this.§^w§ = true;
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              §§push(true);
                              if(_loc2_)
                              {
                                 break loop2;
                              }
                              continue loop0;
                           }
                           addr41:
                           return §§pop();
                           addr67:
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr87);
               }
            }
            addr87:
            return §§pop();
            §§push(false);
         }
         §§goto(addr67);
      }
      
      private function §5;§(param1:int) : int
      {
         return Math.min(§4!T§.§1t§.§!!J§,param1);
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§2!2§(false) + 1);
         var _loc4_:* = Number(90);
         if(!_loc10_)
         {
            §§push(this.§5;§(_loc3_));
            if(!_loc10_)
            {
               §§push(int(§§pop()));
               if(_loc9_ || _loc2_)
               {
                  §§goto(addr50);
               }
               §§goto(addr59);
            }
            addr50:
            _loc3_ = §§pop();
            §§goto(addr51);
         }
         addr51:
         §§push(0);
         if(_loc9_ || _loc3_)
         {
            addr59:
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc10_ && _loc2_))
            {
               if(_loc9_)
               {
                  if(§§pop() >= _loc3_)
                  {
                     if(_loc10_)
                     {
                        continue;
                     }
                     if(_loc9_)
                     {
                        if(!_loc10_)
                        {
                           if(_loc9_ || _loc2_)
                           {
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              §§push(-§ get§.mH);
                              while(true)
                              {
                                 §§push(LevelMain.§!5§);
                                 addr259:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop5:
                                    while(_loc9_)
                                    {
                                       if(_loc9_)
                                       {
                                          §§push(Number(§§pop()));
                                          loop6:
                                          while(true)
                                          {
                                             _loc8_ = §§pop();
                                             loop7:
                                             while(!_loc10_)
                                             {
                                                §§push(_loc8_);
                                                if(_loc9_)
                                                {
                                                   continue loop6;
                                                }
                                                addr223:
                                                if(!(_loc10_ && param1))
                                                {
                                                   addr231:
                                                   §§push(Number(§§pop()));
                                                   if(!_loc9_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(_loc9_ || param1)
                                                   {
                                                      if(_loc9_ || this)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            _loc8_ = §§pop();
                                                            while(true)
                                                            {
                                                               param1.§%!!§(§8!;§.§=!5§,LevelParticleManager.§1!'§,§8!;§.§;Z§,§8!N§().GetPosition().x + _loc7_,§8!N§().GetPosition().y + _loc8_,1500,"",§8!;§.§"K§(§4!W§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                               addr148:
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        while(true)
                                                                        {
                                                                           §§push(Math.random() * -_loc7_);
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 §§push(2);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr288:
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             break loop5;
                                                                                          }
                                                                                          addr296:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             addr356:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr357:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   break loop7;
                                                                                                }
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                          addr355:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr287:
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           addr341:
                                                                           _loc6_ = §§pop() / §§pop();
                                                                           addr334:
                                                                           while(true)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                        addr271:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        addr311:
                                                                        §§push(-§ get§.mW);
                                                                        if(_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                     addr318:
                                                                     _loc7_ = §§pop() * LevelMain.§!5§;
                                                                  }
                                                               }
                                                               §§push(_loc5_);
                                                               if(!_loc10_)
                                                               {
                                                                  addr97:
                                                                  _loc5_ = int(§§pop() + 1);
                                                                  addr96:
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr96);
                                                            }
                                                            addr250:
                                                         }
                                                         §§goto(addr357);
                                                      }
                                                      §§goto(addr318);
                                                   }
                                                   §§goto(addr296);
                                                }
                                                §§goto(addr318);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr334);
                                             }
                                          }
                                       }
                                       §§goto(addr311);
                                    }
                                    while(_loc9_ || param1)
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr341);
                                 }
                                 if(!(_loc9_ || param1))
                                 {
                                    continue;
                                 }
                                 if(!_loc10_)
                                 {
                                    if(!_loc10_)
                                    {
                                       if(_loc9_ || this)
                                       {
                                          §§push(Math.random() * -_loc8_);
                                          if(!_loc10_)
                                          {
                                             if(!(_loc10_ && param1))
                                             {
                                                if(!(_loc10_ && this))
                                                {
                                                   §§push(2);
                                                   if(_loc9_)
                                                   {
                                                      addr218:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc9_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr223);
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr318);
                                                   }
                                                   §§goto(addr287);
                                                }
                                                §§goto(addr288);
                                             }
                                             §§goto(addr259);
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr356);
                                    }
                                    §§goto(addr341);
                                 }
                                 §§goto(addr271);
                              }
                           }
                        }
                        §§goto(addr250);
                     }
                     §§goto(addr148);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(_loc9_)
                     {
                        §§goto(addr355);
                        §§push(Math.random() * (720 / _loc3_));
                     }
                  }
                  §§goto(addr356);
               }
               §§goto(addr96);
            }
            §§goto(addr97);
         }
      }
      
      override public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(!_loc9_)
         {
            if(§#j§())
            {
               if(!_loc9_)
               {
                  return;
               }
            }
            else if(param2 < 6)
            {
               if(_loc10_)
               {
                  return;
               }
            }
         }
         §§push(§--§() / 10);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(_loc10_)
         {
            §§push(_loc3_);
            if(_loc10_ || _loc3_)
            {
               §§push(§§pop() * §2!2§(false));
               if(_loc10_)
               {
                  §§push(§§pop() * 0.12);
               }
            }
            §§push(int(§§pop() + §§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:* = Number(90);
         if(!_loc9_)
         {
            §§push(param2);
            while(true)
            {
               §§push(scale * scale);
               addr564:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  addr565:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr566:
                     while(true)
                     {
                        param2 = §§pop();
                     }
                  }
               }
               addr509:
               if(!(_loc10_ || _loc3_))
               {
                  continue;
               }
               §§push(int(§§pop()));
               loop8:
               while(true)
               {
                  _loc4_ = §§pop();
                  while(_loc10_)
                  {
                     §§push(0);
                     if(!(_loc9_ && param1))
                     {
                        if(!_loc10_)
                        {
                           continue loop8;
                        }
                        if(!_loc9_)
                        {
                           addr475:
                           §§push(int(§§pop()));
                           if(_loc10_ || param1)
                           {
                              _loc6_ = §§pop();
                              if(_loc9_ && param2)
                              {
                                 continue;
                              }
                              if(_loc10_ || _loc3_)
                              {
                                 addr367:
                                 §§push(_loc6_);
                                 if(_loc10_ || this)
                                 {
                                    addr377:
                                    if(§§pop() >= _loc4_ / 3)
                                    {
                                       if(!(_loc9_ && this))
                                       {
                                          if(!_loc9_)
                                          {
                                             addr390:
                                             §§push(int(0));
                                             if(_loc10_ || param2)
                                             {
                                                if(!_loc9_)
                                                {
                                                   _loc6_ = §§pop();
                                                   addr80:
                                                   addr401:
                                                   §§push(_loc6_);
                                                   if(!_loc9_)
                                                   {
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc10_ || this)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  if(_loc9_ && _loc3_)
                                                                  {
                                                                     addr199:
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                              if(_loc10_ || this)
                                                                              {
                                                                              }
                                                                              addr132:
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 addr140:
                                                                                 §§goto(addr80);
                                                                              }
                                                                              §§goto(addr390);
                                                                           }
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              §§goto(addr132);
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           §§goto(addr390);
                                                                        }
                                                                        addr444:
                                                                        param1.§%!!§(§8!;§.§,>§,LevelParticleManager.§1!'§,§8!;§.§;Z§,§8!N§().GetPosition().x,§8!N§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
                                                                        addr406:
                                                                        _loc6_++;
                                                                        §§goto(addr367);
                                                                        addr460:
                                                                        addr405:
                                                                        addr404:
                                                                        addr445:
                                                                     }
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           §§push(param1.§%!!§(§8!;§.§=!5§,LevelParticleManager.§1!'§,§8!;§.§;Z§,§8!N§().GetPosition().x,§8!N§().GetPosition().y,1250,"",§8!;§.§"K§(§4!W§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale)));
                                                                           if(_loc10_)
                                                                           {
                                                                              §§pop();
                                                                              §§goto(addr199);
                                                                           }
                                                                        }
                                                                        §§goto(addr444);
                                                                     }
                                                                     addr326:
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           §§push(0.5);
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(_loc10_ || _loc3_)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(!(_loc9_ && _loc3_))
                                                                                          {
                                                                                             addr247:
                                                                                             §§push(§§pop() * (Math.random() * 0.5));
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc9_ && param2))
                                                                                                {
                                                                                                   addr321:
                                                                                                   if(_loc10_ || _loc3_)
                                                                                                   {
                                                                                                      addr280:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc10_ || param2)
                                                                                                      {
                                                                                                         _loc8_ = §§pop();
                                                                                                         §§goto(addr199);
                                                                                                      }
                                                                                                      addr320:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         §§goto(addr326);
                                                                                                      }
                                                                                                      addr357:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                   {
                                                                                                      _loc5_ = §§pop();
                                                                                                      §§push(_loc5_);
                                                                                                      if(_loc10_ || param1)
                                                                                                      {
                                                                                                         addr458:
                                                                                                         §§push(180 / Math.PI);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§goto(addr320);
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                         }
                                                                                                         if(!(_loc9_ && param1))
                                                                                                         {
                                                                                                            §§goto(addr357);
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         _loc5_ = Number(§§pop() + §§pop());
                                                                                                         §§goto(addr460);
                                                                                                      }
                                                                                                      §§goto(addr321);
                                                                                                      addr366:
                                                                                                   }
                                                                                                   §§goto(addr458);
                                                                                                }
                                                                                                §§goto(addr280);
                                                                                             }
                                                                                             §§goto(addr458);
                                                                                          }
                                                                                          §§goto(addr247);
                                                                                       }
                                                                                       addr450:
                                                                                       §§goto(addr458);
                                                                                       §§push(Math.random() * (720 / _loc4_));
                                                                                    }
                                                                                    §§goto(addr458);
                                                                                 }
                                                                                 §§goto(addr321);
                                                                              }
                                                                              §§goto(addr247);
                                                                           }
                                                                           §§goto(addr280);
                                                                        }
                                                                        §§goto(addr401);
                                                                     }
                                                                     §§goto(addr366);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr140);
                                                            }
                                                            §§push(_loc5_);
                                                            if(_loc10_)
                                                            {
                                                               §§goto(addr458);
                                                               §§push(Math.random() * (720 / _loc4_));
                                                            }
                                                            §§goto(addr321);
                                                         }
                                                         §§goto(addr377);
                                                      }
                                                      §§goto(addr405);
                                                   }
                                                   §§goto(addr132);
                                                }
                                                §§goto(addr404);
                                             }
                                             §§goto(addr406);
                                          }
                                          §§goto(addr445);
                                       }
                                       §§goto(addr80);
                                    }
                                    §§goto(addr450);
                                    §§push(_loc5_);
                                 }
                                 §§goto(addr390);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(this.§5;§(_loc4_));
                                    addr502:
                                    while(_loc10_ || param2)
                                    {
                                       §§goto(addr509);
                                    }
                                    §§goto(addr566);
                                 }
                                 addr557:
                              }
                           }
                           while(true)
                           {
                              _loc4_ = §§pop();
                              §§goto(addr557);
                              §§goto(addr475);
                           }
                           addr556:
                        }
                        §§goto(addr502);
                     }
                     §§goto(addr475);
                  }
                  addr567:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc9_)
                     {
                        §§push(3 + param2 / 20);
                        if(!(_loc9_ && param2))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc9_ && this))
                           {
                              §§goto(addr556);
                              §§push(int(§§pop()));
                           }
                           else
                           {
                              §§goto(addr565);
                           }
                           §§goto(addr566);
                        }
                        else
                        {
                           §§goto(addr564);
                        }
                     }
                     §§goto(addr475);
                  }
               }
            }
         }
         §§goto(addr567);
      }
   }
}
