package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §05§.§?s§;
   import §6!A§.§4!%§;
   import §;<§.§'B§;
   import §;b§.§@"0§;
   import §<!1§.§9!=§;
   import §<!]§.§2U§;
   import §<!]§.§]!v§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §<"5§ extends §'B§
   {
      
      public static const §%!Q§:String = "LevelEndStateBS";
      
      private static const §]!9§:String = "ScoreLoopCountChannel";
      
      private static const §4!P§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%!Q§ = "LevelEndStateBS";
            while(true)
            {
               §]!9§ = "ScoreLoopCountChannel";
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            §4!P§ = "EndScreenEffectChannel";
            if(_loc2_ || _loc1_)
            {
               if(_loc2_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private const §#""§:String = "likeButton";
      
      private const §"!E§:String = "shareButton";
      
      private const §4L§:String = "nextButton";
      
      private var §%?§:Boolean = false;
      
      private var §1!"§:Timer;
      
      private var §<E§:§]!v§;
      
      private var §@"#§:§2U§;
      
      private var §!!N§:Vector.<§2U§>;
      
      public var mNewScoreCounter:int;
      
      private var §7!S§:int;
      
      private var §%!t§:Boolean;
      
      private var §4!?§:§9!=§;
      
      private var §1!8§:§=!r§;
      
      protected var §<u§:int;
      
      public function §<"5§(param1:Boolean = false, param2:String = "LevelEndStateBS")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§4!?§ = new §9!=§();
         }
         do
         {
            super(param1,param2);
         }
         while(_loc3_);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               §`!v§ = new §>!V§(this);
               while(true)
               {
                  §`!v§.init(§]!M§.§"!V§.Views.View_LevelEndBS[0]);
                  loop2:
                  for(; _loc2_ || this; loop4:
                  while(!(_loc1_ && _loc1_))
                  {
                     while(true)
                     {
                        §0"#§.§4!m§(§4!P§,3,1);
                        if(_loc1_)
                        {
                           continue loop4;
                        }
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr68);
                     }
                     return;
                  })
                  {
                     this.§!!N§ = new Vector.<§2U§>();
                     while(true)
                     {
                        §0"#§.§4!m§(§]!9§,3,1);
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §'_§.pause();
               loop1:
               while(true)
               {
                  this.§<E§ = new §]!v§(0,0,0,0);
                  loop2:
                  while(!_loc2_)
                  {
                     §`!v§.movieClip.addChildAt(this.§<E§,§`!v§.movieClip.numChildren - 1);
                     while(true)
                     {
                        this.mNewScoreCounter = 0;
                        addr156:
                        while(_loc1_)
                        {
                        }
                        loop9:
                        for(; !(_loc2_ && _loc2_); while(_loc1_ || this)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr23);
                           }
                           else
                           {
                              §§goto(addr156);
                           }
                           §§goto(addr46);
                        })
                        {
                           if(§`!v§.getItemByName("Button_Like"))
                           {
                              loop10:
                              while(!_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 §`!v§.getItemByName("Button_Like").visible = §4!%§.§`-§().§9y§(this.§#""§);
                                 while(true)
                                 {
                                    addr68:
                                    loop12:
                                    while(true)
                                    {
                                       if(!§`!v§.getItemByName("Button_Share"))
                                       {
                                          while(§`!v§.getItemByName("Button_NextLevel"))
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop12;
                                                }
                                                §`!v§.getItemByName("Button_NextLevel").visible = §4!%§.§`-§().§9y§(this.§4L§);
                                             }
                                             if(_loc2_ && _loc1_)
                                             {
                                                continue loop9;
                                             }
                                             addr53:
                                             if(!(_loc2_ && this))
                                             {
                                                addr60:
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   break;
                                                }
                                                addr151:
                                                while(true)
                                                {
                                                   §0"#§.§9"2§("LevelCompletedTheme1");
                                                   break loop10;
                                                   §§goto(addr60);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §`!v§.getItemByName("Button_Share").visible = §4!%§.§`-§().§9y§(this.§"!E§);
                                                      continue loop9;
                                                   }
                                                   continue loop10;
                                                   §§goto(addr53);
                                                }
                                                while(true)
                                                {
                                                   this.§&D§();
                                                   continue loop9;
                                                }
                                                addr73:
                                                addr141:
                                             }
                                          }
                                          return;
                                          addr23:
                                       }
                                       §§goto(addr73);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§<E§.§[!r§(0.7);
                                 §§goto(addr141);
                              }
                              addr146:
                           }
                           §§goto(addr68);
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§%!t§ = false;
            §§goto(addr151);
         }
      }
      
      private function §&D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§[V§();
            while(true)
            {
               this.§1!"§ = new Timer(500);
               loop1:
               while(true)
               {
                  this.§7!S§ = 0;
                  while(true)
                  {
                     this.§1!"§.addEventListener(TimerEvent.TIMER,this.§5N§);
                     addr56:
                     while(_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr85:
         }
         while(true)
         {
            this.§1!"§.start();
            if(_loc2_ || _loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr85);
            }
            §§goto(addr56);
         }
      }
      
      protected function §[V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            (§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).mClip.gotoAndStop("UnLit");
         }
         do
         {
            (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).mClip.gotoAndStop("UnLit");
            do
            {
               (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).mClip.gotoAndStop("UnLit");
            }
            while(_loc1_);
            
         }
         while(_loc1_ && _loc2_);
         
      }
      
      private function §5N§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = §'_§.§=M§.§-!R§().mScoreGold;
         var _loc5_:Number = §'_§.§=M§.§-!R§().mScoreSilver;
         if(_loc10_)
         {
            if((§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§4!?§);
               loop0:
               while(_loc10_ || _loc3_)
               {
                  §§push(§§pop().getValue());
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() >= §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr510:
                                    while(true)
                                    {
                                       §§push((§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).mClip.currentLabel == "UnLit");
                                    }
                                 }
                                 addr509:
                              }
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this.§4!?§);
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop().getValue());
                                          if(_loc9_)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc10_)
                                          {
                                             if(_loc10_)
                                             {
                                                §§push(_loc4_);
                                                if(_loc9_ && param1)
                                                {
                                                   continue loop2;
                                                }
                                                if(_loc10_ || _loc3_)
                                                {
                                                   §§push(§§pop() >= §§pop());
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc9_ && param1)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(this.§%!t§);
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           this.§%!t§ = true;
                                                                           if(_loc10_)
                                                                           {
                                                                              addr79:
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§goto(addr710);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr443:
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             this.§@"#§ = new §2U§(AngryBirdsFP11.§6j§,AngryBirdsFP11.§+#§,_loc2_,_loc3_,§2U§.§%D§);
                                                                                             §`!v§.addChild(this.§@"#§);
                                                                                             addr419:
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                if(_loc10_ || this)
                                                                                                {
                                                                                                   this.§!!N§.push(this.§@"#§);
                                                                                                   addr364:
                                                                                                   if(_loc9_ && param1)
                                                                                                   {
                                                                                                      §§goto(addr419);
                                                                                                   }
                                                                                                   if(!(_loc9_ && this))
                                                                                                   {
                                                                                                      if(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr710);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr682:
                                                                                                         §§push(this.§4!?§);
                                                                                                         break loop0;
                                                                                                         addr682:
                                                                                                      }
                                                                                                   }
                                                                                                   addr663:
                                                                                                   loop27:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§1!8§ = §7I§.§[E§.§ ";§(this,{"mNewScoreCounter":this.§4!?§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                                                      do
                                                                                                      {
                                                                                                         §§push(this.§1!8§);
                                                                                                         do
                                                                                                         {
                                                                                                            §§pop().onComplete = this.§`!1§;
                                                                                                            §§push(this.§1!8§);
                                                                                                         }
                                                                                                         while(!_loc10_);
                                                                                                         
                                                                                                         §§pop().play();
                                                                                                      }
                                                                                                      while(_loc9_);
                                                                                                      
                                                                                                      (§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).mClip.gotoAndStop("Lit");
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr591:
                                                                                                         _loc2_ = Number((§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).x + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x);
                                                                                                         §§goto(addr567);
                                                                                                      }
                                                                                                      addr656:
                                                                                                      loop26:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  §§goto(addr663);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(2);
                                                                                                                     addr671:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr670:
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               break loop26;
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                         addr567:
                                                                                                         §§push(Number((§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).y + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y));
                                                                                                         if(_loc9_ && param1)
                                                                                                         {
                                                                                                            break loop30;
                                                                                                         }
                                                                                                         §§goto(addr524);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         addr674:
                                                                                                         §§push(_loc4_);
                                                                                                         §§push(0);
                                                                                                         if(_loc10_ || _loc2_)
                                                                                                         {
                                                                                                            if(§§pop() > §§pop())
                                                                                                            {
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            if(_loc10_ || this)
                                                                                                            {
                                                                                                               addr655:
                                                                                                               §§goto(addr656);
                                                                                                               §§push(Number(1));
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr694:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§1!"§.delay = 1000;
                                                                                                                  addr688:
                                                                                                                  this.§4!?§.§2">§(§'_§.§=R§.getScore());
                                                                                                                  §§goto(addr682);
                                                                                                               }
                                                                                                               addr694:
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr671);
                                                                                                   }
                                                                                                }
                                                                                                this.§@"#§ = new §2U§(AngryBirdsFP11.§6j§,AngryBirdsFP11.§+#§,_loc2_,_loc3_,§2U§.§%!b§);
                                                                                                §`!v§.addChild(this.§@"#§);
                                                                                                addr551:
                                                                                             }
                                                                                             this.§!!N§.push(this.§@"#§);
                                                                                             if(_loc10_ || _loc2_)
                                                                                             {
                                                                                                addr524:
                                                                                                _loc3_ = §§pop();
                                                                                                if(!(_loc10_ || this))
                                                                                                {
                                                                                                   continue loop30;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr710);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr704:
                                                                                             §0"#§.§9"2§("Hiscore_Count",§]!9§,100);
                                                                                             §0"#§.§9"2§("Hiscore_Star_Splash1",§4!P§);
                                                                                             addr709:
                                                                                          }
                                                                                          §§goto(addr694);
                                                                                       }
                                                                                       §§goto(addr709);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_ || this)
                                                                                          {
                                                                                             addr220:
                                                                                             §§push(Number((§`!v§.getItemByName("MovieClip_StarRight") as §@u§).y + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y));
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         addr193:
                                                                                                         _loc3_ = §§pop();
                                                                                                         loop10:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§@"#§ = new §2U§(AngryBirdsFP11.§6j§,AngryBirdsFP11.§+#§,_loc2_,_loc3_,§2U§.§?E§);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               if(_loc10_ || this)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(_loc10_ || _loc2_)
                                                                                                                        {
                                                                                                                           §`!v§.addChild(this.§@"#§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc10_ || this)
                                                                                                                              {
                                                                                                                                 this.§!!N§.push(this.§@"#§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && this))
                                                                                                                                       {
                                                                                                                                          if(!(_loc10_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr609);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr57:
                                                                                                                                          }
                                                                                                                                          §§goto(addr710);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).mClip.gotoAndStop("Lit");
                                                                                                                                          addr461:
                                                                                                                                          _loc2_ = Number((§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).x + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x);
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             addr435:
                                                                                                                                             §§push(Number((§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).y + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y));
                                                                                                                                             if(_loc9_ && param1)
                                                                                                                                             {
                                                                                                                                                §§goto(addr461);
                                                                                                                                             }
                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                             §§goto(addr443);
                                                                                                                                          }
                                                                                                                                          break loop10;
                                                                                                                                          addr474:
                                                                                                                                          addr491:
                                                                                                                                       }
                                                                                                                                       §§goto(addr694);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §0"#§.§9"2§("Hiscore_Star_Splash3",§4!P§);
                                                                                                                                                   addr267:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc9_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).mClip.gotoAndStop("Lit");
                                                                                                                                                               addr340:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number((§`!v§.getItemByName("MovieClip_StarRight") as §@u§).x + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x));
                                                                                                                                                                  addr210:
                                                                                                                                                                  while(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc2_ = §§pop();
                                                                                                                                                                     continue loop14;
                                                                                                                                                                     §§goto(addr220);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr567);
                                                                                                                                                                  §§goto(addr288);
                                                                                                                                                               }
                                                                                                                                                               addr288:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     addr343:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     §§push(Boolean(_loc2_));
                                                                                                                                                                     break loop14;
                                                                                                                                                                  }
                                                                                                                                                                  break loop14;
                                                                                                                                                                  addr339:
                                                                                                                                                                  §§pop();
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr510);
                                                                                                                                                               addr340:
                                                                                                                                                               addr230:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr674);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr474);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr340);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr343);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr263:
                                                                                                                                             }
                                                                                                                                             §§goto(addr647);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr259:
                                                                                                                                    }
                                                                                                                                    §§goto(addr419);
                                                                                                                                 }
                                                                                                                                 addr96:
                                                                                                                              }
                                                                                                                              §§goto(addr618);
                                                                                                                           }
                                                                                                                           addr118:
                                                                                                                        }
                                                                                                                        §§goto(addr688);
                                                                                                                     }
                                                                                                                     §§goto(addr567);
                                                                                                                  }
                                                                                                                  §§goto(addr364);
                                                                                                               }
                                                                                                               §§goto(addr230);
                                                                                                            }
                                                                                                            break;
                                                                                                            §§goto(addr193);
                                                                                                         }
                                                                                                         addr710:
                                                                                                         var _loc7_:*;
                                                                                                         §§push((_loc7_ = this).§7!S§);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                         }
                                                                                                         var _loc8_:* = §§pop();
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            _loc7_.§7!S§ = _loc8_;
                                                                                                         }
                                                                                                         return;
                                                                                                         addr194:
                                                                                                      }
                                                                                                      §§goto(addr674);
                                                                                                   }
                                                                                                   §§goto(addr591);
                                                                                                }
                                                                                                §§goto(addr435);
                                                                                             }
                                                                                             §§goto(addr210);
                                                                                          }
                                                                                          §§goto(addr267);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§push((§`!v§.getItemByName("MovieClip_StarRight") as §@u§).mClip.currentLabel == "UnLit");
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                addr332:
                                                                                                while(!(_loc9_ && _loc2_))
                                                                                                {
                                                                                                   §§goto(addr339);
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             addr241:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr510);
                                                                                          }
                                                                                          §§goto(addr340);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr710);
                                                                                 }
                                                                                 §§goto(addr118);
                                                                              }
                                                                              §§goto(addr96);
                                                                           }
                                                                           §§goto(addr710);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr487:
                                                                           §0"#§.§9"2§("Hiscore_Star_Splash2",§4!P§);
                                                                        }
                                                                        §§goto(addr491);
                                                                     }
                                                                     §§goto(addr79);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§1!"§.stop();
                                                                     if(!(_loc9_ && _loc3_))
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr57);
                                                                              }
                                                                              §§goto(addr710);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr551);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr194);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr710);
                                                               }
                                                               §§goto(addr241);
                                                            }
                                                            §§goto(addr259);
                                                            addr250:
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr509);
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   §§goto(addr332);
                                                }
                                                addr669:
                                                §§goto(addr670);
                                                §§push(§§pop() / §§pop());
                                             }
                                             addr668:
                                             §§goto(addr669);
                                             §§push(_loc4_);
                                          }
                                          §§goto(addr655);
                                       }
                                       §§goto(addr688);
                                    }
                                    §§goto(addr487);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr668);
                  §§goto(addr682);
               }
            }
            §§goto(addr704);
         }
         §§goto(addr263);
      }
      
      private function §`!1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §0"#§.§<"0§(§]!9§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§2U§ = null;
         §§push(super.run(param1));
         if(!(_loc7_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc7_ && this))
         {
            §§push(_loc2_);
            if(_loc6_ || param1)
            {
               if(§§pop() != §'B§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(_loc2_);
                     if(!(_loc7_ && this))
                     {
                        return §§pop();
                     }
                     addr104:
                     for each(_loc3_ in this.§!!N§)
                     {
                        if(_loc6_ || _loc2_)
                        {
                           _loc3_.update(param1);
                        }
                     }
                     if(!(_loc7_ && _loc3_))
                     {
                        if(mNextState.length > 0)
                        {
                           if(_loc6_ || param1)
                           {
                              addr172:
                              §'_§.§=M§.clearLevel();
                           }
                           return §'B§.STATE_STATUS_COMPLETED;
                        }
                        return §'B§.STATE_STATUS_RUNNING;
                     }
                     §§goto(addr172);
                  }
                  else
                  {
                     addr102:
                     while(true)
                     {
                     }
                     addr102:
                  }
                  §§goto(addr104);
               }
               loop0:
               while(true)
               {
                  §`!v§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                  while(!_loc7_)
                  {
                     §`!v§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                     if(!(_loc7_ && this))
                     {
                        if(true)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr102);
               }
               §§push(0);
            }
            §§goto(addr104);
         }
         §§goto(addr102);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               this.§&V§();
               loop1:
               while(true)
               {
                  this.mNewScoreCounter = 0;
                  loop2:
                  while(true)
                  {
                     §§push(this.§1!8§);
                     if(_loc2_ || this)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§1!8§);
                              addr203:
                              while(true)
                              {
                                 §§pop().stop();
                                 addr204:
                                 while(true)
                                 {
                                    this.§1!8§ = null;
                                    addr189:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              loop13:
                              while(!(_loc1_ && _loc1_))
                              {
                                 §`!v§.setText("0","TextField_LevelEndScoreEffects");
                                 loop14:
                                 while(true)
                                 {
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       if(_loc2_)
                                       {
                                          §§push(this.§<E§);
                                          loop15:
                                          for(; §§pop(); loop19:
                                          while(true)
                                          {
                                             §§push(this.§<E§);
                                             if(!(_loc2_ || this))
                                             {
                                                continue loop15;
                                             }
                                             §§pop().clean();
                                             while(_loc2_ || _loc1_)
                                             {
                                                if(_loc1_)
                                                {
                                                   break loop19;
                                                }
                                                this.§<E§ = null;
                                                if(!_loc2_)
                                                {
                                                   continue;
                                                }
                                                if(_loc2_)
                                                {
                                                   if(_loc2_ || this)
                                                   {
                                                      continue loop14;
                                                   }
                                                   §§goto(addr90);
                                                }
                                                §§goto(addr96);
                                             }
                                             §§goto(addr111);
                                          },continue loop1)
                                          {
                                             while(true)
                                             {
                                                if(!§`!v§.movieClip.contains(this.§<E§))
                                                {
                                                   continue loop15;
                                                }
                                                while(true)
                                                {
                                                   §`!v§.movieClip.removeChild(this.§<E§);
                                                   addr111:
                                                   while(!_loc1_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          §§goto(addr20);
                                       }
                                       §§goto(addr189);
                                    }
                                    break;
                                    if(_loc1_ && this)
                                    {
                                       continue;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop13;
                                    }
                                    addr48:
                                    if(!(_loc1_ && this))
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          if(_loc2_)
                                          {
                                             addr20:
                                          }
                                          continue loop2;
                                          return;
                                       }
                                       §§goto(addr204);
                                    }
                                    while(true)
                                    {
                                       §`!v§.setText("0","TextField_LevelEndScore");
                                       continue loop13;
                                       §§goto(addr48);
                                    }
                                    addr151:
                                 }
                                 while(true)
                                 {
                                    if(§`!v§.getItemByName("Button_Menu"))
                                    {
                                       continue loop1;
                                    }
                                    addr142:
                                    while(true)
                                    {
                                       (§`!v§.getItemByName("Button_Replay") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                       §§goto(addr151);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §0"#§.§<"0§(§]!9§);
                           §§goto(addr184);
                           §§goto(addr189);
                        }
                     }
                     §§goto(addr203);
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      private function §&V§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§2U§ = null;
         if(_loc4_)
         {
            if(this.§1!"§)
            {
               if(_loc4_ || _loc3_)
               {
                  addr36:
                  this.§1!"§.stop();
               }
               try
               {
                  this.§1!"§.removeEventListener(TimerEvent.TIMER,this.§5N§);
                  if(_loc4_ || this)
                  {
                  }
               }
               catch(e:Error)
               {
               }
               §§goto(addr164);
            }
            var _loc2_:int = 0;
            if(!(_loc5_ && _loc1_))
            {
               var _loc3_:* = this.§!!N§;
               if(!(_loc5_ && _loc3_))
               {
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                     }
                  }
                  addr140:
                  if(!(_loc5_ && _loc2_))
                  {
                     this.§!!N§ = new Vector.<§2U§>();
                  }
                  addr164:
                  return;
                  addr137:
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     if(§`!v§.contains(splash))
                     {
                        if(_loc4_)
                        {
                           if(_loc5_ && this)
                           {
                              continue loop2;
                           }
                           §`!v§.removeChild(splash);
                        }
                        while(true)
                        {
                        }
                        addr127:
                     }
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           §§pop().§§slot[1].clean();
                           if(_loc4_)
                           {
                              if(false)
                              {
                                 continue loop3;
                              }
                              §§goto(addr137);
                           }
                           else
                           {
                              §§goto(addr127);
                           }
                        }
                        break;
                     }
                     §§goto(addr131);
                  }
               }
            }
            §§goto(addr140);
         }
         §§goto(addr36);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("REPLAY" !== _loc4_)
            {
               if("MENU" === _loc4_)
               {
                  if(_loc6_)
                  {
                     addr140:
                     §§push(1);
                     if(_loc5_ && this)
                     {
                        §§goto(addr157);
                     }
                  }
                  else
                  {
                     addr168:
                     §§push(3);
                     if(_loc5_ && this)
                     {
                        addr185:
                     }
                  }
               }
               else if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§push(2);
                     if(!_loc5_)
                     {
                        §§goto(addr157);
                     }
                  }
                  else
                  {
                     addr182:
                     §§push(4);
                     if(!_loc5_)
                     {
                        §§goto(addr185);
                     }
                  }
               }
               else if("LIKE" === _loc4_)
               {
                  if(!(_loc5_ && this))
                  {
                     §§goto(addr168);
                  }
                  else
                  {
                     §§goto(addr182);
                  }
               }
               else
               {
                  if("SHARE" === _loc4_)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr182);
                     }
                     else
                     {
                        §§goto(addr189);
                     }
                  }
                  else if("NEXT" === _loc4_)
                  {
                     §§goto(addr189);
                  }
                  else
                  {
                     §§push(6);
                  }
                  §§goto(addr189);
               }
               addr207:
               switch(§§pop())
               {
                  case 0:
                     §@"0§.§%P§(StatePlayBS.§%!Q§);
                     mNextState = §@"0§.§%!Q§;
                     if(!_loc5_)
                     {
                        break;
                     }
                     break;
                     addr113:
                  case 1:
                     §?s§.doJsCall("onLevelMenuOpened");
                     mNextState = §&y§.§%!Q§;
                     addr74:
                     if(!(_loc5_ && this))
                     {
                        break;
                     }
                     §§goto(addr113);
                     break;
                     addr88:
                  case 2:
                     §?s§.doJsCall("onFullscreenToggle");
                     break;
                     addr68:
                  case 3:
                     §?s§.doJsCall("onLevelLiked");
                     addr54:
                     if(!(_loc5_ && this))
                     {
                        addr32:
                        break;
                     }
                     §§goto(addr74);
                     break;
                  case 4:
                     §?s§.doJsCall("onLevelShared");
                     if(_loc6_ || param2)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        §§goto(addr88);
                     }
                     break;
                  case 5:
                     §?s§.doJsCall("onNextLevel");
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr68);
                           }
                        }
                        else
                        {
                           §§goto(addr54);
                        }
                        §§goto(addr32);
                     }
               }
               return;
            }
            if(_loc6_)
            {
               §§push(0);
               if(_loc5_ && param3)
               {
                  addr157:
               }
            }
            else
            {
               addr189:
               §§push(5);
               if(_loc5_)
               {
               }
            }
            §§goto(addr207);
            §§goto(addr189);
         }
         §§goto(addr140);
      }
   }
}
