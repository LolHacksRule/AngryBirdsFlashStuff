package §7"@§
{
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §%!v§.§[<§;
   import §2!i§.§'M§;
   import §4!e§.§+w§;
   import §4!e§.§-"E§;
   import §6!B§.§ do§;
   import §6!B§.§&!7§;
   import §[!K§.§-k§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   
   public class §]!K§ extends §8"D§
   {
      
      public static var §`s§:int = -1;
      
      public static const §"!x§:String = "1000";
      
      public static const §!w§:String = "2000";
      
      public static const §9a§:String = "3000";
      
      public static const EPISODE_GREEN_DAY_EGG:String = "3001";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`s§ = -1;
         }
         while(true)
         {
            §"!x§ = "1000";
            loop1:
            for(; !(_loc1_ && _loc1_); if(_loc1_ && §]!K§)
            {
               continue;
            },§§goto(addr69))
            {
               §!w§ = "2000";
               loop2:
               while(true)
               {
                  §9a§ = "3000";
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                     addr69:
                     EPISODE_GREEN_DAY_EGG = "3001";
                     if(!(_loc1_ && §]!K§))
                     {
                        return;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §]!K§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         do
         {
            §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
         }
         while(!_loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§>x§ = null;
         if(_loc4_)
         {
            super.activate();
         }
         _loc1_ = LevelManager.§9"D§();
         if(_loc4_ || _loc1_)
         {
            if(_loc1_ != null)
            {
               loop0:
               while(true)
               {
                  §§push(_loc1_.name);
                  if(!(_loc3_ && this))
                  {
                     §§push(§"!x§);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() == §§pop());
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr403:
                                    while(true)
                                    {
                                       §§push(this is §9!X§);
                                       addr379:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          addr380:
                                          while(!_loc3_)
                                          {
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr402:
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc1_.name);
                                       if(_loc4_)
                                       {
                                          §§push(§!w§);
                                          loop10:
                                          while(_loc4_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             loop11:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop());
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               §§pop();
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(this is §-k§);
                                                                  while(!_loc3_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     while(!(_loc3_ && _loc3_))
                                                                     {
                                                                     }
                                                                     §§goto(addr380);
                                                                     loop23:
                                                                     for(; _loc4_ || _loc2_; if(_loc4_ || _loc2_)
                                                                     {
                                                                        continue loop11;
                                                                     })
                                                                     {
                                                                        §§pop();
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              §§push(this is §1!J§);
                                                                              if(_loc3_ && this)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              addr207:
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 continue loop23;
                                                                              }
                                                                              addr272:
                                                                              while(!_loc3_)
                                                                              {
                                                                                 continue loop12;
                                                                                 §§goto(addr207);
                                                                              }
                                                                              §§goto(addr324);
                                                                           }
                                                                           break;
                                                                           addr188:
                                                                           do
                                                                           {
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 LevelManager.§'!O§ = null;
                                                                                 continue;
                                                                              }
                                                                              continue loop24;
                                                                           }
                                                                           while(_loc3_ && _loc1_);
                                                                           
                                                                           if(_loc3_)
                                                                           {
                                                                              loop34:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §6w§.visible = false;
                                                                                       addr248:
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             mNextState = §1!J§.STATE_NAME;
                                                                                             §§goto(addr188);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §6w§.visible = false;
                                                                                                break loop34;
                                                                                             }
                                                                                             addr333:
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 mNextState = §-k§.STATE_NAME;
                                                                                 while(true)
                                                                                 {
                                                                                    LevelManager.§'!O§ = null;
                                                                                    break loop24;
                                                                                    addr59:
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       if(_loc4_ || _loc1_)
                                                                                       {
                                                                                          addr76:
                                                                                          §#6§.§6!z§.background.§^!P§();
                                                                                          addr77:
                                                                                          addr75:
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr86:
                                                                                                if(false)
                                                                                                {
                                                                                                   loop32:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§#6§.§ q§);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            (§§pop() as §3T§).§`!P§(§ K§.§7!y§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§#6§.§6!z§);
                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop().background);
                                                                                                                     if(_loc4_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           break loop32;
                                                                                                                        }
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr59);
                                                                                                                        }
                                                                                                                        §§goto(addr77);
                                                                                                                     }
                                                                                                                     §§goto(addr76);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr366:
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  LevelManager.§'!O§ = null;
                                                                                                                  §§goto(addr366);
                                                                                                                  addr374:
                                                                                                               }
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr75);
                                                                                                         }
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            (§§pop() as §3T§).§9!Q§.§`W§ = false;
                                                                                                            loop29:
                                                                                                            while(!(_loc3_ && this))
                                                                                                            {
                                                                                                               if(!(_loc4_ || _loc2_))
                                                                                                               {
                                                                                                                  break loop13;
                                                                                                               }
                                                                                                               §§push(§#6§.§ q§);
                                                                                                               loop30:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  (§§pop() as §3T§).§?D§("");
                                                                                                                  addr115:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        continue loop29;
                                                                                                                     }
                                                                                                                     if(_loc4_ || this)
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           break loop30;
                                                                                                                        }
                                                                                                                        if(_loc3_ && _loc1_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §6w§.visible = false;
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr384:
                                                                                                                        continue loop32;
                                                                                                                     }
                                                                                                                     addr159:
                                                                                                                     addr166:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §6w§.visible = true;
                                                                                                                        addr163:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop28;
                                                                                                                        }
                                                                                                                        §§goto(addr166);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  mNextState = §9!X§.STATE_NAME;
                                                                                                                  §§goto(addr374);
                                                                                                               }
                                                                                                               §§goto(addr248);
                                                                                                            }
                                                                                                            §§goto(addr171);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr111);
                                                                                                   }
                                                                                                }
                                                                                                §§push(LevelManager.§9"D§().writtenName);
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   break loop0;
                                                                                                }
                                                                                                addr420:
                                                                                                var _loc2_:* = §§pop();
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   §6w§.setText(_loc2_,"TextField_LevelName");
                                                                                                   loop36:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.countStarsAndFeathers(_loc1_);
                                                                                                      loop37:
                                                                                                      while(§`s§ != -1)
                                                                                                      {
                                                                                                         if(!(_loc3_ && this))
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §`6§(§`s§);
                                                                                                         }
                                                                                                         loop38:
                                                                                                         while(!_loc3_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §`s§ = -1;
                                                                                                               if(_loc4_ || _loc1_)
                                                                                                               {
                                                                                                                  break loop37;
                                                                                                               }
                                                                                                               continue loop38;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop36;
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr473);
                                                                                             }
                                                                                             §§goto(addr163);
                                                                                          }
                                                                                          §§goto(addr115);
                                                                                       }
                                                                                       §§goto(addr407);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr241:
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        loop40:
                                                                        while(true)
                                                                        {
                                                                           addr258:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc1_.name);
                                                                              if(!(_loc4_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§9a§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              §§goto(addr272);
                                                                              §§push(§§pop() == §§pop());
                                                                              continue loop40;
                                                                           }
                                                                           §§goto(addr420);
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop13;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr402);
                                                            }
                                                         }
                                                         §§goto(addr403);
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr333);
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                   }
                                                }
                                                break;
                                                if(!(_loc4_ || _loc1_))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr239);
                                             }
                                             §§goto(addr379);
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr420);
                                    }
                                 }
                                 §§goto(addr384);
                              }
                           }
                        }
                     }
                  }
                  break;
               }
               §§goto(addr420);
               §§push(§§pop());
            }
            addr407:
            return;
         }
         §§goto(addr310);
      }
      
      protected function countStarsAndFeathers(param1:§>x§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(AngryBirdsFP11.sUserProgress.§9o§(param1));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.§`!g§(param1));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.§7L§(param1));
         if(!(_loc7_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.§,!b§(param1));
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc7_)
         {
            this.showStarsAndFeathers(param1,_loc2_,_loc3_,_loc4_,_loc5_);
         }
      }
      
      protected function showStarsAndFeathers(param1:§>x§, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §6w§.setText(param2 + "/" + param3,"Textfield_CollectedStars");
            do
            {
               §6w§.setText(param4 + "/" + param5,"Textfield_ME_Score");
            }
            while(!_loc7_);
            
         }
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§ do§ = §3T§.§67§.§2!c§();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.§"!r§(§&!7§.§3V§);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.deActivate();
         }
         do
         {
            this.stopCurrentTheme();
         }
         while(_loc1_);
         
      }
      
      protected function stopCurrentTheme() : void
      {
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         §§push((AngryBirdsFP11.sUserProgress as §[<§).§#!o§(param1));
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:*;
         §§push(_loc7_ = §§pop());
         if(_loc10_)
         {
            §§push(Boolean(§§pop()));
            if(!(_loc9_ && param1))
            {
               if(§§pop())
               {
                  if(_loc10_)
                  {
                     §§pop();
                     if(_loc10_ || param2)
                     {
                        addr75:
                        if(_loc7_ <= 3)
                        {
                           if(_loc10_)
                           {
                              (_loc8_ = new §8B§.§6"C§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
                              if(_loc10_)
                              {
                                 _loc8_.x = -78;
                                 loop0:
                                 while(true)
                                 {
                                    addr103:
                                    while(true)
                                    {
                                       _loc8_.y = -102;
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr143);
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            §§push(param2.length > 0);
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
                        addr190:
                        while(true)
                        {
                           §§push(param3 is §+w§);
                        }
                     }
                     addr189:
                  }
                  while(true)
                  {
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
                                 addr172:
                                 while(true)
                                 {
                                    §§push((param3 as §+w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                                    if(!_loc6_)
                                    {
                                       continue loop5;
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop7;
                                    }
                                    §§push(§§pop());
                                    if(_loc5_ && param3)
                                    {
                                       break;
                                    }
                                    if(_loc5_ && param3)
                                    {
                                       continue loop1;
                                    }
                                    if(!§§pop())
                                    {
                                       continue loop5;
                                    }
                                 }
                                 continue loop6;
                              }
                           }
                           while(true)
                           {
                              loop13:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_ || param3)
                                       {
                                          if(!§6!H§)
                                          {
                                             addr117:
                                             if(_loc6_)
                                             {
                                                LevelManager.§-!4§(LevelManager.§;!f§(param2.toLowerCase()));
                                                addr125:
                                                loop14:
                                                while(true)
                                                {
                                                   mNextState = StateCutScene.STATE_NAME;
                                                   addr59:
                                                   while(!(_loc6_ || this))
                                                   {
                                                      continue loop14;
                                                   }
                                                   addr66:
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push((param3 as §+w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                                         if(_loc5_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            continue loop0;
                                                         }
                                                         §§goto(addr189);
                                                         §§goto(addr66);
                                                      }
                                                      §§goto(addr190);
                                                      addr163:
                                                   }
                                                }
                                                addr125:
                                             }
                                             else
                                             {
                                                §§goto(addr172);
                                             }
                                          }
                                          addr216:
                                          return;
                                          addr41:
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr125);
                                 }
                                 else
                                 {
                                    super.uiInteractionHandler(param1,param2,param3);
                                    if(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          var _loc4_:* = param2;
                                          if(!(_loc5_ && param2))
                                          {
                                             if("showCredits" === _loc4_)
                                             {
                                                addr206:
                                                §§push(0);
                                                if(!_loc6_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§push(1);
                                             }
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   mNextState = §9<§.STATE_NAME;
                                                   if(_loc6_ || this)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr41);
                                                   }
                                             }
                                             §§goto(addr216);
                                          }
                                          §§goto(addr206);
                                       }
                                       else
                                       {
                                          §§goto(addr117);
                                       }
                                    }
                                 }
                                 §§goto(addr59);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).§5!=§.text = (param1 + 1).toString();
         }
      }
   }
}
