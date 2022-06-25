package §7p§
{
   import §6!a§.§"!F§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §+!N§ extends GoogleAnalyticsTracker
   {
      
      private static const DEBUG_MODE:Boolean;
      
      private static const CATEGORY_POWERUP_USED:String = "powerup-used";
      
      private static const CATEGORY_LEVEL_POWERUP_USED:String = "level-powerup-used";
      
      private static const CATEGORY_POWERUP_LEVEL_COMPLETED:String;
      
      private static const CATEGORY_LEVEL_POWERUP_COMPLETED:String;
      
      private static const CATEGORY_FRAMERATE:String = "framerate";
      
      private static const CATEGORY_EXTERNAL_PAUSE:String = "external-pause";
      
      private static const CATEGORY_GIFT:String = "gift";
      
      private static const CATEGORY_SHOP:String = "shop";
      
      private static const CATEGORY_BRAG:String = "brag";
      
      private static const CATEGORY_INVITE:String = "invite";
      
      private static const CATEGORY_AVATAR:String = "avatar";
      
      private static const CATEGORY_WARNING:String = "warning";
      
      private static const CATEGORY_USER_STATISTICS:String = "user-statistics";
      
      private static const CATEGORY_ERROR:String = "error";
      
      private static const ACTION_EXTERNAL_PAUSED:String = "paused";
      
      private static const ACTION_EXTERNAL_RESUMED:String = "resumed";
      
      private static const ACTION_GIFT_CLAIMED:String = "gift-claimed";
      
      private static const ACTION_CAMPAIGN_GIFT_CLAIMED:String = "campaign-gift-claimed";
      
      private static const ACTION_SHOP_OPEN:String = "opened";
      
      private static const ACTION_SHOP_PRODUCT_SELECTED:String = "product-selected";
      
      private static const ACTION_SHOP_PRODUCT_BUY_SELECTED:String = "product-buy-selected";
      
      private static const ACTION_SHOP_PRODUCT_BUY_COMPLETED:String = "product-buy-completed";
      
      private static const ACTION_BRAG_SHOWN:String = "brag-shown";
      
      private static const ACTION_BRAG_CLICKED:String = "brag-clicked";
      
      private static const ACTION_INVITE_FRIEND_CLICKED:String = "friend-clicked";
      
      private static const ACTION_INVITE_GENERIC_CLICKED:String = "generic-clicked";
      
      private static const ACTION_AVATAR_OPEN:String = "opened";
      
      private static const ACTION_AVATAR_SET:String = "set";
      
      private static const ACTION_AVATAR_PRODUCT_SET:String = "product-set";
      
      private static const ACTION_AVATAR_PRODUCT_BUY_SELECTED:String = "product-buy-selected";
      
      private static const ACTION_AVATAR_PRODUCT_BUY_COMPLETED:String = "product-buy-completed";
      
      private static const ACTION_AVATAR_SHARE_CLICKED:String = "share-clicked";
      
      private static const ACTION_AVATAR_SHARE_COMPLETED:String = "share-completed";
      
      private static const ACTION_GPU_FPS_FULL_SCREEN_REPORT:String;
      
      private static const ACTION_CPU_FPS_FULL_SCREEN_REPORT:String;
      
      private static const ACTION_WARNING_DOWNLOAD_FAILED:String = "download-failed";
      
      private static const ACTION_WARNING_3RD_PARTY_COOKIES_DISABLED:String = "3rd-party-cookies-missing";
      
      private static const ACTION_WARNING_INVALID_LEVEL:String = "invalid-level";
      
      private static const ACTION_WARNING_FLASHVAR_MISSING:String = "flash-var-missing";
      
      private static const ACTION_USER_STATISTIC_FRIEND_COUNT:String = "friend-count";
      
      private static const ACTION_ADVERTISEMENT_CLICK:String = "advertisement-click";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var sLevelsReportedFPS:Array;
      
      private static var sGiftsClaimed:int = 0;
      
      private static var sExternalPauses:int = 0;
      
      private static var sExternalPauseStart:int = 0;
      
      private static var sPreviousPowerupUseTime:int = 0;
      
      {
         var DEBUG_MODE:Boolean = true;
         var CATEGORY_POWERUP_USED:Boolean = false;
         if(!(CATEGORY_POWERUP_USED && CATEGORY_POWERUP_USED))
         {
            loop0:
            while(true)
            {
               DEBUG_MODE = AngryBirdsFP11.DEBUG_MODE_ENABLED;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     CATEGORY_POWERUP_USED = "powerup-used";
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           CATEGORY_LEVEL_POWERUP_USED = "level-powerup-used";
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(§§findproperty(CATEGORY_POWERUP_LEVEL_COMPLETED));
                                 §§push("powerup-");
                                 if(!(CATEGORY_POWERUP_USED && §+!N§))
                                 {
                                    §§push(§§pop() + §,H§);
                                 }
                                 §§pop().CATEGORY_POWERUP_LEVEL_COMPLETED = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       CATEGORY_LEVEL_POWERUP_COMPLETED = §,H§ + "-powerup";
                                       while(true)
                                       {
                                          continue loop3;
                                          loop79:
                                          while(DEBUG_MODE || DEBUG_MODE)
                                          {
                                             loop80:
                                             while(true)
                                             {
                                                if(DEBUG_MODE || CATEGORY_POWERUP_USED)
                                                {
                                                   addr503:
                                                   if(DEBUG_MODE || DEBUG_MODE)
                                                   {
                                                      ACTION_USER_STATISTIC_FRIEND_COUNT = "friend-count";
                                                      loop81:
                                                      for(; DEBUG_MODE || CATEGORY_POWERUP_USED; while(!(CATEGORY_POWERUP_USED && §+!N§))
                                                      {
                                                         §§goto(addr335);
                                                         §§goto(addr205);
                                                      })
                                                      {
                                                         if(!CATEGORY_POWERUP_USED)
                                                         {
                                                            loop82:
                                                            while(true)
                                                            {
                                                               if(!CATEGORY_POWERUP_USED)
                                                               {
                                                                  if(DEBUG_MODE)
                                                                  {
                                                                     ACTION_ADVERTISEMENT_CLICK = "advertisement-click";
                                                                     loop83:
                                                                     for(; DEBUG_MODE || DEBUG_MODE; while(true)
                                                                     {
                                                                        if(!(CATEGORY_POWERUP_USED && CATEGORY_POWERUP_USED))
                                                                        {
                                                                           if(DEBUG_MODE)
                                                                           {
                                                                              §§goto(addr411);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop83;
                                                                        §§goto(addr46);
                                                                     },§§goto(addr947))
                                                                     {
                                                                        loop84:
                                                                        while(true)
                                                                        {
                                                                           if(DEBUG_MODE)
                                                                           {
                                                                              addr443:
                                                                              if(!(DEBUG_MODE || DEBUG_MODE))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              SAMPLE_1_PERCENT_FLASH_ACTIONS = [§=!?§,§,H§];
                                                                              continue loop83;
                                                                           }
                                                                           addr530:
                                                                           while(true)
                                                                           {
                                                                              addr525:
                                                                              while(true)
                                                                              {
                                                                                 ACTION_WARNING_FLASHVAR_MISSING = "flash-var-missing";
                                                                                 continue loop79;
                                                                              }
                                                                           }
                                                                           addr212:
                                                                           if(!(DEBUG_MODE || CATEGORY_POWERUP_USED))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           sLevelsReportedFPS = [];
                                                                           loop99:
                                                                           while(!CATEGORY_POWERUP_USED)
                                                                           {
                                                                              loop100:
                                                                              while(DEBUG_MODE || §+!N§)
                                                                              {
                                                                                 addr184:
                                                                                 if(DEBUG_MODE || DEBUG_MODE)
                                                                                 {
                                                                                    if(DEBUG_MODE)
                                                                                    {
                                                                                       if(DEBUG_MODE)
                                                                                       {
                                                                                          sGiftsClaimed = 0;
                                                                                          loop101:
                                                                                          while(DEBUG_MODE || DEBUG_MODE)
                                                                                          {
                                                                                             while(!(CATEGORY_POWERUP_USED && CATEGORY_POWERUP_USED))
                                                                                             {
                                                                                                addr141:
                                                                                                if(DEBUG_MODE || §+!N§)
                                                                                                {
                                                                                                   addr148:
                                                                                                   if(DEBUG_MODE || §+!N§)
                                                                                                   {
                                                                                                      addr155:
                                                                                                      if(DEBUG_MODE || §+!N§)
                                                                                                      {
                                                                                                         sExternalPauses = 0;
                                                                                                         loop103:
                                                                                                         while(DEBUG_MODE)
                                                                                                         {
                                                                                                            if(CATEGORY_POWERUP_USED)
                                                                                                            {
                                                                                                               addr205:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(CATEGORY_POWERUP_USED && DEBUG_MODE)
                                                                                                                  {
                                                                                                                     continue loop81;
                                                                                                                  }
                                                                                                                  §§goto(addr212);
                                                                                                               }
                                                                                                               continue loop84;
                                                                                                               addr205:
                                                                                                            }
                                                                                                            if(!CATEGORY_POWERUP_USED)
                                                                                                            {
                                                                                                               if(CATEGORY_POWERUP_USED)
                                                                                                               {
                                                                                                                  continue loop79;
                                                                                                               }
                                                                                                               addr117:
                                                                                                               if(DEBUG_MODE || CATEGORY_POWERUP_USED)
                                                                                                               {
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               loop67:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr627:
                                                                                                                  loop68:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(DEBUG_MODE || DEBUG_MODE)
                                                                                                                     {
                                                                                                                        if(!CATEGORY_POWERUP_USED)
                                                                                                                        {
                                                                                                                           if(!CATEGORY_POWERUP_USED)
                                                                                                                           {
                                                                                                                              if(!CATEGORY_POWERUP_USED)
                                                                                                                              {
                                                                                                                                 ACTION_GPU_FPS_FULL_SCREEN_REPORT = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
                                                                                                                                 loop69:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(DEBUG_MODE || §+!N§)
                                                                                                                                    {
                                                                                                                                       if(!CATEGORY_POWERUP_USED)
                                                                                                                                       {
                                                                                                                                          if(!CATEGORY_POWERUP_USED)
                                                                                                                                          {
                                                                                                                                             loop70:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(CATEGORY_POWERUP_USED && §+!N§))
                                                                                                                                                {
                                                                                                                                                   ACTION_CPU_FPS_FULL_SCREEN_REPORT = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
                                                                                                                                                   break loop99;
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                                loop93:
                                                                                                                                                while(DEBUG_MODE || §+!N§)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(CATEGORY_POWERUP_USED)
                                                                                                                                                      {
                                                                                                                                                         continue loop93;
                                                                                                                                                      }
                                                                                                                                                      addr276:
                                                                                                                                                      if(!(CATEGORY_POWERUP_USED && DEBUG_MODE))
                                                                                                                                                      {
                                                                                                                                                         addr283:
                                                                                                                                                         if(DEBUG_MODE || §+!N§)
                                                                                                                                                         {
                                                                                                                                                            if(!DEBUG_MODE)
                                                                                                                                                            {
                                                                                                                                                               addr264:
                                                                                                                                                               break;
                                                                                                                                                               addr264:
                                                                                                                                                            }
                                                                                                                                                            sSample10Percent = false;
                                                                                                                                                            loop95:
                                                                                                                                                            while(DEBUG_MODE || §+!N§)
                                                                                                                                                            {
                                                                                                                                                               loop96:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!CATEGORY_POWERUP_USED)
                                                                                                                                                                  {
                                                                                                                                                                     addr245:
                                                                                                                                                                     if(!(CATEGORY_POWERUP_USED && §+!N§))
                                                                                                                                                                     {
                                                                                                                                                                        addr252:
                                                                                                                                                                        if(CATEGORY_POWERUP_USED && CATEGORY_POWERUP_USED)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        sSample1Percent = false;
                                                                                                                                                                        loop97:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!CATEGORY_POWERUP_USED)
                                                                                                                                                                           {
                                                                                                                                                                              addr226:
                                                                                                                                                                              if(!(DEBUG_MODE || §+!N§))
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop0;
                                                                                                                                                                           }
                                                                                                                                                                           addr335:
                                                                                                                                                                           loop90:
                                                                                                                                                                           while(!CATEGORY_POWERUP_USED)
                                                                                                                                                                           {
                                                                                                                                                                              SAMPLE_100_PERCENT_CATEGORIES = [CATEGORY_ERROR];
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!CATEGORY_POWERUP_USED)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr325:
                                                                                                                                                                                    if(!(CATEGORY_POWERUP_USED && DEBUG_MODE))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr848:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!CATEGORY_POWERUP_USED)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr309:
                                                                                                                                                                                             if(!(DEBUG_MODE || DEBUG_MODE))
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             FULL_SCREEN = "-full-screen";
                                                                                                                                                                                             continue loop93;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr525);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          ACTION_CAMPAIGN_GIFT_CLAIMED = "campaign-gift-claimed";
                                                                                                                                                                                          addr845:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop80;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr309);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr848:
                                                                                                                                                                                       addr307:
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr864:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    ACTION_EXTERNAL_RESUMED = "resumed";
                                                                                                                                                                                    addr861:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr856:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          ACTION_GIFT_CLAIMED = "gift-claimed";
                                                                                                                                                                                          addr853:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr848);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       break loop99;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr276);
                                                                                                                                                                              }
                                                                                                                                                                              loop20:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 CATEGORY_INVITE = "invite";
                                                                                                                                                                                 loop21:
                                                                                                                                                                                 for(; DEBUG_MODE; if(!(DEBUG_MODE || §+!N§))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 },ACTION_AVATAR_OPEN = "opened",while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr742:
                                                                                                                                                                                    while(DEBUG_MODE)
                                                                                                                                                                                    {
                                                                                                                                                                                       ACTION_AVATAR_SET = "set";
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr734);
                                                                                                                                                                                          continue loop80;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr816:
                                                                                                                                                                                    addr413:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       ACTION_SHOP_PRODUCT_BUY_COMPLETED = "product-buy-completed";
                                                                                                                                                                                       break loop70;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(DEBUG_MODE || DEBUG_MODE))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§3!7§,§#-§];
                                                                                                                                                                                    while(!(CATEGORY_POWERUP_USED && DEBUG_MODE))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(DEBUG_MODE)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop95;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr686);
                                                                                                                                                                                       §§goto(addr245);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop96;
                                                                                                                                                                                       §§goto(addr399);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr399:
                                                                                                                                                                                 })
                                                                                                                                                                                 {
                                                                                                                                                                                    loop22:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       CATEGORY_AVATAR = "avatar";
                                                                                                                                                                                       loop23:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr903:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             CATEGORY_WARNING = "warning";
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop90;
                                                                                                                                                                                                loop60:
                                                                                                                                                                                                for(; !(CATEGORY_POWERUP_USED && §+!N§); if(!(DEBUG_MODE || §+!N§))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                },if(CATEGORY_POWERUP_USED && §+!N§)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                },ACTION_WARNING_3RD_PARTY_COOKIES_DISABLED = "3rd-party-cookies-missing",while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop83;
                                                                                                                                                                                                })
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(CATEGORY_POWERUP_USED)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop4;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   ACTION_AVATAR_PRODUCT_BUY_SELECTED = ACTION_SHOP_PRODUCT_BUY_SELECTED;
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!CATEGORY_POWERUP_USED)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr698:
                                                                                                                                                                                                         if(!(CATEGORY_POWERUP_USED && §+!N§))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr705:
                                                                                                                                                                                                            if(CATEGORY_POWERUP_USED && CATEGORY_POWERUP_USED)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr686:
                                                                                                                                                                                                               break;
                                                                                                                                                                                                               addr686:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(!CATEGORY_POWERUP_USED)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(DEBUG_MODE)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  ACTION_AVATAR_PRODUCT_BUY_COMPLETED = ACTION_SHOP_PRODUCT_BUY_COMPLETED;
                                                                                                                                                                                                                  break loop97;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop23;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            ACTION_BRAG_CLICKED = "brag-clicked";
                                                                                                                                                                                                            addr791:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!CATEGORY_POWERUP_USED)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop81;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop7;
                                                                                                                                                                                                            §§goto(addr698);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr796:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr776:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         ACTION_INVITE_GENERIC_CLICKED = "generic-clicked";
                                                                                                                                                                                                         addr773:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr752:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(DEBUG_MODE)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr754:
                                                                                                                                                                                                                  if(DEBUG_MODE || CATEGORY_POWERUP_USED)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop21;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr869:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr864);
                                                                                                                                                                                                                     §§goto(addr754);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                               §§goto(addr148);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr829:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop68;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(DEBUG_MODE)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         ACTION_BRAG_SHOWN = "brag-shown";
                                                                                                                                                                                                         break loop69;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                      §§goto(addr705);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      CATEGORY_SHOP = "shop";
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr931:
                                                                                                                                                                                                         addr670:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            CATEGORY_BRAG = "brag";
                                                                                                                                                                                                            addr926:
                                                                                                                                                                                                            while(DEBUG_MODE)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop20;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop6;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr670:
                                                                                                                                                                                                         while(!(CATEGORY_POWERUP_USED && §+!N§))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            ACTION_AVATAR_SHARE_CLICKED = "share-clicked";
                                                                                                                                                                                                            while(DEBUG_MODE || DEBUG_MODE)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(DEBUG_MODE || CATEGORY_POWERUP_USED)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  ACTION_AVATAR_SHARE_COMPLETED = "share-completed";
                                                                                                                                                                                                                  continue loop67;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(DEBUG_MODE)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr776);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                  §§goto(addr648);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr648:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  ACTION_SHOP_PRODUCT_SELECTED = "product-selected";
                                                                                                                                                                                                                  §§goto(addr829);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               ACTION_AVATAR_PRODUCT_SET = "product-set";
                                                                                                                                                                                                               addr729:
                                                                                                                                                                                                               while(DEBUG_MODE)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop60;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr926);
                                                                                                                                                                                                               §§goto(addr660);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr660:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr955:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    CATEGORY_EXTERNAL_PAUSE = "external-pause";
                                                                                                                                                                                    addr952:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr947:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          CATEGORY_GIFT = "gift";
                                                                                                                                                                                          addr944:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr939);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              CATEGORY_USER_STATISTICS = "user-statistics";
                                                                                                                                                                              break loop84;
                                                                                                                                                                           }
                                                                                                                                                                           addr83:
                                                                                                                                                                           if(CATEGORY_POWERUP_USED && §+!N§)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           addr90:
                                                                                                                                                                           if(DEBUG_MODE || CATEGORY_POWERUP_USED)
                                                                                                                                                                           {
                                                                                                                                                                              loop106:
                                                                                                                                                                              while(!CATEGORY_POWERUP_USED)
                                                                                                                                                                              {
                                                                                                                                                                                 if(CATEGORY_POWERUP_USED && DEBUG_MODE)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop83;
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       sPreviousPowerupUseTime = 0;
                                                                                                                                                                                       if(!(DEBUG_MODE || DEBUG_MODE))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop106;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!CATEGORY_POWERUP_USED)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr821:
                                                                                                                                                                                       addr821:
                                                                                                                                                                                       loop105:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(DEBUG_MODE || §+!N§)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(CATEGORY_POWERUP_USED)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop103;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr83);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(DEBUG_MODE)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!DEBUG_MODE)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   sExternalPauseStart = 0;
                                                                                                                                                                                                   continue loop105;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr660);
                                                                                                                                                                                                continue loop105;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr729);
                                                                                                                                                                                             addr100:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr816);
                                                                                                                                                                                          §§goto(addr90);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop69;
                                                                                                                                                                                 return;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop100;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr821);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr670);
                                                                                                                                                                           §§goto(addr226);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr399);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr686);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr307);
                                                                                                                                                                  §§goto(addr141);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(DEBUG_MODE)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr545);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr696);
                                                                                                                                                                  §§goto(addr252);
                                                                                                                                                               }
                                                                                                                                                               continue loop3;
                                                                                                                                                            }
                                                                                                                                                            continue loop82;
                                                                                                                                                         }
                                                                                                                                                         addr411:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(CATEGORY_POWERUP_USED)
                                                                                                                                                            {
                                                                                                                                                               continue loop80;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr413);
                                                                                                                                                            §§goto(addr283);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr749);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr323);
                                                                                                                                                      §§goto(addr184);
                                                                                                                                                   }
                                                                                                                                                   while(DEBUG_MODE || DEBUG_MODE)
                                                                                                                                                   {
                                                                                                                                                      if(CATEGORY_POWERUP_USED)
                                                                                                                                                      {
                                                                                                                                                         continue loop5;
                                                                                                                                                      }
                                                                                                                                                      ACTION_WARNING_DOWNLOAD_FAILED = "download-failed";
                                                                                                                                                      §§goto(addr564);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      CATEGORY_ERROR = "error";
                                                                                                                                                      break loop101;
                                                                                                                                                      §§goto(addr567);
                                                                                                                                                   }
                                                                                                                                                   addr567:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr806);
                                                                                                                                                §§goto(addr597);
                                                                                                                                             }
                                                                                                                                             addr597:
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr791);
                                                                                                                                    }
                                                                                                                                    §§goto(addr742);
                                                                                                                                 }
                                                                                                                                 while(!CATEGORY_POWERUP_USED)
                                                                                                                                 {
                                                                                                                                    §§goto(addr796);
                                                                                                                                 }
                                                                                                                                 §§goto(addr903);
                                                                                                                              }
                                                                                                                              §§goto(addr952);
                                                                                                                           }
                                                                                                                           §§goto(addr853);
                                                                                                                        }
                                                                                                                        §§goto(addr845);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                     if(CATEGORY_POWERUP_USED && DEBUG_MODE)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(!CATEGORY_POWERUP_USED)
                                                                                                                     {
                                                                                                                        §§goto(addr69);
                                                                                                                     }
                                                                                                                     §§goto(addr773);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     ACTION_SHOP_PRODUCT_BUY_SELECTED = "product-buy-selected";
                                                                                                                     §§goto(addr821);
                                                                                                                     §§goto(addr627);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr264);
                                                                                                            }
                                                                                                            §§goto(addr848);
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   §§goto(addr752);
                                                                                                }
                                                                                                §§goto(addr243);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr872);
                                                                                             §§goto(addr167);
                                                                                          }
                                                                                          addr167:
                                                                                       }
                                                                                       §§goto(addr856);
                                                                                    }
                                                                                    §§goto(addr540);
                                                                                 }
                                                                                 §§goto(addr274);
                                                                              }
                                                                           }
                                                                           while(!(CATEGORY_POWERUP_USED && DEBUG_MODE))
                                                                           {
                                                                              if(!CATEGORY_POWERUP_USED)
                                                                              {
                                                                                 §§goto(addr567);
                                                                              }
                                                                              §§goto(addr931);
                                                                           }
                                                                           §§goto(addr861);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr887);
                                                                           §§goto(addr443);
                                                                        }
                                                                     }
                                                                     while(DEBUG_MODE)
                                                                     {
                                                                        ACTION_WARNING_INVALID_LEVEL = "invalid-level";
                                                                        §§goto(addr530);
                                                                        §§goto(addr455);
                                                                     }
                                                                     addr455:
                                                                     §§goto(addr670);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr648);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr832);
                                                            }
                                                            addr837:
                                                         }
                                                         §§goto(addr944);
                                                      }
                                                      while(true)
                                                      {
                                                         ACTION_INVITE_FRIEND_CLICKED = "friend-clicked";
                                                         §§goto(addr781);
                                                         §§goto(addr474);
                                                      }
                                                      addr474:
                                                   }
                                                   break;
                                                }
                                                §§goto(addr739);
                                             }
                                             while(true)
                                             {
                                                ACTION_SHOP_OPEN = "opened";
                                                §§goto(addr837);
                                                §§goto(addr503);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(!(DEBUG_MODE || DEBUG_MODE))
                     {
                        continue;
                     }
                     SAMPLE_1_PERCENT_CATEGORIES = [CATEGORY_POWERUP_USED,CATEGORY_LEVEL_POWERUP_USED,CATEGORY_POWERUP_LEVEL_COMPLETED,CATEGORY_LEVEL_POWERUP_COMPLETED,CATEGORY_FRAMERATE,CATEGORY_EXTERNAL_PAUSE,CATEGORY_GIFT,CATEGORY_SHOP,CATEGORY_BRAG,CATEGORY_INVITE,CATEGORY_AVATAR];
                     §§goto(addr364);
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §+!N§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               while(!_loc2_)
               {
               }
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public static function §@d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               if(Math.random() <= 0.1)
               {
                  loop1:
                  while(true)
                  {
                     addr115:
                     while(true)
                     {
                        sSample10Percent = true;
                        addr105:
                        addr107:
                        while(!_loc2_)
                        {
                           continue loop1;
                        }
                        while(!_loc2_)
                        {
                           §§goto(addr105);
                           §§goto(addr107);
                        }
                        addr100:
                     }
                  }
               }
               while(true)
               {
                  if(Math.random() <= 0.01)
                  {
                     loop3:
                     while(true)
                     {
                        while(_loc2_ || §+!N§)
                        {
                           sSample1Percent = true;
                           while(!(_loc1_ && _loc1_))
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 continue loop3;
                              }
                           }
                        }
                        §§goto(addr107);
                     }
                  }
                  break;
                  §§goto(addr100);
               }
               return;
            }
         }
         §§goto(addr115);
      }
      
      public static function §+!X§(errorID:int, time:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc4_ || urlLoader)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        trace("Client error: " + errorID);
                        while(true)
                        {
                           while(_loc4_)
                           {
                              continue loop1;
                              while(true)
                              {
                                 §1`§(GoogleAnalyticsTracker.ACTION_APPLICATION_CRASH,errorID.toString(),time);
                                 while(_loc5_)
                                 {
                                 }
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 if(_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       if(true)
                                       {
                                          var urlLoader:URLLoader = new URLLoader();
                                          if(_loc4_)
                                          {
                                             do
                                             {
                                                urlLoader.load(§"!F§.§=i§(AngryBirdsFP11.SERVER_ROOT + "/clienterror/" + errorID));
                                                while(_loc5_)
                                                {
                                                }
                                             }
                                             while(_loc5_);
                                             
                                          }
                                       }
                                       continue;
                                       return;
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc5_ && urlLoader)
               {
                  continue;
               }
               while(true)
               {
                  §§goto(addr40);
               }
               addr79:
            }
         }
         §§goto(addr79);
      }
      
      public static function §1`§(action:String, label:String = null, value:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               addr64:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr37);
         }
         §§push(§4z§(action,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(_loc6_ || label)
         {
            §§push(§§pop());
         }
         var trackingFunction:* = §§pop();
         if(_loc6_ || value)
         {
            do
            {
               GoogleAnalyticsTracker.trackSampledEvent(trackingFunction,§"!^§,action,label,value);
               while(!(_loc6_ || action))
               {
               }
            }
            while(!_loc6_);
            
         }
      }
      
      public static function §!!'§(powerupType:String, level:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!(_loc4_ && level))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  addr42:
                  while(true)
                  {
                     addr44:
                     while(!_loc4_)
                     {
                     }
                     continue loop1;
                  }
               }
               addr33:
               if(!(_loc5_ || time))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr42);
               }
               addr52:
               §§push(§+!2§());
               if(_loc5_ || powerupType)
               {
                  §§push(int(§§pop()));
               }
               var time:* = §§pop();
               if(_loc5_ || level)
               {
                  loop5:
                  while(true)
                  {
                     §;6§(CATEGORY_POWERUP_USED,powerupType,level,0);
                     while(true)
                     {
                        loop7:
                        while(_loc5_ || powerupType)
                        {
                           while(true)
                           {
                              §;6§(CATEGORY_LEVEL_POWERUP_USED,level,powerupType,0);
                              while(!_loc5_)
                              {
                              }
                              if(_loc5_ || powerupType)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              continue loop7;
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr128);
            }
         }
         while(true)
         {
            if(_loc5_)
            {
               §§goto(addr33);
            }
            §§goto(addr44);
         }
         §§goto(addr52);
      }
      
      public static function §'%§(powerupsUsed:Array, level:String, score:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         var action:* = null;
         if(!(_loc6_ && level))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        if(enabled)
                        {
                           loop4:
                           while(true)
                           {
                              addr192:
                              addr139:
                              while(true)
                              {
                                 continue loop2;
                              }
                              loop9:
                              while(true)
                              {
                                 if(!(_loc5_ || score))
                                 {
                                    continue loop4;
                                 }
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 addr148:
                                 §§push(action);
                                 if(!(_loc6_ && §+!N§))
                                 {
                                    if(!§§pop())
                                    {
                                       return;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop9;
                                       }
                                       if(!(_loc5_ || level))
                                       {
                                          continue loop1;
                                       }
                                       if(_loc6_ && level)
                                       {
                                          break;
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          §;6§(CATEGORY_POWERUP_LEVEL_COMPLETED,action,level,score);
                                          while(_loc5_ || §+!N§)
                                          {
                                             while(_loc5_ || score)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §;6§(CATEGORY_LEVEL_POWERUP_COMPLETED,level,action,score);
                                                   while(_loc6_ && powerupsUsed)
                                                   {
                                                   }
                                                   if(_loc5_ || score)
                                                   {
                                                      continue loop11;
                                                   }
                                                   continue;
                                                   continue;
                                                }
                                                continue loop10;
                                             }
                                          }
                                          §§goto(addr192);
                                       }
                                    }
                                    continue loop2;
                                    addr31:
                                 }
                                 else
                                 {
                                    addr156:
                                 }
                                 while(true)
                                 {
                                    action = §§pop();
                                    continue loop1;
                                    §§goto(addr148);
                                 }
                              }
                              continue loop3;
                           }
                        }
                        else
                        {
                           §§goto(addr31);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      public static function §2!,§(frameRate:int, levelId:String, isSoftware:Boolean, isFullScreen:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_)
         {
         }
         var reportType:* = null;
         if(!(_loc7_ && isSoftware))
         {
            loop36:
            while(true)
            {
               addr100:
               while(_loc7_)
               {
                  continue loop36;
               }
               loop2:
               while(true)
               {
                  addr94:
                  addr88:
                  while(true)
                  {
                     while(_loc7_)
                     {
                     }
                     if(_loc8_ || isSoftware)
                     {
                        break;
                     }
                     continue loop2;
                  }
                  while(true)
                  {
                     §§push(sLevelsReportedFPS);
                     if(_loc8_ || levelId)
                     {
                        if(§§pop().indexOf(levelId) < 0)
                        {
                           addr106:
                           §§push(sLevelsReportedFPS);
                           break;
                        }
                        if(_loc8_)
                        {
                           if(!(_loc7_ && §+!N§))
                           {
                              return;
                           }
                           §§goto(addr100);
                        }
                        else
                        {
                           §§goto(addr94);
                        }
                     }
                     break;
                     §§goto(addr88);
                  }
                  §§push(§§pop().length == 0);
                  if(!_loc7_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  var isFirstReport:* = §§pop();
                  if(_loc8_)
                  {
                     loop5:
                     while(true)
                     {
                        sLevelsReportedFPS.push(levelId);
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(isSoftware);
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    continue loop6;
                                 }
                                 §§push(GoogleAnalyticsTracker.ACTION_GPU_FPS_REPORT);
                                 loop9:
                                 while(true)
                                 {
                                    reportType = §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§push(isFullScreen);
                                          loop12:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             if(!_loc7_)
                                             {
                                                if(!(_loc7_ && §+!N§))
                                                {
                                                   loop21:
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§+!N§.ACTION_GPU_FPS_FULL_SCREEN_REPORT);
                                                         if(_loc8_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop());
                                                         }
                                                         if(_loc8_)
                                                         {
                                                            addr270:
                                                            if(_loc8_ || isSoftware)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  reportType = §§pop();
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           continue loop12;
                                                                           addr200:
                                                                           if(_loc7_ && §+!N§)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc7_ && levelId)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              addr146:
                                                                              loop32:
                                                                              while(true)
                                                                              {
                                                                                 §;6§(CATEGORY_FRAMERATE,reportType,levelId,frameRate);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_ || levelId)
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    loop30:
                                                                                    while(!_loc7_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc8_ || §+!N§))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   break loop30;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop11;
                                                                                             addr250:
                                                                                          }
                                                                                          §§goto(addr200);
                                                                                          addr131:
                                                                                          if(_loc8_ || levelId)
                                                                                          {
                                                                                             break loop32;
                                                                                          }
                                                                                       }
                                                                                       continue loop23;
                                                                                    }
                                                                                    while(_loc8_)
                                                                                    {
                                                                                       §1`§(reportType,frameRate.toString(),frameRate);
                                                                                       §§goto(addr223);
                                                                                    }
                                                                                    addr223:
                                                                                    continue loop22;
                                                                                    addr190:
                                                                                    if(_loc7_ && frameRate)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr131);
                                                                                 }
                                                                                 addr364:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(GoogleAnalyticsTracker.ACTION_CPU_FPS_REPORT);
                                                                                    addr351:
                                                                                    while(true)
                                                                                    {
                                                                                       reportType = §§pop();
                                                                                       addr352:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr351);
                                                               }
                                                               §§goto(addr352);
                                                            }
                                                            else
                                                            {
                                                               addr316:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  §§goto(addr270);
                                                               }
                                                               addr316:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            reportType = §§pop();
                                                            addr318:
                                                            while(true)
                                                            {
                                                               addr302:
                                                               while(true)
                                                               {
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr364);
                                                      }
                                                      §§goto(addr351);
                                                   }
                                                   continue loop9;
                                                   addr296:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr323);
                                                   }
                                                   addr322:
                                                }
                                                §§goto(addr316);
                                             }
                                             §§goto(addr296);
                                          }
                                       }
                                    }
                                 }
                                 if(_loc7_ && §+!N§)
                                 {
                                    continue;
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr250);
                                 }
                                 §§goto(addr146);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr214);
               }
            }
         }
         else if(false)
         {
            §§goto(addr88);
         }
         §§goto(addr106);
      }
      
      public static function §++§(id:String, count:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && §+!N§)
         {
         }
         if(!(_loc6_ && §+!N§))
         {
            if(!(_loc6_ && _loc3_))
            {
               loop0:
               while(true)
               {
                  loop1:
                  while(!_loc6_)
                  {
                     if(_loc6_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        if(true)
                        {
                           var _loc3_:*;
                           §§push((_loc3_ = §§findproperty(sGiftsClaimed)).sGiftsClaimed);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc4_:* = §§pop();
                           if(!_loc6_)
                           {
                              _loc3_.sGiftsClaimed = _loc4_;
                           }
                        }
                        continue loop0;
                        if(!_loc6_)
                        {
                           while(true)
                           {
                              §;6§(CATEGORY_GIFT,ACTION_GIFT_CLAIMED,id,count);
                              while(!(_loc6_ && §+!N§))
                              {
                                 if(_loc5_)
                                 {
                                    break loop1;
                                 }
                              }
                           }
                           addr95:
                        }
                        break loop1;
                     }
                  }
                  return;
               }
            }
            §§goto(addr95);
         }
         §§goto(addr39);
      }
      
      public static function §1"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(!_loc1_)
         {
            while(true)
            {
               §;6§(CATEGORY_GIFT,ACTION_CAMPAIGN_GIFT_CLAIMED,null,0);
               loop1:
               while(_loc2_ || §+!N§)
               {
                  while(!(_loc2_ || _loc1_))
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      public static function §[!A§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && _loc2_))
         {
            if(!_loc4_)
            {
               var _loc1_:*;
               §§push((_loc1_ = §§findproperty(sExternalPauses)).sExternalPauses);
               if(_loc3_ || _loc1_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc2_:* = §§pop();
               if(_loc3_)
               {
                  _loc1_.sExternalPauses = _loc2_;
               }
               if(!(_loc4_ && §+!N§))
               {
                  addr127:
                  while(true)
                  {
                     sExternalPauseStart = §+!2§();
                     addr125:
                     while(true)
                     {
                     }
                  }
                  addr127:
               }
               loop0:
               while(true)
               {
                  §;6§(CATEGORY_EXTERNAL_PAUSE,ACTION_EXTERNAL_PAUSED,sExternalPauses.toString(),sExternalPauseStart);
                  while(!(_loc4_ && §+!N§))
                  {
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr125);
                  }
               }
            }
            return;
         }
         §§goto(addr127);
      }
      
      public static function §@!%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
            while(true)
            {
               §;6§(CATEGORY_EXTERNAL_PAUSE,ACTION_EXTERNAL_RESUMED,"",§+!2§(sExternalPauseStart));
               §§goto(addr77);
            }
         }
         addr77:
         while(true)
         {
            if(_loc1_ || _loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function § !^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && §+!N§)
         {
         }
         if(_loc2_)
         {
            do
            {
               §§push(DEBUG_MODE);
               if(!(_loc1_ && §+!N§))
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               if(_loc1_ && _loc1_)
               {
               }
            }
            while(!(_loc2_ || _loc1_));
            
            return;
         }
         while(true)
         {
            §;6§(CATEGORY_SHOP,ACTION_SHOP_OPEN,null,0);
            while(_loc2_ || _loc2_)
            {
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr37);
            }
         }
      }
      
      public static function §[9§(productType:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || productType)
         {
         }
         if(_loc2_ || _loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(DEBUG_MODE);
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  loop2:
                  while(!_loc3_)
                  {
                     loop3:
                     while(!_loc3_)
                     {
                        §;6§(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_SELECTED,productType,0);
                        loop4:
                        while(!_loc3_)
                        {
                           while(true)
                           {
                              if(_loc2_ || productType)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop1;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr81);
      }
      
      public static function §4!k§(product:String, count:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && product))
         {
            loop0:
            while(true)
            {
               addr109:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(!(_loc4_ || count))
            {
               §§goto(addr64);
            }
            §§goto(addr29);
         }
      }
      
      public static function § '§(product:String, count:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || product)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop4:
                  while(_loc4_ || _loc3_)
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     addr37:
                     if(_loc4_ || product)
                     {
                        if(_loc4_)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(DEBUG_MODE);
                              if(_loc4_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 break;
                              }
                              if(!(_loc3_ && §+!N§))
                              {
                                 addr103:
                                 while(true)
                                 {
                                    §;6§(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_BUY_COMPLETED,product,count,false);
                                    continue loop4;
                                    §§goto(addr37);
                                 }
                                 addr103:
                              }
                              §§goto(addr103);
                           }
                           addr106:
                        }
                        return;
                     }
                     §§goto(addr103);
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      public static function §^!j§(position:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               while(!_loc2_)
               {
                  §;6§(CATEGORY_BRAG,ACTION_BRAG_SHOWN,position,0);
                  while(_loc3_)
                  {
                     if(!_loc2_)
                     {
                        return;
                        addr42:
                     }
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public static function §6q§(position:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         do
         {
            while(true)
            {
               §;6§(CATEGORY_BRAG,ACTION_BRAG_CLICKED,position,0);
               while(_loc2_)
               {
                  if(!(_loc3_ && position))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc3_);
         
      }
      
      public static function §3!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(!_loc1_)
         {
            while(true)
            {
               §;6§(CATEGORY_INVITE,ACTION_INVITE_FRIEND_CLICKED,null,0);
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(_loc1_)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public static function §?!W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && §+!N§)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         do
         {
            §;6§(CATEGORY_INVITE,ACTION_INVITE_GENERIC_CLICKED,null,0);
            while(_loc2_ && §+!N§)
            {
            }
         }
         while(_loc2_);
         
      }
      
      public static function §'X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_ || _loc2_)
         {
            while(true)
            {
               §;6§(CATEGORY_AVATAR,ACTION_AVATAR_OPEN,null,0);
               while(_loc1_ || §+!N§)
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr61:
               }
            }
         }
         §§goto(addr61);
      }
      
      public static function §@1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && §+!N§)
         {
         }
         if(_loc2_ || §+!N§)
         {
            while(true)
            {
               §;6§(CATEGORY_AVATAR,ACTION_AVATAR_SET,null,0);
               loop1:
               while(_loc2_ || §+!N§)
               {
                  while(_loc1_ && _loc1_)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      public static function §5!O§(product:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && product)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               loop1:
               while(_loc2_ || §+!N§)
               {
                  §;6§(CATEGORY_AVATAR,ACTION_AVATAR_PRODUCT_SET,product,0);
                  while(true)
                  {
                     if(_loc2_ || product)
                     {
                        if(_loc2_ || product)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      public static function §5U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && §+!N§)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         while(true)
         {
            §;6§(CATEGORY_AVATAR,ACTION_AVATAR_SHARE_CLICKED,null,0);
            while(_loc1_)
            {
               if(_loc1_ || §+!N§)
               {
                  return;
               }
            }
         }
      }
      
      public static function §&![§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || §+!N§)
         {
            while(true)
            {
               §;6§(CATEGORY_AVATAR,ACTION_AVATAR_SHARE_COMPLETED,null,0);
               loop1:
               while(_loc2_ || §+!N§)
               {
                  while(!_loc2_)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public static function §>=§(product:String, priceCredits:int = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         if(!(_loc3_ && priceCredits))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(DEBUG_MODE);
                     if(!_loc3_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(!(_loc3_ && §+!N§))
                     {
                        continue;
                     }
                     continue loop1;
                  }
                  addr34:
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      public static function §0!]§(product:String, priceCredits:int = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_ || priceCredits)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(!(_loc3_ && priceCredits))
                     {
                        §§push(DEBUG_MODE);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public static function §4!-§(fileName:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §+!N§)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
            }
            addr81:
         }
         loop1:
         do
         {
            §;6§(CATEGORY_WARNING,ACTION_WARNING_DOWNLOAD_FAILED,fileName,0);
            while(!_loc3_)
            {
               if(_loc2_)
               {
                  continue loop1;
               }
            }
            §§goto(addr81);
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public static function §8!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         do
         {
            §;6§(CATEGORY_WARNING,ACTION_WARNING_3RD_PARTY_COOKIES_DISABLED,null,0);
            while(_loc1_ && _loc1_)
            {
            }
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public static function §!m§(levelId:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(levelId);
                  if(_loc3_ || §+!N§)
                  {
                     if(§§pop() != null)
                     {
                        §§push(levelId);
                        if(_loc3_ || §+!N§)
                        {
                           addr158:
                           if(_loc3_)
                           {
                              if(§§pop().length != 0)
                              {
                                 while(true)
                                 {
                                    §;6§(CATEGORY_WARNING,ACTION_WARNING_INVALID_LEVEL,levelId,0);
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 return;
                              }
                              addr59:
                              continue;
                           }
                           while(true)
                           {
                              levelId = §§pop();
                              §§goto(addr159);
                           }
                           addr158:
                        }
                        else
                        {
                           while(true)
                           {
                              levelId = §§pop();
                              §§goto(addr134);
                           }
                           addr123:
                        }
                        while(true)
                        {
                           §§goto(addr158);
                        }
                        addr157:
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr158);
               }
               while(true)
               {
                  if(!(_loc3_ || §+!N§))
                  {
                     continue loop0;
                  }
                  §§goto(addr59);
               }
            }
         }
         while(true)
         {
            §§push("[empty]");
            if(!_loc3_)
            {
            }
            if(_loc3_)
            {
               §§goto(addr123);
               §§push(§§pop());
            }
            §§goto(addr157);
         }
      }
      
      public static function §>"§(variable:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(!(_loc2_ && §+!N§))
         {
            while(true)
            {
               loop1:
               while(!_loc2_)
               {
                  §;6§(CATEGORY_WARNING,ACTION_WARNING_FLASHVAR_MISSING,variable,0);
                  while(true)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      public static function §]w§(count:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(_loc3_)
         {
            do
            {
               do
               {
                  §;6§(CATEGORY_USER_STATISTICS,ACTION_USER_STATISTIC_FRIEND_COUNT,count.toString(),count);
                  while(_loc2_ && count)
                  {
                  }
               }
               while(!(_loc3_ || count));
               
            }
            while(!_loc3_);
            
         }
      }
      
      public static function §;7§(url:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || _loc2_)
         {
         }
         loop0:
         do
         {
            while(true)
            {
               §;6§(CATEGORY_USER_STATISTICS,ACTION_ADVERTISEMENT_CLICK,url,0);
               while(!(_loc2_ && _loc2_))
               {
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_ && _loc3_);
         
      }
      
      public static function §-U§(errorDescription:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || _loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §;6§(CATEGORY_ERROR,errorDescription,"",0,false);
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      private static function §;6§(category:String, action:String, label:String, value:int, sampling:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_)
         {
         }
         var trackingFunction:* = null;
         if(_loc8_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        while(!_loc7_)
                        {
                           loop5:
                           for(; _loc8_; while(!(_loc7_ && label))
                           {
                              if(sampling)
                              {
                                 §§goto(addr129);
                              }
                              §§goto(addr59);
                              §§goto(addr44);
                           })
                           {
                              if(!enabled)
                              {
                                 addr27:
                                 return;
                              }
                              loop6:
                              while(true)
                              {
                                 addr167:
                                 while(true)
                                 {
                                    loop8:
                                    for(; _loc8_; if(_loc8_ || §+!N§)
                                    {
                                       if(_loc8_)
                                       {
                                          addr90:
                                          if(_loc8_)
                                          {
                                             addr92:
                                             while(true)
                                             {
                                                trackSampledEvent(trackingFunction,category,action,label,value);
                                                addr68:
                                                while(_loc8_ || label)
                                                {
                                                   continue loop6;
                                                }
                                                §§goto(addr156);
                                                §§goto(addr92);
                                             }
                                             continue;
                                             addr59:
                                          }
                                          continue loop2;
                                       }
                                       continue loop0;
                                    })
                                    {
                                       §§push(§2!K§);
                                       loop9:
                                       while(true)
                                       {
                                          trackingFunction = §§pop();
                                          addr156:
                                          while(true)
                                          {
                                             continue loop5;
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             §§push(§4z§(category,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                                             if(_loc8_)
                                             {
                                                §§push(§§pop());
                                             }
                                             if(!_loc7_)
                                             {
                                                trackingFunction = §§pop();
                                                while(true)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(!(_loc7_ && label))
                                                   {
                                                      continue loop8;
                                                   }
                                                   addr129:
                                                   addr129:
                                                   while(true)
                                                   {
                                                      continue loop16;
                                                   }
                                                   continue loop16;
                                                }
                                                addr107:
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 if(!_loc7_)
                                 {
                                    if(_loc8_ || action)
                                    {
                                       if(_loc7_)
                                       {
                                          §§goto(addr107);
                                       }
                                       addr44:
                                       if(_loc7_ && §+!N§)
                                       {
                                          continue loop5;
                                       }
                                       if(!(_loc7_ && action))
                                       {
                                          §§goto(addr27);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr90);
                                 }
                                 §§goto(addr68);
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      private static function §4z§(type:String, sample100Percent:Array, sample1Percent:Array) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || sample100Percent)
         {
         }
         if(_loc5_)
         {
            while(true)
            {
               while(_loc5_ || §+!N§)
               {
                  while(_loc5_ || §+!N§)
                  {
                     loop3:
                     do
                     {
                        §§push(sample1Percent);
                        loop4:
                        while(true)
                        {
                           §§push(type);
                           addr109:
                           while(§§pop().indexOf(§§pop()) < 0)
                           {
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                     while(_loc4_);
                     
                     return TRACKING_FUNCTION_1_PERCENT;
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      private static function §-!§(originalData:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || sortedData)
         {
         }
         var powerup:String = null;
         if(_loc7_ && §+!N§)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(originalData);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() == null);
                     if(_loc8_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop4:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              §§push(§§pop().length == 0);
                              addr62:
                              continue loop3;
                              if(_loc8_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!_loc8_)
                              {
                                 continue;
                              }
                              if(_loc7_ && result)
                              {
                                 continue loop4;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       if(!_loc8_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    if(!(_loc7_ && result))
                                    {
                                       if(!_loc7_)
                                       {
                                          return null;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 §§push("");
                                 if(_loc7_)
                                 {
                                 }
                                 var result:* = §§pop();
                                 if(!_loc8_)
                                 {
                                 }
                                 var sortedData:Array = originalData.concat();
                                 if(_loc7_)
                                 {
                                 }
                                 addr158:
                                 sortedData.sort();
                                 addr164:
                                 if(_loc8_)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr158);
                                       }
                                       var _loc5_:int = 0;
                                       var _loc6_:* = sortedData;
                                       addr264:
                                       if(§§hasnext(_loc6_,_loc5_))
                                       {
                                          addr262:
                                          powerup = §§nextvalue(_loc5_,_loc6_);
                                          addr248:
                                          if(result.length > 0)
                                          {
                                             §§push(result);
                                             if(_loc8_)
                                             {
                                                if(_loc8_)
                                                {
                                                   addr232:
                                                   §§push("-");
                                                   if(_loc8_ || sortedData)
                                                   {
                                                      §§push(§§pop() + powerup);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc7_)
                                                   {
                                                      result = §§pop();
                                                      addr195:
                                                      §§goto(addr264);
                                                      addr235:
                                                   }
                                                   §§goto(addr248);
                                                }
                                                §§goto(addr262);
                                             }
                                             §§goto(addr232);
                                             addr251:
                                             addr252:
                                          }
                                          addr263:
                                          addr255:
                                          §§push(powerup);
                                          if(_loc8_)
                                          {
                                             if(!_loc7_)
                                             {
                                                addr205:
                                                result = §§pop();
                                                addr206:
                                                if(_loc8_ || originalData)
                                                {
                                                   if(_loc8_ || §+!N§)
                                                   {
                                                      if(_loc8_ || sortedData)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr195);
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   §§goto(addr206);
                                                }
                                                §§goto(addr252);
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr205);
                                       }
                                       if(_loc8_ || originalData)
                                       {
                                       }
                                       return result;
                                    }
                                    §§goto(addr164);
                                 }
                                 addr162:
                                 §§goto(addr162);
                              }
                              continue loop1;
                              addr77:
                           }
                        }
                        else
                        {
                           §§goto(addr77);
                        }
                     }
                  }
               }
            }
         }
      }
      
      private static function §+!2§(since:int = 0) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(_loc2_)
         {
         }
         while(!_loc3_)
         {
         }
         §§push(getTimer() / 1000);
         if(_loc3_)
         {
            return §§pop() - since;
         }
      }
   }
}
