package §40§
{
   import §"R§.§ !Q§;
   import §+!Q§.§<[§;
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §2h§.§[!'§;
   import §4L§.§3!J§;
   import §4e§.§=!p§;
   import §9!5§.§'!>§;
   import §9!y§.§%g§;
   import §9!y§.§@M§;
   import §9Y§.§6!8§;
   import §?!7§.§5!I§;
   import §?!7§.§[I§;
   import §@i§.§=r§;
   import §]!§.UserProgressEvent;
   import com.angrybirds.friendsbar.§`Y§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §true§.§ _§;
   
   public class §=d§ extends §'!>§
   {
       
      
      private var §[h§:§%g§;
      
      private var §[@§:String;
      
      private var §=!7§:String;
      
      protected var §6!e§:Boolean = false;
      
      private var §@Y§:Boolean = false;
      
      public function §=d§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            do
            {
               §5!P§.getItemByName("Button_Fullscreen").setVisibility(false);
            }
            while(!_loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.activate();
            while(true)
            {
               (§ _§.§1s§ as §@!9§).§>=§(§`Y§.§9!O§);
               addr94:
               if(!(_loc2_ && _loc1_))
               {
                  loop4:
                  while(this.§6!e§)
                  {
                     addr32:
                     if(!(_loc2_ && this))
                     {
                        this.§<E§();
                     }
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     addr118:
                     while(!(_loc2_ && this))
                     {
                        §§goto(addr94);
                        §§goto(addr32);
                     }
                     while(_loc1_)
                     {
                        if(LevelManager.§0v§().name == "1000")
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              §5!P§.getItemByName("Button_NextLevel").setVisibility(false);
                           }
                           §§goto(addr77);
                           continue;
                        }
                        continue loop4;
                     }
                     addr77:
                     while(true)
                     {
                        § _§.§!6§.background.§>G§();
                        §§goto(addr107);
                     }
                     addr107:
                  }
                  return;
               }
            }
         }
         §§goto(addr118);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5!P§.getItemByName("Button_Share_Default").setVisibility(false);
         }
         loop0:
         while(true)
         {
            §5!P§.getItemByName("Button_Share_Crown").setVisibility(false);
            while(true)
            {
               §5!P§.getItemByName("Button_Share_Stars").setVisibility(false);
               while(!_loc2_)
               {
                  continue loop0;
                  while(_loc1_ || _loc2_)
                  {
                     super.deActivate();
                     if(!(_loc2_ && _loc2_))
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      protected function §<E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §5!P§.getItemByName("Button_Share_Default").setVisibility(false);
         }
         do
         {
            §5!P§.getItemByName("Button_Share_Crown").setVisibility(false);
            do
            {
               §5!P§.getItemByName("Button_Share_Stars").setVisibility(false);
               do
               {
                  §5!P§.getItemByName("Button_Embed").setVisibility(false);
               }
               while(!(_loc2_ || this));
               
            }
            while(!_loc2_);
            
         }
         while(_loc1_ && _loc1_);
         
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc5_)
         {
            super.onBadgeLanded();
         }
         §§push((AngryBirdsFP11.sUserProgress as §<[§).§,!l§(LevelManager.§4Y§));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §<[§).getEagleScoreForLevel(LevelManager.§4Y§);
         if(_loc5_ || _loc2_)
         {
            §§push(this.§6!e§);
            if(_loc5_ || _loc1_)
            {
               if(§§pop())
               {
                  this.§<E§();
                  if(_loc5_)
                  {
                     if(_loc5_ || _loc1_)
                     {
                        if(_loc5_)
                        {
                           if(!_loc5_)
                           {
                              loop0:
                              while(true)
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    §5!P§.getItemByName("Button_Share_Default").setVisibility(false);
                                    loop1:
                                    while(true)
                                    {
                                       §5!P§.getItemByName("Button_Share_Crown").setVisibility(true);
                                       loop2:
                                       while(true)
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             §5!P§.getItemByName("Button_Share_Stars").setVisibility(false);
                                             loop3:
                                             while(true)
                                             {
                                                §§push(Number(§5!P§.getItemByName("Button_Share_Crown").x + §5!P§.getItemByName("Container_LevelEndStripe").x));
                                                addr360:
                                                addr341:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr361:
                                                   while(true)
                                                   {
                                                      §§push(Number(§5!P§.getItemByName("Button_Share_Crown").y + §5!P§.getItemByName("Container_LevelEndStripe").y));
                                                   }
                                                }
                                                addr341:
                                                while(true)
                                                {
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      break loop3;
                                                   }
                                                   break;
                                                }
                                             }
                                             include = new §3!J§(AngryBirdsFP11.§>!2§,AngryBirdsFP11.§@U§,_loc3_,_loc4_,§3!J§.§2q§,20);
                                             addr321:
                                             while(true)
                                             {
                                                if(!(_loc6_ && _loc1_))
                                                {
                                                   break loop0;
                                                }
                                                break loop2;
                                             }
                                             addr321:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(Boolean(§[!a§));
                                                addr433:
                                                loop29:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop30:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr436:
                                                         while(true)
                                                         {
                                                            §§push(_loc1_ == 1);
                                                            if(_loc6_)
                                                            {
                                                               continue loop30;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               continue loop29;
                                                            }
                                                            continue loop30;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         break loop2;
                                                      }
                                                      if(!§3"§)
                                                      {
                                                         this.§=!7§ = "";
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §5!P§.getItemByName("Button_Share_Default").setVisibility(true);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §5!P§.getItemByName("Button_Share_Crown").setVisibility(false);
                                                               addr103:
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §5!P§.getItemByName("Button_Share_Stars").setVisibility(false);
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       §§push(Number(§5!P§.getItemByName("Button_Share_Stars").y + §5!P§.getItemByName("Container_LevelEndStripe").y));
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(_loc5_ || _loc2_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         include = new §3!J§(AngryBirdsFP11.§>!2§,AngryBirdsFP11.§@U§,_loc3_,_loc4_,§3!J§.§2q§,20);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                            {
                                                                                                               §5!P§.addChild(include);
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr290:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §5!P§.getItemByName("Button_Share_Default").setVisibility(false);
                                                                                                               addr281:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §5!P§.getItemByName("Button_Share_Crown").setVisibility(false);
                                                                                                                  addr272:
                                                                                                                  while(_loc5_)
                                                                                                                  {
                                                                                                                     §5!P§.getItemByName("Button_Share_Stars").setVisibility(true);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§5!P§.getItemByName("Button_Share_Stars").x + §5!P§.getItemByName("Container_LevelEndStripe").x));
                                                                                                                        break loop14;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr341);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §0!7§.push(include);
                                                                                                      break;
                                                                                                      addr306:
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr272);
                                                                                             }
                                                                                             § !Q§.playSound("Hiscore_Star_Splash1",§catch§);
                                                                                             §§goto(addr296);
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                       }
                                                                                       break;
                                                                                       addr258:
                                                                                    }
                                                                                    §§goto(addr321);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ && _loc2_))
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       §§goto(addr251);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          §§goto(addr341);
                                                                                       }
                                                                                       addr340:
                                                                                    }
                                                                                    §§goto(addr321);
                                                                                    §§goto(addr258);
                                                                                 }
                                                                                 addr251:
                                                                              }
                                                                              §§goto(addr56);
                                                                           }
                                                                           §§goto(addr162);
                                                                        }
                                                                        §§goto(addr132);
                                                                     }
                                                                  }
                                                                  §§goto(addr148);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                }
                                             }
                                             addr431:
                                          }
                                          §§goto(addr340);
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr436);
                              }
                              §5!P§.addChild(include);
                              §§goto(addr306);
                           }
                           §§goto(addr52);
                        }
                        §§goto(addr265);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr81);
               }
               §§goto(addr431);
            }
            §§goto(addr433);
         }
         §§goto(addr157);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:* = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if(_loc9_)
         {
            §§push(AngryBirdsFP11.sUserProgress);
            loop0:
            while(true)
            {
               §§push((§§pop() as §<[§).§'!n§);
               if(_loc9_ || param2)
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    super.uiInteractionHandler(param1,param2,param3);
                                    if(_loc9_)
                                    {
                                       if(_loc9_ || this)
                                       {
                                          var _loc8_:* = param2;
                                          if(!(_loc10_ && param1))
                                          {
                                             §§push("FRIENDS_BUTTON");
                                             if(_loc9_)
                                             {
                                                §§push(_loc8_);
                                                if(!_loc10_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc9_ || param2)
                                                      {
                                                         addr412:
                                                         §§push(0);
                                                         if(_loc10_)
                                                         {
                                                            addr471:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr435:
                                                         §§push(1);
                                                         if(_loc10_ && param1)
                                                         {
                                                            addr511:
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("SHARE_CROWN");
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!_loc10_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc9_ || param1)
                                                               {
                                                                  §§goto(addr435);
                                                               }
                                                               §§goto(addr516);
                                                            }
                                                            §§push("SHARE_STARS");
                                                            if(_loc9_ || param1)
                                                            {
                                                               addr452:
                                                               §§push(_loc8_);
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc9_ || param2)
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§goto(addr471);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr511);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr496:
                                                                        §§push(3);
                                                                        if(!_loc9_)
                                                                        {
                                                                        }
                                                                        §§goto(addr516);
                                                                     }
                                                                     §§goto(addr516);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("SHARE_DEFAULT");
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr478:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc10_ && this))
                                                                              {
                                                                                 §§goto(addr496);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr503:
                                                                                 §§push(4);
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    §§goto(addr511);
                                                                                 }
                                                                                 §§goto(addr516);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("EMBED");
                                                                           }
                                                                           §§goto(addr503);
                                                                        }
                                                                        addr502:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           §§goto(addr503);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr516:
                                                                           switch(§§pop())
                                                                           {
                                                                              case 0:
                                                                                 _loc5_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
                                                                                 addr61:
                                                                                 §'N§.§`I§(_loc5_);
                                                                                 §@!9§.§6!f§.§5C§();
                                                                                 addr71:
                                                                                 addr65:
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    if(!(_loc10_ && param3))
                                                                                    {
                                                                                       if(!(_loc10_ && param2))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr61);
                                                                                          }
                                                                                          _loc6_ = new URLRequest(_loc5_);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             navigateToURL(_loc6_,"_blank");
                                                                                             break;
                                                                                             addr385:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr229:
                                                                                             break;
                                                                                             addr304:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr71);
                                                                                    }
                                                                                    §§goto(addr65);
                                                                                 }
                                                                                 break;
                                                                              case 1:
                                                                                 addr379:
                                                                                 AngryBirdsFP11.§3!a§.§5C§();
                                                                                 §§push((AngryBirdsFP11.sUserProgress as §<[§).§,!l§(LevelManager.§4Y§));
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                                 _loc7_ = §§pop();
                                                                                 §§push(§=r§);
                                                                                 §§push("shareCrown");
                                                                                 §§push(LevelManager.§4Y§);
                                                                                 §§push(LevelManager.§0v§().writtenName + "-");
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(§§pop() + §=!p§.§1!j§(LevelManager.§4Y§));
                                                                                 }
                                                                                 §§pop().§[!3§(§§pop(),§§pop(),§§pop(),_loc7_,§ _§.§?!]§.getScore());
                                                                                 addr373:
                                                                                 if(!(_loc9_ || param2))
                                                                                 {
                                                                                    §§goto(addr373);
                                                                                 }
                                                                                 break;
                                                                                 addr380:
                                                                              case 2:
                                                                                 §§push(AngryBirdsFP11.§3!a§);
                                                                                 if(!(_loc10_ && param2))
                                                                                 {
                                                                                    §§pop().§5C§();
                                                                                    addr318:
                                                                                    if(!(_loc10_ && param3))
                                                                                    {
                                                                                       §§push(§=r§);
                                                                                       §§push("shareThreeStars");
                                                                                       §§push(LevelManager.§4Y§);
                                                                                       §§push(LevelManager.§0v§().writtenName + "-");
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          §§push(§§pop() + §=!p§.§1!j§(LevelManager.§4Y§));
                                                                                       }
                                                                                       §§pop().§[!3§(§§pop(),§§pop(),§§pop(),§ _§.§?!]§.getScore());
                                                                                       addr297:
                                                                                       if(!(_loc9_ || param2))
                                                                                       {
                                                                                          §§goto(addr318);
                                                                                       }
                                                                                       §§goto(addr304);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr379);
                                                                                 }
                                                                                 §§goto(addr380);
                                                                              case 3:
                                                                                 §§push(§=r§);
                                                                                 §§push("shareDefault");
                                                                                 §§push(LevelManager.§4Y§);
                                                                                 §§push(LevelManager.§0v§().writtenName + "-");
                                                                                 if(_loc9_ || param3)
                                                                                 {
                                                                                    §§push(§§pop() + §=!p§.§1!j§(LevelManager.§4Y§));
                                                                                 }
                                                                                 §§pop().§[!3§(§§pop(),§§pop(),§§pop(),§ _§.§?!]§.getScore(),true);
                                                                                 addr268:
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr373);
                                                                                 break;
                                                                              case 4:
                                                                                 §§push(§@M§);
                                                                                 §§push(LevelManager.§4Y§);
                                                                                 §§push(LevelManager.§0v§().writtenName + "-");
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() + §=!p§.§1!j§(LevelManager.§4Y§));
                                                                                 }
                                                                                 §§pop().§'t§(§§pop(),§§pop(),§ _§.§?!]§.getScore(),this.§=!7§);
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr385);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr297);
                                                                                    }
                                                                                    §§goto(addr229);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr268);
                                                                                 }
                                                                           }
                                                                           return;
                                                                           §§push(5);
                                                                        }
                                                                        §§goto(addr516);
                                                                     }
                                                                  }
                                                                  §§goto(addr516);
                                                               }
                                                               §§goto(addr478);
                                                            }
                                                            §§goto(addr502);
                                                            §§push(_loc8_);
                                                            §§goto(addr503);
                                                         }
                                                         §§goto(addr502);
                                                      }
                                                      §§goto(addr452);
                                                   }
                                                   §§goto(addr516);
                                                }
                                                §§goto(addr478);
                                             }
                                             §§goto(addr452);
                                          }
                                          §§goto(addr412);
                                       }
                                       else
                                       {
                                          addr157:
                                          while(true)
                                          {
                                             this.§[h§ = §@M§.§?!K§();
                                             addr161:
                                             while(true)
                                             {
                                                this.§[@§ = param2;
                                             }
                                          }
                                          addr157:
                                       }
                                    }
                                    else
                                    {
                                       if(_loc10_ && this)
                                       {
                                          break;
                                       }
                                       if(!(_loc10_ && param1))
                                       {
                                          continue;
                                       }
                                    }
                                    while(_loc10_)
                                    {
                                       §§goto(addr161);
                                    }
                                    continue loop0;
                                 }
                                 addr117:
                                 if(!(_loc10_ && this))
                                 {
                                    break;
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc4_.indexOf(param2) == -1);
                                    if(!(_loc9_ || param1))
                                    {
                                       break;
                                    }
                                    if(!_loc10_)
                                    {
                                       continue loop1;
                                    }
                                    addr177:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop6;
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr157);
                           }
                           return;
                        }
                        continue;
                        addr155:
                     }
                  }
               }
               §§goto(addr177);
            }
         }
         §§goto(addr157);
      }
      
      protected function §'!$§(param1:UserProgressEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (AngryBirdsFP11.sUserProgress as §<[§).removeEventListener(UserProgressEvent.§3P§,this.§'!$§);
            loop0:
            while(true)
            {
               §§push(this.§[h§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr89:
                        this.§[h§.close();
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        this.uiInteractionHandler(-1,this.§[@§,null);
                        addr49:
                        while(true)
                        {
                           if(_loc2_ || this)
                           {
                              continue;
                           }
                        }
                        continue loop0;
                     }
                     addr32:
                  }
                  while(true)
                  {
                     this.§[h§ = null;
                     continue loop0;
                     §§goto(addr49);
                  }
               }
               §§goto(addr89);
            }
         }
         §§goto(addr56);
      }
      
      protected function saveLevelProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            (§ _§.§1s§ as §@!9§).newUserScore(LevelManager.§4Y§);
         }
         do
         {
            (AngryBirdsFP11.sUserProgress as §<[§).saveLevelProgress(LevelManager.§4Y§);
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(!(_loc7_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§4Y§));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§ _§.§?!]§.getScore());
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc7_ && this))
         {
            §[!a§ = _loc3_ > _loc2_;
            if(_loc6_ || _loc1_)
            {
               addr63:
               §<U§(_loc3_,_loc2_);
            }
            §§push(AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§4Y§,_loc3_));
            if(_loc6_ || this)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!_loc7_)
            {
               (§5!P§.getItemByName("MovieClip_NewHighScoreBadge") as §[I§).setVisibility(false);
               while(true)
               {
                  (§5!P§.getItemByName("MovieClip_StarLeft") as §[I§).mClip.gotoAndStop("UnLit");
                  addr172:
                  while(true)
                  {
                     (§5!P§.getItemByName("MovieClip_StarCenter") as §[I§).mClip.gotoAndStop("UnLit");
                  }
                  addr107:
                  if(!(_loc7_ && this))
                  {
                     if(false)
                     {
                        loop4:
                        while(true)
                        {
                           if(§[!a§)
                           {
                              if(_loc6_)
                              {
                                 if(!_loc7_)
                                 {
                                    this.saveLevelProgress();
                                    addr125:
                                    loop5:
                                    while(_loc6_ || this)
                                    {
                                       while(true)
                                       {
                                          (§ _§.§1s§ as §@!9§).§6!H§.§default§ = false;
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       if(_loc7_)
                                       {
                                          break loop4;
                                       }
                                       §§goto(addr107);
                                    }
                                    while(true)
                                    {
                                       continue loop4;
                                       §§goto(addr125);
                                    }
                                    addr125:
                                    addr142:
                                 }
                                 while(true)
                                 {
                                    (§5!P§.getItemByName("MovieClip_StarRight") as §[I§).mClip.gotoAndStop("UnLit");
                                    §§goto(addr142);
                                 }
                                 addr162:
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr172);
                     }
                     §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
                     if(!_loc7_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     return;
                  }
               }
            }
            §§goto(addr162);
         }
         §§goto(addr63);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§5!P§.getItemByName("Button_Menu") as §5!I§).setComponentVisualState(param1);
            do
            {
               (§5!P§.getItemByName("Button_Replay") as §5!I§).setComponentVisualState(param1);
               do
               {
                  (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setComponentVisualState(param1);
                  do
                  {
                     (§5!P§.getItemByName("Button_CutScene") as §5!I§).setComponentVisualState(param1);
                  }
                  while(_loc2_);
                  
               }
               while(_loc2_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+!s§.push((§5!P§.getItemByName("Button_Menu") as §5!I§).x);
            loop0:
            do
            {
               §+!s§.push((§5!P§.getItemByName("Button_Replay") as §5!I§).x);
               while(true)
               {
                  §+!s§.push((§5!P§.getItemByName("Button_NextLevel") as §5!I§).x);
                  while(!(_loc1_ && _loc2_))
                  {
                     §+!s§.push((§5!P§.getItemByName("Button_CutScene") as §5!I§).x);
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc2_);
            
         }
      }
      
      override protected function getViewXML() : XML
      {
         return §[!'§.§+@§.Views.View_LevelEnd[0];
      }
      
      override protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(AngryBirdsFP11.sUserProgress.§%H§(LevelManager.§4Y§))
            {
               (§5!P§.getItemByName("Button_Menu") as §5!I§).setVisibility(true);
               loop0:
               while(!_loc2_)
               {
                  if(!(_loc1_ || _loc2_))
                  {
                     addr254:
                     (§5!P§.getItemByName("Button_Menu") as §5!I§).setVisibility(false);
                     break;
                  }
                  (§5!P§.getItemByName("Button_Replay") as §5!I§).setVisibility(true);
                  loop1:
                  while(!(_loc2_ && this))
                  {
                     (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
                     loop2:
                     for(; _loc1_ || _loc1_; if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     },if(_loc2_ && this)
                     {
                        loop7:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
                                 §§goto(addr238);
                                 continue loop7;
                              }
                              addr247:
                           }
                           (§5!P§.getItemByName("Button_CutScene") as §5!I§).x = §+!s§[1] + Math.abs(§+!s§[2] - §+!s§[1]) / 2;
                           §§goto(addr185);
                        }
                        addr208:
                     }
                     else
                     {
                        addr49:
                     },§§goto(addr19))
                     {
                        (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(true);
                        loop3:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 (§5!P§.getItemByName("Button_Menu") as §5!I§).x = §+!s§[0];
                                 loop4:
                                 while(_loc1_)
                                 {
                                    (§5!P§.getItemByName("Button_Replay") as §5!I§).x = §+!s§[1];
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          continue loop3;
                                       }
                                       continue loop4;
                                       addr74:
                                       (§5!P§.getItemByName("Button_CutScene") as §5!I§).x = §+!s§[2];
                                       if(_loc1_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 addr19:
                                 return;
                                 addr185:
                              }
                              break;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(true);
                           break loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     (§5!P§.getItemByName("Button_Replay") as §5!I§).x = §+!s§[0] + Math.abs(§+!s§[1] - §+!s§[0]) / 2;
                     §§goto(addr208);
                  }
               }
               (§5!P§.getItemByName("Button_Replay") as §5!I§).setVisibility(true);
               §§goto(addr247);
            }
            §§goto(addr254);
         }
         §§goto(addr49);
      }
      
      override protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§5!P§.getItemByName("Button_Menu") as §5!I§).setVisibility(true);
            loop0:
            while(true)
            {
               (§5!P§.getItemByName("Button_Replay") as §5!I§).setVisibility(true);
               loop1:
               while(true)
               {
                  (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(false);
                  loop2:
                  while(true)
                  {
                     if(!LevelManager.§9!j§())
                     {
                        (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
                        while(_loc2_ || _loc1_)
                        {
                           if(!_loc1_)
                           {
                              (§5!P§.getItemByName("Button_Menu") as §5!I§).x = §+!s§[0] + Math.abs(§+!s§[1] - §+!s§[0]) / 2;
                              do
                              {
                                 (§5!P§.getItemByName("Button_Replay") as §5!I§).x = §+!s§[1] + Math.abs(§+!s§[2] - §+!s§[1]) / 2;
                              }
                              while(!_loc2_);
                              
                              if(_loc1_ && _loc2_)
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 break loop2;
                              }
                              §§goto(addr152);
                              continue;
                           }
                           loop7:
                           while(_loc2_)
                           {
                              while(true)
                              {
                                 (§5!P§.getItemByName("Button_Menu") as §5!I§).x = §+!s§[0];
                                 addr152:
                                 while(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       (§5!P§.getItemByName("Button_Replay") as §5!I§).x = §+!s§[1];
                                       while(true)
                                       {
                                          if(!_loc1_)
                                          {
                                             (§5!P§.getItemByName("Button_NextLevel") as §5!I§).x = §+!s§[2];
                                             continue;
                                          }
                                          addr161:
                                          while(true)
                                          {
                                             (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(true);
                                             continue loop7;
                                          }
                                       }
                                       addr20:
                                       return;
                                       addr139:
                                       addr128:
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           if(!(_loc2_ || _loc1_))
                           {
                              §§goto(addr139);
                           }
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr20);
               }
            }
         }
         §§goto(addr180);
      }
   }
}
