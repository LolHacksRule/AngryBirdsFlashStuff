package §%!I§
{
   import § "!§.§9"&§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §&S§.§&!l§;
   import §,l§.§#!,§;
   import §,l§.§["K§;
   import §0D§.§3!R§;
   import §4D§.UserProgressEvent;
   import §5!Y§.§9"6§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §9@§.§@q§;
   import §;u§.§7!w§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   
   public class §6"&§ extends §7!w§
   {
      
      public static const §2"N§:int = 2;
      
      public static const §&D§:int = 4;
      
      public static const §<!U§:int = 8;
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §2"N§ = 2;
            loop0:
            do
            {
               §&D§ = 4;
               while(true)
               {
                  §<!U§ = 8;
                  while(!(_loc1_ && §6"&§))
                  {
                     STATE_NAME = "stateTournamentLevelEnd";
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      private var §@#§:Boolean;
      
      protected var §@"Q§:Boolean = false;
      
      private var §>"W§:int;
      
      private var §=!W§:Boolean = false;
      
      private var §[k§:Boolean = false;
      
      private var §!"N§:Boolean = false;
      
      private var §6!m§:§&!l§;
      
      private var §="K§:int;
      
      public function §6"&§(param1:Boolean = false, param2:String = "stateTournamentLevelEnd")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
            do
            {
               §-&§ = true;
            }
            while(!_loc4_);
            
         }
      }
      
      protected function §]>§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§="K§ = §%"S§.§!C§.§9"%§.§,T§.§0Q§;
            loop0:
            while(true)
            {
               §§push(AngryBirdsFP11.sUserProgress);
               loop1:
               while(true)
               {
                  (§§pop() as §#!$§).§6!W§(LevelManager.§ T§,param1);
                  loop2:
                  while(true)
                  {
                     (§?l§.§ "G§ as §%"S§).§4!D§(LevelManager.§ T§,param1);
                     while(!_loc2_)
                     {
                        continue loop1;
                        (§§pop() as §#!$§).saveLevelProgress(LevelManager.§ T§,false,true);
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§3!R§.§&"5§.§="S§(LevelManager.§ T§));
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc2_ || this)
               {
                  §§push(!§§pop());
               }
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                     addr133:
                  }
                  else
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           LevelManager.§&"V§ = LevelManager.§ T§;
                           break;
                        }
                        if(!_loc3_)
                        {
                           if(_loc3_ && _loc3_)
                           {
                              continue loop0;
                           }
                           LevelManager.§,!m§(LevelManager.§["S§(_loc1_));
                        }
                     }
                     addr52:
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           mNextState = this.getCutSceneState();
                           if(_loc2_ || _loc3_)
                           {
                              break;
                           }
                           §§goto(addr52);
                           §§goto(addr54);
                        }
                        addr54:
                        return;
                        addr32:
                     }
                     addr93:
                  }
                  addr86:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  §§goto(addr93);
               }
            }
         }
         while(true)
         {
            §§goto(addr32);
         }
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(_loc6_ || _loc1_)
         {
            §2"@§.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
         }
         §§push((AngryBirdsFP11.sUserProgress as §#!$§).§="&§(LevelManager.§ T§));
         if(!(_loc7_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§?l§.§5-§.getScore());
         if(!(_loc7_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc6_ || _loc1_)
         {
            §1!u§ = _loc2_ > _loc1_;
            while(true)
            {
               this.§>"W§ = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§ T§,_loc1_);
               loop1:
               while(!(_loc7_ && _loc3_))
               {
                  §;;§(_loc2_,_loc1_);
                  loop2:
                  while(true)
                  {
                     this.§%!T§ = false;
                     loop3:
                     while(_loc6_)
                     {
                        this.§3F§ = false;
                        while(true)
                        {
                           this.§`M§ = false;
                           if(_loc6_ || this)
                           {
                              if(_loc6_ || this)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        §§push(this.§>"W§);
                        if(_loc6_)
                        {
                           var _loc5_:* = §§pop();
                           if(!_loc7_)
                           {
                              §§push(0);
                              if(_loc6_)
                              {
                                 §§push(_loc5_);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          addr225:
                                          §§push(0);
                                          if(!(_loc6_ || _loc3_))
                                          {
                                             addr293:
                                             if(§§pop() === _loc5_)
                                             {
                                                addr295:
                                                §§push(3);
                                                if(_loc6_ || this)
                                                {
                                                   addr303:
                                                }
                                             }
                                             else
                                             {
                                                §§push(4);
                                             }
                                          }
                                          addr308:
                                          loop23:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                addr503:
                                                §2!X§();
                                                loop5:
                                                while(true)
                                                {
                                                   if(§1!u§)
                                                   {
                                                      break loop23;
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      (§2"@§.getItemByName("MovieClip_NewHighScoreBadge") as §^n§).setVisibility(false);
                                                      loop7:
                                                      while(_loc6_)
                                                      {
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  (§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).mClip.gotoAndStop("UnLit");
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        break loop23;
                                                                     }
                                                                     (§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).mClip.gotoAndStop("UnLit");
                                                                     while(_loc6_ || _loc1_)
                                                                     {
                                                                        (§2"@§.getItemByName("MovieClip_StarRight") as §^n§).mClip.gotoAndStop("UnLit");
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 break loop6;
                                                                              }
                                                                              addr447:
                                                                              addr447:
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§%"S§.§%P§);
                                                                                 if(!(_loc6_ || _loc1_))
                                                                                 {
                                                                                    break loop8;
                                                                                 }
                                                                                 §§push(LevelManager.§ T§);
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    §§push(§9"&§.§#2§);
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop().§3";§(§§pop(),§§pop()));
                                                                                       if(!(_loc6_ || _loc1_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          break;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§9"&§.§-"W§);
                                                                                    }
                                                                                    addr453:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§3";§(§§pop(),§§pop()));
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                              }
                                                                              _loc4_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §@q§.§6!]§(LevelManager.§ T§,_loc2_ > _loc3_,_loc2_ > _loc4_,_loc2_ - _loc3_,_loc2_ - _loc4_);
                                                                                 break loop7;
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr451:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr453);
                                                                  }
                                                               }
                                                               addr386:
                                                            }
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(_loc7_ && _loc1_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        break loop16;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  break loop23;
                                                               }
                                                               this.§]>§(_loc2_);
                                                            }
                                                            continue loop5;
                                                         }
                                                         §§goto(addr451);
                                                         §§push(§%"S§.§%P§);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§goto(addr447);
                                                      }
                                                   }
                                                   return;
                                                }
                                                break;
                                             case 1:
                                                this.§%!T§ = true;
                                                §§goto(addr503);
                                                addr138:
                                             case 2:
                                                this.§%!T§ = true;
                                                if(!(_loc7_ && _loc1_))
                                                {
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      this.§3F§ = true;
                                                      if(_loc7_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr138);
                                                   }
                                                   §§goto(addr503);
                                                }
                                                §§goto(addr447);
                                             case 3:
                                                this.§%!T§ = true;
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   while(true)
                                                   {
                                                      this.§3F§ = true;
                                                      if(!(_loc7_ && _loc1_))
                                                      {
                                                         this.§`M§ = true;
                                                         if(_loc6_)
                                                         {
                                                            if(false)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr503);
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      §§goto(addr406);
                                                   }
                                                }
                                                break;
                                             default:
                                                §§goto(addr503);
                                          }
                                          continue loop21;
                                          addr308:
                                       }
                                       else
                                       {
                                          addr258:
                                          §§push(1);
                                          if(!_loc6_)
                                          {
                                             addr265:
                                             §§push(_loc5_);
                                             if(_loc6_ || this)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(2);
                                                      if(_loc6_ || _loc1_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr295);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(3);
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      §§goto(addr293);
                                                   }
                                                }
                                             }
                                             §§goto(addr293);
                                          }
                                          §§goto(addr308);
                                       }
                                       §§goto(addr293);
                                    }
                                    else
                                    {
                                       §§push(1);
                                       if(_loc6_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc6_ || this)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr258);
                                                }
                                                §§goto(addr295);
                                             }
                                             else
                                             {
                                                §§push(2);
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr265);
                                                }
                                             }
                                             §§goto(addr308);
                                          }
                                          §§goto(addr293);
                                       }
                                    }
                                    §§goto(addr265);
                                 }
                                 §§goto(addr293);
                              }
                              §§goto(addr303);
                           }
                        }
                        §§goto(addr225);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr169);
      }
      
      private function set §%!T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=!W§ = param1;
            while(true)
            {
               §2"@§.container.mClip.Container_LevelEndStripe.star1Award.visible = !param1;
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            §2"@§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("NotClaimed");
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
      
      private function set §3F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§[k§ = param1;
         }
         do
         {
            §2"@§.container.mClip.Container_LevelEndStripe.star2Award.visible = !param1;
            do
            {
               §2"@§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("NotClaimed");
            }
            while(_loc2_ && _loc3_);
            
         }
         while(_loc2_ && _loc3_);
         
      }
      
      private function set §`M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!"N§ = param1;
            while(true)
            {
               §2"@§.container.mClip.Container_LevelEndStripe.star3Award.visible = !param1;
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            §2"@§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("NotClaimed");
            if(!_loc3_)
            {
               if(_loc2_ || param1)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function setStarLeftLit() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§^n§ = null;
         if(_loc3_)
         {
            (§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).mClip.gotoAndStop("Lit");
            if(_loc3_ || this)
            {
               addr37:
               if(!this.§=!W§)
               {
                  if(_loc3_ || _loc1_)
                  {
                     §2"@§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("Claimed");
                     _loc1_ = §2"@§.getItemByName("MovieClip_StarLeft") as §^n§;
                  }
                  §§goto(addr54);
               }
               §§goto(addr149);
            }
            addr54:
            if(!(_loc2_ && _loc1_))
            {
               §§push(this.§6!m§);
               loop0:
               while(true)
               {
                  §§push(§§pop().§;"Z§);
                  addr146:
                  while(true)
                  {
                     §§push(§2"N§);
                     continue loop0;
                  }
               }
            }
            else if(true)
            {
               addr149:
               return super.setStarLeftLit();
            }
            while(true)
            {
               §@q§.§&?§(§@q§.§9%§,§["K§.§0#§,§2"N§);
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               §§goto(addr142);
            }
            return true;
         }
         §§goto(addr37);
      }
      
      override protected function setStarCenterLit() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§^n§ = null;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            (§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).mClip.gotoAndStop("Lit");
            if(_loc3_)
            {
               if(!this.§[k§)
               {
                  if(_loc3_ || this)
                  {
                     §2"@§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("Claimed");
                     addr50:
                     _loc1_ = §2"@§.getItemByName("MovieClip_StarCenter") as §^n§;
                     if(_loc3_ || _loc3_)
                     {
                        §§push(this.§6!m§);
                        loop0:
                        while(true)
                        {
                           §§push(§§pop().§;"Z§);
                           addr210:
                           while(true)
                           {
                              §§push(§&D§);
                              addr211:
                              while(true)
                              {
                                 §§pop().§5!q§(§§pop());
                                 addr212:
                                 while(true)
                                 {
                                    §§push(this.§="K§);
                                    addr202:
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§&D§);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop6:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             loop7:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                addr206:
                                                while(true)
                                                {
                                                   §§push(this.§=!W§);
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§2"N§);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     continue loop4;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop7;
                                                         addr153:
                                                      }
                                                      §§push(true);
                                                      addr120:
                                                      continue loop0;
                                                      if(_loc3_ || this)
                                                      {
                                                         addr74:
                                                         return §§pop();
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
                        }
                     }
                     else if(false)
                     {
                        §§goto(addr81);
                     }
                     else
                     {
                        §§goto(addr214);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr50);
               }
               addr214:
               return super.setStarCenterLit();
            }
         }
         §§goto(addr50);
      }
      
      override protected function setStarRightLit() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§^n§ = null;
         var _loc2_:* = 0;
         if(_loc3_ || _loc2_)
         {
            (§2"@§.getItemByName("MovieClip_StarRight") as §^n§).mClip.gotoAndStop("Lit");
            if(_loc3_)
            {
               addr38:
               if(this.§!"N§)
               {
                  return super.setStarRightLit();
               }
               if(_loc3_)
               {
                  §2"@§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("Claimed");
               }
            }
            _loc1_ = §2"@§.getItemByName("MovieClip_StarRight") as §^n§;
            if(_loc3_ || _loc1_)
            {
               §§push(this.§6!m§);
               loop0:
               while(true)
               {
                  §§push(§§pop().§;"Z§);
                  addr244:
                  while(true)
                  {
                     §§push(§<!U§);
                     addr245:
                     while(true)
                     {
                        §§pop().§5!q§(§§pop());
                        addr246:
                        loop3:
                        while(true)
                        {
                           §§push(this.§="K§);
                           loop4:
                           while(true)
                           {
                              §§push(§<!U§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    loop7:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this.§=!W§);
                                          loop9:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(!_loc4_)
                                                {
                                                   §§push(_loc2_);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§2"N§);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop13:
                                                         while(_loc3_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            while(!_loc4_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc4_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§push(§&D§);
                                                               if(_loc4_ && _loc2_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               §§push(int(§§pop()));
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               _loc2_ = §§pop();
                                                               while(true)
                                                               {
                                                                  continue loop0;
                                                               }
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(true);
                                                         if(_loc3_)
                                                         {
                                                            addr69:
                                                            return §§pop();
                                                         }
                                                         continue loop9;
                                                         addr129:
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                §§push(this.§[k§);
                                                continue loop9;
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
               }
            }
            §§goto(addr135);
         }
         §§goto(addr38);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
            while(true)
            {
               this.§6!m§ = §%"S§.§!C§.§'u§;
               while(true)
               {
                  this.§@"Q§ = false;
                  addr84:
                  if(!(_loc1_ && this))
                  {
                     addr20:
                     return;
                     addr91:
                  }
               }
               addr60:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr20);
            }
         }
         while(true)
         {
            if(!LevelManager.§%!8§())
            {
               this.showButtonsNormal();
               if(_loc2_ || this)
               {
                  if(_loc2_ || _loc2_)
                  {
                     continue;
                  }
                  addr82:
                  §-F§();
               }
               §§goto(addr84);
            }
            §§goto(addr82);
         }
         §§goto(addr91);
      }
      
      override protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            (§2"@§.getItemByName("Button_Menu") as §7"0§).setVisibility(true);
            while(true)
            {
               (§2"@§.getItemByName("Button_Replay") as §7"0§).setVisibility(true);
               while(_loc2_)
               {
                  (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
                  loop2:
                  while(!§3!R§.§&"5§.§="S§(LevelManager.§ T§))
                  {
                     (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
                     loop3:
                     while(!_loc1_)
                     {
                        if(_loc1_ && _loc1_)
                        {
                           break loop2;
                        }
                        (§2"@§.getItemByName("Button_Menu") as §7"0§).x = §'!U§[0] + Math.abs(§'!U§[1] - §'!U§[0]) / 2;
                        while(true)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(true);
                  §§goto(addr196);
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr25);
               }
            }
         }
         §§goto(addr171);
      }
      
      override protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[2] = null;
            loop0:
            while(true)
            {
               §§push(§§newactivation());
               if(_loc4_)
               {
                  break;
               }
               §§pop().§§slot[1] = param1;
               loop1:
               while(true)
               {
                  super.onUserProgressSaved(e);
                  if(_loc5_ || _loc2_)
                  {
                     while(true)
                     {
                        this.§@#§ = true;
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop1;
                        addr46:
                        §§pop();
                        if(!_loc4_)
                        {
                           if(true)
                           {
                              §§push(§§newactivation());
                           }
                           continue;
                           break loop0;
                        }
                        break;
                     }
                  }
                  try
                  {
                     addr123:
                     §§push(§§newactivation());
                     if(_loc5_)
                     {
                        §§pop().§§slot[2] = JSON.parse(e.data as String);
                        if(!_loc4_)
                        {
                           §§goto(addr171);
                        }
                        §§goto(addr175);
                     }
                     addr171:
                     §§goto(addr170);
                  }
                  catch(error:Error)
                  {
                     if(_loc5_ || param1)
                     {
                        §9"6§.§#!o§();
                     }
                  }
                  addr170:
                  if(parsedResponse)
                  {
                     if(_loc5_)
                     {
                        addr175:
                        §#!,§.§&"5§.§6"M§(parsedResponse,true);
                     }
                  }
                  return;
               }
               if(_loc5_ || this)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     §§push(§§pop().§§slot[1]);
                     if(_loc5_)
                     {
                        §§push(§§pop().data == null);
                        if(!_loc4_)
                        {
                           §§push(!§§pop());
                           if(!_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§goto(addr46);
                                 }
                                 addr122:
                                 if(§§pop())
                                 {
                                    §§goto(addr123);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr122);
                           }
                           addr121:
                           §§push(!§§pop());
                        }
                        §§goto(addr122);
                     }
                     addr111:
                     §§push(§§pop().data == "");
                     if(_loc5_ || _loc2_)
                     {
                        §§goto(addr121);
                     }
                     §§goto(addr122);
                  }
                  break;
               }
            }
         }
         §§goto(addr111);
         §§push(§§pop().§§slot[1]);
      }
      
      override protected function getCutSceneState() : String
      {
         return §5S§.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §6"'§.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §]!M§.STATE_NAME;
      }
   }
}
