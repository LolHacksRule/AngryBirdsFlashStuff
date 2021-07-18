package §9@§
{
   import §+!c§.Base64;
   import §2<§.§9!7§;
   import §30§.§'"+§;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.getTimer;
   
   public class §@q§ extends §3w§
   {
      
      private static const §@!y§:Boolean;
      
      private static const § "P§:String = "powerup-used";
      
      private static const §'6§:String = "level-powerup-used";
      
      private static const §='§:String;
      
      private static const §=1§:String;
      
      private static const § !!§:String = "framerate";
      
      private static const §?z§:String = "external-pause";
      
      private static const §@!r§:String = "gift";
      
      private static const §1"&§:String = "shop";
      
      private static const §[1§:String = "brag";
      
      private static const §?!8§:String = "invite";
      
      private static const §;"B§:String = "avatar";
      
      private static const §]"X§:String = "branded-shop";
      
      private static const §^Z§:String = "powerup-gained";
      
      private static const §@"3§:String = "powerup-statistics";
      
      private static const §^"9§:String = "virtual-currency-gained";
      
      private static const §3D§:String = "wingman-usage";
      
      private static const §>!;§:String = "warning";
      
      private static const §2g§:String = "user-statistics";
      
      private static const §`"-§:String = "tournament-statistics";
      
      private static const §%"A§:String = "streaming";
      
      private static const §<j§:String = "external-url";
      
      private static const §,!4§:String = "virtual-currency-statistics";
      
      private static const §;!K§:String = "error";
      
      private static const §>6§:String = "ab-tests";
      
      private static const §7!!§:String = "paused";
      
      private static const § K§:String = "resumed";
      
      private static const §>"S§:String = "gift-claimed";
      
      private static const §1N§:String = "campaign-gift-claimed";
      
      private static const §=]§:String = "opened";
      
      private static const §#![§:String = "product-selected";
      
      private static const §#"M§:String = "product-buy-selected";
      
      private static const §11§:String = "product-buy-completed";
      
      private static const §3l§:String = "brag-shown";
      
      private static const §"Q§:String = "brag-clicked";
      
      private static const §0'§:String = "friend-clicked";
      
      private static const §4!6§:String = "generic-clicked";
      
      private static const §7!E§:String = "opened";
      
      private static const §`q§:String = "set";
      
      private static const §<!8§:String = "product-set";
      
      private static const §%"#§:String = "product-buy-selected";
      
      private static const §<l§:String = "product-buy-completed";
      
      private static const §+i§:String = "share-clicked";
      
      private static const §]m§:String = "share-completed";
      
      private static const §,!5§:String = "ticket-collected";
      
      private static const §3C§:String = "max-tickets-collected-one-day";
      
      private static const §7Q§:String = "max-tickets-collected-whole-draw";
      
      private static const §7"+§:String;
      
      private static const §2"H§:String;
      
      private static const §[""§:String = "download-failed";
      
      private static const §5"5§:String = "3rd-party-cookies-missing";
      
      private static const §"!@§:String = "invalid-level";
      
      private static const §&4§:String = "flash-var-missing";
      
      private static const §[!?§:String = "friend-count";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_1:String = "red-beaten-by";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_2:String = "yellow-beaten-by";
      
      private static const ACTION_BIRD_BOT_LOST_BY_1:String = "red-lost-by";
      
      private static const ACTION_BIRD_BOT_LOST_BY_2:String = "yellow-lost-by";
      
      private static const §[r§:String = "virtual-currency-count";
      
      private static const §&!7§:String = "start";
      
      private static const §&!<§:String = "complete";
      
      private static const §"!S§:String = "error";
      
      private static const §&!F§:String = "open";
      
      private static const §&"K§:String = "free-samples";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      public static const §5!J§:String = "DailyReward";
      
      public static const §9%§:String = "TournamentLevelComplete";
      
      public static const § O§:String = "TournamentPrize";
      
      public static const §1§:String = "Gift";
      
      public static const §6!o§:String = "Shop";
      
      public static const §4H§:String = "trackPageView";
      
      public static const §=X§:String = "trackTransaction";
      
      public static const §&"Y§:String = "trackTransactionItems";
      
      public static const §>!A§:String = "level_pack";
      
      public static const §["G§:String = "shop";
      
      public static const §%"$§:String = "level";
      
      public static const §"1§:String = "frontpage";
      
      public static const §+!+§:String = "coins";
      
      public static const §-![§:String = "tabbed-shop";
      
      public static const §73§:String = "branded";
      
      public static const §,`§:String = "avatar";
      
      public static const §7!K§:String = "thank-you";
      
      public static const §+Z§:String = "Completed";
      
      public static const §@"<§:String = "Failed";
      
      public static const §;"§:String = "game";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §>!O§:Array;
      
      private static var §=!u§:int = 0;
      
      private static var §&5§:int = 0;
      
      private static var § !&§:int = 0;
      
      private static var §@5§:int = 0;
      
      private static const §+!j§:String = "Finland";
      
      private static const §6r§:String = "Uusimaa";
      
      private static const §[6§:String = "Helsinki";
      
      public static var §4!,§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §@!y§ = AngryBirdsFP11.§#V§;
            loop0:
            while(true)
            {
               § "P§ = "powerup-used";
               loop1:
               while(true)
               {
                  §'6§ = "level-powerup-used";
                  loop2:
                  while(true)
                  {
                     §§push(§§findproperty(§='§));
                     §§push("powerup-");
                     if(_loc1_)
                     {
                        §§push(§§pop() + §>!P§);
                     }
                     §§pop().§='§ = §§pop();
                     while(true)
                     {
                        §=1§ = §>!P§ + "-powerup";
                        addr1037:
                        while(true)
                        {
                           § !!§ = "framerate";
                           continue loop1;
                        }
                        addr561:
                        if(!(_loc1_ || _loc2_))
                        {
                           continue;
                        }
                        FULL_SCREEN = "-full-screen";
                        loop68:
                        while(!(_loc2_ && _loc2_))
                        {
                           §5!J§ = "DailyReward";
                           loop69:
                           while(true)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr534:
                                 if(!(_loc2_ && §@q§))
                                 {
                                    §9%§ = "TournamentLevelComplete";
                                    loop70:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          addr513:
                                          if(_loc1_ || _loc2_)
                                          {
                                             if(!_loc1_)
                                             {
                                                break;
                                             }
                                             § O§ = "TournamentPrize";
                                             continue loop69;
                                          }
                                          loop40:
                                          while(true)
                                          {
                                             §<l§ = §11§;
                                             loop41:
                                             while(true)
                                             {
                                                §+i§ = "share-clicked";
                                                loop42:
                                                for(; !_loc2_; while(true)
                                                {
                                                   if(!(_loc2_ && §@q§))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §@"<§ = "Failed";
                                                         §§goto(addr278);
                                                      }
                                                      break;
                                                   }
                                                   continue loop42;
                                                },§§goto(addr996))
                                                {
                                                   §]m§ = "share-completed";
                                                   loop43:
                                                   for(; !(_loc2_ && _loc2_); while(true)
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§-!f§,§08§];
                                                            §§goto(addr596);
                                                         }
                                                         break;
                                                      }
                                                      continue loop43;
                                                      §§goto(addr385);
                                                   },§§goto(addr903))
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         §,!5§ = "ticket-collected";
                                                         while(true)
                                                         {
                                                            §3C§ = "max-tickets-collected-one-day";
                                                            loop45:
                                                            for(; !_loc2_; if(_loc2_ && §@q§)
                                                            {
                                                               continue;
                                                            },§§goto(addr292))
                                                            {
                                                               §7Q§ = "max-tickets-collected-whole-draw";
                                                               loop46:
                                                               while(true)
                                                               {
                                                                  §7"+§ = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
                                                                  addr740:
                                                                  loop47:
                                                                  while(!(_loc2_ && _loc2_))
                                                                  {
                                                                     §2"H§ = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
                                                                     loop48:
                                                                     while(true)
                                                                     {
                                                                        §[""§ = "download-failed";
                                                                        addr726:
                                                                        while(true)
                                                                        {
                                                                           §5"5§ = "3rd-party-cookies-missing";
                                                                           loop50:
                                                                           while(true)
                                                                           {
                                                                              §"!@§ = "invalid-level";
                                                                              addr709:
                                                                              loop51:
                                                                              for(; _loc1_ || _loc1_; while(true)
                                                                              {
                                                                                 if(_loc2_ && §@q§)
                                                                                 {
                                                                                    continue loop51;
                                                                                 }
                                                                                 §§goto(addr415);
                                                                                 §§goto(addr252);
                                                                              },§§goto(addr924))
                                                                              {
                                                                                 §&4§ = "flash-var-missing";
                                                                                 loop52:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       addr697:
                                                                                       if(_loc2_ && _loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §[!?§ = "friend-count";
                                                                                       loop53:
                                                                                       while(!_loc2_)
                                                                                       {
                                                                                          ACTION_BIRD_BOT_BEATEN_BY_1 = "red-beaten-by";
                                                                                          loop54:
                                                                                          while(true)
                                                                                          {
                                                                                             ACTION_BIRD_BOT_BEATEN_BY_2 = "yellow-beaten-by";
                                                                                             loop55:
                                                                                             while(true)
                                                                                             {
                                                                                                ACTION_BIRD_BOT_LOST_BY_1 = "red-lost-by";
                                                                                                addr666:
                                                                                                addr829:
                                                                                                while(_loc1_ || _loc1_)
                                                                                                {
                                                                                                   ACTION_BIRD_BOT_LOST_BY_2 = "yellow-lost-by";
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §[r§ = "virtual-currency-count";
                                                                                                      break loop68;
                                                                                                   }
                                                                                                   addr154:
                                                                                                   if(_loc2_ && _loc2_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   § !&§ = 0;
                                                                                                   loop94:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc1_ || _loc1_)
                                                                                                      {
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            addr122:
                                                                                                            if(!(_loc2_ && _loc1_))
                                                                                                            {
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  addr131:
                                                                                                                  if(!(_loc2_ && §@q§))
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §@5§ = 0;
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     continue loop53;
                                                                                                                  }
                                                                                                                  continue loop54;
                                                                                                               }
                                                                                                               continue loop70;
                                                                                                            }
                                                                                                            loop88:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc1_ || _loc1_)
                                                                                                               {
                                                                                                                  if(!_loc1_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                     addr245:
                                                                                                                  }
                                                                                                                  sSample10Percent = false;
                                                                                                                  loop89:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr252:
                                                                                                                        if(_loc2_ && _loc1_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        sSample1Percent = false;
                                                                                                                        loop90:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc2_ && _loc1_))
                                                                                                                           {
                                                                                                                              if(_loc1_)
                                                                                                                              {
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc1_)
                                                                                                                                    {
                                                                                                                                       addr233:
                                                                                                                                       if(_loc1_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §>!O§ = [];
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc1_ || _loc1_)
                                                                                                                                             {
                                                                                                                                                addr192:
                                                                                                                                                if(_loc1_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr199:
                                                                                                                                                   if(_loc1_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc1_)
                                                                                                                                                      {
                                                                                                                                                         continue loop48;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr661);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      loop83:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc1_ || §@q§)
                                                                                                                                                         {
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §,`§ = "avatar";
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §7!K§ = "thank-you";
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               SAMPLE_100_PERCENT_CATEGORIES = [§;!K§];
                                                                                                                                                               addr559:
                                                                                                                                                               addr939:
                                                                                                                                                               while(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr561);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §`"-§ = "tournament-statistics";
                                                                                                                                                                  addr934:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §%"A§ = "streaming";
                                                                                                                                                                     break loop90;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop83;
                                                                                                                                                            }
                                                                                                                                                            addr588:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §7!!§ = "paused";
                                                                                                                                                         addr893:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            § K§ = "resumed";
                                                                                                                                                            break loop70;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr337:
                                                                                                                                                      addr898:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc1_)
                                                                                                                                                   {
                                                                                                                                                      addr320:
                                                                                                                                                      if(!(_loc1_ || §@q§))
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §+Z§ = "Completed";
                                                                                                                                                      continue loop42;
                                                                                                                                                   }
                                                                                                                                                   addr949:
                                                                                                                                                   addr427:
                                                                                                                                                   loop77:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc1_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr434:
                                                                                                                                                         if(!(_loc2_ && §@q§))
                                                                                                                                                         {
                                                                                                                                                            addr441:
                                                                                                                                                            if(_loc1_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §["G§ = "shop";
                                                                                                                                                               break loop89;
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr856:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §11§ = "product-buy-completed";
                                                                                                                                                            addr849:
                                                                                                                                                            while(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §3l§ = "brag-shown";
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §"Q§ = "brag-clicked";
                                                                                                                                                                  break loop94;
                                                                                                                                                               }
                                                                                                                                                               if(_loc1_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §;"§ = "game";
                                                                                                                                                                  continue loop88;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr893);
                                                                                                                                                            §§goto(addr434);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr824:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §`q§ = "set";
                                                                                                                                                         addr805:
                                                                                                                                                         addr866:
                                                                                                                                                         while(!(_loc2_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            addr812:
                                                                                                                                                            if(_loc1_ || §@q§)
                                                                                                                                                            {
                                                                                                                                                               §<!8§ = "product-set";
                                                                                                                                                               break loop43;
                                                                                                                                                            }
                                                                                                                                                            addr976:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §^Z§ = "powerup-gained";
                                                                                                                                                               §§goto(addr812);
                                                                                                                                                            }
                                                                                                                                                            while(_loc1_ || _loc1_)
                                                                                                                                                            {
                                                                                                                                                               §&"K§ = "free-samples";
                                                                                                                                                               loop63:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  SAMPLE_1_PERCENT_FLASH_ACTIONS = [§#!S§,§>!P§];
                                                                                                                                                                  continue loop43;
                                                                                                                                                                  addr364:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc2_ && _loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop55;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop63;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop46;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §#![§ = "product-selected";
                                                                                                                                                            break loop45;
                                                                                                                                                            §§goto(addr805);
                                                                                                                                                         }
                                                                                                                                                         continue loop77;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §>!;§ = "warning";
                                                                                                                                                      break loop69;
                                                                                                                                                      §§goto(addr441);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr192);
                                                                                                                                                }
                                                                                                                                                continue loop69;
                                                                                                                                             }
                                                                                                                                             addr278:
                                                                                                                                             addr964:
                                                                                                                                             loop87:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc2_ && §@q§))
                                                                                                                                                {
                                                                                                                                                   continue loop45;
                                                                                                                                                }
                                                                                                                                                addr399:
                                                                                                                                                while(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      §"1§ = "frontpage";
                                                                                                                                                      addr385:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_ && §@q§)
                                                                                                                                                         {
                                                                                                                                                            continue loop43;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc1_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §+!+§ = "coins";
                                                                                                                                                         §§goto(addr364);
                                                                                                                                                         continue loop89;
                                                                                                                                                      }
                                                                                                                                                      continue loop41;
                                                                                                                                                      addr385:
                                                                                                                                                   }
                                                                                                                                                   continue loop87;
                                                                                                                                                }
                                                                                                                                                §§goto(addr844);
                                                                                                                                             }
                                                                                                                                             §§goto(addr849);
                                                                                                                                             while(!(_loc2_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §@"3§ = "powerup-statistics";
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §^"9§ = "virtual-currency-gained";
                                                                                                                                                   break loop51;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop48;
                                                                                                                                          addr185:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr1008:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §@!r§ = "gift";
                                                                                                                                          §§goto(addr233);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §1"&§ = "shop";
                                                                                                                                          addr996:
                                                                                                                                          while(!_loc2_)
                                                                                                                                          {
                                                                                                                                             §[1§ = "brag";
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §?!8§ = "invite";
                                                                                                                                                break loop52;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop1;
                                                                                                                                          §§goto(addr964);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop52;
                                                                                                                              }
                                                                                                                              addr596:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 SAMPLE_1_PERCENT_CATEGORIES = [§ "P§,§'6§,§='§,§=1§,§ !!§,§?z§,§@!r§,§1"&§,§[1§,§?!8§,§;"B§,§^Z§,§@"3§,§^"9§,§`"-§];
                                                                                                                              }
                                                                                                                              §§goto(addr588);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §>!A§ = "level_pack";
                                                                                                                                 continue loop90;
                                                                                                                              }
                                                                                                                              addr453:
                                                                                                                           }
                                                                                                                           §§goto(addr427);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §<j§ = "external-url";
                                                                                                                           addr924:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §,!4§ = "virtual-currency-statistics";
                                                                                                                              addr917:
                                                                                                                              while(!_loc2_)
                                                                                                                              {
                                                                                                                                 §;!K§ = "error";
                                                                                                                                 while(_loc1_)
                                                                                                                                 {
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 §§goto(addr959);
                                                                                                                                 break loop70;
                                                                                                                              }
                                                                                                                              §§goto(addr991);
                                                                                                                              addr415:
                                                                                                                              if(_loc2_ && §@q§)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §%"$§ = "level";
                                                                                                                              §§goto(addr399);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr385);
                                                                                                                  }
                                                                                                                  continue loop51;
                                                                                                               }
                                                                                                               §§goto(addr479);
                                                                                                               §§goto(addr559);
                                                                                                            }
                                                                                                            §§goto(addr1037);
                                                                                                         }
                                                                                                         §§goto(addr245);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr147);
                                                                                                      }
                                                                                                      if(!(_loc2_ && _loc1_))
                                                                                                      {
                                                                                                         return;
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §0'§ = "friend-clicked";
                                                                                                      break loop42;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §7!E§ = "opened";
                                                                                                   §§goto(addr824);
                                                                                                   §§goto(addr666);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop50;
                                                                                    }
                                                                                    addr876:
                                                                                    while(true)
                                                                                    {
                                                                                       §1N§ = "campaign-gift-claimed";
                                                                                       §§goto(addr871);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §;"B§ = "avatar";
                                                                                    break loop47;
                                                                                    §§goto(addr697);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §3D§ = "wingman-usage";
                                                                                 §§goto(addr949);
                                                                                 §§goto(addr709);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §]"X§ = "branded-shop";
                                                                     §§goto(addr976);
                                                                     §§goto(addr740);
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §#"M§ = "product-buy-selected";
                                                               §§goto(addr856);
                                                            }
                                                            if(!(_loc1_ || _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                            §&"Y§ = "trackTransactionItems";
                                                            §§goto(addr453);
                                                         }
                                                      }
                                                      §§goto(addr934);
                                                   }
                                                   while(true)
                                                   {
                                                      §%"#§ = §#"M§;
                                                      continue loop40;
                                                      §§goto(addr769);
                                                   }
                                                   addr769:
                                                }
                                                while(true)
                                                {
                                                   §4!6§ = "generic-clicked";
                                                   §§goto(addr829);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr726);
                                    }
                                    while(!(_loc2_ && _loc2_))
                                    {
                                       §>"S§ = "gift-claimed";
                                       §§goto(addr876);
                                    }
                                    §§goto(addr917);
                                 }
                                 break;
                              }
                              §§goto(addr639);
                           }
                           while(true)
                           {
                              §2g§ = "user-statistics";
                              §§goto(addr939);
                              §§goto(addr534);
                           }
                        }
                        while(true)
                        {
                           §&!7§ = "start";
                           §§goto(addr644);
                           §§goto(addr546);
                        }
                        addr546:
                     }
                  }
               }
            }
         }
         §§goto(addr876);
      }
      
      public function §@q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §7!q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(Math.random() <= 0.1)
            {
               if(!_loc1_)
               {
                  sSample10Percent = true;
               }
               while(true)
               {
                  addr49:
                  if(!_loc1_)
                  {
                     sSample1Percent = true;
                  }
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  addr30:
                  return;
                  addr61:
               }
               addr71:
            }
            while(true)
            {
               if(Math.random() <= 0.01)
               {
                  §§goto(addr49);
               }
               break;
               §§goto(addr71);
            }
            §§goto(addr30);
         }
         §§goto(addr61);
      }
      
      public static function §&d§(param1:int, param2:int, param3:String, param4:String = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            §#!0§(§3w§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
         var _loc5_:URLLoader = new URLLoader();
         §§push(§9!7§);
         §§push(AngryBirdsFP11.§?8§ + "/clienterror/WEB_FLASH/");
         if(!_loc7_)
         {
            §§push(§§pop() + param3);
            if(_loc8_ || §@q§)
            {
               addr61:
               §§push(§§pop() + "/");
               if(!_loc7_)
               {
                  §§push(§§pop() + param1);
               }
            }
            var _loc6_:URLRequest;
            (_loc6_ = §§pop().§,!l§(§§pop())).method = URLRequestMethod.POST;
            if(!_loc7_)
            {
               if(!param4)
               {
                  if(_loc8_)
                  {
                     param4 = "";
                     addr120:
                     while(true)
                     {
                     }
                     addr120:
                  }
                  §§goto(addr120);
               }
               while(true)
               {
                  _loc6_.contentType = "text/plain";
                  while(!_loc7_)
                  {
                     _loc6_.data = Base64.encode(param4);
                     do
                     {
                        _loc5_.load(_loc6_);
                     }
                     while(_loc7_);
                     
                     if(_loc8_)
                     {
                        return;
                     }
                  }
                  §§goto(addr120);
               }
            }
            §§goto(addr120);
         }
         §§goto(addr61);
      }
      
      public static function §#!0§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§[!;§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || param1)
         {
            §3w§.trackSampledEvent(_loc4_,§`%§,param1,param2,param3);
         }
      }
      
      public static function §5! §(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§!!m§());
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            §0!+§(§ "P§,param1,param2,0);
            do
            {
               §0!+§(§'6§,param2,param1,0);
            }
            while(_loc4_);
            
         }
      }
      
      public static function §[!_§(param1:String, param2:String, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= param3)
            {
               if(_loc6_ && param2)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  break;
               }
            }
            else
            {
               §0!+§(§^Z§,param1,param2,0);
            }
            _loc4_++;
         }
      }
      
      public static function §'!!§(param1:Array, param2:String, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(_loc5_ || param1)
         {
            if(enabled)
            {
               if(!(_loc6_ && param3))
               {
                  §§push(§3U§(param1));
                  if(!(_loc6_ && param2))
                  {
                     §§push(§§pop());
                     if(!(_loc6_ && param1))
                     {
                        §§push(_loc4_ = §§pop());
                     }
                  }
                  if(§§pop())
                  {
                     addr98:
                     while(true)
                     {
                        §0!+§(§='§,_loc4_,param2,param3);
                     }
                     addr98:
                  }
                  §§goto(addr27);
               }
               while(true)
               {
                  §0!+§(§=1§,param2,_loc4_,param3);
                  if(_loc6_ && param1)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     break;
                  }
                  §§goto(addr98);
               }
            }
            addr27:
            return;
         }
         §§goto(addr98);
      }
      
      public static function §&?§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §0!+§(§^"9§,param1,param2,param3);
         }
      }
      
      public static function §;S§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(!_loc7_)
         {
            §§push(§>!O§);
            if(_loc8_)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(_loc8_)
                  {
                     §§goto(addr31);
                  }
               }
               §§push(§>!O§);
            }
            var _loc5_:* = §§pop().length == 0;
            if(_loc8_ || param1)
            {
               §>!O§.push(param2);
               loop0:
               while(true)
               {
                  §§push(param3);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(§3w§.ACTION_GPU_FPS_REPORT);
                        loop2:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              _loc6_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(param4);
                                 while(true)
                                 {
                                    if(_loc8_ || param2)
                                    {
                                       if(§§pop())
                                       {
                                          continue loop2;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             addr96:
                                             if(!_loc7_)
                                             {
                                                §#!0§(_loc6_,param1.toString(),param1);
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc8_ || §@q§)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      addr184:
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param4);
                                                            addr177:
                                                            while(!_loc7_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop10;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§@q§.§2"H§);
                                                                  break loop11;
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr194:
                                                      }
                                                      while(!_loc8_)
                                                      {
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(§3w§.ACTION_CPU_FPS_REPORT);
                                                            addr193:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               §§goto(addr194);
                                                               continue loop18;
                                                            }
                                                         }
                                                      }
                                                      continue loop10;
                                                      addr184:
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop2;
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                addr183:
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                   §§goto(addr184);
                                                }
                                                §§goto(addr180);
                                             }
                                             addr96:
                                             addr182:
                                          }
                                          while(true)
                                          {
                                             §0!+§(§ !!§,_loc6_,param2,param1);
                                             if(!(_loc7_ && param3))
                                             {
                                                if(!_loc8_)
                                                {
                                                   while(_loc8_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   continue loop0;
                                                   addr152:
                                                }
                                                if(!(_loc7_ && param3))
                                                {
                                                   return;
                                                }
                                                §§goto(addr180);
                                             }
                                             else
                                             {
                                                §§goto(addr96);
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr177);
                                 }
                              }
                           }
                           §§goto(addr183);
                        }
                     }
                  }
               }
            }
            §§goto(addr190);
         }
         addr31:
      }
      
      public static function §,""§(param1:String, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            var _loc3_:*;
            §§push((_loc3_ = §§findproperty(§=!u§)).§=!u§);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               _loc3_.§=!u§ = _loc4_;
            }
            if(!_loc6_)
            {
               addr65:
               §0!+§(§@!r§,§>"S§,param1,param2);
            }
            return;
         }
         §§goto(addr65);
      }
      
      public static function § "5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0!+§(§@!r§,§1N§,null,0);
         }
      }
      
      public static function §@!;§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            var _loc1_:*;
            §§push((_loc1_ = §§findproperty(§&5§)).§&5§);
            if(_loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               _loc1_.§&5§ = _loc2_;
            }
            if(!_loc4_)
            {
               § !&§ = §!!m§();
               addr55:
            }
            do
            {
               §0!+§(§?z§,§7!!§,§&5§.toString(),§ !&§);
            }
            while(_loc4_ && §@q§);
            
            return;
         }
         §§goto(addr55);
      }
      
      public static function § !=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!+§(§?z§,§ K§,"",§!!m§(§ !&§));
         }
      }
      
      public static function § !P§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!§@!y§)
            {
               if(_loc2_)
               {
                  §0!+§(§]"X§,§=]§,param1,0);
               }
            }
         }
      }
      
      public static function § "I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§@!y§)
            {
               if(!_loc1_)
               {
                  §0!+§(§1"&§,§=]§,null,0);
               }
            }
         }
      }
      
      public static function §>!r§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!§@!y§)
            {
               if(!(_loc3_ && param1))
               {
                  §0!+§(§1"&§,§#![§,param1,0);
               }
            }
         }
      }
      
      public static function §<!S§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §@q§))
         {
            if(!§@!y§)
            {
               if(!(_loc4_ && param1))
               {
                  addr42:
                  §0!+§(§1"&§,§#"M§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public static function §3"-§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!§@!y§)
            {
               if(!(_loc4_ && §@q§))
               {
                  addr37:
                  §0!+§(§1"&§,§11§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      public static function §,!t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §0!+§(§[1§,§3l§,param1,0);
         }
      }
      
      public static function §[!Q§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §0!+§(§[1§,§"Q§,param1,0);
         }
      }
      
      public static function §`=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §@q§)
         {
            §0!+§(§?!8§,§0'§,null,0);
         }
      }
      
      public static function §"U§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §0!+§(§2g§,§,!5§,null,param1);
         }
      }
      
      public static function §^r§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0!+§(§2g§,§3C§,null,0);
         }
      }
      
      public static function §+!]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!+§(§2g§,§7Q§,null,0);
         }
      }
      
      public static function §8"#§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §0!+§(§3D§,param1,param2,0);
         }
      }
      
      public static function §%"Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0!+§(§?!8§,§4!6§,null,0);
         }
      }
      
      public static function §"C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §0!+§(§;"B§,§7!E§,null,0);
         }
      }
      
      public static function §8!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §0!+§(§;"B§,§`q§,null,0);
         }
      }
      
      public static function §@0§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §0!+§(§;"B§,§<!8§,param1,0);
         }
      }
      
      public static function §`"J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!+§(§;"B§,§+i§,null,0);
         }
      }
      
      public static function §;"<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §0!+§(§;"B§,§]m§,null,0);
         }
      }
      
      public static function §!!`§(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §@q§))
         {
            if(!§@!y§)
            {
               if(!(_loc3_ && param1))
               {
                  §0!+§(§;"B§,§%"#§,param1,param2,false);
               }
            }
         }
      }
      
      public static function §@§(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!§@!y§)
            {
               if(!_loc4_)
               {
                  §0!+§(§;"B§,§<l§,param1,param2,false);
               }
            }
         }
      }
      
      public static function §<d§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §0!+§(§>!;§,§[""§,param1,0);
         }
      }
      
      public static function §]-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §@q§)
         {
            §0!+§(§>!;§,§5"5§,null,0);
         }
      }
      
      public static function §^j§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            while(§§pop() != null)
            {
               §§push(param1);
               if(!(_loc2_ || §@q§))
               {
                  continue;
               }
               if(§§pop().length == 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push("[empty]");
                     if(_loc2_)
                     {
                        param1 = §§pop();
                        loop2:
                        while(true)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              while(true)
                              {
                                 §0!+§(§>!;§,§"!@§,param1,0);
                                 if(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              return;
                              addr23:
                              addr56:
                           }
                           §§goto(addr23);
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           param1 = §§pop();
                        }
                        addr97:
                     }
                     addr98:
                     while(true)
                     {
                     }
                  }
               }
               §§goto(addr23);
            }
            while(true)
            {
               §§goto(addr97);
            }
         }
         §§goto(addr98);
      }
      
      public static function §=t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §@q§))
         {
            §0!+§(§>!;§,§&4§,param1,0);
         }
      }
      
      public static function §9!F§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §@q§))
         {
            §0!+§(§2g§,§[!?§,param1.toString(),param1);
         }
      }
      
      public static function §2!f§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §0!+§(§`"-§,§[!?§,param1.toString(),param1);
         }
      }
      
      public static function §6!]§(param1:String, param2:Boolean, param3:Boolean, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §§push(param4);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(param4);
                        while(true)
                        {
                           §§push(-1);
                           addr173:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr174:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr175:
                                 while(true)
                                 {
                                    param4 = §§pop();
                                 }
                              }
                           }
                           addr155:
                           if(_loc7_ && param3)
                           {
                              continue;
                           }
                           param5 = §§pop();
                           loop8:
                           for(; _loc6_; if(!(_loc7_ && §@q§))
                           {
                              addr19:
                           },continue,return)
                           {
                              while(true)
                              {
                                 §§push(param2);
                                 loop10:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §0!+§(§`"-§,param1,ACTION_BIRD_BOT_LOST_BY_1,param4);
                                       loop11:
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§push(param3);
                                             if(_loc7_)
                                             {
                                                continue loop10;
                                             }
                                             if(§§pop())
                                             {
                                                if(!(_loc7_ && param2))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      §0!+§(§`"-§,param1,ACTION_BIRD_BOT_BEATEN_BY_2,param5);
                                                      addr57:
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         break;
                                                      }
                                                      addr95:
                                                      addr95:
                                                      while(true)
                                                      {
                                                         §0!+§(§`"-§,param1,ACTION_BIRD_BOT_BEATEN_BY_1,param4);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop12;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §0!+§(§`"-§,param1,ACTION_BIRD_BOT_LOST_BY_2,param5);
                                                if(_loc6_)
                                                {
                                                   break loop10;
                                                }
                                             }
                                             §§goto(addr57);
                                          }
                                          continue loop8;
                                       }
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr19);
                              }
                           }
                           while(true)
                           {
                              addr102:
                              while(true)
                              {
                                 §§push(param5);
                                 if(_loc6_)
                                 {
                                    if(_loc6_ || param2)
                                    {
                                       §§push(0);
                                       if(_loc6_ || param3)
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(param5);
                                                   if(!_loc7_)
                                                   {
                                                      addr131:
                                                      if(_loc7_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr134:
                                                      §§push(§§pop() * -1);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         addr152:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         §§goto(addr155);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr174);
                                                      }
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr92);
                                          }
                                          else
                                          {
                                             §§goto(addr173);
                                          }
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr131);
                              }
                              continue loop1;
                           }
                           addr163:
                           addr176:
                        }
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr102);
               }
            }
         }
         §§goto(addr95);
      }
      
      public static function §@P§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §@q§))
         {
            §0!+§(§@"3§,param1,"",param2);
         }
      }
      
      public static function §+!7§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §0!+§(§,!4§,§[r§,"",param1);
         }
      }
      
      public static function §-!U§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §0!+§(§%"A§,§&!7§,param1,0);
         }
      }
      
      public static function §9!N§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §0!+§(§%"A§,§"!S§,param1,param2);
         }
      }
      
      public static function §"!5§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §0!+§(§%"A§,§&!<§,param1,0);
         }
      }
      
      public static function §6!=§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §0!+§(§<j§,§&!F§,param1,0);
         }
      }
      
      public static function §1[§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §0!+§(§;!K§,param1,"",0,false);
         }
      }
      
      public static function §3!@§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || §@q§)
         {
            §§push(§§findproperty(§0!+§));
            §§push(§>6§);
            §§push(§&"K§ + " - ");
            if(!_loc5_)
            {
               §§push(param2);
               if(!_loc5_)
               {
                  addr44:
                  §§push(§§pop() + §§pop());
                  §§push(param1);
               }
               §§pop().§0!+§(§§pop(),§§pop(),§§pop(),param3,false);
               §§goto(addr48);
            }
            §§goto(addr44);
         }
         addr48:
      }
      
      public static function trackPageView(param1:§4d§, param2:String = null, param3:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(!_loc6_)
         {
            §§push(Boolean(enabled));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     loop18:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push("_/");
                              if(_loc5_)
                              {
                                 §§push(§§pop() + param1.§=,§());
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + "/");
                                 }
                              }
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 while(true)
                                 {
                                    §§push(param2);
                                    while(§§pop())
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc6_ && param3))
                                       {
                                          if(_loc6_)
                                          {
                                             continue;
                                          }
                                          §§push(param2);
                                          if(_loc5_ || param2)
                                          {
                                             §§push(§§pop() + §§pop());
                                             loop7:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                addr143:
                                                while(true)
                                                {
                                                   addr39:
                                                   while(true)
                                                   {
                                                      §§push(param3);
                                                      if(_loc5_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      addr101:
                                                      if(_loc5_ || param3)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            loop10:
                                                            while(!(_loc6_ && param2))
                                                            {
                                                               while(true)
                                                               {
                                                                  §'"+§.§'!#§(§4H§,_loc4_);
                                                                  if(_loc5_ || param2)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               return;
                                                            }
                                                            continue loop3;
                                                            addr111:
                                                         }
                                                         else
                                                         {
                                                            addr150:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1.§8"3§());
                                                            addr152:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         continue loop3;
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             addr142:
                                          }
                                          §§goto(addr152);
                                       }
                                       §§goto(addr142);
                                    }
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr150);
                                          §§push(_loc4_);
                                       }
                                       else
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             §§push(§4!,§);
                                             if(!_loc5_)
                                             {
                                                continue loop18;
                                             }
                                             if(_loc5_ || param1)
                                             {
                                                continue loop0;
                                             }
                                             addr210:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr22);
                     }
                  }
                  addr192:
               }
               §§goto(addr210);
            }
         }
         §§goto(addr162);
      }
      
      public static function trackTransaction(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc9_:Object = null;
         if(!_loc10_)
         {
            if(enabled)
            {
               addr24:
               (_loc9_ = new Object())["orderId"] = param1;
               if(!_loc10_)
               {
                  _loc9_["shopName"] = param2;
                  while(true)
                  {
                     _loc9_["sku"] = param3;
                     loop1:
                     while(true)
                     {
                        _loc9_["name"] = param4;
                        loop2:
                        while(true)
                        {
                           _loc9_["category"] = param5;
                           while(true)
                           {
                              _loc9_["price"] = param6;
                              while(true)
                              {
                                 _loc9_["quantity"] = param7;
                                 while(true)
                                 {
                                    _loc9_["tax"] = param8;
                                    addr106:
                                    while(!(_loc10_ && §@q§))
                                    {
                                       continue loop2;
                                    }
                                 }
                                 addr58:
                                 while(!(_loc10_ && param1))
                                 {
                                    continue loop1;
                                 }
                              }
                              addr93:
                              while(_loc11_ || §@q§)
                              {
                                 _loc9_["state"] = §6r§;
                                 while(!_loc10_)
                                 {
                                    while(true)
                                    {
                                       _loc9_["country"] = §+!j§;
                                       §§goto(addr58);
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
                  §'"+§.§'!#§(§=X§,_loc9_);
                  if(!(_loc10_ && §@q§))
                  {
                     if(_loc11_)
                     {
                        if(_loc11_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr53);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr58);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public static function trackTransactionItems(param1:String, param2:String, param3:String, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:Object = null;
         if(_loc6_ || param2)
         {
            if(enabled)
            {
               addr28:
               (_loc5_ = new Object())["orderId"] = param1;
               if(!_loc7_)
               {
                  _loc5_["shopName"] = param2;
                  loop0:
                  while(true)
                  {
                     _loc5_["category"] = param3;
                     addr110:
                     while(true)
                     {
                        _loc5_["city"] = §[6§;
                        continue loop0;
                     }
                  }
               }
               loop3:
               while(true)
               {
                  addr68:
                  while(true)
                  {
                     _loc5_["country"] = §+!j§;
                     while(_loc6_)
                     {
                        §'"+§.§'!#§(§&"Y§,_loc5_,param4);
                        if(!_loc7_)
                        {
                           continue loop3;
                        }
                     }
                     §§goto(addr110);
                  }
               }
            }
            §§goto(addr116);
         }
         §§goto(addr28);
      }
      
      private static function §0!+§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(_loc8_)
         {
            if(enabled)
            {
               if(_loc8_ || param3)
               {
                  §§push(§6V§);
                  while(true)
                  {
                     _loc6_ = §§pop();
                     addr75:
                     if(!(_loc8_ || §@q§))
                     {
                        continue;
                     }
                     addr83:
                     _loc6_ = §§pop();
                     loop3:
                     while(!_loc7_)
                     {
                        while(true)
                        {
                           trackSampledEvent(_loc6_,param1,param2,param3,param4);
                           if(!_loc8_)
                           {
                              continue loop3;
                           }
                           addr47:
                           if(_loc8_ || param2)
                           {
                              break;
                           }
                           addr58:
                           while(true)
                           {
                              §§push(§[!;§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                              if(_loc8_)
                              {
                                 §§goto(addr75);
                              }
                              §§goto(addr83);
                              §§goto(addr47);
                           }
                        }
                        return;
                     }
                     while(true)
                     {
                        if(param5)
                        {
                           §§goto(addr58);
                        }
                        §§goto(addr27);
                     }
                     addr99:
                  }
               }
               §§goto(addr99);
            }
         }
         §§goto(addr23);
      }
      
      private static function §[!;§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(param1);
               addr76:
               addr79:
               while(§§pop().indexOf(§§pop()) < 0)
               {
                  continue loop0;
               }
               addr79:
               return TRACKING_FUNCTION_1_PERCENT;
            }
         }
         §§goto(addr67);
      }
      
      private static function §3U§(param1:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         if(!_loc7_)
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§push(§§pop() == null);
               if(!_loc7_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        addr38:
                        §§pop();
                        §§goto(addr50);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        return null;
                     }
                     §§goto(addr50);
                  }
                  addr50:
                  if(_loc8_)
                  {
                     addr42:
                     §§push(param1.length == 0);
                  }
                  var _loc2_:* = "";
                  var _loc3_:Array = param1.concat();
                  if(_loc8_ || _loc3_)
                  {
                     _loc3_.sort();
                  }
                  var _loc5_:int = 0;
                  var _loc6_:* = _loc3_;
                  loop0:
                  while(§§hasnext(_loc6_,_loc5_))
                  {
                     §§push(§§nextvalue(_loc5_,_loc6_));
                     while(true)
                     {
                        _loc4_ = §§pop();
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc2_);
                              while(true)
                              {
                                 if(§§pop().length > 0)
                                 {
                                    break loop2;
                                 }
                                 §§push(_loc4_);
                                 if(_loc8_)
                                 {
                                    if(!(_loc8_ || _loc3_))
                                    {
                                       addr163:
                                       _loc2_ = §§pop();
                                       break;
                                    }
                                    §§push(§§pop());
                                 }
                                 if(_loc8_ || _loc2_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc8_ || §@q§))
                                    {
                                       break;
                                    }
                                    if(_loc7_ && _loc2_)
                                    {
                                       break loop3;
                                    }
                                    if(false)
                                    {
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                              }
                              addr164:
                              continue loop0;
                           }
                        }
                        if(!_loc7_)
                        {
                           §§push(_loc2_);
                           if(!(_loc7_ && _loc3_))
                           {
                              continue;
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr164);
                     }
                  }
                  return _loc2_;
               }
               §§goto(addr38);
            }
            §§goto(addr42);
         }
         §§goto(addr38);
      }
      
      private static function §!!m§(param1:int = 0) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(getTimer() / 1000);
         if(_loc2_)
         {
            return §§pop() - param1;
         }
      }
   }
}
