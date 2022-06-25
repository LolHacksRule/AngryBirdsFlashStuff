package §"m§
{
   import §"R§.§ !Q§;
   import §%Q§.§%d§;
   import §%Q§.§3L§;
   import §%Q§.§`!<§;
   import §,!5§.§>!A§;
   import §,!5§.§^g§;
   import §0!N§.LevelManager;
   import §0X§.§&'§;
   import §2!R§.§#C§;
   import §^_§.§=H§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import §true§.§ _§;
   
   public class §`!=§ extends §1!%§
   {
      
      public static const §<n§:int = 0;
      
      public static const §%8§:int = 1;
      
      public static const §==§:int = 2;
      
      public static const §8R§:int = 3;
      
      public static const §3j§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §[3§:int = 7;
      
      protected static const §6!V§:Number = 0.001;
      
      public static const §[,§:Number = 2000;
      
      public static const §%7§:Number = 2500;
      
      public static const §5K§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §<n§ = 0;
            while(true)
            {
               §%8§ = 1;
            }
            addr148:
         }
         loop1:
         while(true)
         {
            §==§ = 2;
            addr139:
            while(true)
            {
               §8R§ = 3;
               while(_loc1_)
               {
                  §3j§ = 4;
                  while(_loc1_ || _loc1_)
                  {
                     LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                     continue loop1;
                  }
               }
               §§goto(addr148);
            }
         }
      }
      
      public var §2?§:int = 0;
      
      protected var §@!H§:int = 0;
      
      public var §4!q§:Number;
      
      protected var §^h§:Number = 0;
      
      protected var §^!#§:Boolean = false;
      
      private var §%!j§:Number = 0;
      
      public var §?!9§:Number = 0;
      
      protected var §!!O§:Boolean;
      
      protected var §9!M§:Number = 0;
      
      protected var §&a§:Number = 0;
      
      protected var §2!'§:Boolean = true;
      
      protected var §'R§:§&'§;
      
      public function §`!=§(param1:§^g§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§'R§ = new §&'§();
         }
         do
         {
            super(param1);
         }
         while(!_loc2_);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.init();
            while(true)
            {
               this.§'R§.assign(0);
               while(true)
               {
                  this.§2?§ = -1;
                  loop2:
                  while(true)
                  {
                     this.§@!H§ = 0;
                     addr139:
                     while(true)
                     {
                        this.§^h§ = 0;
                        continue loop2;
                     }
                  }
                  while(_loc1_ || _loc2_)
                  {
                     §#!X§(true);
                     §§goto(addr88);
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            param1 = §?l§.update(param1,true);
            while(true)
            {
               this.§2y§(param1);
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            this.§;6§(param1);
            if(_loc3_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §2y§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§@!H§ != 0)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr44:
                  §?l§.camera.adjustManualScale(this.§@!H§ > 0,param1 * §6!V§);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §?l§.clearLevel();
            while(true)
            {
               removeEventListeners();
               while(_loc1_ || _loc2_)
               {
                  this.§2?§ = -1;
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.addEventListeners();
         }
      }
      
      public function §7!Q§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§?l§.camera.mCurrentCameraSliderLocation < §#C§.§]!q§)
            {
               if(_loc2_ || this)
               {
                  return false;
               }
               else
               {
                  loop1:
                  while(true)
                  {
                     addr44:
                     while(!§?l§.objects.isWorldAtSleep())
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        if(_loc2_ || _loc1_)
                        {
                           §§goto(addr69);
                        }
                        continue loop1;
                     }
                     §§push(true);
                     if(!(_loc2_ || _loc1_))
                     {
                        addr69:
                        return false;
                     }
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  addr86:
               }
               return §§pop();
            }
            §§goto(addr44);
         }
         §§goto(addr86);
      }
      
      public function §9!V§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§#C§ = §?l§.camera;
         if(!(_loc4_ && this))
         {
            §§push(_loc2_.§7!3§);
            loop0:
            while(true)
            {
               §§push(0);
               addr123:
               while(§§pop() > §§pop())
               {
               }
               addr28:
               return;
               while(true)
               {
                  §§push(_loc2_.§7!3§);
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
                  §§push(0);
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(§§pop() <= §§pop())
                  {
                     continue;
                  }
                  §§goto(addr28);
               }
               §§goto(addr123);
            }
         }
         §§goto(addr124);
      }
      
      public function §@&§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§<$§(false));
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr433:
                        while(true)
                        {
                           §§push(param2);
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           addr408:
                           if(_loc3_ && _loc3_)
                           {
                              continue loop2;
                           }
                           if(!(_loc4_ || this))
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
                  loop4:
                  while(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§push(param1);
                        loop6:
                        while(true)
                        {
                           §§push(§<n§);
                           loop7:
                           while(§§pop() != §§pop())
                           {
                              §§push(param1);
                              loop8:
                              while(true)
                              {
                                 §§push(§%8§);
                                 loop9:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(param1);
                                    loop10:
                                    for(; _loc4_; while(!(_loc3_ && param2))
                                    {
                                       §§goto(addr288);
                                       §§push(§3j§);
                                    })
                                    {
                                       §§push(§==§);
                                       loop11:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(param1);
                                          while(!(_loc3_ && this))
                                          {
                                             §§push(§8R§);
                                             loop13:
                                             while(_loc4_ || _loc3_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   §§push(param1);
                                                   continue loop10;
                                                }
                                                addr338:
                                                if(!_loc3_)
                                                {
                                                   §?l§.camera.goToCastleView();
                                                   loop35:
                                                   while(true)
                                                   {
                                                      addr29:
                                                      loop22:
                                                      while(true)
                                                      {
                                                         this.§2?§ = param1;
                                                         if(!_loc3_)
                                                         {
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     return;
                                                                  }
                                                                  addr140:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        § !Q§.playSound("LevelFailedPigs1");
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           this.§?!9§ = 1200;
                                                                           addr84:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop24;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break loop7;
                                                                                 }
                                                                                 §?l§.camera.goToCastleView();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr433);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       addr348:
                                                                                    }
                                                                                    addr251:
                                                                                    while(true)
                                                                                    {
                                                                                       addr218:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §?l§.objects.makePigsSmile(5);
                                                                                    break loop22;
                                                                                 }
                                                                              }
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §?l§.camera.goToBirdView();
                                                                                    loop30:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc3_ && param1))
                                                                                       {
                                                                                          §?l§.slingshot.makeBirdsJumpForJoy();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   loop44:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§ !Q§);
                                                                                                      §§push("LevelCompletedBirdsMilitary");
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                                                                      }
                                                                                                      §§pop().playSound(§§pop());
                                                                                                      addr159:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_ || this)
                                                                                                            {
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            addr235:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  break loop9;
                                                                                                               }
                                                                                                               this.§?!9§ = 1200;
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(!§?l§.objects.mMightyEagleAdded)
                                                                                                               {
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               continue loop44;
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         continue loop44;
                                                                                                      }
                                                                                                      addr248:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §?l§.camera.goToBirdView();
                                                                                                         §§goto(addr251);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_ && _loc3_)
                                                                                                      {
                                                                                                         continue loop35;
                                                                                                      }
                                                                                                      this.§%!j§ = §5K§;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §?l§.camera.goToCastleView();
                                                                                                         addr268:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               break loop11;
                                                                                                            }
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr310:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr263:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§?l§.objects.mMightyEagleAdded)
                                                                                                   {
                                                                                                      §§goto(addr248);
                                                                                                   }
                                                                                                }
                                                                                                addr263:
                                                                                             }
                                                                                             §§goto(addr218);
                                                                                          }
                                                                                          addr180:
                                                                                       }
                                                                                       §§goto(addr248);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr338);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr159);
                                                                  }
                                                               }
                                                               §§goto(addr84);
                                                            }
                                                            §§goto(addr73);
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!(_loc3_ && param2))
                                                            {
                                                               if(_loc4_ || param1)
                                                               {
                                                                  §§goto(addr29);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           this.§?!9§ = 2000;
                                                                           §§goto(addr310);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr29);
                                                                        }
                                                                        addr377:
                                                                     }
                                                                  }
                                                                  addr298:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §?l§.particles.moveTrailsNewToOld();
                                                                     §§goto(addr348);
                                                                  }
                                                                  addr385:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr29);
                                                                  }
                                                               }
                                                               addr353:
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         §§goto(addr180);
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.§?!9§ = 5000;
                                                   §§goto(addr353);
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            §§push(param1);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(LEVEL_STATE_VICTORY2_END);
                                                               addr257:
                                                               addr260:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(param1);
                                                                     continue loop16;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               this.§?!9§ = 1200;
                                                               §§goto(addr263);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop13;
                                                }
                                                §§goto(addr298);
                                             }
                                             continue loop9;
                                             if(!(_loc4_ || this))
                                             {
                                                continue;
                                             }
                                             §§push(§[3§);
                                             if(_loc4_)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr257);
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               break loop4;
                                                            }
                                                            § !Q§.§"!"§();
                                                            §§goto(addr140);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr260);
                                                      }
                                                   }
                                                   §§goto(addr140);
                                                }
                                                §§goto(addr29);
                                             }
                                             §§goto(addr232);
                                          }
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          this.§!!O§ = false;
                                          §§goto(addr367);
                                       }
                                    }
                                    continue loop8;
                                 }
                                 §?l§.camera.goToBirdView();
                                 §§goto(addr377);
                              }
                           }
                           this.§?!9§ = 2000;
                           §§goto(addr385);
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §'k§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^h§ = Math.max(this.§^h§,param1);
         }
      }
      
      protected function §5k§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§?l§.slingshot.mSlingShotState == §>!A§.§-8§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     addr52:
                     return !§?l§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §;6§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:§`!<§ = null;
         if(!_loc6_)
         {
            §§push(this);
            §§push(this.§4!q§);
            if(!_loc6_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§4!q§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§^!#§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§^h§);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§^h§ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§^h§);
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              addr1150:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§4!q§ = 0;
                                       addr1154:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr1151:
                                 }
                              }
                              addr627:
                              if(_loc6_ && _loc2_)
                              {
                                 continue;
                              }
                              addr635:
                              if(§§pop() <= 0)
                              {
                                 addr636:
                                 §§push(Boolean(§?l§.objects.hasBirds()));
                                 loop117:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    while(true)
                                    {
                                       if(_loc5_ || this)
                                       {
                                          §§push(_loc3_);
                                          loop106:
                                          while(_loc5_)
                                          {
                                             addr536:
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop109:
                                                while(_loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§push(§§pop());
                                                         loop116:
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               if(_loc5_ || param1)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop103:
                                                                     while(_loc5_)
                                                                     {
                                                                        addr573:
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           §§pop();
                                                                           loop104:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc6_ && _loc2_))
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(this.§%!j§);
                                                                                 loop124:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                   loop113:
                                                                                                   while(!_loc6_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            loop111:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§?!9§ = 2000;
                                                                                                               if(_loc5_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(_loc5_ || param1)
                                                                                                                     {
                                                                                                                        this.§4!q§ = 0;
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              if(!(_loc6_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr465:
                                                                                                                                 if(!(_loc6_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§%!j§);
                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                    }
                                                                                                                                    §§pop().§%!j§ = §§pop();
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr1431:
                                                                                                                                    addr1431:
                                                                                                                                    addr1431:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr969:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr808:
                                                                                                                                          addr1415:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§<$§(false));
                                                                                                                                             break loop103;
                                                                                                                                          }
                                                                                                                                          if(§?l§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                break loop111;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr1432:
                                                                                                                                             this.§@&§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr465);
                                                                                                                                    }
                                                                                                                                    addr1055:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1436);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr969);
                                                                                                                              }
                                                                                                                              addr991:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              this.§[L§(§[3§);
                                                                                                                              if(_loc5_ || param1)
                                                                                                                              {
                                                                                                                                 §§goto(addr808);
                                                                                                                              }
                                                                                                                              if(this.§?!9§ <= 0)
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1415);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1436);
                                                                                                                           }
                                                                                                                           continue loop4;
                                                                                                                           addr837:
                                                                                                                        }
                                                                                                                        addr1208:
                                                                                                                        §§push(!(_loc4_ = §?l§.activeObject));
                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1384);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1253);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1377);
                                                                                                                              }
                                                                                                                              addr1384:
                                                                                                                              if(_loc4_.§%!R§ < _loc4_.§-!!§)
                                                                                                                              {
                                                                                                                                 addr1385:
                                                                                                                                 §§push(_loc4_ && _loc4_ is §%d§);
                                                                                                                                 if(_loc4_ && _loc4_ is §%d§)
                                                                                                                                 {
                                                                                                                                    addr1363:
                                                                                                                                    if(!(_loc6_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(_loc5_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr1377:
                                                                                                                                          §§pop();
                                                                                                                                          addr1378:
                                                                                                                                          §§push((_loc4_ as §3L§).§?!?§);
                                                                                                                                          if(!(_loc6_ && param1))
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                   if(_loc5_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr1313:
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(_loc5_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr1331:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr1332:
                                                                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_.getSpecialAnimationProgress());
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() >= 0);
                                                                                                                                                                              if(_loc5_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1283:
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1285:
                                                                                                                                                                                       this.§!!O§ = true;
                                                                                                                                                                                       this.§@&§(§3j§);
                                                                                                                                                                                       addr1288:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1255:
                                                                                                                                                                                    §?l§.activeObject = null;
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§@&§(§3j§);
                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1253:
                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1255);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1392);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1332);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1285);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1288);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1255);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1285);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1384);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1331);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1384);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1385);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1391);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1378);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1283);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1385);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1331);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1358);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1363);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1313);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1385);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1390);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1283);
                                                                                                                              }
                                                                                                                              addr1392:
                                                                                                                              §§goto(addr1436);
                                                                                                                           }
                                                                                                                           §§goto(addr1385);
                                                                                                                        }
                                                                                                                        §§goto(addr1390);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§^h§ = 6000;
                                                                                                                        addr1066:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§^!#§ = true;
                                                                                                                           §§goto(addr1055);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1063:
                                                                                                                  }
                                                                                                                  loop43:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(!§?l§.objects.mMightyEagleAdded);
                                                                                                                     addr944:
                                                                                                                     loop44:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc5_ || _loc3_)
                                                                                                                        {
                                                                                                                           loop45:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §§push(this.§5k§());
                                                                                                                                 loop46:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(!§?l§.objects.mMightyEagleAdded)
                                                                                                                                             {
                                                                                                                                                if(!§?l§.objects.mSardineCanAdded)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr837);
                                                                                                                                                }
                                                                                                                                                §§goto(addr808);
                                                                                                                                             }
                                                                                                                                             loop48:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§?l§.objects.mMightyEagleHasTouchedGround));
                                                                                                                                                loop49:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   loop50:
                                                                                                                                                   while(!(_loc6_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         loop51:
                                                                                                                                                         while(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            loop52:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§?l§.objects.mMightyEagleTimer > 5500);
                                                                                                                                                               loop53:
                                                                                                                                                               while(!(_loc6_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr883:
                                                                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(§?l§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                                                           {
                                                                                                                                                                              loop55:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc5_ || _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    this.§4!q§ = §[,§;
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr830:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr808);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr869:
                                                                                                                                                                                 }
                                                                                                                                                                                 loop57:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§^h§);
                                                                                                                                                                                    loop58:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(6000);
                                                                                                                                                                                       addr1071:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                                                                          addr1072:
                                                                                                                                                                                          while(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                addr1076:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         addr1078:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(!§?l§.objects.isPigsAlive());
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1077:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1061:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1062:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§^!#§);
                                                                                                                                                                                                            break loop109;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1063);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1106:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             loop23:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop24:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      loop25:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§^!#§);
                                                                                                                                                                                                         loop26:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                            loop27:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               addr1100:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop29:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        loop30:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§^h§);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                              addr1083:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr207:
                                                                                                                                                                                                                              if(_loc6_ && _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                              if(!(_loc6_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc5_ || this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop52;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                this.§@&§(§%8§);
                                                                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr250:
                                                                                                                                                                                                                                                      if(!(_loc6_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr93:
                                                                                                                                                                                                                                                         §§goto(addr1436);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §?l§.gameOver();
                                                                                                                                                                                                                                                            addr829:
                                                                                                                                                                                                                                                            loop77:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr789:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                                                                  §§push(this.§?!9§);
                                                                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() - param1);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop().§?!9§ = §§pop();
                                                                                                                                                                                                                                                                  loop93:
                                                                                                                                                                                                                                                                  for(; _loc5_; if(_loc6_ && this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  },§?l§.updatePigAnimations(param1),if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr677);
                                                                                                                                                                                                                                                                        §§push(!§?l§.camera.isOnCastleView());
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1086);
                                                                                                                                                                                                                                                                  },§§goto(addr1431))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc6_ && this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop30;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(this.§?!9§);
                                                                                                                                                                                                                                                                     loop94:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                                                                        addr782:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 this.§?!9§ = 0;
                                                                                                                                                                                                                                                                                 loop97:
                                                                                                                                                                                                                                                                                 while(_loc5_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(this.§2?§);
                                                                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§8R§);
                                                                                                                                                                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop93;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(this.§2?§);
                                                                                                                                                                                                                                                                                             if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§3j§);
                                                                                                                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this.§2?§);
                                                                                                                                                                                                                                                                                                      if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§<n§);
                                                                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(this.§2?§);
                                                                                                                                                                                                                                                                                                               if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§%8§);
                                                                                                                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(this.§2?§);
                                                                                                                                                                                                                                                                                                                        if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1192:
                                                                                                                                                                                                                                                                                                                           §§push(§==§);
                                                                                                                                                                                                                                                                                                                           if(_loc5_ || this)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1200:
                                                                                                                                                                                                                                                                                                                              if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(this.§2?§);
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(_loc6_ && this)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break loop111;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1208);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1396:
                                                                                                                                                                                                                                                                                                                           if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1409);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1436);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(Boolean(§?l§.camera.isOnCastleView()));
                                                                                                                                                                                                                                                                                                                              loop99:
                                                                                                                                                                                                                                                                                                                              while(!_loc6_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc6_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop116;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          loop100:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                                                                if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   while(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop48;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   loop121:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         this.§@&§(§%8§);
                                                                                                                                                                                                                                                                                                                                                         if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr306:
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop55;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr174);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               loop102:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§?l§.camera.mCurrentAction == §#C§.§%Y§);
                                                                                                                                                                                                                                                                                                                                                                  addr265:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc6_ && param1)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        break loop102;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                    break loop100;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 continue loop1;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue loop51;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           continue loop26;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop117;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop103;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr306);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               loop107:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     while(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue loop104;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 this.§@&§(§%8§);
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc6_ && this)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop25;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop107;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1043);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          this.§[L§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                                                                                                                                                          break loop97;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr953:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr396:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr666);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr808);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr389:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr358);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop24;
                                                                                                                                                                                                                                                                                                                                                                     addr386:
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop106;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr329:
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc5_ || this))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop113;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop109;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr357);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                          addr1025:
                                                                                                                                                                                                                                                                                                                                                                                          loop83:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      loop78:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc5_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop27;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr995:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(this.§5k§());
                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr998:
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           this.§^h§ = 15000;
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              this.§^!#§ = true;
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr991);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1017:
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1415);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1432);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1005:
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1089:
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1090:
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    break loop78;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop57;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1091:
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1074);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1088:
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr969);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                               addr1145:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§<$§(false));
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1123:
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1124:
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        break loop44;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr883);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            addr1144:
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(Boolean(§?l§.objects.isWorldAtSleep()));
                                                                                                                                                                                                                                                                                                                                                                                                            break loop113;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         break loop83;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      addr1142:
                                                                                                                                                                                                                                                                                                                                                                                                      addr1035:
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1005);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             continue loop23;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1144);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1124);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr340:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop121;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr174:
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1436);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 continue loop97;
                                                                                                                                                                                                                                                                                                                                                                                 addr292:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1076);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr329);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue loop45;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1025);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr330:
                                                                                                                                                                                                                                                                                                                                                                        addr964:
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                                                                                                                        continue loop43;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr677:
                                                                                                                                                                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop46;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr681:
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr689:
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                           if(_loc6_ && param1)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop50;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr707:
                                                                                                                                                                                                                                                                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    continue loop52;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr995);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    addr986:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(!§?l§.objects.mSardineCanAdded);
                                                                                                                                                                                                                                                                                                                                                                                       addr962:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          break loop51;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr707);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr985:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr664:
                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr666:
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    this.§@&§(§%8§);
                                                                                                                                                                                                                                                                                                                                                                                    addr671:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    while(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       this.§[L§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr830);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr986);
                                                                                                                                                                                                                                                                                                                                                                                    addr892:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1436);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1436);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(!§?l§.objects.isPigsAlive());
                                                                                                                                                                                                                                                                                                                                                                                 break loop99;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr681);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr1085:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1088);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1089);
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr666);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr357:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1436);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         break loop111;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop97;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr159:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1415);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                             addr38:
                                                                                                                                                                                                                                                                                                                                             if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop99;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc5_ || this)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop29;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr56:
                                                                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            this.§@&§(§8R§);
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr93);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1182:
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1436);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1066);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1436);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1409);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1078);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr190:
                                                                                                                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(this.§?!9§);
                                                                                                                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop58;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop124;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1409);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr897);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr396);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr808);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1208);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1436);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1182);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr340);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop53;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr292);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr707);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr56);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1436);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr330);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr998);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                 break loop50;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr607:
                                                                                                                                                                                                                                                                                                                              if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(this.§?!9§);
                                                                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop94;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1409);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       this.§4!q§ = §[,§;
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1129);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1126:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1436);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr671);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr636);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr159);
                                                                                                                                                                                                                                                                                                                     §§goto(addr1436);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1396);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr190);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1200);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr607);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1396);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1192);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1192);
                                                                                                                                                                                                                                                                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr808);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr783:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr739);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr869);
                                                                                                                                                                                                                                                                  continue loop77;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr250);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr827:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1436);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr389);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1415);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr364:
                                                                                                                                                                                                                                             if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr316);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1145);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr829);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1436);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr93);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr782);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr635);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1409);
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
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1085);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1154);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr830);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr892);
                                                                                                                                                                     }
                                                                                                                                                                     addr890:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1123);
                                                                                                                                                               }
                                                                                                                                                               continue loop49;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr964);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr890);
                                                                                                                                                   }
                                                                                                                                                   while(_loc5_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr985);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr962);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1100);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1436);
                                                                                                                                       }
                                                                                                                                       §§goto(addr808);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1077);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr953);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        §§goto(addr536);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr1126);
                                                                                                                        }
                                                                                                                        §§goto(addr789);
                                                                                                                        §§goto(addr944);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            this.§?!9§ = 1000;
                                                                                                            if(!(_loc6_ && param1))
                                                                                                            {
                                                                                                               §§goto(addr1431);
                                                                                                            }
                                                                                                            addr1436:
                                                                                                            return;
                                                                                                         }
                                                                                                         §§push(§ _§.§!6§.objects.mMightyEagleAdded);
                                                                                                         §§goto(addr386);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      §§goto(addr1116);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1150);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§4!q§);
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr1142);
                                                                                                      }
                                                                                                      addr1141:
                                                                                                   }
                                                                                                   §§goto(addr1409);
                                                                                                }
                                                                                                addr1130:
                                                                                             }
                                                                                             §§goto(addr1141);
                                                                                          }
                                                                                          §§goto(addr1083);
                                                                                       }
                                                                                       §§goto(addr1071);
                                                                                    }
                                                                                    §§goto(addr1409);
                                                                                 }
                                                                              }
                                                                              §§goto(addr783);
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr1105);
                                                                     }
                                                                     while(_loc5_ || this)
                                                                     {
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr827);
                                                                           }
                                                                           §§goto(addr789);
                                                                        }
                                                                        §§goto(addr1062);
                                                                     }
                                                                     §§goto(addr1035);
                                                                  }
                                                                  §§goto(addr505);
                                                               }
                                                               §§goto(addr1090);
                                                            }
                                                            §§goto(addr689);
                                                         }
                                                      }
                                                      §§goto(addr1091);
                                                   }
                                                   §§goto(addr1072);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr1024);
                                                }
                                             }
                                             §§goto(addr944);
                                          }
                                          §§goto(addr657);
                                          §§push(!§§pop());
                                       }
                                       §§goto(addr1151);
                                       if(_loc6_ && this)
                                       {
                                          continue;
                                       }
                                       if(_loc5_)
                                       {
                                          §§goto(addr358);
                                       }
                                       §§goto(addr753);
                                    }
                                 }
                              }
                              §?l§.updatePigAnimations(param1);
                              §§goto(addr364);
                           }
                        }
                     }
                  }
                  §§goto(addr1130);
               }
            }
         }
         §§goto(addr1431);
      }
      
      protected function §[L§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!this.§^!#§)
            {
               while(true)
               {
                  this.§^!#§ = true;
                  addr138:
                  while(true)
                  {
                  }
               }
               addr135:
            }
            loop2:
            while(true)
            {
               §§push(new Date().time - §?l§.slingshot.timeOfLastBirdShot);
               loop3:
               while(true)
               {
                  §§push(6000);
                  addr125:
                  loop4:
                  while(§§pop() >= §§pop())
                  {
                     loop5:
                     while(!§?l§.slingshot.mDragging)
                     {
                        loop6:
                        while(true)
                        {
                           if(!§?l§.objects.isWorldAtSleep())
                           {
                              continue loop3;
                           }
                           if(_loc3_ || param2)
                           {
                              this.§^h§ = Math.min(this.§^h§,3500);
                           }
                           while(true)
                           {
                              continue loop3;
                              addr37:
                              if(!(_loc4_ && this))
                              {
                                 this.§@&§(param1,param2);
                              }
                              if(!_loc4_)
                              {
                                 if(_loc3_ || this)
                                 {
                                    if(_loc4_ && param1)
                                    {
                                       break loop5;
                                    }
                                    if(_loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          addr19:
                                          return;
                                       }
                                       break loop4;
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                  }
                  if(_loc4_)
                  {
                     continue loop2;
                  }
                  if(_loc3_)
                  {
                     return;
                  }
                  §§goto(addr135);
               }
            }
         }
      }
      
      public function §<$§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§2?§);
            loop0:
            while(true)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
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
                                 §§push(this.§2?§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    addr180:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr30:
                                    if(_loc2_ && this)
                                    {
                                       continue;
                                    }
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             addr51:
                                             §§push(!§§pop());
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   addr65:
                                                   if(_loc2_ && _loc3_)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§pop();
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     loop18:
                                                                     while(_loc3_ || param1)
                                                                     {
                                                                        §§push(§§pop());
                                                                        while(!§§pop())
                                                                        {
                                                                           while(_loc3_)
                                                                           {
                                                                              §§pop();
                                                                              while(!_loc2_)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    break loop16;
                                                                                 }
                                                                                 §§push(this.§?!9§ <= 0);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    §§push(§§pop());
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(!(_loc3_ || this))
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc2_ && _loc2_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             §§pop();
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(this.§2?§);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§goto(addr30);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§push(§[3§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr180);
                                                                                                      }
                                                                                                      addr155:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         break loop18;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr147:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr139);
                                                                                             }
                                                                                             §§goto(addr51);
                                                                                          }
                                                                                          continue loop6;
                                                                                          addr111:
                                                                                       }
                                                                                       §§goto(addr72);
                                                                                    }
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§goto(addr72);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             break loop16;
                                                                                          }
                                                                                          addr184:
                                                                                       }
                                                                                       §§goto(addr155);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr135);
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        return §§pop();
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr157);
                                                                     }
                                                                  }
                                                                  §§goto(addr136);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr183);
                                                            }
                                                            addr182:
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                      while(!(_loc2_ && _loc2_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr147);
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   §§goto(addr72);
                                                }
                                                §§goto(addr136);
                                             }
                                             §§goto(addr111);
                                          }
                                          §§goto(addr81);
                                       }
                                       §§goto(addr51);
                                    }
                                    §§goto(addr150);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr182);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr192);
      }
      
      public function §]!!§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§2?§);
            if(_loc1_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc1_)
                        {
                           §§pop();
                           addr56:
                           return this.§2?§ == §[3§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(param1.delta != 0)
            {
               if(_loc3_)
               {
                  addr40:
                  this.doUserZoom(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function doUserZoom(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§2!'§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
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
                           addr236:
                           while(true)
                           {
                              §§push(!§?l§.mReadyToRun);
                           }
                        }
                        addr235:
                     }
                     while(true)
                     {
                        loop5:
                        while(!§§pop())
                        {
                           while(true)
                           {
                              §§push(Boolean(§?l§.slingshot.mDragging));
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop9:
                                       while(_loc3_ || param1)
                                       {
                                          §§pop();
                                          loop10:
                                          while(true)
                                          {
                                             §§push(Boolean(§?l§.camera.mDragging));
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(!(_loc3_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                if(!_loc2_)
                                                {
                                                   while(!§§pop())
                                                   {
                                                      §§push(this.§2?§);
                                                      while(true)
                                                      {
                                                         §§push(§3j§);
                                                         loop24:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            addr174:
                                                            while(!(_loc2_ && _loc3_))
                                                            {
                                                               §§push(§§pop());
                                                               for(; !_loc2_; while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc2_ && _loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     §§goto(addr142);
                                                                  }
                                                                  §§goto(addr69);
                                                               })
                                                               {
                                                                  if(!(_loc3_ || _loc2_))
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     continue;
                                                                  }
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     while(_loc3_)
                                                                     {
                                                                        §§push(this.§2?§);
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(§8R§);
                                                                           addr103:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 addr142:
                                                                                 addr142:
                                                                                 while(!_loc2_)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              continue loop24;
                                                                           }
                                                                           continue loop24;
                                                                        }
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               continue loop8;
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr20);
                                                   addr167:
                                                }
                                                else
                                                {
                                                   §§goto(addr235);
                                                }
                                                §§goto(addr236);
                                             }
                                             §§goto(addr174);
                                          }
                                          continue loop7;
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr167);
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr236);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §]!m§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§@!H§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(_loc6_)
         {
            if(!this.§2!'§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         if(!_loc5_)
         {
            dispatchEvent(_loc3_);
            loop0:
            while(true)
            {
               if(!_loc3_.isDefaultPrevented())
               {
                  loop1:
                  while(true)
                  {
                     §=H§.§4!2§();
                     if(_loc6_)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(this.§<$§(false));
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(!§?l§.isPlayingReplay())
                              {
                                 loop4:
                                 while(_loc6_)
                                 {
                                    §§push(Boolean(§?l§.activeObject));
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop6:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§pop();
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(this.§2?§ == §==§);
                                                   if(_loc6_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop9:
                                                      while(_loc6_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc5_ && this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(this.§!!O§);
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  addr262:
                                                                  §?l§.resetReplaySpeed();
                                                                  addr138:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        break loop7;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     this.§!!O§ = false;
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        if(_loc5_ && _loc3_)
                                                                        {
                                                                           break loop8;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §?l§.activatePowerup();
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           addr167:
                                                                           while(true)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr262);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr198:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!§?l§.slingshot.canStartDragging(_loc4_))
                                                                     {
                                                                        §?l§.camera.startDragging(param1,param2);
                                                                        if(_loc5_ && this)
                                                                        {
                                                                           addr251:
                                                                           §?l§.slingshot.startDragging();
                                                                           this.§@&§(§%8§);
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr251);
                                                                  }
                                                                  else if(true)
                                                                  {
                                                                     break loop3;
                                                                  }
                                                                  §§goto(addr251);
                                                                  addr88:
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            break;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop7;
                                                   }
                                                   §§goto(addr138);
                                                }
                                                continue loop4;
                                             }
                                             _loc4_ = §?l§.screenToBox2D(param1,param2);
                                             §§goto(addr198);
                                             §§push(_loc5_ && this);
                                          }
                                          §§goto(addr133);
                                       }
                                    }
                                 }
                                 return;
                              }
                              §?l§.camera.startDragging(param1,param2);
                              if(_loc6_)
                              {
                                 §§goto(addr262);
                              }
                              addr264:
                              return;
                           }
                           §§goto(addr166);
                        }
                     }
                     §§goto(addr262);
                  }
               }
               return;
            }
         }
         §§goto(addr167);
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(_loc4_ || param1)
         {
            §§push(this.§2!'§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §=H§.§function§();
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc5_)
                        {
                           §§goto(addr59);
                        }
                        if(this.§2?§ == §<n§)
                        {
                           if(_loc4_)
                           {
                              this.§@&§(§%8§);
                              if(_loc4_)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 addr63:
                                 if(§?l§.slingshot.mDragging)
                                 {
                                    if(!_loc5_)
                                    {
                                       _loc3_ = §?l§.screenToBox2D(param1,param2);
                                       if(!_loc5_)
                                       {
                                          §?l§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                          loop1:
                                          while(true)
                                          {
                                             if(§?l§.slingshot.canShootTheBird())
                                             {
                                                if(_loc4_ || param1)
                                                {
                                                   §?l§.slingshot.shoot();
                                                }
                                                continue;
                                             }
                                             addr102:
                                             §?l§.slingshot.cancelDragging();
                                             if(_loc4_)
                                             {
                                                while(false)
                                                {
                                                   while(true)
                                                   {
                                                      this.§@&§(§==§);
                                                   }
                                                }
                                                addr142:
                                                if(§?l§.camera.mDragging)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      addr148:
                                                      §§push(!isNaN(param1));
                                                      if(!(_loc5_ && this))
                                                      {
                                                         addr159:
                                                         if(§§pop())
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               addr163:
                                                               §§pop();
                                                               if(_loc4_ || this)
                                                               {
                                                                  break loop0;
                                                               }
                                                               while(true)
                                                               {
                                                                  §?l§.camera.dragToNewPoint(param1,param2);
                                                                  addr205:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr186);
                                                                  }
                                                               }
                                                               addr200:
                                                            }
                                                         }
                                                         addr199:
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr200);
                                                         }
                                                         addr186:
                                                         §§goto(addr183);
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                   §§goto(addr205);
                                                }
                                                addr183:
                                                while(true)
                                                {
                                                   §?l§.camera.stopDragging();
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop8;
                                                }
                                                return;
                                                addr86:
                                             }
                                             while(_loc5_ && this)
                                             {
                                                continue loop1;
                                             }
                                             §§goto(addr142);
                                          }
                                       }
                                       §§goto(addr86);
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr142);
                              }
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr63);
                     }
                     break;
                  }
                  §§goto(addr199);
                  §§push(!isNaN(param2));
               }
               addr59:
               return;
            }
            §§goto(addr159);
         }
         §§goto(addr205);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!_loc5_)
         {
            if(!this.§2!'§)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
            if(§?l§.slingshot.mDragging)
            {
               if(!(_loc5_ && _loc3_))
               {
                  _loc3_ = §?l§.screenToBox2D(param1,param2);
                  if(!(_loc5_ && param2))
                  {
                     §?l§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(!(_loc5_ && param1))
                     {
                        addr105:
                        this.§9!M§ = param1;
                        if(_loc4_)
                        {
                           this.§&a§ = param2;
                        }
                        addr88:
                     }
                     return;
                  }
                  §§goto(addr88);
               }
            }
            else if(§?l§.camera.mDragging)
            {
               if(!(_loc5_ && param1))
               {
                  §?l§.camera.dragToNewPoint(param1,param2);
               }
            }
         }
         §§goto(addr105);
      }
      
      public function §%K§() : Point
      {
         return new Point(this.§9!M§,this.§&a§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'R§.assign(this.§'R§.getValue() + param1);
         }
         loop0:
         while(true)
         {
            this.§'k§(§%7§);
            loop1:
            while(this.§2?§ == §3j§)
            {
               if(!_loc2_)
               {
                  this.§?!9§ = 2000;
               }
               while(_loc3_ || _loc2_)
               {
                  this.§%!j§ = §5K§;
                  if(_loc3_)
                  {
                     if(!_loc2_)
                     {
                        break loop1;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
      }
      
      override public function getScore() : int
      {
         return this.§'R§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            if(!§ _§.§!6§.objects.mMightyEagleAdded)
            {
               if(!(_loc4_ && _loc1_))
               {
                  §§push(0);
                  if(!(_loc4_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr64:
                  §§push(LevelManager.§-V§(LevelManager.§4Y§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr64);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§2!'§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2!'§ = param1;
         }
      }
   }
}
