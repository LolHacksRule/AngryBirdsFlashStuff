package §7"@§
{
   import §!!C§.§]!;§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§!'§;
   import §'!s§.§"!§;
   import §'!s§.§%?§;
   import §'6§.§"]§;
   import §0!G§.§1-§;
   import §1r§.§^!§;
   import §2!i§.§'M§;
   import §3!7§.§2G§;
   import §3!7§.§7J§;
   import §3!7§.§>,§;
   import §3!7§.§?!F§;
   import §3![§.§^"1§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §6!B§.§&!7§;
   import §6!B§.§,!p§;
   import §6!B§.§33§;
   import §6!B§.§7M§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §9"!§.§2K§;
   import §9"!§.§2a§;
   import §9"!§.§9"3§;
   import §<a§.§+!B§;
   import §<a§.§>f§;
   import §[!K§.§-!@§;
   import §]!A§.;
   import §^j§.§7>§;
   import com.AngryBirds.friendsbar.§ K§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §2!e§ extends StatePlay
   {
      
      private static const §>P§:Number = -5000.0;
      
      private static const §3i§:Number = 10000.0;
      
      private static const §+"B§:Number = 50;
      
      private static const §>!O§:Number = 0.05;
      
      public static var §#!W§:String;
      
      public static var §5;§:String = "";
      
      public static var §,T§:Number = 0;
      
      public static var §4"#§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §>P§ = -5 * 1000;
            while(true)
            {
               §3i§ = 10 * 1000;
            }
            addr103:
         }
         loop1:
         while(true)
         {
            §+"B§ = 50;
            loop2:
            while(_loc2_)
            {
               §>!O§ = 0.05;
               loop3:
               while(true)
               {
                  §5;§ = "";
                  while(true)
                  {
                     §,T§ = 0;
                     while(!_loc1_)
                     {
                        continue loop3;
                        §4"#§ = 0;
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr103);
         }
      }
      
      private var §<"8§:String = "";
      
      private var §#!Q§:Number = -5000.0;
      
      private var § #§:int = 0;
      
      private var §2H§:Number = 0;
      
      private var §`"!§:Number = 0;
      
      private var §=!#§:§"m§;
      
      private var §'!<§:Number;
      
      protected var §8<§:Number;
      
      protected var §#!J§:Number;
      
      protected var §`-§:§7J§;
      
      protected var §`!$§:Boolean = false;
      
      protected var §3s§:§]!;§;
      
      private var §!I§:Boolean = false;
      
      protected var § "B§:§^!§;
      
      private var §-B§:Boolean = false;
      
      private var §4!i§:Boolean = false;
      
      private var §6D§:Number = 0;
      
      private var §[A§:Number = 0;
      
      private var §["9§:§"!§;
      
      public function §2!e§(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override protected function getGameLogicController(param1:§9"3§) : §^"1§
      {
         return new §7>§(param1);
      }
      
      protected function fetchScoresForLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3s§ = §3T§.§if §.§#!7§(LevelManager.§^_§(LevelManager.§'!O§).name,LevelManager.§'!O§);
         }
      }
      
      protected function get §-!!§() : §7J§
      {
         return this.§`-§;
      }
      
      protected function showScoresForLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§#6§.§ q§ as §3T§).§?D§(LevelManager.§'!O§,this.§3s§);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.levelStarted();
            loop0:
            while(true)
            {
               §§push(this.§`-§);
               loop1:
               while(true)
               {
                  §§pop().activate();
                  loop2:
                  while(true)
                  {
                     §7J§.§^"B§ = true;
                     while(true)
                     {
                        §7J§.§function§ = false;
                        addr412:
                        while(true)
                        {
                           §+!B§.§""1§(§>f§.§]",§,LevelManager.§'!O§);
                           addr407:
                           while(true)
                           {
                              this.fetchScoresForLevel();
                              continue loop0;
                           }
                        }
                        loop23:
                        while(!(_loc2_ && this))
                        {
                           §§push(this.§`-§);
                           loop24:
                           for(; !(_loc2_ && _loc2_); §§push(this.§`-§),if(!_loc1_)
                           {
                              continue;
                           },§§pop().§4g§(),while(true)
                           {
                              if(!_loc2_)
                              {
                                 addr91:
                                 if(_loc2_ && _loc2_)
                                 {
                                    break;
                                 }
                                 if(!(_loc2_ && this))
                                 {
                                    §6w§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleX = 1;
                                    continue;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr112);
                           },while(true)
                           {
                              this.§ "B§.levelStarted(this.§3s§,LevelManager.§'!O§);
                              §§goto(addr372);
                              §§goto(addr91);
                           })
                           {
                              addr286:
                              if(_loc1_ || _loc2_)
                              {
                                 §§pop().§-!X§();
                                 loop25:
                                 while(true)
                                 {
                                    loop26:
                                    while(true)
                                    {
                                       §6w§.getItemByName("Container_PowerUpButtons").setVisibility(false);
                                       loop27:
                                       while(true)
                                       {
                                          §§push(this.§=!#§);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§=!#§);
                                                      while(true)
                                                      {
                                                         §§pop().stop();
                                                         continue loop25;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(§7J§.§function§);
                                                         if(_loc1_)
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     while(true)
                                                                     {
                                                                        addr269:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc2_ && _loc2_))
                                                                              {
                                                                                 return;
                                                                              }
                                                                              continue loop23;
                                                                              continue loop23;
                                                                           }
                                                                           continue loop26;
                                                                        }
                                                                     }
                                                                     addr268:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr298:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        break loop22;
                                                                     }
                                                                     addr298:
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop22;
                                                            }
                                                            addr301:
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr301);
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                   }
                                                }
                                                §§goto(addr407);
                                                addr217:
                                             }
                                             else
                                             {
                                                loop29:
                                                while(true)
                                                {
                                                   this.§-B§ = false;
                                                   loop30:
                                                   while(true)
                                                   {
                                                      this.§4!i§ = false;
                                                      loop31:
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            addr171:
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               addr178:
                                                               if(_loc1_ || this)
                                                               {
                                                                  §,3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!!5§);
                                                                  loop32:
                                                                  while(true)
                                                                  {
                                                                     this.§`!$§ = false;
                                                                     loop33:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop31;
                                                                        }
                                                                        continue loop32;
                                                                        addr112:
                                                                        while(true)
                                                                        {
                                                                           if(_loc1_ || _loc1_)
                                                                           {
                                                                              if(!(_loc1_ || _loc1_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop24;
                                                                           }
                                                                           continue loop33;
                                                                        }
                                                                        continue loop25;
                                                                     }
                                                                     addr332:
                                                                     while(true)
                                                                     {
                                                                        §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
                                                                        addr323:
                                                                        while(!_loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §6w§.getItemByName("Button_MightyEagle").setVisibility(true);
                                                                              addr309:
                                                                              addr357:
                                                                              while(!(_loc2_ && this))
                                                                              {
                                                                                 §§goto(addr298);
                                                                                 §§push(§7J§.§^"B§);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §6w§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.alpha = 1;
                                                                                 break loop31;
                                                                                 §§goto(addr309);
                                                                              }
                                                                           }
                                                                           if(_loc1_ || this)
                                                                           {
                                                                              this.§=!#§ = null;
                                                                              continue loop29;
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                        addr149:
                                                                        if(!(_loc1_ || _loc1_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §6w§.getItemByName("TextField_PowerUpCountME").setVisibility(true);
                                                                        while(true)
                                                                        {
                                                                           §6w§.getItemByName("PowerUpCountME_BG").setVisibility(true);
                                                                           §§goto(addr112);
                                                                           addr37:
                                                                           if(!(_loc1_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc1_)
                                                                           {
                                                                              continue loop27;
                                                                           }
                                                                           §§goto(addr217);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(!_loc2_)
                                                                  {
                                                                     §§push(this.§`-§);
                                                                     while(true)
                                                                     {
                                                                        §§push(false);
                                                                        addr362:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§`b§ = §§pop();
                                                                           addr363:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§`-§);
                                                                              break loop24;
                                                                           }
                                                                        }
                                                                        §§goto(addr286);
                                                                     }
                                                                     §§goto(addr178);
                                                                  }
                                                                  §§goto(addr412);
                                                                  addr372:
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         continue loop30;
                                                      }
                                                      while(_loc1_ || _loc1_)
                                                      {
                                                         §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(true);
                                                         §§goto(addr332);
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr363);
                                                   }
                                                }
                                             }
                                             §§goto(addr298);
                                          }
                                          §§goto(addr228);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr361);
                           }
                           while(!_loc2_)
                           {
                              §§push(true);
                              if(!_loc2_)
                              {
                                 §§pop().§;!7§ = §§pop();
                                 §§goto(addr357);
                              }
                              §§goto(addr362);
                              §§goto(addr279);
                           }
                           addr279:
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr325);
      }
      
      override protected function stopSoundsOnLevelStart() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.stopSoundsOnLevelStart();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.activate();
            do
            {
               this.§#E§();
            }
            while(!_loc2_);
            
         }
      }
      
      protected function §6!c§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:* = 0;
         var _loc3_:§7M§ = null;
         var _loc4_:§,!p§ = null;
         if(!(_loc6_ && _loc1_))
         {
            §§push(LevelManager.§'!O§);
            while(true)
            {
               §§push("3001-");
               loop1:
               while(true)
               {
                  §§push(§§pop().indexOf(§§pop()) > -1);
                  if(_loc5_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§pop();
                           addr370:
                           while(true)
                           {
                              §§push(LevelManager.§'!O§);
                              addr324:
                              while(true)
                              {
                                 §§push("3000-");
                                 addr325:
                                 while(!(_loc6_ && this))
                                 {
                                    continue loop4;
                                 }
                                 continue loop1;
                              }
                              continue loop4;
                           }
                        }
                        addr369:
                     }
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              _loc1_ = "";
                              if(!(_loc6_ && this))
                              {
                                 while(true)
                                 {
                                    §§push(999);
                                    loop9:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(LevelManager.§'!O§);
                                          loop11:
                                          while(true)
                                          {
                                             §§push("3001-");
                                             loop12:
                                             while(!_loc6_)
                                             {
                                                if(§§pop().indexOf(§§pop()) <= -1)
                                                {
                                                   §§push(§4"#§);
                                                   loop13:
                                                   for(; !_loc6_; §§push(1),if(!_loc5_)
                                                   {
                                                      continue;
                                                   },_loc2_ = §§pop(),loop16:
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         while(true)
                                                         {
                                                            §>!E§.removeEventListener(§33§.SOUND_COMPLETE,this.§^!I§);
                                                            while(true)
                                                            {
                                                               §>!E§.addEventListener(§33§.SOUND_COMPLETE,this.§^!I§);
                                                               if(!_loc5_)
                                                               {
                                                                  break loop3;
                                                               }
                                                               if(!(_loc6_ && _loc1_))
                                                               {
                                                                  continue loop16;
                                                               }
                                                            }
                                                            addr62:
                                                            if(_loc6_ && _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            if(false)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr371);
                                                         }
                                                         continue loop10;
                                                      }
                                                      §§goto(addr286);
                                                   })
                                                   {
                                                      if(§§pop() <= 1)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§<"8§ = §&!7§.§+"8§;
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     if(!(_loc5_ || this))
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§&!7§.§#!a§);
                                                                        if(_loc5_ || _loc1_)
                                                                        {
                                                                           if(_loc5_ || _loc1_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              addr286:
                                                                              addr285:
                                                                              _loc1_ = §§pop();
                                                                              this.§<"8§ = §&!7§.§;"C§;
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       addr181:
                                                                                       §§push(§5;§);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr183:
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             if(§§pop() != getPauseState())
                                                                                             {
                                                                                                addr193:
                                                                                                if(!(_loc6_ && _loc1_))
                                                                                                {
                                                                                                   §,T§ = 0;
                                                                                                   addr213:
                                                                                                   if(!(_loc5_ || _loc2_))
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr296:
                                                                                                         §§push(§&!7§.§#";§);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(LevelManager.§'!O§);
                                                                                                            addr290:
                                                                                                            loop20:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push("3001-1");
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop().indexOf(§§pop()) > -1)
                                                                                                                  {
                                                                                                                     continue loop29;
                                                                                                                  }
                                                                                                                  §§push(LevelManager.§'!O§);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && this))
                                                                                                                     {
                                                                                                                        §§push("3001-2");
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           addr373:
                                                                                                                           if(§§pop() != §§pop())
                                                                                                                           {
                                                                                                                              break loop3;
                                                                                                                           }
                                                                                                                           break loop2;
                                                                                                                        }
                                                                                                                        if(!(_loc5_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           break loop20;
                                                                                                                        }
                                                                                                                        if(§§pop().indexOf(§§pop()) > -1)
                                                                                                                        {
                                                                                                                           addr282:
                                                                                                                           §§push(§&!7§.§!u§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr285);
                                                                                                                           }
                                                                                                                           addr284:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(§&!7§.§#";§);
                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr241:
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 addr244:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr241);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr324);
                                                                                                                           }
                                                                                                                           §§goto(addr296);
                                                                                                                        }
                                                                                                                        addr298:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc1_ = §§pop();
                                                                                                                        addr302:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr372:
                                                                                                                     §§push("");
                                                                                                                  }
                                                                                                                  §§goto(addr373);
                                                                                                               }
                                                                                                               continue loop29;
                                                                                                               §§goto(addr183);
                                                                                                            }
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         addr316:
                                                                                                      }
                                                                                                      §§goto(addr298);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr244);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr290);
                                                                                       }
                                                                                       §§goto(addr284);
                                                                                    }
                                                                                    addr371:
                                                                                    §§goto(addr372);
                                                                                    §§push(_loc1_);
                                                                                 }
                                                                                 §§goto(addr302);
                                                                              }
                                                                           }
                                                                           §§goto(addr181);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr128:
                                                                           if(_loc5_)
                                                                           {
                                                                              _loc1_ = §§pop();
                                                                              while(!(_loc6_ && _loc1_))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 §§goto(addr282);
                                                                              }
                                                                              §§goto(addr193);
                                                                              addr131:
                                                                           }
                                                                        }
                                                                        §§goto(addr241);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr370);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr312:
                                                                     this.§<"8§ = §&!7§.§="+§;
                                                                  }
                                                                  §§goto(addr316);
                                                               }
                                                               §§goto(addr213);
                                                            }
                                                            break loop3;
                                                         }
                                                         continue loop11;
                                                         addr149:
                                                      }
                                                      §§goto(addr371);
                                                   }
                                                   continue loop9;
                                                }
                                                §§goto(addr312);
                                             }
                                             §§goto(addr325);
                                          }
                                       }
                                    }
                                 }
                                 addr353:
                              }
                              break;
                           }
                           _loc3_ = §>!E§.§"h§(§&!7§.§!!j§);
                           if(_loc5_ || this)
                           {
                              if(!_loc3_)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §>!E§.§0I§(§&!7§.§!!j§,1,1);
                                 }
                              }
                           }
                           _loc4_ = §>!E§.§;!0§(_loc1_,this.§<"8§,3000,§&!7§.§!!j§,_loc2_,0.75,§,T§);
                           break;
                        }
                        break;
                        §§goto(addr332);
                     }
                     return;
                  }
                  §§goto(addr369);
               }
            }
         }
         §§goto(addr353);
      }
      
      protected function §+y§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§,!p§ = null;
         if(_loc4_ || _loc1_)
         {
            §,T§ = 0;
         }
         var _loc1_:§7M§ = §>!E§.§"h§(§&!7§.§!!j§);
         if(!(_loc3_ && _loc2_))
         {
            if(_loc1_ != null)
            {
               _loc2_ = _loc1_.§?"+§(this.§<"8§);
               addr56:
               if(!_loc3_)
               {
                  if(_loc2_ != null)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §,T§ = _loc2_.position;
                        if(_loc4_ || _loc2_)
                        {
                        }
                        §§goto(addr99);
                     }
                  }
               }
               §>!E§.§1!;§(§&!7§.§!!j§);
            }
            addr99:
            return;
         }
         §§goto(addr56);
      }
      
      private function §^!I§(param1:§33§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(param1.§"4§);
            loop0:
            while(true)
            {
               §§push(§&!7§.§+"8§);
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
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr135:
                              while(true)
                              {
                                 addr81:
                                 while(true)
                                 {
                                    §§push(this.§<"8§);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(§&!7§.§+"8§);
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() == §§pop());
                                 }
                                 continue loop0;
                              }
                           }
                           addr134:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§pop();
                                          if(_loc5_ && _loc2_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr156);
                                 }
                                 break;
                              }
                              continue loop3;
                              if(_loc5_ && _loc3_)
                              {
                                 continue;
                              }
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§goto(addr134);
                           }
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 §>!E§.removeEventListener(§33§.SOUND_COMPLETE,this.§^!I§);
                                 if(_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          if(true)
                                          {
                                             var _loc2_:*;
                                             §§push((_loc2_ = §2!e§).§4"#§);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc3_:* = §§pop();
                                             if(!(_loc5_ && param1))
                                             {
                                                _loc2_.§4"#§ = _loc3_;
                                             }
                                             §§goto(addr156);
                                          }
                                       }
                                       addr79:
                                    }
                                    else
                                    {
                                       §§goto(addr135);
                                    }
                                    §§goto(addr81);
                                 }
                              }
                           }
                           addr156:
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      protected function §#E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§6!c§();
            loop0:
            while(true)
            {
               this.§ "B§.activate();
               loop1:
               while(true)
               {
                  §§push(this.§-B§);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §,3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!!5§);
                           addr250:
                           while(_loc1_)
                           {
                           }
                           continue loop0;
                        }
                        addr244:
                     }
                     while(true)
                     {
                        §6w§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
                        while(!_loc2_)
                        {
                           §§push(§#6§.§6!z§);
                           loop7:
                           while(true)
                           {
                              §§push(§§pop().objects.mSardineCanAdded);
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop9:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc1_ || _loc2_))
                                             {
                                                continue loop9;
                                             }
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop7;
                                                }
                                                addr199:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §6w§.getItemByName("Container_MightyEagle").setVisibility(true);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         addr73:
                                                         while(true)
                                                         {
                                                            this.§'!<§ = 2500;
                                                            addr77:
                                                            while(!(_loc2_ && _loc2_))
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  (§#6§.§ q§ as §3T§).§`!P§(§ K§.§`!R§);
                                                                  continue loop14;
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr244);
                                                         }
                                                      }
                                                   }
                                                   while(_loc1_)
                                                   {
                                                      §§goto(addr166);
                                                   }
                                                }
                                                addr162:
                                             }
                                          }
                                          continue loop8;
                                          addr189:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                       }
                                       while(true)
                                       {
                                          §§push(Boolean(§1e§));
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr218);
                           }
                           continue loop2;
                           if(!(_loc2_ && _loc1_))
                           {
                              return;
                           }
                        }
                        §§goto(addr250);
                     }
                  }
               }
            }
         }
         §§goto(addr166);
      }
      
      protected function dimPowerUp() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
            while(true)
            {
               this.§>"8§(this.§=!#§);
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     this.§=!#§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{"alpha":0.5},null,0.5);
                     loop3:
                     do
                     {
                        §§push(this.§=!#§);
                        while(true)
                        {
                           §§pop().delay = 2;
                           while(true)
                           {
                              §§push(this.§=!#§);
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §§pop().play();
                              if(_loc1_)
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(!_loc1_);
                     
                     if(_loc2_ && this)
                     {
                        continue loop1;
                     }
                     §§goto(addr50);
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr95);
      }
      
      protected function hidePowerUp(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`!$§ = true;
            loop0:
            while(true)
            {
               §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
               while(true)
               {
                  this.§>"8§(this.§=!#§);
                  while(_loc3_)
                  {
                     this.§=!#§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{
                        "scaleX":0,
                        "scaleY":0
                     },null,0.5);
                     loop3:
                     while(true)
                     {
                        if(param1)
                        {
                           addr110:
                           while(true)
                           {
                              §§push(this.§=!#§);
                           }
                           addr110:
                        }
                        else
                        {
                           §§push(this.§=!#§);
                           loop4:
                           while(true)
                           {
                              §§pop().delay = 0.5;
                              addr106:
                              while(true)
                              {
                                 addr56:
                                 while(true)
                                 {
                                    §§push(this.§=!#§);
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        while(true)
                        {
                           §§pop().delay = 2;
                           continue loop3;
                        }
                     }
                     if(_loc3_ || param1)
                     {
                        return;
                     }
                  }
                  continue loop0;
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  §§push(this.§=!#§);
                  if(!(_loc2_ && this))
                  {
                     §§pop().onComplete = this.§^p§;
                     if(_loc3_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr48);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr59);
               }
            }
         }
         §§goto(addr110);
      }
      
      private function §^p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § J§ = true;
            loop0:
            while(true)
            {
               §6w§ = new §7!A§(this);
               loop1:
               while(true)
               {
                  §6w§.init(§ "A§.§4[§.Views.View_FacebookLevelPlay[0]);
                  while(true)
                  {
                     this.§ "B§ = new §^!§(§6w§);
                     while(_loc2_)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           return;
                        }
                     }
                     continue loop1;
                     loop7:
                     while(_loc2_ || _loc2_)
                     {
                        §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
                        loop8:
                        while(!(_loc1_ && _loc1_))
                        {
                           continue loop0;
                           §2m§();
                           if(_loc1_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              continue loop7;
                           }
                           if(_loc2_)
                           {
                              §§goto(addr33);
                           }
                           while(true)
                           {
                              this.§8<§ = (§6w§.getItemByName("Container_PowerUpButtons") as §08§).x;
                              break loop8;
                           }
                        }
                        while(true)
                        {
                           this.§`-§ = new §7J§(§6w§);
                           continue loop7;
                           §§goto(addr47);
                        }
                        addr47:
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§#!J§ = (§6w§.getItemByName("Container_PowerUpButtons") as §08§).width - 25;
            §§goto(addr117);
         }
      }
      
      private function §,!z§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§3s§.data;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && param1)
               {
                  break;
               }
               if(_loc2_.u == param1)
               {
                  if(_loc5_)
                  {
                     if(_loc2_.a)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                  }
               }
            }
            return null;
         }
         return _loc2_.a;
      }
      
      private function §[@§(param1:int) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc2_:* = param1.toString();
         var _loc3_:Array = [];
         if(!_loc7_)
         {
            §§push(_loc2_);
            loop0:
            while(§§pop().length % 3 > 0)
            {
               if(_loc8_)
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc7_)
                  {
                     §§push(§§pop().slice(_loc2_.length % 3));
                  }
                  if(_loc8_ || _loc2_)
                  {
                     continue;
                  }
                  continue loop0;
               }
            }
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc7_ && _loc3_))
                  {
                     if(§§pop().length <= 0)
                     {
                        if(!_loc7_)
                        {
                           var _loc5_:int = 0;
                           if(_loc8_ || _loc2_)
                           {
                              var _loc6_:* = _loc3_;
                              if(_loc8_)
                              {
                                 loop4:
                                 while(§§hasnext(_loc6_,_loc5_))
                                 {
                                    §§push(§§nextvalue(_loc5_,_loc6_));
                                    if(!_loc7_)
                                    {
                                       _loc4_ = §§pop();
                                       if(!(_loc8_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() + (_loc4_ + ","));
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       continue loop4;
                                    }
                                 }
                                 addr192:
                                 if(!(_loc7_ && this))
                                 {
                                    addr200:
                                    §§push(_loc2_);
                                    if(_loc8_ || _loc2_)
                                    {
                                       addr208:
                                       §§push(§§pop().substr(0,_loc2_.length - 1));
                                       if(_loc8_)
                                       {
                                          addr216:
                                          _loc2_ = §§pop();
                                       }
                                       break;
                                    }
                                    §§goto(addr216);
                                 }
                                 §§push(_loc2_);
                                 break;
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr200);
                     }
                     else
                     {
                        _loc3_.push(_loc2_.substr(0,3));
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc8_)
                           {
                              §§push(3);
                              if(!_loc7_)
                              {
                                 §§push(§§pop().substr(§§pop()));
                                 if(_loc8_ || this)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc8_ || _loc3_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr192);
                                 }
                                 else
                                 {
                                    §§goto(addr208);
                                 }
                              }
                              §§goto(addr208);
                           }
                           break;
                        }
                     }
                     §§goto(addr216);
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr126);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.keyUp(param1);
         }
         while(!AngryBirdsFP11.§4x§)
         {
            if(_loc4_ || param1)
            {
               return;
            }
            if(!(_loc3_ && this))
            {
               break;
            }
         }
         loop1:
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(_loc4_)
            {
               if(Keyboard.M === _loc2_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr107:
                     §§push(0);
                     if(!(_loc4_ || param1))
                     {
                        addr123:
                     }
                  }
                  else
                  {
                     addr120:
                     §§push(1);
                     if(_loc4_)
                     {
                        §§goto(addr123);
                     }
                  }
                  addr128:
                  switch(§§pop())
                  {
                     case 0:
                        this.§!I§ = true;
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        break loop1;
                     case 1:
                        continue;
                  }
               }
               else
               {
                  if(Keyboard.K === _loc2_)
                  {
                     §§goto(addr120);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr128);
               }
               §§goto(addr120);
            }
            §§goto(addr107);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            §§push(§!'§.isOpen);
            if(!(_loc4_ && this))
            {
               §§push(Boolean(§§pop()));
               if(_loc5_)
               {
                  if(!§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           §§push(§%?§.§0!f§());
                           if(_loc5_)
                           {
                              addr47:
                              §§push(Boolean(§§pop()));
                              if(!_loc4_)
                              {
                                 addr50:
                                 if(§§pop())
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       §§goto(addr58);
                                    }
                                    else
                                    {
                                       addr61:
                                       §§push(this.§ "B§.run(param1));
                                       if(_loc5_ || _loc3_)
                                       {
                                       }
                                       var _loc2_:* = §§pop();
                                       if(_loc5_)
                                       {
                                          §§push(§#6§.§6!z§);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§pop().objects);
                                             addr513:
                                             while(true)
                                             {
                                                §§push(§§pop().isPigsAlive());
                                                addr514:
                                                loop2:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.disablePowerupMenu();
                                                         addr517:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr515:
                                                   }
                                                   while(true)
                                                   {
                                                      if(§1e§)
                                                      {
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(this.§`-§);
                                                            addr508:
                                                            while(true)
                                                            {
                                                               §§pop().§ "&§();
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§`!$§);
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.hidePowerUp(this.§`-§.§`b§);
                                                                              addr495:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           addr490:
                                                                        }
                                                                        addr285:
                                                                        if(!(_loc5_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        loop40:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop55:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§'!<§);
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() - param1);
                                                                                 }
                                                                                 §§pop().§'!<§ = §§pop();
                                                                                 loop42:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§'!<§ < 0);
                                                                                    loop50:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          addr237:
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(!(_loc5_ || _loc2_))
                                                                                                {
                                                                                                   break loop42;
                                                                                                }
                                                                                                addr253:
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc4_ && this))
                                                                                                {
                                                                                                   addr261:
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         loop41:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop48:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  continue loop42;
                                                                                                               }
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(this.§4!i§);
                                                                                                                  loop51:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     addr189:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop52:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              loop33:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc5_ || param1)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop9;
                                                                                                                                       }
                                                                                                                                       §§push(this.§0"@§());
                                                                                                                                       loop53:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             continue loop41;
                                                                                                                                          }
                                                                                                                                          if(!(_loc4_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr214);
                                                                                                                                             }
                                                                                                                                             addr121:
                                                                                                                                             addr121:
                                                                                                                                             addr121:
                                                                                                                                             addr121:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             loop34:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                loop35:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      loop36:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               continue loop40;
                                                                                                                                                            }
                                                                                                                                                            loop37:
                                                                                                                                                            while(!(_loc4_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc4_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  loop47:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc4_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop0;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(this.§4!i§);
                                                                                                                                                                        while(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           while(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              addr278:
                                                                                                                                                                              if(!(_loc4_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr285);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 loop31:
                                                                                                                                                                                 for(; _loc5_ || this; §§goto(addr278))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          addr458:
                                                                                                                                                                                          while(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(!§1e§);
                                                                                                                                                                                             break loop37;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr517);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr457:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§-B§);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr385:
                                                                                                                                                                                                   while(_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §,3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!!5§);
                                                                                                                                                                                                      loop44:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§-B§ = true;
                                                                                                                                                                                                         addr361:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop44;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop34;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr490);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break loop35;
                                                                                                                                                                                                   addr385:
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop34;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr384:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr385);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          if(mNextState != §<!z§.STATE_NAME)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(mNextState)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc5_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               return §1-§.STATE_STATUS_COMPLETED;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop8;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop6;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr128:
                                                                                                                                                                                                      if(_loc4_ && param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr214:
                                                                                                                                                                                                         return §1-§.STATE_STATUS_COMPLETED;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(this.§0"@§());
                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop53;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc4_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop52;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop51;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop50;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr151:
                                                                                                                                                                                                         if(_loc5_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               return §1-§.STATE_STATUS_COMPLETED;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop48;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop33;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop47;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(mNextState == §-!@§.STATE_NAME);
                                                                                                                                                                                                               continue loop31;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc4_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§>!,§(param1);
                                                                                                                                                                                                                  continue loop0;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr515);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr402:
                                                                                                                                                                                                            addr470:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr361);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc4_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr121);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop55;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr151);
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr128);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(super.run(param1));
                                                                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc3_:* = §§pop();
                                                                                                                                                                                    if(!(_loc4_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr737:
                                                                                                                                                                                       §§push(!this.§`!$§);
                                                                                                                                                                                       if(!this.§`!$§)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr739:
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          addr720:
                                                                                                                                                                                          addr740:
                                                                                                                                                                                          §§push(!§#6§.§6!z§.slingshot.birdsAvailable);
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr724:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                addr732:
                                                                                                                                                                                                this.§`-§.setPowerupActive(§>,§.§^Q§.§[2§,false);
                                                                                                                                                                                                addr691:
                                                                                                                                                                                                addr726:
                                                                                                                                                                                                addr733:
                                                                                                                                                                                                addr731:
                                                                                                                                                                                                addr728:
                                                                                                                                                                                                §§push(this.§`-§);
                                                                                                                                                                                                §§push(§>,§.§7!C§.§[2§);
                                                                                                                                                                                                §§push(false);
                                                                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().setPowerupActive(§§pop(),§§pop());
                                                                                                                                                                                                   addr713:
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr645:
                                                                                                                                                                                                      §§push(this.§`-§);
                                                                                                                                                                                                      if(!(_loc4_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§>,§.§%!X§.§[2§);
                                                                                                                                                                                                         if(!(_loc4_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(false);
                                                                                                                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().setPowerupActive(§§pop(),§§pop());
                                                                                                                                                                                                                  addr673:
                                                                                                                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr597:
                                                                                                                                                                                                                        §§push(this.§`!$§);
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                                                                           if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc5_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       if(!(_loc4_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr640:
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             addr641:
                                                                                                                                                                                                                                             §§push(§#6§.§6!z§);
                                                                                                                                                                                                                                             if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().slingshot);
                                                                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop().mSlingShotState == §2a§.§0T§);
                                                                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr587);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr737);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr640);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr720);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr587:
                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr589:
                                                                                                                                                                                                                                             this.hidePowerUp(this.§`-§.§`b§);
                                                                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§`-§);
                                                                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().§ "&§();
                                                                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc5_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr673);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr538);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr641);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr589);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr691);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr645);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr726);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr538:
                                                                                                                                                                                                                                          return §1-§.STATE_STATUS_RUNNING;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr737);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr739);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr640);
                                                                                                                                                                                                                        addr687:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr733);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr713);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr691);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr731);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr691);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr728);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr740);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr732);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr597);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr737);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr724);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr687);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    §§goto(addr402);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr401:
                                                                                                                                                                              }
                                                                                                                                                                              continue loop50;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop35;
                                                                                                                                                                           §§goto(addr237);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           break loop36;
                                                                                                                                                                        }
                                                                                                                                                                        addr399:
                                                                                                                                                                     }
                                                                                                                                                                     addr417:
                                                                                                                                                                     addr485:
                                                                                                                                                                     while(_loc5_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§4">§(param1);
                                                                                                                                                                        while(!(_loc4_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr399);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr458);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        this.§1!3§(param1);
                                                                                                                                                                        §§goto(addr470);
                                                                                                                                                                        §§goto(addr417);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  break loop41;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(!(_loc4_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr417);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr394);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr322);
                                                                                                                                                            }
                                                                                                                                                            addr322:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr455);
                                                                                                                                                               §§goto(addr408);
                                                                                                                                                            }
                                                                                                                                                            addr408:
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                         §§goto(addr253);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr401);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr378);
                                                                                                                                                      }
                                                                                                                                                      addr314:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr384);
                                                                                                                                                }
                                                                                                                                                §§goto(addr495);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr518);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr385);
                                                                                                                                 }
                                                                                                                                 §§goto(addr393);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr121);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr427);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               §§goto(addr457);
                                                                                                            }
                                                                                                            §§goto(addr415);
                                                                                                         }
                                                                                                         addr456:
                                                                                                      }
                                                                                                      §§goto(addr189);
                                                                                                   }
                                                                                                   §§goto(addr456);
                                                                                                }
                                                                                                §§goto(addr314);
                                                                                             }
                                                                                             §§goto(addr322);
                                                                                          }
                                                                                          §§goto(addr273);
                                                                                       }
                                                                                       §§goto(addr276);
                                                                                    }
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              addr294:
                                                                           }
                                                                           §§goto(addr121);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§`-§);
                                                         if(_loc5_)
                                                         {
                                                            §§pop().run(param1);
                                                            §§goto(addr485);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr508);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr294);
                                    }
                                 }
                                 §§goto(addr61);
                              }
                           }
                           §§goto(addr61);
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr50);
               }
            }
            §§goto(addr47);
         }
         addr58:
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      protected function disablePowerupMenu() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§2G§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in §>,§.§%!#§)
         {
            if(_loc4_)
            {
               §6w§.getItemByName(_loc1_.§&!y§).setEnabled(false);
            }
         }
         if(!(_loc5_ && _loc2_))
         {
            this.§`-§.§ "&§();
            do
            {
               §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
            }
            while(_loc5_);
            
         }
      }
      
      private function §1!3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§6D§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr24:
                  return;
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§[A§);
                  if(_loc2_ || param1)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§[A§ = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr76);
      }
      
      protected function §0"@§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(§#6§.§6!z§);
            loop0:
            while(true)
            {
               §§push((§§pop() as §2K§).§-"#§);
               loop1:
               while(true)
               {
                  §§push(§§pop().§6I§);
                  if(!(_loc1_ && this))
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop9:
                           while(true)
                           {
                              §§pop();
                              addr148:
                              while(true)
                              {
                                 §§push(!this.§["9§);
                                 addr105:
                                 while(!(_loc2_ || _loc2_))
                                 {
                                    continue loop9;
                                 }
                              }
                           }
                           addr147:
                        }
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(§#6§.§6!z§);
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §§push((§§pop() as §2K§).§-"#§);
                                 if(_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop().§6I§);
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       break loop3;
                                    }
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr105);
                                 }
                                 else
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,this.§!!l§);
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop4;
                                          }
                                          addr124:
                                          addr124:
                                          while(true)
                                          {
                                             this.§["9§ = §%?§.§@-§();
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             break loop5;
                                          }
                                          §§push(§#6§.§6!z§);
                                          continue loop0;
                                       }
                                       addr88:
                                    }
                                 }
                                 §§goto(addr148);
                              }
                           }
                           §§goto(addr124);
                        }
                        addr75:
                        return §§pop();
                     }
                  }
                  §§goto(addr147);
               }
            }
         }
         §§goto(addr124);
      }
      
      private function §!!l§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§#6§.§6!z§ as §2K§).§-"#§.removeEventListener(Event.COMPLETE,this.§!!l§);
         }
         do
         {
            this.§["9§.close();
            do
            {
               this.§["9§ = null;
            }
            while(_loc2_ && _loc2_);
            
         }
         while(_loc2_);
         
      }
      
      private function §!!5§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§4!i§ = true;
         }
         do
         {
            §,3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!!5§);
         }
         while(!_loc3_);
         
      }
      
      override protected function levelCompleted() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc1_)
         {
            super.levelCompleted();
         }
         §§push(LevelManager.§'!O§);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = §,3§.getScore();
         if(!(_loc6_ && this))
         {
            §+!B§.§""1§(§>f§.§5!k§,_loc1_,_loc2_);
         }
         var _loc3_:Array = (§#6§.§6!z§ as §2K§).§[v§();
         var _loc4_:String = JSON.stringify(_loc3_);
         if(_loc5_ || _loc3_)
         {
            §+!B§.§[r§(_loc3_,_loc1_,_loc2_);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = 0;
         if(!(_loc7_ && param1))
         {
            if(param1 == 1)
            {
               loop0:
               do
               {
                  §§push(§#6§.§6!z§);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop().slingshot);
                     if(!_loc7_)
                     {
                        if(!§§pop().mDragging)
                        {
                           while(true)
                           {
                              §§push(§#6§.§6!z§);
                              if(!_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 §§pop().camera.stopDragging();
                                 if(!(_loc7_ && param3))
                                 {
                                    if(_loc7_ && param2)
                                    {
                                       §§push(§#6§.§6!z§);
                                       break;
                                    }
                                    addr896:
                                    continue loop0;
                                 }
                                 if(!_loc7_)
                                 {
                                    continue;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       while(true)
                                       {
                                          §,3§.changeGameState(§^"1§.§60§);
                                          continue loop4;
                                       }
                                       addr900:
                                    }
                                    return;
                                 }
                              }
                              break;
                           }
                           §§push(§§pop().slingshot);
                           break;
                        }
                        §§goto(addr896);
                     }
                     break;
                  }
                  §§pop().shoot();
                  §§goto(addr900);
               }
               while(_loc7_);
               
            }
            var _loc5_:* = param2;
            if(!_loc7_)
            {
               §§push("showTutorial");
               if(_loc6_)
               {
                  §§push(_loc5_);
                  if(_loc6_ || param3)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc7_ && param3))
                        {
                           §§push(0);
                           if(_loc7_ && param3)
                           {
                              addr1293:
                           }
                        }
                        else
                        {
                           addr1410:
                           §§push(21);
                           if(!_loc7_)
                           {
                              addr1413:
                           }
                           else
                           {
                              addr1538:
                           }
                        }
                     }
                     else
                     {
                        §§push("PAUSE");
                        if(_loc6_)
                        {
                           §§push(_loc5_);
                           if(!(_loc7_ && param2))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_)
                                 {
                                    §§push(1);
                                    if(_loc7_)
                                    {
                                       addr1063:
                                    }
                                 }
                                 else
                                 {
                                    addr1239:
                                    §§push(14);
                                    if(_loc6_ || this)
                                    {
                                       addr1247:
                                    }
                                    else
                                    {
                                       addr1270:
                                    }
                                 }
                                 §§goto(addr1555);
                              }
                              else
                              {
                                 §§push("RESTART_LEVEL");
                                 if(!_loc7_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc6_ || param1)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(2);
                                             if(_loc6_ || param2)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr991:
                                             §§push(3);
                                             if(!_loc6_)
                                             {
                                                addr1436:
                                             }
                                          }
                                          §§goto(addr1555);
                                       }
                                       else
                                       {
                                          §§push("CLOSE_TUTORIAL");
                                          if(_loc6_ || this)
                                          {
                                             §§push(_loc5_);
                                             if(!_loc7_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr991);
                                                   }
                                                   else
                                                   {
                                                      addr1267:
                                                      §§push(15);
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr1270);
                                                      }
                                                      else
                                                      {
                                                         addr1357:
                                                         §§goto(addr1555);
                                                      }
                                                   }
                                                   §§goto(addr1555);
                                                }
                                                else
                                                {
                                                   §§push("MIGHTY_EAGLE");
                                                   if(!_loc7_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§push(4);
                                                               if(_loc7_ && param3)
                                                               {
                                                                  addr1311:
                                                               }
                                                               §§goto(addr1555);
                                                            }
                                                            else
                                                            {
                                                               addr1101:
                                                               §§push(8);
                                                               if(_loc6_ || param2)
                                                               {
                                                                  §§goto(addr1555);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1538);
                                                               }
                                                            }
                                                            §§goto(addr1555);
                                                         }
                                                         else
                                                         {
                                                            §§push("POWERUP_OPEN");
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               §§push(_loc5_);
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  addr1034:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        §§push(5);
                                                                        if(!(_loc7_ && param3))
                                                                        {
                                                                           §§goto(addr1555);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1293);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr1382:
                                                                        §§push(20);
                                                                        if(_loc7_ && param2)
                                                                        {
                                                                           addr1472:
                                                                        }
                                                                        §§goto(addr1555);
                                                                     }
                                                                     §§goto(addr1555);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("POWERUP1");
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(6);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§goto(addr1063);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr1270);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr1349:
                                                                                 §§push(19);
                                                                                 if(_loc6_ || param3)
                                                                                 {
                                                                                    §§goto(addr1357);
                                                                                 }
                                                                                 §§goto(addr1555);
                                                                              }
                                                                              §§goto(addr1555);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("POWERUP2");
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(!(_loc7_ && param3))
                                                                                       {
                                                                                          §§push(7);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr1155:
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr1469:
                                                                                          §§push(24);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§goto(addr1472);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1555);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push("POWERUP3");
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr1090:
                                                                                          §§push(_loc5_);
                                                                                          if(!(_loc7_ && param2))
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§goto(addr1101);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr1428:
                                                                                                   §§push(22);
                                                                                                   if(_loc6_ || param3)
                                                                                                   {
                                                                                                      §§goto(addr1436);
                                                                                                   }
                                                                                                   §§goto(addr1555);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push("POWERUP4");
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr1113:
                                                                                                   §§push(_loc5_);
                                                                                                   if(!(_loc7_ && this))
                                                                                                   {
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(9);
                                                                                                            if(!(_loc7_ && this))
                                                                                                            {
                                                                                                               §§goto(addr1555);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr1247);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr1349);
                                                                                                         }
                                                                                                         §§goto(addr1555);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push("POWERUP5");
                                                                                                         if(!(_loc7_ && param2))
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               addr1149:
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§push(10);
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        §§goto(addr1155);
                                                                                                                     }
                                                                                                                     §§goto(addr1555);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr1428);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push("POWERUPOVER1");
                                                                                                                  if(_loc6_ || this)
                                                                                                                  {
                                                                                                                     addr1164:
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        if(§§pop() === §§pop())
                                                                                                                        {
                                                                                                                           if(_loc6_ || param2)
                                                                                                                           {
                                                                                                                              §§push(11);
                                                                                                                              if(!(_loc7_ && param2))
                                                                                                                              {
                                                                                                                                 §§goto(addr1555);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1247);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1555);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push("POWERUPOVER2");
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 addr1195:
                                                                                                                                 if(§§pop() === §§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push(12);
                                                                                                                                       if(_loc6_ || param1)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1555);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr1413);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr1530:
                                                                                                                                       §§push(26);
                                                                                                                                       if(!(_loc7_ && param1))
                                                                                                                                       {
                                                                                                                                          §§goto(addr1538);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1555);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1555);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push("POWERUPOVER3");
                                                                                                                                    if(_loc6_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() === §§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc7_ && param2))
                                                                                                                                             {
                                                                                                                                                addr1226:
                                                                                                                                                §§push(13);
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1555);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1436);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr1446:
                                                                                                                                                §§push(23);
                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1555);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1472);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1555);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push("POWERUPOVER4");
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1239);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr1308:
                                                                                                                                                         §§push(17);
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1311);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1538);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1555);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push("MIGHTYEAGLEOVER");
                                                                                                                                                      if(!(_loc7_ && param2))
                                                                                                                                                      {
                                                                                                                                                         addr1256:
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            addr1259:
                                                                                                                                                            if(§§pop() === §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc7_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1267);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1428);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push("MIGHTYEAGLEOUT");
                                                                                                                                                               if(_loc6_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr1279:
                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                  if(!(_loc7_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() === §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(16);
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1293);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr1334:
                                                                                                                                                                              §§goto(addr1555);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1446);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1555);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push("POWERUPOUT1");
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1297:
                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() === §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc7_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1308);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1446);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push("POWERUPOUT2");
                                                                                                                                                                                 if(_loc6_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1320:
                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1323:
                                                                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(18);
                                                                                                                                                                                             if(_loc6_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1334);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1538);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1469);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1555);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push("POWERUPOUT3");
                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1338:
                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                             if(!(_loc7_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1346:
                                                                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1349);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1410);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push("POWERUPOUT4");
                                                                                                                                                                                                   if(!(_loc7_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1366:
                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                      if(!(_loc7_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1374:
                                                                                                                                                                                                         if(§§pop() === §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc6_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1382);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1497:
                                                                                                                                                                                                               §§push(25);
                                                                                                                                                                                                               if(_loc7_ && param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1555);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push("POWERUPOUT5");
                                                                                                                                                                                                            if(!_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                               if(!(_loc7_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1402:
                                                                                                                                                                                                                  if(§§pop() === §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc7_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1410);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1469);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push("RESTART_LEVEL");
                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1417:
                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1420:
                                                                                                                                                                                                                           if(§§pop() === §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc6_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1428);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1469);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push("CLOSE_TUTORIAL_POWERUP");
                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1440:
                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1443:
                                                                                                                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1446);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1497);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push("ZOOM_IN");
                                                                                                                                                                                                                                       if(!(_loc7_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1463:
                                                                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1466:
                                                                                                                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1469);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1530);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push("ZOOM_OUT");
                                                                                                                                                                                                                                                if(_loc6_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1481:
                                                                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                                                                   if(!(_loc7_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc6_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1497);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1542:
                                                                                                                                                                                                                                                            §§push(27);
                                                                                                                                                                                                                                                            if(_loc6_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1555);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push("ZOOM_IN_RELEASE");
                                                                                                                                                                                                                                                         if(_loc6_ || param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1541:
                                                                                                                                                                                                                                                         if(§§pop() === _loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1542);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1555:
                                                                                                                                                                                                                                                            loop5:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               switch(§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  case 0:
                                                                                                                                                                                                                                                                     this.showTutorials();
                                                                                                                                                                                                                                                                     break loop5;
                                                                                                                                                                                                                                                                     addr846:
                                                                                                                                                                                                                                                                  case 1:
                                                                                                                                                                                                                                                                     §2!e§.§5;§ = getPauseState();
                                                                                                                                                                                                                                                                     mNextState = getPauseState();
                                                                                                                                                                                                                                                                     break loop5;
                                                                                                                                                                                                                                                                     addr832:
                                                                                                                                                                                                                                                                     addr840:
                                                                                                                                                                                                                                                                  case 2:
                                                                                                                                                                                                                                                                     §2!e§.§5;§ = STATE_NAME;
                                                                                                                                                                                                                                                                     §!!7§.§-V§();
                                                                                                                                                                                                                                                                     mNextState = §!!7§.STATE_NAME;
                                                                                                                                                                                                                                                                     addr815:
                                                                                                                                                                                                                                                                     break loop5;
                                                                                                                                                                                                                                                                     addr826:
                                                                                                                                                                                                                                                                     addr815:
                                                                                                                                                                                                                                                                     addr819:
                                                                                                                                                                                                                                                                  case 3:
                                                                                                                                                                                                                                                                     §!'§.§]>§();
                                                                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break loop5;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break loop5;
                                                                                                                                                                                                                                                                  case 4:
                                                                                                                                                                                                                                                                     addr798:
                                                                                                                                                                                                                                                                     if((§#6§.§6!z§ as §2K§).§-"#§.useMightyEagle())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr799:
                                                                                                                                                                                                                                                                        this.useMightyEagle();
                                                                                                                                                                                                                                                                        addr801:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break loop5;
                                                                                                                                                                                                                                                                  case 5:
                                                                                                                                                                                                                                                                     addr769:
                                                                                                                                                                                                                                                                     §§push(this.§`-§.§`b§);
                                                                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §6w§.getItemByName("Container_PowerUpButtons").setVisibility(true);
                                                                                                                                                                                                                                                                           addr773:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr762:
                                                                                                                                                                                                                                                                        this.§`-§.§-!X§();
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr798);
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  case 6:
                                                                                                                                                                                                                                                                  case 7:
                                                                                                                                                                                                                                                                  case 8:
                                                                                                                                                                                                                                                                  case 9:
                                                                                                                                                                                                                                                                  case 10:
                                                                                                                                                                                                                                                                     §§push(this.§`-§);
                                                                                                                                                                                                                                                                     loop9:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().§;!7§ = this.§`-§.§ !2§(param2);
                                                                                                                                                                                                                                                                        addr758:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.§`-§);
                                                                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop9;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc6_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().§;!7§);
                                                                                                                                                                                                                                                                              if(!(_loc7_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr740:
                                                                                                                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                                                                                                                                                                                                                                                                                       this.dimPowerUp();
                                                                                                                                                                                                                                                                                       addr747:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr832);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break loop5;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr769);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr769);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr762);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  case 11:
                                                                                                                                                                                                                                                                     addr697:
                                                                                                                                                                                                                                                                     §§push(§?!F§.§;"§.§!!y§(§>,§.§^Q§.§]6§));
                                                                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr706:
                                                                                                                                                                                                                                                                        addr705:
                                                                                                                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr704:
                                                                                                                                                                                                                                                                           §§push(_loc4_ = §§pop());
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(§§pop() <= 0)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr707:
                                                                                                                                                                                                                                                                           §6w§.getItemByName("MovieClip_GetMore1").setVisibility(true);
                                                                                                                                                                                                                                                                           (§6w§.getItemByName("MovieClip_GetMore1") as §7"-§).§5%§ = true;
                                                                                                                                                                                                                                                                           if(_loc6_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              (§6w§.getItemByName("MovieClip_GetMore1") as §7"-§).§2!H§("Start");
                                                                                                                                                                                                                                                                              addr672:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr747);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr712:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break loop5;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  case 12:
                                                                                                                                                                                                                                                                     addr655:
                                                                                                                                                                                                                                                                     §§push(_loc4_ = int(§?!F§.§;"§.§!!y§(§>,§.§7!C§.§]6§)));
                                                                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr658:
                                                                                                                                                                                                                                                                           §6w§.getItemByName("MovieClip_GetMore2").setVisibility(true);
                                                                                                                                                                                                                                                                           (§6w§.getItemByName("MovieClip_GetMore2") as §7"-§).§5%§ = true;
                                                                                                                                                                                                                                                                           (§6w§.getItemByName("MovieClip_GetMore2") as §7"-§).§2!H§("Start");
                                                                                                                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc6_ || this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr707);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr663:
                                                                                                                                                                                                                                                                           addr641:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break loop5;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr706);
                                                                                                                                                                                                                                                                     §§goto(addr706);
                                                                                                                                                                                                                                                                  case 13:
                                                                                                                                                                                                                                                                     addr573:
                                                                                                                                                                                                                                                                     §§push(§?!F§.§;"§.§!!y§(§>,§.§%!X§.§]6§));
                                                                                                                                                                                                                                                                     if(_loc6_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr582:
                                                                                                                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr586:
                                                                                                                                                                                                                                                                           §§push(_loc4_ = §§pop());
                                                                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                                                                           if(!(_loc7_ && param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr595:
                                                                                                                                                                                                                                                                                 if(!(_loc7_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §6w§.getItemByName("MovieClip_GetMore3").setVisibility(true);
                                                                                                                                                                                                                                                                                    addr607:
                                                                                                                                                                                                                                                                                    if(!(_loc7_ && this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       (§6w§.getItemByName("MovieClip_GetMore3") as §7"-§).§5%§ = true;
                                                                                                                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc6_ || param3)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             (§6w§.getItemByName("MovieClip_GetMore3") as §7"-§).§2!H§("Start");
                                                                                                                                                                                                                                                                                             addr484:
                                                                                                                                                                                                                                                                                             break loop5;
                                                                                                                                                                                                                                                                                             addr546:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr846);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break loop5;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr712);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr826);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr484);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr655);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr705);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                     §§goto(addr706);
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  case 14:
                                                                                                                                                                                                                                                                     addr489:
                                                                                                                                                                                                                                                                     §§push(§?!F§.§;"§);
                                                                                                                                                                                                                                                                     if(_loc6_ || param3)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr501:
                                                                                                                                                                                                                                                                           §§push(§>,§.§&m§.§]6§);
                                                                                                                                                                                                                                                                           if(_loc6_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr511:
                                                                                                                                                                                                                                                                                 §§push(§§pop().§!!y§(§§pop()));
                                                                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr521:
                                                                                                                                                                                                                                                                                          §§push(_loc4_ = §§pop());
                                                                                                                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr525:
                                                                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr528:
                                                                                                                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §6w§.getItemByName("MovieClip_GetMore4").setVisibility(true);
                                                                                                                                                                                                                                                                                                      addr535:
                                                                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         (§6w§.getItemByName("MovieClip_GetMore4") as §7"-§).§5%§ = true;
                                                                                                                                                                                                                                                                                                         (§6w§.getItemByName("MovieClip_GetMore4") as §7"-§).§2!H§("Start");
                                                                                                                                                                                                                                                                                                         addr474:
                                                                                                                                                                                                                                                                                                         addr483:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr815);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr758);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break loop5;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr704);
                                                                                                                                                                                                                                                                                             §§goto(addr747);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr655);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr582);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr706);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr586);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr655);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr697);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr706);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr573);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr655);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr655);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr573);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  case 15:
                                                                                                                                                                                                                                                                     §§push(§?!F§.§;"§);
                                                                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§>,§.§^t§.§]6§);
                                                                                                                                                                                                                                                                           if(_loc6_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc6_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop().§!!y§(§§pop()));
                                                                                                                                                                                                                                                                                 if(!(_loc6_ || param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc6_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                             if(_loc6_ || param3)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc7_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr411:
                                                                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                                                                         if(!(_loc7_ && param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc7_ && this))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr426:
                                                                                                                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc6_ || param2)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        (§6w§.getItemByName("MovieClip_GetMore") as §7"-§).§5%§ = true;
                                                                                                                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc6_ || this)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc6_ || param3)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    (§6w§.getItemByName("MovieClip_GetMore") as §7"-§).§2!H§("Start");
                                                                                                                                                                                                                                                                                                                                    addr332:
                                                                                                                                                                                                                                                                                                                                    if(!(_loc7_ && param2))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §6w§.getItemByName("MovieClip_GetMore").setVisibility(true);
                                                                                                                                                                                                                                                                                                                                       addr316:
                                                                                                                                                                                                                                                                                                                                       if(!(_loc7_ && this))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr301:
                                                                                                                                                                                                                                                                                                                                          break loop5;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr658);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr595);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr663);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr546);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr474);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        break loop5;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr707);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr483);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr301);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr586);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr525);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr706);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr655);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr586);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr521);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr411);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr511);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr521);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr411);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr655);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr501);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr697);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr697);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr489);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  case 16:
                                                                                                                                                                                                                                                                     §6w§.getItemByName("MovieClip_GetMore").setVisibility(false);
                                                                                                                                                                                                                                                                     break loop5;
                                                                                                                                                                                                                                                                     addr309:
                                                                                                                                                                                                                                                                  case 17:
                                                                                                                                                                                                                                                                     §6w§.getItemByName("MovieClip_GetMore1").setVisibility(false);
                                                                                                                                                                                                                                                                     addr286:
                                                                                                                                                                                                                                                                     if(_loc6_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc7_ && param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break loop5;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr528);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr426);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  case 18:
                                                                                                                                                                                                                                                                     §6w§.getItemByName("MovieClip_GetMore2").setVisibility(false);
                                                                                                                                                                                                                                                                     addr261:
                                                                                                                                                                                                                                                                     if(!(_loc7_ && param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc6_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop5;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr658);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr747);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr535);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  case 19:
                                                                                                                                                                                                                                                                     §6w§.getItemByName("MovieClip_GetMore3").setVisibility(false);
                                                                                                                                                                                                                                                                     addr243:
                                                                                                                                                                                                                                                                     if(_loc6_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break loop5;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr840);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr819);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  case 20:
                                                                                                                                                                                                                                                                     §6w§.getItemByName("MovieClip_GetMore4").setVisibility(false);
                                                                                                                                                                                                                                                                     break loop5;
                                                                                                                                                                                                                                                                     addr234:
                                                                                                                                                                                                                                                                  case 21:
                                                                                                                                                                                                                                                                     §6w§.getItemByName("MovieClip_GetMore5").setVisibility(false);
                                                                                                                                                                                                                                                                     addr218:
                                                                                                                                                                                                                                                                     if(_loc6_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break loop5;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr286);
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  case 22:
                                                                                                                                                                                                                                                                     break loop5;
                                                                                                                                                                                                                                                                  case 23:
                                                                                                                                                                                                                                                                     §!'§.§]>§();
                                                                                                                                                                                                                                                                     addr202:
                                                                                                                                                                                                                                                                     if(!(_loc7_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break loop5;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr773);
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  case 24:
                                                                                                                                                                                                                                                                     this.§6D§ = §>!O§;
                                                                                                                                                                                                                                                                     addr187:
                                                                                                                                                                                                                                                                     if(!(_loc7_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        this.§[A§ = §+"B§;
                                                                                                                                                                                                                                                                        addr173:
                                                                                                                                                                                                                                                                        if(_loc6_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break loop5;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr801);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr740);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  case 25:
                                                                                                                                                                                                                                                                     §§push(this);
                                                                                                                                                                                                                                                                     §§push(§>!O§);
                                                                                                                                                                                                                                                                     if(_loc6_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().§6D§ = §§pop();
                                                                                                                                                                                                                                                                     loop7:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc7_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc6_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 this.§[A§ = §+"B§;
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop7;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc7_ && this))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr78:
                                                                                                                                                                                                                                                                                          break loop5;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr641);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr218);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr121:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr773);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr332);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr173);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr801);
                                                                                                                                                                                                                                                                  case 26:
                                                                                                                                                                                                                                                                     this.§6D§ = 0;
                                                                                                                                                                                                                                                                     addr84:
                                                                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc6_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc6_ || param3)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc7_ && param3))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break loop5;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr799);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr316);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr672);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr261);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr243);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr815);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr202);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  case 27:
                                                                                                                                                                                                                                                                     this.§6D§ = 0;
                                                                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc7_ && param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc6_ || param2)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc6_ || param2)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc6_ || param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc6_ || param3)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc7_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break loop5;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr78);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr607);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr309);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr234);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr187);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr747);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr121);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr84);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr773);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            return;
                                                                                                                                                                                                                                                            §§push(28);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1555);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1542);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1541);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1517:
                                                                                                                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc7_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1530);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1542);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1541);
                                                                                                                                                                                                                                                      §§push("ZOOM_OUT_RELEASE");
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1542);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1555);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1517);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1481);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1555);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1517);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1481);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1555);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1466);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1481);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1555);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1466);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1463);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1555);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1541);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1481);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1555);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1443);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1541);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1374);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1338);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1555);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1323);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1417);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1323);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1338);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1555);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1443);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1481);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1346);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1320);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1443);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1297);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1420);
                                                                                                                           }
                                                                                                                           §§goto(addr1279);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1323);
                                                                                                                  }
                                                                                                                  §§goto(addr1440);
                                                                                                               }
                                                                                                               §§goto(addr1555);
                                                                                                            }
                                                                                                            §§goto(addr1517);
                                                                                                         }
                                                                                                         §§goto(addr1297);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1402);
                                                                                                }
                                                                                                §§goto(addr1481);
                                                                                             }
                                                                                             §§goto(addr1555);
                                                                                          }
                                                                                          §§goto(addr1346);
                                                                                       }
                                                                                       §§goto(addr1463);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1149);
                                                                              }
                                                                              §§goto(addr1113);
                                                                           }
                                                                        }
                                                                        §§goto(addr1402);
                                                                     }
                                                                     §§goto(addr1090);
                                                                  }
                                                               }
                                                               §§goto(addr1259);
                                                            }
                                                            §§goto(addr1113);
                                                         }
                                                      }
                                                      §§goto(addr1195);
                                                   }
                                                   §§goto(addr1366);
                                                }
                                             }
                                             §§goto(addr1443);
                                          }
                                          §§goto(addr1279);
                                       }
                                    }
                                    §§goto(addr1466);
                                 }
                                 §§goto(addr1256);
                              }
                           }
                           §§goto(addr1034);
                        }
                        §§goto(addr1113);
                     }
                     §§goto(addr1555);
                  }
                  §§goto(addr1149);
               }
               §§goto(addr1164);
            }
            §§goto(addr1226);
         }
         §§goto(addr877);
      }
      
      protected function showTutorials() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §!'§.§0!J§(§6w§,"ALL_BASIC",true);
         }
         do
         {
            §!'§.showTutorials(§6w§,true);
         }
         while(!(_loc1_ || this));
         
      }
      
      override protected function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.useMightyEagle();
            while(true)
            {
               this.§ "B§.§64§ = true;
               §§goto(addr53);
            }
         }
         addr53:
         while(true)
         {
            §!'§.showTutorials(§6w§);
            if(!(_loc1_ && this))
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function initActivation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.initActivation();
            do
            {
               this.§ "B§.§64§ = false;
            }
            while(_loc2_ && this);
            
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc3_)
         {
            super.updateCurrentScore(param1);
         }
         var _loc2_:int = §,3§.getScore();
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§'!O§));
         if(_loc5_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int;
         §§push(_loc4_ = §;![§.getValue());
         if(!_loc6_)
         {
            if(§§pop() < _loc2_)
            {
               if(!_loc6_)
               {
                  addr75:
                  _loc4_ = Math.min(_loc2_,§;![§.getValue() + param1 * §7D§);
                  if(!_loc6_)
                  {
                     §;![§.assign(_loc4_);
                     loop3:
                     while(true)
                     {
                        addr109:
                        loop1:
                        while(this.§!I§)
                        {
                           if(_loc5_ || param1)
                           {
                              if(!(_loc5_ || param1))
                              {
                                 continue loop3;
                              }
                              §6w§.setText(_loc2_.toString(),"TextField_MEPercentage");
                           }
                           while(true)
                           {
                              break loop1;
                           }
                           return;
                        }
                        while(true)
                        {
                           this.§ "B§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
                           if(_loc6_ && param1)
                           {
                              continue;
                           }
                           §§goto(addr107);
                        }
                     }
                  }
               }
               §§goto(addr126);
            }
            §§goto(addr109);
         }
         §§goto(addr75);
      }
      
      protected function §4">§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if((§6w§.getItemByName("MovieClip_GetMore") as §7"-§).§5%§ == true)
            {
               if(!(_loc3_ && this))
               {
                  addr39:
                  (§6w§.getItemByName("MovieClip_GetMore") as §7"-§).§&!q§(param1);
               }
            }
            var _loc2_:* = 1;
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(6);
                  loop2:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§push((§6w§.getItemByName("MovieClip_Boom") as §7"-§).§6"?§());
                              loop4:
                              while(true)
                              {
                                 §§push("End");
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §6w§.getItemByName("MovieClip_Boom").setVisibility(false);
                                       }
                                       loop6:
                                       while(_loc4_)
                                       {
                                          (§6w§.getItemByName("MovieClip_Boom") as §7"-§).§2!H§("Start");
                                          while(true)
                                          {
                                             loop11:
                                             for(; !(_loc3_ && _loc2_); if(_loc3_ && this)
                                             {
                                                continue;
                                             },if(!(_loc4_ || _loc2_))
                                             {
                                                continue loop3;
                                             },(§6w§.getItemByName("MovieClip_GetMore" + _loc2_) as §7"-§).§5%§ = false,§§goto(addr168))
                                             {
                                                (§6w§.getItemByName("MovieClip_GetMore") as §7"-§).§5%§ = false;
                                                loop12:
                                                while(true)
                                                {
                                                   (§6w§.getItemByName("MovieClip_GetMore") as §7"-§).§2!H§("End");
                                                   loop13:
                                                   while(true)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(1);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            continue loop13;
                                                            addr49:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc3_ && this)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(6);
                                                               if(_loc3_ && param1)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  addr99:
                                                                  §§push((§6w§.getItemByName("MovieClip_GetMore" + _loc2_) as §7"-§).§6"?§());
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push("End");
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           §§goto(addr168);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc2_++;
                                                                           §§goto(addr81);
                                                                        }
                                                                        addr79:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push("End");
                                                                        §§goto(addr99);
                                                                     }
                                                                     addr205:
                                                                  }
                                                                  while(!_loc3_)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  return;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr168:
                                                                     addr168:
                                                                     while(_loc4_ || this)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        (§6w§.getItemByName("MovieClip_GetMore" + _loc2_) as §7"-§).§2!H§("End");
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               continue;
                                                               addr81:
                                                               §§goto(addr79);
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr279:
                                       if(!_loc4_)
                                       {
                                          break loop3;
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr205);
                                    }
                                 }
                              }
                           }
                        }
                        addr303:
                        break;
                     }
                     if((§6w§.getItemByName("MovieClip_GetMore" + _loc2_) as §7"-§).§5%§ == true)
                     {
                        addr294:
                        (§6w§.getItemByName("MovieClip_GetMore" + _loc2_) as §7"-§).§&!q§(param1);
                        §§goto(addr303);
                     }
                     break;
                     §§goto(addr294);
                  }
                  _loc2_++;
                  §§goto(addr279);
               }
            }
         }
         §§goto(addr39);
      }
      
      override public function deActivate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.deActivate();
            while(true)
            {
               §!'§.deActivate();
               addr60:
               if(_loc3_ && this)
               {
                  continue;
               }
               §6w§.getItemByName("MovieClip_GetMore").setVisibility(false);
               addr67:
               if(!(_loc3_ && _loc1_))
               {
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        if(false)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(this.§`-§);
                              if(!_loc3_)
                              {
                                 §§pop().deActivate();
                                 loop10:
                                 while(true)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr53:
                                          if(!(_loc2_ || _loc1_))
                                          {
                                             break;
                                          }
                                          §§goto(addr60);
                                       }
                                       while(_loc2_ || this)
                                       {
                                          addr84:
                                          if(_loc2_)
                                          {
                                             this.§>"8§(this.§=!#§);
                                             while(true)
                                             {
                                                this.§=!#§ = null;
                                                addr72:
                                                while(true)
                                                {
                                                   continue loop9;
                                                }
                                                continue loop10;
                                             }
                                             addr100:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(this.§`-§);
                                                break loop9;
                                                §§goto(addr84);
                                             }
                                             addr118:
                                          }
                                       }
                                       while(true)
                                       {
                                          if(this.§=!#§)
                                          {
                                             continue;
                                          }
                                          continue loop9;
                                       }
                                       addr77:
                                       addr108:
                                    }
                                    §§goto(addr100);
                                 }
                                 while(true)
                                 {
                                    this.§ "B§.deActivate();
                                    §§goto(addr118);
                                    §§goto(addr53);
                                 }
                                 addr44:
                                 addr122:
                              }
                              break;
                           }
                           while(true)
                           {
                              §§pop().deActivate();
                              addr113:
                              while(true)
                              {
                                 §,3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!!5§);
                                 §§goto(addr108);
                              }
                           }
                        }
                        var _loc1_:int = 1;
                        addr163:
                        if(_loc1_ >= 6)
                        {
                           if(!_loc3_)
                           {
                              §#6§.§6!z§.§"!a§();
                           }
                           addr182:
                           if(_loc2_ || _loc3_)
                           {
                              this.§#,§();
                              addr155:
                              if(!(_loc3_ && this))
                              {
                                 this.§-!c§();
                                 addr144:
                                 if(_loc2_ || this)
                                 {
                                    this.§+y§();
                                    if(_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§goto(addr182);
                                       }
                                       return;
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr155);
                              }
                              addr192:
                              §§goto(addr163);
                           }
                           _loc1_++;
                           §§goto(addr192);
                           addr204:
                        }
                        (§6w§.getItemByName("MovieClip_GetMore" + _loc1_) as §7"-§).setVisibility(false);
                        §§goto(addr204);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr72);
               }
               §§goto(addr44);
            }
         }
         §§goto(addr122);
      }
      
      private function §#,§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:Boolean = false;
         if(_loc5_)
         {
            if(this.§#!Q§ > §3i§)
            {
               loop0:
               while(true)
               {
                  _loc1_ = Math.round(1000 / this.§#!Q§ * this.§ #§);
                  loop1:
                  while(true)
                  {
                     §§push(LevelManager.§'!O§);
                     if(!(_loc4_ && _loc1_))
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     while(_loc5_)
                     {
                        _loc3_ = (§#6§.§ q§ as §3T§).§-!P§();
                        do
                        {
                           §+!B§.§4"%§(_loc1_,_loc2_,§"]§.§4"!§,_loc3_);
                        }
                        while(_loc4_ && _loc2_);
                        
                        if(!(_loc4_ && _loc3_))
                        {
                           if(_loc5_ || _loc1_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
                  addr70:
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      private function §>!,§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            §§push(this);
            §§push(this.§#!Q§);
            if(!_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§#!Q§ = §§pop();
            if(_loc5_ || this)
            {
               §§push(this.§#!Q§);
               if(!(_loc4_ && this))
               {
                  §§push(0);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!(_loc4_ && param1))
                        {
                           var _loc2_:*;
                           §§push((_loc2_ = this).§ #§);
                           if(!_loc4_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(!_loc4_)
                           {
                              _loc2_.§ #§ = _loc3_;
                           }
                           if(_loc5_ || this)
                           {
                              addr96:
                           }
                           addr97:
                           return;
                           addr163:
                        }
                        §§goto(addr96);
                     }
                     §§push(this.§2H§);
                     while(true)
                     {
                        §§push(§#6§.§7!-§());
                        loop5:
                        while(true)
                        {
                           §§push(this.§`"!§);
                           if(!(_loc5_ || _loc2_))
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(§#6§.§8h§());
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc5_)
                                 {
                                    if(!_loc4_)
                                    {
                                       addr126:
                                       §§push(!§§pop());
                                       if(_loc5_ || param1)
                                       {
                                          if(_loc4_ && param1)
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop5;
                                                   }
                                                   addr172:
                                                }
                                             }
                                             addr170:
                                          }
                                          while(§§pop())
                                          {
                                             if(_loc5_ || this)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop5;
                                                }
                                                this.§-!c§();
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr97);
                                       }
                                       §§goto(addr172);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr169:
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr126);
                              }
                              else
                              {
                                 while(true)
                                 {
                                 }
                                 addr168:
                              }
                              §§goto(addr169);
                           }
                        }
                     }
                  }
                  §§goto(addr168);
               }
               §§goto(addr111);
            }
            §§goto(addr97);
         }
         §§goto(addr96);
      }
      
      private function §-!c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#!Q§ = §>P§;
         }
         loop0:
         while(true)
         {
            this.§ #§ = 0;
            loop1:
            do
            {
               this.§2H§ = §#6§.§7!-§();
               while(!_loc1_)
               {
                  this.§`"!§ = §#6§.§8h§();
                  if(!_loc1_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc1_);
            
            return;
         }
      }
      
      private function §>"8§(param1:§"m§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  addr28:
                  param1.§?"3§();
               }
            }
            return;
         }
         §§goto(addr28);
      }
   }
}
