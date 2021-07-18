package §,l§
{
   import § 7§.§ else§;
   import §&r§.§'"L§;
   import §0D§.§3!R§;
   import §2"4§.§&k§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §30§.§'"+§;
   import §9@§.§1!j§;
   import §<"F§.§["M§;
   import §=!>§.§2!Z§;
   import §@!%§.§#!$§;
   import §@"V§.§6!c§;
   import §["6§.§ var§;
   import §`T§.§9"'§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §;!O§
   {
      
      private static var §2"A§:§3d§;
      
      private static var §?!&§:Object;
      
      private static var §`W§:String = "";
      
      private static var §5B§:int = 0;
      
      private static var §<"'§:String;
      
      private static var §1"I§:String;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §`W§ = "";
            do
            {
               §5B§ = 0;
            }
            while(_loc2_);
            
         }
      }
      
      public function §;!O§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §;!O§))
         {
            §<"'§ = param1;
            loop0:
            while(true)
            {
               §1"I§ = param2;
               loop1:
               while(true)
               {
                  §2"A§ = new §3d§();
                  loop2:
                  while(true)
                  {
                     §§push(§2"A§);
                     while(true)
                     {
                        §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                        loop4:
                        while(_loc5_)
                        {
                           §§push(§2"A§);
                           while(true)
                           {
                              §§pop().addEventListener(Event.COMPLETE,§'"1§);
                              addr208:
                              while(true)
                              {
                                 §§push(§2"A§);
                                 loop7:
                                 while(true)
                                 {
                                    §§pop().addEventListener(IOErrorEvent.IO_ERROR,§5"T§);
                                    addr184:
                                    while(!(_loc4_ && param3))
                                    {
                                       §§push(§2"A§);
                                       continue loop7;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        continue loop1;
                        if(_loc5_ || param2)
                        {
                           §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§5"T§);
                           do
                           {
                              if(!_loc4_)
                              {
                                 if(!param1)
                                 {
                                    §2"A§ = null;
                                    loop11:
                                    while(_loc5_)
                                    {
                                       §`W§ = "Did not receive a facebook user ID.";
                                       while(!(_loc4_ && param2))
                                       {
                                          §5B§ = §1!j§.§+!e§;
                                          if(!_loc5_)
                                          {
                                             continue;
                                          }
                                          if(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr25);
                                             }
                                             §§goto(addr184);
                                          }
                                          else
                                          {
                                             addr65:
                                             if(!_loc5_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(§2"A§);
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(§9!7§);
                                                   §§push(AngryBirdsFP11.§?8§ + "/init/");
                                                   if(_loc5_)
                                                   {
                                                      §§push(param1);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc4_)
                                                         {
                                                            §§push("/");
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(param2);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr94:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc4_ && param2))
                                                                     {
                                                                        §§push("/");
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc4_ && param3))
                                                                           {
                                                                              addr124:
                                                                              §§push(§§pop() + param3);
                                                                              if(!(_loc4_ && param2))
                                                                              {
                                                                                 addr133:
                                                                                 §§push(§§pop() + "/");
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                 }
                                                                                 addr143:
                                                                                 §§pop().load(§§pop().§,!l§(§§pop()));
                                                                                 break loop11;
                                                                              }
                                                                           }
                                                                           §§goto(addr143);
                                                                        }
                                                                     }
                                                                     §§goto(addr133);
                                                                     §§push(§§pop() + (new Date().timezoneOffset / 60).toString());
                                                                  }
                                                               }
                                                               §§goto(addr124);
                                                            }
                                                         }
                                                         §§goto(addr133);
                                                      }
                                                      §§goto(addr94);
                                                   }
                                                   §§goto(addr133);
                                                }
                                                else
                                                {
                                                   §§goto(addr204);
                                                }
                                             }
                                          }
                                          §§goto(addr157);
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr65);
                              }
                              §§goto(addr208);
                           }
                           while(_loc4_);
                           
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         addr25:
      }
      
      protected static function §5"T§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(§§findproperty(§`W§));
            §§push("Can\'t contact server.\n");
            if(_loc3_ || §;!O§)
            {
               §§push(§§pop() + param1.toString());
            }
            §§pop().§`W§ = §§pop();
         }
         do
         {
            §2"A§ = null;
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private static function §'"1§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§pop().§§slot[4] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[1] = param1;
                              loop7:
                              while(_loc5_)
                              {
                                 loop8:
                                 do
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(_loc5_)
                                    {
                                       §§pop().§§slot[2] = false;
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             §§push(§§newactivation());
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop6;
                                             }
                                             continue loop9;
                                          }
                                          continue loop7;
                                          addr51:
                                          §§pop().§§slot[3] = §§pop();
                                          if(_loc5_ || _loc2_)
                                          {
                                             continue loop8;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 while(false);
                                 
                                 try
                                 {
                                    §?!&§ = JSON.parse(serverResponse);
                                    if(_loc5_)
                                    {
                                       if(§?!&§.error)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(§§findproperty(§`W§));
                                             §§push("Server error of type \'");
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() + §?!&§.type);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() + "\':\n");
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      addr302:
                                                      §§push(§§pop() + §?!&§.message);
                                                   }
                                                }
                                                §§pop().§`W§ = §§pop();
                                                if(_loc5_ || _loc3_)
                                                {
                                                   if(§?!&§.type == "OAuthException")
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §5B§ = §1!j§.§%!C§;
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            addr251:
                                                            var threwError:Boolean = true;
                                                            if(_loc5_ || _loc2_)
                                                            {
                                                               addr221:
                                                               §§push(false);
                                                               if(_loc5_ || §;!O§)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§?!&§.user.userId == §<"'§);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       addr144:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             §§push(§§findproperty(§`W§));
                                                                                             §§push("Flashvar:\'");
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                §§push(§<"'§);
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push("\', server:\'");
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc5_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop() + §?!&§.user.userId);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr190:
                                                                                                               §§push("\', access:\'");
                                                                                                               if(_loc5_ || param1)
                                                                                                               {
                                                                                                                  addr198:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     addr217:
                                                                                                                     §§push(§§pop() + §1"I§);
                                                                                                                     if(_loc5_ || param1)
                                                                                                                     {
                                                                                                                        addr215:
                                                                                                                        §§push("\'");
                                                                                                                     }
                                                                                                                     §§pop().§`W§ = §§pop();
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr120:
                                                                                                                        §5B§ = §1!j§.§]",§;
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(true);
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§pop().§§slot[2] = §§pop();
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr120);
                                                                                                                                       }
                                                                                                                                       addr362:
                                                                                                                                       §§push(threwError);
                                                                                                                                       if(_loc5_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc5_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§4"7§.§&"5§);
                                                                                                                                                if(!(_loc6_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§pop().§39§(§?!&§.deauthorizedUserIds);
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §?!&§.friends = §>k§(§?!&§.friends,"items");
                                                                                                                                                      §&k§.injectData(§?!&§.friends);
                                                                                                                                                      §?!&§.currency = {
                                                                                                                                                         "user_currency":"USD",
                                                                                                                                                         "currency_exchange":10,
                                                                                                                                                         "currency_exchange_inverse":0.1,
                                                                                                                                                         "currency_offset":100
                                                                                                                                                      };
                                                                                                                                                      §?!&§.vCurrency = {
                                                                                                                                                         "user_currency":"ABFC",
                                                                                                                                                         "currency_exchange":0.01,
                                                                                                                                                         "currency_exchange_inverse":100,
                                                                                                                                                         "currency_offset":1
                                                                                                                                                      };
                                                                                                                                                      addr792:
                                                                                                                                                      §%"S§.§!C§.§9"%§.§@!K§ = new §]! §();
                                                                                                                                                      addr827:
                                                                                                                                                      addr835:
                                                                                                                                                      addr795:
                                                                                                                                                      addr808:
                                                                                                                                                      §§push(§%"S§.§!C§);
                                                                                                                                                      if(!(_loc6_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr775:
                                                                                                                                                         §§pop().§9"%§.§,T§ = new §["K§(§?!&§.vCurrency);
                                                                                                                                                         addr780:
                                                                                                                                                         if(_loc5_ || §;!O§)
                                                                                                                                                         {
                                                                                                                                                            §2!Z§.injectData(§?!&§.shopcampaigns);
                                                                                                                                                            §3!R§.§&"5§.injectData(§?!&§.tournament);
                                                                                                                                                            addr744:
                                                                                                                                                            (AngryBirdsFP11.sUserProgress as §#!$§).§"r§(§3!R§.§&"5§.levelScores);
                                                                                                                                                            addr750:
                                                                                                                                                            addr763:
                                                                                                                                                            addr757:
                                                                                                                                                            if(§?!&§.servertime.time)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc6_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr717:
                                                                                                                                                                  §§push(§%"S§.§!C§);
                                                                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr725:
                                                                                                                                                                     §§push(§§pop().§9"%§);
                                                                                                                                                                     if(!(_loc6_ && §;!O§))
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().§ Y§ = new §9"'§(§?!&§.servertime.time);
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           addr671:
                                                                                                                                                                           §§push(AngryBirdsFP11.sUserProgress);
                                                                                                                                                                           if(_loc5_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              (§§pop() as §#!$§).§?!m§(§?!&§.state as Array,§?!&§.user.name,§?!&§.user.avatar,§?!&§.user.userId,§?!&§.eggs,§?!&§.user.tutorials);
                                                                                                                                                                              §#!,§.§&"5§.§?v§(§?!&§.items);
                                                                                                                                                                              §'"L§.§'p§(§?!&§.dailyReward);
                                                                                                                                                                              addr670:
                                                                                                                                                                              addr702:
                                                                                                                                                                              if(_loc5_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 § else§.injectData(§?!&§.requests);
                                                                                                                                                                                 §6!c§.injectData(§?!&§.abtesting);
                                                                                                                                                                                 addr650:
                                                                                                                                                                                 if(_loc5_ || §;!O§)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr619:
                                                                                                                                                                                    §§push(Boolean(§?!&§.drawconfig));
                                                                                                                                                                                    if(Boolean(§?!&§.drawconfig))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr621:
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       if(_loc5_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§?!&§.drawconfig.draw == §["M§.§0<§);
                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr601:
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr607:
                                                                                                                                                                                                         §%"S§.§!C§.§9"%§.§7"T§ = new §["M§(§?!&§.drawconfig);
                                                                                                                                                                                                         addr612:
                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr519:
                                                                                                                                                                                                            §4"7§.§&"5§.§5"8§(§?!&§.excludedUserIds);
                                                                                                                                                                                                            addr522:
                                                                                                                                                                                                            §§push(§4"7§.§&"5§);
                                                                                                                                                                                                            if(_loc5_ || §;!O§)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr506:
                                                                                                                                                                                                               §§pop().§]!%§(null);
                                                                                                                                                                                                               addr508:
                                                                                                                                                                                                               if(_loc5_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  § var§.§`";§();
                                                                                                                                                                                                                  addr493:
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§?!&§.user.name == null)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr472);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr421:
                                                                                                                                                                                                                     if(§?!&§.user.ap == true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc5_ || §;!O§)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §'"+§.§'!#§("doAdParlorConversion");
                                                                                                                                                                                                                                 addr456:
                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr393:
                                                                                                                                                                                                                                       §%"S§.§2`§(§?!&§.friends);
                                                                                                                                                                                                                                       if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(false)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr421);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                var _loc3_:* = 0;
                                                                                                                                                                                                                                                if(_loc5_ || §;!O§)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   var _loc4_:* = §?!&§.requests.brags;
                                                                                                                                                                                                                                                   if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr883:
                                                                                                                                                                                                                                                   for each(bragObject in _loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §'"+§.§'!#§("flashDeleteRequest",bragObject.r);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr883);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr894:
                                                                                                                                                                                                                                                   §2"A§ = null;
                                                                                                                                                                                                                                                   §§goto(addr897);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr897:
                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr827);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr456);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr894);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr670);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr508);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr780);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr472:
                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr493);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           throw new Error("User name cannot be null");
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr456);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr393);
                                                                                                                                                                                                                     addr495:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr650);
                                                                                                                                                                                                                  addr515:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr522);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr519);
                                                                                                                                                                                                            addr516:
                                                                                                                                                                                                            addr614:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr750);
                                                                                                                                                                                                         addr606:
                                                                                                                                                                                                         addr604:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr763);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§%"S§.§!C§);
                                                                                                                                                                                                   if(_loc5_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().§9"%§);
                                                                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc5_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().§7"T§ = new §["M§({});
                                                                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr516);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr835);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr795);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr702);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr612);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr894);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr775);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr725);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr607);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr717);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr606);
                                                                                                                                                                                                   addr600:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr619);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr621);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr650);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr894);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr600);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr757);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr894);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr744);
                                                                                                                                                                           addr740:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr894);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr792);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr740);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr671);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr808);
                                                                                                                                                      }
                                                                                                                                                      addr791:
                                                                                                                                                      §§goto(addr791);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr604);
                                                                                                                                                }
                                                                                                                                                §§goto(addr506);
                                                                                                                                             }
                                                                                                                                             §§goto(addr744);
                                                                                                                                          }
                                                                                                                                          §§goto(addr894);
                                                                                                                                       }
                                                                                                                                       §§goto(addr601);
                                                                                                                                       addr314:
                                                                                                                                    }
                                                                                                                                    §§goto(addr421);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr251);
                                                                                                                           }
                                                                                                                           §§goto(addr362);
                                                                                                                        }
                                                                                                                        §§goto(addr495);
                                                                                                                     }
                                                                                                                     §§goto(addr717);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr217);
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            §§goto(addr215);
                                                                                                         }
                                                                                                         §§goto(addr217);
                                                                                                      }
                                                                                                      §§goto(addr198);
                                                                                                   }
                                                                                                   §§goto(addr190);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr217);
                                                                                          }
                                                                                          §§goto(addr515);
                                                                                       }
                                                                                       §§goto(addr314);
                                                                                    }
                                                                                    §§goto(addr621);
                                                                                 }
                                                                                 §§goto(addr601);
                                                                              }
                                                                              §§goto(addr421);
                                                                           }
                                                                           §§goto(addr619);
                                                                        }
                                                                        §§goto(addr144);
                                                                     }
                                                                     §§goto(addr619);
                                                                  }
                                                                  §§goto(addr621);
                                                               }
                                                               §§goto(addr601);
                                                            }
                                                            §§goto(addr493);
                                                         }
                                                         §§goto(addr894);
                                                      }
                                                      §§goto(addr614);
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr894);
                                             }
                                             §§goto(addr302);
                                          }
                                          §§goto(addr792);
                                       }
                                       §§goto(addr221);
                                    }
                                    §§goto(addr792);
                                 }
                                 catch(e:Error)
                                 {
                                    _loc3_ = e;
                                    if(!_loc6_)
                                    {
                                       §§push(§§findproperty(§`W§));
                                       §§push("Invalid server response. Expected a json string but got this:\n");
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() + serverResponse);
                                       }
                                       §§pop().§`W§ = §§pop();
                                       addr344:
                                       §5B§ = §1!j§.§%e§;
                                       threwError = true;
                                       addr358:
                                       if(!_loc6_)
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             addr342:
                                             if(false)
                                             {
                                                §§goto(addr344);
                                             }
                                             §§goto(addr362);
                                          }
                                          §§goto(addr358);
                                       }
                                       addr349:
                                       §§goto(addr349);
                                    }
                                    §§goto(addr342);
                                 }
                                 §§goto(addr362);
                              }
                              continue loop5;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public static function §>k§(param1:Object, param2:String, param3:String = null) : Object
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:* = 0;
         var _loc8_:String = null;
         var _loc9_:* = 0;
         if(_loc12_)
         {
            if(param1 == null)
            {
               if(!_loc13_)
               {
                  §§goto(addr39);
               }
               else
               {
                  addr47:
                  _loc4_ = new Object();
                  var _loc10_:* = 0;
                  var _loc11_:* = param1;
                  loop0:
                  while(true)
                  {
                     §§push(§§hasnext(_loc11_,_loc10_));
                     if(!(_loc13_ && §;!O§))
                     {
                        if(!§§pop())
                        {
                           if(_loc12_)
                           {
                              if(_loc12_ || param3)
                              {
                                 if(_loc12_)
                                 {
                                    _loc4_[param2] = new Array();
                                    if(_loc12_ || param1)
                                    {
                                       addr122:
                                       §§push(0);
                                       if(!(_loc13_ && param1))
                                       {
                                          _loc10_ = §§pop();
                                          if(_loc12_ || §;!O§)
                                          {
                                             _loc11_ = param1[param2];
                                             loop2:
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc11_,_loc10_));
                                                if(_loc12_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc6_ = §§nextvalue(_loc10_,_loc11_);
                                                      if(!_loc13_)
                                                      {
                                                         if(§4"7§.§&"5§.§4!h§()[_loc6_.u] == null)
                                                         {
                                                            if(_loc12_ || §;!O§)
                                                            {
                                                               _loc4_[param2].push(_loc6_);
                                                            }
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   if(_loc12_ || param3)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc13_ && §;!O§))
                                                            {
                                                               _loc10_ = §§pop();
                                                               if(_loc12_)
                                                               {
                                                                  _loc11_ = _loc4_[param2];
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc11_,_loc10_));
                                                                     if(!_loc13_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           _loc6_ = §§nextvalue(_loc10_,_loc11_);
                                                                           if(_loc6_.r == 0)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 _loc6_.r = int.MAX_VALUE;
                                                                              }
                                                                           }
                                                                           continue;
                                                                        }
                                                                        if(_loc12_)
                                                                        {
                                                                           if(_loc12_)
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 _loc4_[param2].sortOn("r",Array.NUMERIC);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc12_ || param2)
                                                                                    {
                                                                                       _loc10_ = §§pop();
                                                                                       if(!(_loc13_ && §;!O§))
                                                                                       {
                                                                                          _loc11_ = _loc4_[param2];
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc11_,_loc10_));
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   _loc6_ = §§nextvalue(_loc10_,_loc11_);
                                                                                                   if(_loc6_.r == int.MAX_VALUE)
                                                                                                   {
                                                                                                      if(_loc12_ || param2)
                                                                                                      {
                                                                                                         _loc6_.r = 0;
                                                                                                      }
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                if(!(_loc13_ && param3))
                                                                                                {
                                                                                                   addr307:
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      addr310:
                                                                                                      if(!(_loc13_ && param2))
                                                                                                      {
                                                                                                         addr318:
                                                                                                         §§push(1);
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            addr321:
                                                                                                            _loc7_ = §§pop();
                                                                                                            if(!(_loc13_ && param3))
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(_loc12_ || param1)
                                                                                                               {
                                                                                                                  §§goto(addr337);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr448);
                                                                                                         }
                                                                                                         §§goto(addr337);
                                                                                                      }
                                                                                                      §§goto(addr404);
                                                                                                   }
                                                                                                   §§goto(addr337);
                                                                                                }
                                                                                                §§goto(addr448);
                                                                                             }
                                                                                             break loop2;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                                 §§goto(addr318);
                                                                              }
                                                                              §§goto(addr404);
                                                                           }
                                                                           §§goto(addr449);
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                     break loop2;
                                                                  }
                                                               }
                                                               §§goto(addr310);
                                                            }
                                                            addr337:
                                                            _loc10_ = §§pop();
                                                            if(_loc12_ || §;!O§)
                                                            {
                                                               addr345:
                                                               _loc11_ = _loc4_[param2];
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc11_,_loc10_));
                                                                  if(_loc12_ || param1)
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  break loop0;
                                                               }
                                                               addr382:
                                                            }
                                                            if(_loc12_)
                                                            {
                                                               addr404:
                                                               §§push(param3);
                                                               if(_loc12_ || param1)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc13_ && param1))
                                                                     {
                                                                        §§push((AngryBirdsFP11.sUserProgress as §#!$§).§5!0§);
                                                                        if(_loc13_)
                                                                        {
                                                                        }
                                                                        §§goto(addr428);
                                                                     }
                                                                     §§goto(addr447);
                                                                  }
                                                                  return _loc4_;
                                                               }
                                                               addr428:
                                                               _loc8_ = §§pop();
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc12_ || §;!O§)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(_loc13_ && param3)
                                                                     {
                                                                        §§goto(addr507);
                                                                     }
                                                                     addr448:
                                                                     _loc10_ = 0;
                                                                     _loc11_ = _loc4_[param2];
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc11_,_loc10_));
                                                                        break loop0;
                                                                     }
                                                                     if(!(_loc13_ && param2))
                                                                     {
                                                                        (AngryBirdsFP11.sUserProgress as §#!$§).§'!y§(param3,_loc9_);
                                                                     }
                                                                     addr447:
                                                                  }
                                                                  §§goto(addr448);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr507);
                                                      }
                                                      §§goto(addr345);
                                                   }
                                                   §§goto(addr307);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc6_ = §§nextvalue(_loc10_,_loc11_);
                                                   if(_loc6_.r == 0)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   else if(_loc6_.r != _loc7_)
                                                   {
                                                      if(!(_loc13_ && §;!O§))
                                                      {
                                                         _loc6_.r = _loc7_;
                                                         if(!_loc12_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   _loc7_++;
                                                   continue;
                                                }
                                                if(_loc12_ || param2)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      §§goto(addr337);
                                                   }
                                                }
                                                §§goto(addr448);
                                             }
                                          }
                                          §§goto(addr345);
                                       }
                                       §§goto(addr321);
                                    }
                                    §§goto(addr404);
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr345);
                           }
                           §§goto(addr307);
                        }
                        else
                        {
                           §§push(§§nextname(_loc10_,_loc11_));
                           if(!(_loc13_ && param3))
                           {
                              §§push(§§pop());
                              if(_loc12_ || param2)
                              {
                                 _loc5_ = §§pop();
                                 addr78:
                                 §§push(param2);
                              }
                              if(§§pop() != §§pop())
                              {
                                 if(!_loc13_)
                                 {
                                    _loc4_[_loc5_] = param1[_loc5_];
                                 }
                              }
                              continue;
                           }
                           §§goto(addr78);
                        }
                     }
                     break;
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc6_.u != _loc8_)
                        {
                           continue;
                        }
                        if(!(_loc13_ && param2))
                        {
                           _loc9_ = int(_loc6_.r);
                        }
                     }
                     §§goto(addr448);
                  }
               }
            }
            else if(!§4"7§.§&"5§.§1!N§())
            {
               §§goto(addr47);
            }
            addr507:
            return param1;
         }
         addr39:
         return null;
      }
      
      public static function get §each §() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§2"A§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      private static function get data() : Object
      {
         return §?!&§;
      }
      
      public static function §1"Z§() : String
      {
         return §`W§;
      }
      
      public static function §!!q§() : int
      {
         return §5B§;
      }
   }
}
