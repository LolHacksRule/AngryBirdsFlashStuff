package §5G§
{
   import § g§.§<n§;
   import §!V§.§!!i§;
   import §"§.§%!$§;
   import §&!F§.§"!d§;
   import §&!F§.§,Z§;
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §-!Q§.§,!7§;
   import §09§.§ $§;
   import §1!E§.§>f§;
   import §2v§.§&O§;
   import §3!,§.§#f§;
   import §3!,§.§#x§;
   import §6;§.§%[§;
   import §<!0§.§%g§;
   import §<!0§.§7g§;
   import §>M§.§'V§;
   import §>M§.§-!P§;
   import §>M§.§<6§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §[h§.§4I§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §1!F§ extends §?,§
   {
      
      public static const §3!?§:String = "LevelEndState3";
      
      public static const §4l§:Number = 30;
      
      private static const §-!4§:String = "ScoreLoopCountChannel";
      
      private static const §"9§:String = "EndScreenEffectChannel";
      
      private static const §^8§:Number = 0.5;
      
      private static const §4!4§:Number = 82;
      
      private static const § !,§:Number = 3000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3!?§ = "LevelEndState3";
            loop0:
            while(true)
            {
               §4l§ = 30;
               addr100:
               while(true)
               {
                  §-!4§ = "ScoreLoopCountChannel";
                  while(true)
                  {
                     §"9§ = "EndScreenEffectChannel";
                     addr61:
                     while(_loc2_ || _loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §^8§ = 0.5;
            §§goto(addr61);
            §§goto(addr37);
         }
      }
      
      private var §&k§:§7g§;
      
      private var §@q§:Number;
      
      private var §>!Z§:Number;
      
      private var §6[§:Number;
      
      private var §-!H§:Boolean = false;
      
      private var §<N§:Timer;
      
      private var §8!H§:§#x§;
      
      private var §3'§:§#f§;
      
      private var §`!-§:Vector.<§#f§>;
      
      public var mNewScoreCounter:int;
      
      private var §3<§:int;
      
      private var §&!2§:Boolean;
      
      private var §%!6§:§!!i§;
      
      private var §0!]§:Boolean;
      
      private var §`A§:§7g§;
      
      private var §"^§:§7g§;
      
      private var §4Q§:Number;
      
      private var §!1§:Number;
      
      private var §%!§:Timer;
      
      private var § in§:§,Z§;
      
      public function §1!F§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§%!6§ = new §!!i§();
            do
            {
               super(param1,param2);
            }
            while(!_loc4_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.init();
            loop0:
            while(true)
            {
               addr43:
               while(true)
               {
                  §%!0§ = new §5!§(this);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §%!0§.init(§>!;§.§ get§.Views.View_LevelEndRio[0]);
            if(!(_loc2_ && this))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr43);
            }
            §§goto(addr49);
         }
         var _loc1_:§'V§ = §%!0§.getItemByName("TextField_LevelCompleted") as §'V§;
         if(_loc3_)
         {
            _loc1_.setText(§4I§.getText("Text_Level_Completed"));
            loop4:
            while(true)
            {
               this.§8!H§ = new §#x§(0,0,0,0);
               addr164:
               while(true)
               {
                  §%!0§.movieClip.addChildAt(this.§8!H§,§%!0§.movieClip.numChildren - 1);
                  while(true)
                  {
                     this.§`!-§ = new Vector.<§#f§>();
                     addr124:
                     while(!_loc2_)
                     {
                        continue loop4;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §,!7§.§<!-§(§-!4§,1,1);
            loop9:
            while(true)
            {
               §,!7§.§<!-§(§"9§,16,1);
               while(_loc3_)
               {
                  this.§ in§ = new §,Z§();
                  if(!_loc2_)
                  {
                     continue loop9;
                  }
               }
               §§goto(addr164);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.activate();
            if(_loc3_ || _loc1_)
            {
               §§push(§%[§.§`1§);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     addr37:
                     if(!_loc4_)
                     {
                        addr34:
                        §§push(§%[§.§`1§);
                     }
                     var _loc1_:int = 0;
                     if(!_loc4_)
                     {
                        this.mNewScoreCounter = 0;
                        loop0:
                        while(true)
                        {
                           this.§&!2§ = false;
                           loop1:
                           while(true)
                           {
                              §,!7§.playSound("LevelCompletedTheme1");
                              loop2:
                              while(true)
                              {
                                 this.§8!H§.§'H§(0.7);
                                 while(true)
                                 {
                                    this.§?§();
                                    loop4:
                                    while(!(_loc4_ && _loc1_))
                                    {
                                       §§push(§@;§.§6!K§);
                                       loop5:
                                       while(true)
                                       {
                                          §§push("1-3");
                                          loop6:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
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
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(§@;§.§6!K§);
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == "1-4");
                                                               addr87:
                                                               if(!(_loc3_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push("1-9");
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     addr110:
                                                                     if(!(_loc4_ && _loc1_))
                                                                     {
                                                                        loop33:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              (§%!0§.getItemByName("Button_Next") as §^-§).setVisibility(true);
                                                                              if(_loc3_ || _loc1_)
                                                                              {
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§@;§.§6!K§);
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             addr78:
                                                                                             loop32:
                                                                                             for(; !(_loc4_ && this); §§goto(addr78))
                                                                                             {
                                                                                                addr164:
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   §§push("1-3");
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      if(_loc3_ || _loc1_)
                                                                                                      {
                                                                                                         if(_loc3_ || _loc2_)
                                                                                                         {
                                                                                                            if(_loc4_ && _loc1_)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               if(_loc3_ || _loc2_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     continue loop33;
                                                                                                                  }
                                                                                                                  while(_loc3_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     while(!(_loc4_ && _loc2_))
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr154:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop32;
                                                                                                                        }
                                                                                                                        continue loop11;
                                                                                                                        §§goto(addr227);
                                                                                                                     }
                                                                                                                     addr227:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     addr287:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           loop27:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr291:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr245);
                                                                                                                                 }
                                                                                                                                 addr291:
                                                                                                                              }
                                                                                                                              addr306:
                                                                                                                              addr321:
                                                                                                                              while(!(_loc4_ && _loc1_))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 break loop27;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr322:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          addr324:
                                                                                                                                          while(!(_loc4_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(§@;§.§6!K§);
                                                                                                                                             while(_loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == "1-6");
                                                                                                                                                §§goto(addr164);
                                                                                                                                             }
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          continue loop10;
                                                                                                                                       }
                                                                                                                                       addr323:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       break loop33;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr306);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§@;§.§6!K§);
                                                                                                                              break loop32;
                                                                                                                           }
                                                                                                                           addr288:
                                                                                                                           addr314:
                                                                                                                        }
                                                                                                                        addr256:
                                                                                                                        addr384:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(_loc3_ || _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                              §§goto(addr291);
                                                                                                                              addr258:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr154);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        var _loc2_:String = "MovieClip_Chester_Win" + int(Math.random() * 3 + 1);
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr391:
                                                                                                                           if(this)
                                                                                                                           {
                                                                                                                              §%!0§.getItemByName(_loc2_).setVisibility(true);
                                                                                                                              this.§!1§ = §%!0§.getItemByName("Container_AchievementBox").y;
                                                                                                                              addr441:
                                                                                                                              if(!(_loc4_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(this.§!1§);
                                                                                                                                 if(!(_loc4_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §4!4§);
                                                                                                                                 }
                                                                                                                                 §§pop().§4Q§ = §§pop();
                                                                                                                                 §%!0§.getItemByName("Container_AchievementBox").y = this.§4Q§;
                                                                                                                                 if(_loc3_ || this)
                                                                                                                                 {
                                                                                                                                    if(!(_loc3_ || this))
                                                                                                                                    {
                                                                                                                                       §§goto(addr441);
                                                                                                                                    }
                                                                                                                                    return;
                                                                                                                                 }
                                                                                                                                 addr433:
                                                                                                                                 §§goto(addr433);
                                                                                                                                 addr458:
                                                                                                                              }
                                                                                                                              addr464:
                                                                                                                              §§goto(addr464);
                                                                                                                           }
                                                                                                                           §§goto(addr458);
                                                                                                                        }
                                                                                                                        §§goto(addr391);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr286:
                                                                                                                  addr214:
                                                                                                               }
                                                                                                               while(!_loc4_)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr306);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr286);
                                                                                                                     break loop32;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr322);
                                                                                                               addr301:
                                                                                                            }
                                                                                                            §§goto(addr287);
                                                                                                         }
                                                                                                         §§goto(addr288);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc4_ && _loc1_))
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            §§goto(addr256);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr323);
                                                                                                         }
                                                                                                      }
                                                                                                      addr247:
                                                                                                   }
                                                                                                   §§goto(addr214);
                                                                                                }
                                                                                                §§goto(addr295);
                                                                                             }
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§goto(addr87);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push("1-9");
                                                                                                   break loop34;
                                                                                                }
                                                                                                addr245:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr285);
                                                                                                §§goto(addr157);
                                                                                             }
                                                                                             addr157:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr384);
                                                                                          }
                                                                                          §§goto(addr391);
                                                                                          addr241:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr247);
                                                                                       }
                                                                                       addr246:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr384);
                                                                                    }
                                                                                    §§goto(addr384);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr119:
                                                                                    if(!(_loc4_ && _loc1_))
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§goto(addr324);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr227);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr144:
                                                                                 if(_loc3_ || _loc1_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§goto(addr314);
                                                                                    }
                                                                                    §§goto(addr384);
                                                                                 }
                                                                              }
                                                                              §§goto(addr258);
                                                                           }
                                                                           §§goto(addr119);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr301);
                                                                        §§goto(addr110);
                                                                     }
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr321);
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
                     §§goto(addr291);
                  }
                  §§goto(addr37);
               }
               §§pop().start();
            }
            §§goto(addr37);
         }
         §§goto(addr34);
      }
      
      private function §?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§;2§();
            while(true)
            {
               this.§<N§ = new Timer(100);
               while(_loc1_ || _loc2_)
               {
                  this.§3<§ = 0;
                  while(_loc1_)
                  {
                     this.§<N§.addEventListener(TimerEvent.TIMER,this.§6!d§);
                     loop3:
                     while(_loc1_)
                     {
                        while(true)
                        {
                           this.§<N§.start();
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §;2§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc1_:* = Number(§5!9§.§#%§.§9!C§(§@;§.§6!K§));
         var _loc2_:Number = (§@!Z§.§^&§ as §<n§).getScore();
         if(_loc6_)
         {
            this.§0!]§ = _loc2_ >= _loc1_;
            loop0:
            while(true)
            {
               if(!this.§0!]§)
               {
                  §%!0§.setText(§4I§.getText("Text_Best"),"TextField_BestText");
                  while(true)
                  {
                     §%!0§.setText(_loc1_.toString(),"TextField_BestScore");
                     while(_loc6_ || _loc1_)
                     {
                        §§push(§@;§.§@T§(§@;§.§6!K§,_loc1_));
                        if(_loc6_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc3_ = §§pop();
                        if(!(_loc6_ || _loc2_))
                        {
                           continue;
                        }
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              if(!(_loc6_ || _loc2_))
                              {
                                 addr151:
                                 §§push(_loc2_);
                                 if(!_loc5_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 _loc1_ = §§pop();
                                 continue loop0;
                              }
                              §§push(_loc3_);
                              if(!(_loc5_ && this))
                              {
                                 var _loc4_:* = §§pop();
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(1);
                                    if(_loc6_)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc6_ || _loc1_)
                                             {
                                                addr218:
                                                §§push(0);
                                                if(!_loc6_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr231:
                                                §§push(1);
                                                if(!_loc6_)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(2);
                                             if(_loc6_)
                                             {
                                                §§push(_loc4_);
                                                if(_loc6_)
                                                {
                                                   addr228:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr231);
                                                      }
                                                      else
                                                      {
                                                         addr240:
                                                         §§push(2);
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            addr254:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  (§%!0§.getItemByName("MovieClip_BestScoreStars") as §-!P§).§ m§("OneStar");
                                                                  if(_loc6_)
                                                                  {
                                                                     addr328:
                                                                     (§%!0§.getItemByName("MovieClip_NewHighScoreBadge") as §-!P§).setVisibility(false);
                                                                     (§%!0§.getItemByName("MovieClip_StarLeft") as §-!P§).mClip.gotoAndStop("UnLit");
                                                                     break;
                                                                     addr50:
                                                                     addr335:
                                                                  }
                                                                  break;
                                                               case 1:
                                                                  (§%!0§.getItemByName("MovieClip_BestScoreStars") as §-!P§).§ m§("TwoStar");
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr328);
                                                                  }
                                                                  break;
                                                               case 2:
                                                                  (§%!0§.getItemByName("MovieClip_BestScoreStars") as §-!P§).§ m§("ThreeStar");
                                                                  if(_loc6_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr50);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr328);
                                                                     }
                                                                  }
                                                                  §§goto(addr335);
                                                               default:
                                                                  §§goto(addr328);
                                                            }
                                                            (§%!0§.getItemByName("MovieClip_StarCenter") as §-!P§).mClip.gotoAndStop("UnLit");
                                                            addr293:
                                                            if(!(_loc5_ && _loc1_))
                                                            {
                                                               if(!(_loc5_ && _loc1_))
                                                               {
                                                                  (§%!0§.getItemByName("MovieClip_StarRight") as §-!P§).mClip.gotoAndStop("UnLit");
                                                                  if(!(_loc6_ || _loc2_))
                                                                  {
                                                                     §§goto(addr293);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr328);
                                                            }
                                                            addr327:
                                                            §§goto(addr327);
                                                            addr253:
                                                            addr248:
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(3);
                                                      if(!_loc5_)
                                                      {
                                                         addr238:
                                                         §§push(_loc4_);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr293);
                                                }
                                                if(§§pop() === §§pop())
                                                {
                                                   §§goto(addr240);
                                                }
                                                else
                                                {
                                                   §§goto(addr293);
                                                   §§push(3);
                                                }
                                             }
                                             §§goto(addr293);
                                          }
                                          §§goto(addr293);
                                       }
                                       §§goto(addr228);
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr218);
                              }
                              §§goto(addr254);
                           }
                           else
                           {
                              loop3:
                              while(true)
                              {
                                 §%!0§.setText(§4I§.getText("Text_New_Highscore"),"TextField_BestScore");
                                 addr136:
                                 addr173:
                                 while(!_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §5!9§.§#%§.§6!X§(§@;§.§6!K§,_loc1_);
                                    continue loop3;
                                 }
                              }
                           }
                           §§goto(addr328);
                        }
                        §§goto(addr136);
                     }
                  }
               }
               §§goto(addr151);
            }
         }
         §§goto(addr173);
      }
      
      private function §3>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.§0!]§)
            {
               (§%!0§.getItemByName("TextField_BestText") as §'V§).setVisibility(true);
               loop0:
               while(true)
               {
                  if(_loc1_)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        (§%!0§.getItemByName("TextField_BestScore") as §'V§).setVisibility(true);
                        continue;
                     }
                     addr175:
                     while(true)
                     {
                        §,!7§.§+!A§(§"9§);
                        loop7:
                        while(true)
                        {
                           §,!7§.playSound("Hiscore_Badge",§"9§);
                           addr154:
                           addr171:
                           addr141:
                           while(!(_loc1_ || this))
                           {
                              continue loop7;
                           }
                           §%!0§.setText(§4I§.getText("Text_New_Highscore"),"TextField_NewHighScore");
                           while(!(_loc1_ || _loc1_))
                           {
                              §§goto(addr154);
                              §§goto(addr171);
                           }
                           addr133:
                           (§%!0§.getItemByName("TextField_NewHighScore") as §'V§).setVisibility(true);
                           loop5:
                           while(true)
                           {
                              (§%!0§.getItemByName("MovieClip_BestScoreStars") as §-!P§).setVisibility(false);
                              addr124:
                              while(true)
                              {
                                 this.§0!S§();
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        loop9:
                        while(true)
                        {
                           this.§4!@§();
                           if(!(_loc1_ || _loc1_))
                           {
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc2_)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       continue loop9;
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr124);
                                 continue loop9;
                              }
                              return;
                              addr38:
                              addr47:
                           }
                           §§goto(addr38);
                        }
                     }
                     §§goto(addr133);
                  }
               }
            }
            §§goto(addr175);
         }
         §§goto(addr38);
      }
      
      private function §0!S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>!Z§ = (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).x;
            while(true)
            {
               this.§6[§ = (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).y;
               while(!_loc1_)
               {
                  this.§@q§ = §4l§;
                  if(_loc2_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      private function §9C§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§@q§ <= 0)
            {
               loop0:
               while(true)
               {
                  (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).x = this.§>!Z§;
                  while(true)
                  {
                     (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).y = this.§6[§;
                     loop2:
                     for(; !_loc3_; if(_loc2_ || _loc2_)
                     {
                        continue loop0;
                     })
                     {
                        while(true)
                        {
                           addr28:
                           addr106:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§@q§);
                              if(!(_loc3_ && this))
                              {
                                 §§push(param1);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§§pop() / 10);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().§@q§ = §§pop();
                              if(!(_loc2_ || this))
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           while(_loc2_)
                           {
                              §§goto(addr28);
                           }
                        }
                     }
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     return;
                  }
               }
            }
            else
            {
               §§push(§%!0§.getItemByName("Container_LevelEndStripe") as §<6§);
               §§push(this.§>!Z§);
               if(!(_loc3_ && param1))
               {
                  §§push(Math.random() * (this.§@q§ / §4l§));
                  if(!_loc3_)
                  {
                     §§push(§§pop() * 20);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().x = §§pop();
            }
            while(true)
            {
               §§push(§%!0§.getItemByName("Container_LevelEndStripe") as §<6§);
               §§push(this.§6[§);
               if(_loc2_)
               {
                  §§push(Math.random() * (this.§@q§ / §4l§));
                  if(!_loc3_)
                  {
                     §§push(§§pop() * 20);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().y = §§pop();
               §§goto(addr106);
            }
         }
         §§goto(addr151);
      }
      
      private function §6!d§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = §@;§.§6!M§(§@;§.§6!K§).§8Z§;
         var _loc5_:Number = §@;§.§6!M§(§@;§.§6!K§).§!!<§;
         if(_loc10_)
         {
            if((§%!0§.getItemByName("MovieClip_StarLeft") as §-!P§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§%!6§);
               loop0:
               for(; _loc10_ || this; §§push(this.§%!6§),if(_loc9_ && _loc2_)
               {
                  continue;
               },if(_loc10_)
               {
                  §§push(§§pop().getValue());
                  if(_loc10_)
                  {
                     §§push(_loc4_);
                     if(_loc10_)
                     {
                        if(!_loc9_)
                        {
                           §§push(§§pop() >= §§pop());
                           if(_loc10_ || _loc2_)
                           {
                              if(_loc10_ || this)
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    §§goto(addr458);
                                 }
                                 §§goto(addr645);
                              }
                              §§goto(addr619);
                           }
                           §§goto(addr467);
                        }
                        §§goto(addr782);
                     }
                     §§goto(addr640);
                  }
                  §§goto(addr637);
               },§§goto(addr780))
               {
                  §§push(§§pop().getValue());
                  loop1:
                  while(!_loc9_)
                  {
                     §§push(_loc5_);
                     while(true)
                     {
                        §§push(§§pop() >= §§pop());
                        if(_loc10_)
                        {
                           §§push(§§pop());
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr645:
                                 while(true)
                                 {
                                    §§pop();
                                    addr646:
                                    while(true)
                                    {
                                       §§push((§%!0§.getItemByName("MovieClip_StarCenter") as §-!P§).mClip.currentLabel == "UnLit");
                                    }
                                 }
                                 addr645:
                              }
                              while(true)
                              {
                                 addr619:
                                 while(!§§pop())
                                 {
                                    continue loop0;
                                 }
                                 addr620:
                                 §,!7§.§+!A§(§"9§);
                                 loop17:
                                 while(true)
                                 {
                                    §,!7§.playSound("Hiscore_Star_Splash2",§"9§);
                                    addr600:
                                    while(!(_loc10_ || param1))
                                    {
                                       continue loop17;
                                    }
                                    (§%!0§.getItemByName("MovieClip_StarCenter") as §-!P§).mClip.gotoAndStop("Lit");
                                    loop9:
                                    while(true)
                                    {
                                       addr558:
                                       §§push(Number((§%!0§.getItemByName("MovieClip_StarCenter") as §-!P§).x + (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).x));
                                       if(_loc10_ || _loc2_)
                                       {
                                          if(_loc10_)
                                          {
                                             _loc2_ = §§pop();
                                             addr568:
                                             if(_loc10_ || _loc3_)
                                             {
                                                addr776:
                                                if(_loc10_ || param1)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      addr539:
                                                      §§push(Number((§%!0§.getItemByName("MovieClip_StarCenter") as §-!P§).y + (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).y));
                                                      if(!_loc9_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         this.§3'§ = new §#f§(§5!9§.§?!L§,§5!9§.§"r§,_loc2_,_loc3_,§#f§.§0!3§);
                                                         continue;
                                                         addr542:
                                                      }
                                                      else
                                                      {
                                                         addr721:
                                                         addr807:
                                                      }
                                                      addr720:
                                                      _loc2_ = §§pop();
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         §§push(Number((§%!0§.getItemByName("MovieClip_StarLeft") as §-!P§).y + (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).y));
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         (§%!0§.getItemByName("MovieClip_StarLeft") as §-!P§).mClip.gotoAndStop("Lit");
                                                         addr738:
                                                         if(!(_loc10_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr720);
                                                         §§push(Number((§%!0§.getItemByName("MovieClip_StarLeft") as §-!P§).x + (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).x));
                                                         §§goto(addr720);
                                                      }
                                                      while(true)
                                                      {
                                                         this.§<N§.delay = 1000;
                                                      }
                                                      addr752:
                                                   }
                                                   §§push(this.§%!6§);
                                                   break loop0;
                                                   addr801:
                                                }
                                                §§push(this.§`A§);
                                                do
                                                {
                                                   §§pop().onComplete = this.§[L§;
                                                   §§push(this.§`A§);
                                                }
                                                while(!_loc10_);
                                                
                                                §§pop().play();
                                                §§goto(addr752);
                                             }
                                             else
                                             {
                                                §§goto(addr646);
                                             }
                                          }
                                          addr786:
                                          _loc6_ = §§pop();
                                          while(true)
                                          {
                                             this.§`A§ = §%g§.§'I§.§5!0§(this,{"mNewScoreCounter":this.§%!6§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                             §§goto(addr776);
                                             addr659:
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                this.§`!-§.push(this.§3'§);
                                                addr828:
                                                var _loc7_:*;
                                                §§push((_loc7_ = this).§3<§);
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                var _loc8_:* = §§pop();
                                                if(_loc10_)
                                                {
                                                   _loc7_.§3<§ = _loc8_;
                                                }
                                                return;
                                                addr653:
                                             }
                                          }
                                          while(true)
                                          {
                                             addr785:
                                             §§goto(addr786);
                                             break loop9;
                                          }
                                          addr783:
                                       }
                                       break;
                                    }
                                    if(!(_loc9_ && param1))
                                    {
                                       _loc3_ = §§pop();
                                       §§goto(addr704);
                                    }
                                    §§goto(addr783);
                                 }
                              }
                              addr780:
                              addr458:
                              §§push(§§pop().getValue());
                              §§push(§§pop().getValue());
                              break loop1;
                              if(_loc9_ && this)
                              {
                                 continue;
                              }
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(!(_loc9_ && this))
                                    {
                                       §§push((§%!0§.getItemByName("MovieClip_StarRight") as §-!P§).mClip.currentLabel == "UnLit");
                                       while(true)
                                       {
                                          loop12:
                                          while(!§§pop())
                                          {
                                             §§push(this.§&!2§);
                                             loop13:
                                             while(true)
                                             {
                                                if(_loc10_)
                                                {
                                                   continue loop6;
                                                }
                                                §§push(this.§0!]§);
                                                addr208:
                                                continue loop12;
                                                if(!(_loc10_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(!§§pop())
                                                {
                                                   (§%!0§.getItemByName("MovieClip_NewHighScoreBadge") as §-!P§).setVisibility(false);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         while(_loc10_ || _loc3_)
                                                         {
                                                            (§%!0§.getItemByName("MovieClip_NewHighScoreBadge") as §-!P§).setVisibility(true);
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               §§goto(addr92);
                                                            }
                                                            §§goto(addr828);
                                                         }
                                                         break;
                                                         addr155:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§&k§ = §%g§.§'I§.§5!0§((§%!0§.getItemByName("MovieClip_NewHighScoreBadge") as §-!P§).mClip,{
                                                            "scaleX":1,
                                                            "scaleY":1
                                                         },{
                                                            "scaleX":7,
                                                            "scaleY":7
                                                         },0.1);
                                                         if(_loc10_ || param1)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            if(_loc10_)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr63:
                                                                     this.§&k§.onComplete = this.§3>§;
                                                                     addr60:
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(_loc10_ || _loc2_)
                                                                           {
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 if(_loc10_ || _loc3_)
                                                                                 {
                                                                                    §§push(this.§&k§);
                                                                                    if(!(_loc9_ && _loc2_))
                                                                                    {
                                                                                       §§pop().play();
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr60);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr828);
                                                                                    }
                                                                                    §§goto(addr63);
                                                                                 }
                                                                                 §§goto(addr738);
                                                                              }
                                                                              §§goto(addr721);
                                                                           }
                                                                           §§push(Number((§%!0§.getItemByName("MovieClip_StarRight") as §-!P§).y + (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).y));
                                                                           if(_loc10_)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    break loop14;
                                                                                 }
                                                                                 §§goto(addr785);
                                                                              }
                                                                              §§goto(addr558);
                                                                           }
                                                                           addr348:
                                                                           if(_loc10_)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              §§goto(addr348);
                                                                           }
                                                                           §§goto(addr539);
                                                                        }
                                                                        addr295:
                                                                        if(_loc9_)
                                                                        {
                                                                           addr812:
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              §,!7§.playSound("Hiscore_Star_Splash3",§"9§);
                                                                              addr366:
                                                                              if(_loc10_ || _loc2_)
                                                                              {
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    (§%!0§.getItemByName("MovieClip_StarRight") as §-!P§).mClip.gotoAndStop("Lit");
                                                                                    addr358:
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§goto(addr348);
                                                                                       §§push(Number((§%!0§.getItemByName("MovieClip_StarRight") as §-!P§).x + (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).x));
                                                                                    }
                                                                                    §§goto(addr653);
                                                                                 }
                                                                                 §§goto(addr780);
                                                                                 §§push(this.§%!6§);
                                                                                 addr795:
                                                                              }
                                                                              break loop12;
                                                                           }
                                                                           §,!7§.playSound("Hiscore_Count",§-!4§,100);
                                                                           §,!7§.§+!A§(§"9§);
                                                                           §,!7§.playSound("Hiscore_Star_Splash1",§"9§);
                                                                           §§goto(addr807);
                                                                        }
                                                                        if(!_loc9_)
                                                                        {
                                                                           §%!0§.addChild(this.§3'§);
                                                                           addr279:
                                                                           if(_loc10_)
                                                                           {
                                                                              this.§`!-§.push(this.§3'§);
                                                                              addr271:
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§goto(addr659);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr482);
                                                                           }
                                                                           §§goto(addr828);
                                                                        }
                                                                        §§goto(addr680);
                                                                     }
                                                                     §§goto(addr828);
                                                                  }
                                                                  §§goto(addr366);
                                                               }
                                                               §§goto(addr358);
                                                            }
                                                            else
                                                            {
                                                               addr224:
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        this.§&!2§ = true;
                                                                        addr248:
                                                                        if(_loc10_)
                                                                        {
                                                                           if(!(_loc10_ || _loc2_))
                                                                           {
                                                                              break loop13;
                                                                           }
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              §§goto(addr828);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr812);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr271);
                                                                        }
                                                                        §§goto(addr721);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr568);
                                                                     }
                                                                  }
                                                                  §§goto(addr488);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr279);
                                                               }
                                                            }
                                                            §§goto(addr279);
                                                         }
                                                      }
                                                      addr92:
                                                      §§goto(addr828);
                                                   }
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      this.§3'§ = new §#f§(§5!9§.§?!L§,§5!9§.§"r§,_loc2_,_loc3_,§#f§.§0!H§);
                                                      §§goto(addr295);
                                                   }
                                                   §§goto(addr759);
                                                }
                                                §§goto(addr155);
                                             }
                                             continue loop7;
                                          }
                                          §,!7§.§+!A§(§"9§);
                                          §§goto(addr812);
                                       }
                                    }
                                    §§goto(addr600);
                                 }
                                 addr467:
                              }
                              §§goto(addr391);
                           }
                        }
                        §§goto(addr645);
                     }
                  }
                  §§goto(addr786);
                  §§push(§§pop() / _loc4_);
               }
               while(true)
               {
                  §§pop().native(§@!Z§.§^&§.getScore());
                  §§goto(addr795);
                  §§goto(addr801);
               }
            }
            §§goto(addr812);
         }
         §§goto(addr828);
      }
      
      private function §[L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §,!7§.§+!A§(§-!4§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§#f§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc7_ || param1)
         {
            §§push(_loc2_);
            if(_loc7_ || _loc3_)
            {
               if(§§pop() == §%!$§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     this.§+g§();
                     loop1:
                     do
                     {
                        if(!_loc7_)
                        {
                           continue loop0;
                        }
                        if(_loc7_)
                        {
                           loop2:
                           do
                           {
                              §%!0§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                              while(!(_loc6_ && param1))
                              {
                                 §%!0§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                                 if(_loc7_ || _loc3_)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                           while(false);
                           
                           break;
                        }
                        addr93:
                        §§push(_loc2_);
                     }
                     while(_loc7_ || param1);
                     
                     for each(_loc3_ in this.§`!-§)
                     {
                        if(!_loc6_)
                        {
                           _loc3_.update(param1);
                        }
                     }
                     if(_loc7_)
                     {
                        if(this.§@q§ > 0)
                        {
                           if(_loc7_ || param1)
                           {
                              this.§9C§(param1);
                              addr171:
                              while(true)
                              {
                              }
                              addr171:
                           }
                           §§goto(addr171);
                        }
                        while(mNextState.length > 0)
                        {
                           if(_loc7_)
                           {
                              return §%!$§.STATE_STATUS_COMPLETED;
                           }
                           if(_loc7_)
                           {
                              break;
                           }
                           §§goto(addr171);
                        }
                        return §%!$§.STATE_STATUS_RUNNING;
                     }
                     §§goto(addr171);
                  }
               }
               §§goto(addr93);
            }
            return §§pop();
         }
         §§goto(addr93);
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
               this.§8!H§.§"!c§(0);
               loop1:
               while(true)
               {
                  this.§-f§();
                  while(true)
                  {
                     this.§@q§ = 0;
                     while(!(_loc1_ && _loc2_))
                     {
                        §,!7§.§+!A§(§-!4§);
                        loop4:
                        while(true)
                        {
                           (§%!0§.getItemByName("Button_Menu") as §^-§).setComponentVisualState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           while(true)
                           {
                              (§%!0§.getItemByName("Button_Replay") as §^-§).setComponentVisualState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              continue loop0;
                              addr197:
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              §%!0§.getItemByName("MovieClip_Chester_Win1").setVisibility(false);
                              while(true)
                              {
                                 §%!0§.getItemByName("MovieClip_Chester_Win2").setVisibility(false);
                                 addr175:
                                 while(!_loc1_)
                                 {
                                    §%!0§.getItemByName("MovieClip_Chester_Win3").setVisibility(false);
                                    continue loop4;
                                 }
                                 addr190:
                                 loop7:
                                 for(; _loc2_; §§goto(addr190))
                                 {
                                    §%!0§.setText("0","TextField_LevelEndScore");
                                    while(true)
                                    {
                                       §%!0§.setText("0","TextField_LevelEndScoreEffects");
                                       continue loop7;
                                    }
                                 }
                                 while(_loc2_ || _loc1_)
                                 {
                                    §§goto(addr197);
                                 }
                                 continue loop1;
                                 addr39:
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 addr48:
                                 §>f§.§%!`§.§=m§();
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          loop20:
                                          while(true)
                                          {
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                this.§%!§.stop();
                                                while(true)
                                                {
                                                   loop22:
                                                   while(true)
                                                   {
                                                      §%!0§.getItemByName("Container_AchievementBox").y = this.§!1§;
                                                      addr68:
                                                      loop23:
                                                      while(true)
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§push(§>f§.§%!`§);
                                                               if(!(_loc1_ && _loc1_))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     break loop22;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§goto(addr39);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr117:
                                                                     while(!(_loc1_ && _loc1_))
                                                                     {
                                                                        if(!(_loc2_ || _loc2_))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!this.§%!§)
                                                                           {
                                                                              continue loop22;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§%!§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§null§);
                                                                              break loop23;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop4;
                                                                     addr117:
                                                                  }
                                                               }
                                                               §§goto(addr48);
                                                            }
                                                            else
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(this.§"^§);
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§pop().onComplete = null;
                                                                     addr150:
                                                                     while(_loc2_)
                                                                     {
                                                                        §§push(this.§"^§);
                                                                        if(_loc1_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        addr109:
                                                                        if(!(_loc1_ && _loc1_))
                                                                        {
                                                                           §§pop().stop();
                                                                           §§goto(addr117);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              §§goto(addr109);
                                                                           }
                                                                           addr145:
                                                                        }
                                                                     }
                                                                     §§goto(addr210);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr83);
                                                         }
                                                         §§goto(addr87);
                                                      }
                                                      continue loop20;
                                                   }
                                                   §§goto(addr20);
                                                }
                                             }
                                             §§goto(addr150);
                                          }
                                          §§goto(addr175);
                                       }
                                       addr20:
                                       return;
                                    }
                                    §§goto(addr82);
                                 }
                                 §§goto(addr68);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr210);
      }
      
      private function §-f§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§#f§ = null;
         if(!(_loc4_ && _loc2_))
         {
            if(this.§<N§)
            {
               if(!_loc4_)
               {
                  this.§<N§.stop();
                  if(_loc5_ || this)
                  {
                     addr42:
                     this.§<N§.removeEventListener(TimerEvent.TIMER,this.§6!d§);
                  }
               }
               §§goto(addr42);
            }
            var _loc2_:int = 0;
            for each(_loc1_ in this.§`!-§)
            {
               if(_loc5_)
               {
                  if(§%!0§.contains(_loc1_))
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     §%!0§.removeChild(_loc1_);
                     if(_loc4_ && _loc1_)
                     {
                        continue;
                     }
                  }
                  _loc1_.clean();
               }
            }
            if(!_loc4_)
            {
               this.§`!-§ = new Vector.<§#f§>();
               while(true)
               {
                  (§%!0§.getItemByName("TextField_BestText") as §'V§).setVisibility(false);
                  loop2:
                  for(; _loc5_ || _loc2_; while(_loc5_ || this)
                  {
                     (§%!0§.getItemByName("MovieClip_BestScoreStars") as §-!P§).setVisibility(false);
                     while(_loc5_)
                     {
                        (§%!0§.getItemByName("TextField_NewHighScore") as §'V§).setVisibility(false);
                        if(!_loc4_)
                        {
                           return;
                        }
                     }
                  })
                  {
                     while(true)
                     {
                        (§%!0§.getItemByName("TextField_BestScore") as §'V§).setVisibility(false);
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr166);
         }
         §§goto(addr42);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.keyUp(param1);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§0j§ = null;
         var _loc5_:* = param2;
         if(_loc7_)
         {
            if("NEXT_LEVEL" === _loc5_)
            {
               if(!_loc6_)
               {
                  §§push(0);
                  if(_loc6_ && param1)
                  {
                     addr461:
                  }
               }
               else
               {
                  addr392:
                  §§push(1);
                  if(!(_loc7_ || this))
                  {
                     addr483:
                  }
               }
            }
            else if("REPLAY" === _loc5_)
            {
               if(_loc7_ || this)
               {
                  §§goto(addr392);
               }
               else
               {
                  addr406:
                  §§push(2);
                  if(_loc6_ && param1)
                  {
                     §§goto(addr461);
                  }
               }
            }
            else
            {
               if("MENU" === _loc5_)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr406);
                  }
                  else
                  {
                     addr465:
                     §§push(6);
                     if(_loc7_ || this)
                     {
                        §§goto(addr483);
                     }
                  }
               }
               else if("BUTTON_NO" === _loc5_)
               {
                  if(!(_loc6_ && param2))
                  {
                     §§push(3);
                     if(_loc6_)
                     {
                     }
                  }
                  else
                  {
                     addr453:
                     §§push(5);
                     if(!(_loc6_ && this))
                     {
                        §§goto(addr461);
                     }
                  }
                  §§goto(addr488);
               }
               else if("BUTTON_YES" === _loc5_)
               {
                  if(_loc7_)
                  {
                     §§push(4);
                     if(_loc7_ || this)
                     {
                     }
                     §§goto(addr488);
                  }
                  else
                  {
                     §§goto(addr453);
                  }
               }
               else
               {
                  if("CREDIT_OK" === _loc5_)
                  {
                     if(_loc7_ || this)
                     {
                        §§goto(addr453);
                     }
                     else
                     {
                        §§goto(addr465);
                     }
                  }
                  else if("CHECKBOX_CHANGE" === _loc5_)
                  {
                     §§goto(addr465);
                  }
                  else
                  {
                     §§push(7);
                  }
                  §§goto(addr465);
               }
               §§goto(addr465);
            }
            addr488:
            loop0:
            while(true)
            {
               loop4:
               switch(§§pop())
               {
                  case 0:
                     this.§[!R§();
                     break loop0;
                     addr298:
                  case 1:
                     §§push((§@!Z§.§;!,§ as § $§).§,!e§());
                     if(!(_loc6_ && this))
                     {
                        if(§§pop())
                        {
                           addr280:
                           §§push(§>f§.§%!`§);
                           loop1:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc7_ || param2)
                              {
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    §§push(§§pop() >= §"!d§.§"!Q§);
                                    addr233:
                                    break loop4;
                                    if(_loc7_ || param2)
                                    {
                                       break loop1;
                                    }
                                 }
                                 continue loop0;
                                 addr292:
                              }
                              §§goto(addr292);
                              break loop4;
                           }
                           if(§§pop())
                           {
                              addr255:
                              if(!§?,§.sCheetosPopups.showPopup(§&O§.RESTART_LEVEL))
                              {
                                 addr261:
                                 this.§+8§();
                              }
                           }
                           else
                           {
                              §?,§.sCheetosPopups.showPopup(§&O§.NO_CREDIT);
                              addr219:
                           }
                           addr183:
                           break loop0;
                        }
                        this.§+8§();
                        addr203:
                        if(_loc6_ && this)
                        {
                           §§goto(addr255);
                        }
                        §§goto(addr183);
                        §§goto(addr255);
                     }
                     §§goto(addr292);
                  case 2:
                     this.§+!K§();
                     addr188:
                     if(!_loc6_)
                     {
                        if(_loc7_ || param3)
                        {
                           break loop0;
                        }
                     }
                     §§goto(addr261);
                  case 3:
                     if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
                     {
                        addr169:
                        if(!(_loc6_ && this))
                        {
                           sCheetosPopups.hidePopup();
                           if(_loc7_)
                           {
                              if(!_loc6_)
                              {
                                 addr107:
                                 break loop0;
                              }
                              §§goto(addr203);
                           }
                           break loop0;
                        }
                        §§goto(addr298);
                     }
                     else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§"!?§)
                     {
                        addr157:
                        sCheetosPopups.hidePopup();
                        addr159:
                     }
                     else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3!T§)
                     {
                        addr137:
                        if(!_loc6_)
                        {
                           if(_loc7_)
                           {
                              sCheetosPopups.hidePopup();
                              addr143:
                              if(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    §§goto(addr107);
                                 }
                                 else
                                 {
                                    §§goto(addr280);
                                 }
                              }
                              break;
                           }
                           §§goto(addr219);
                        }
                        else
                        {
                           §§goto(addr159);
                        }
                     }
                     §§goto(addr107);
                  case 4:
                     if(§?,§.sCheetosPopups.getCurrentPopupName() != §&O§.RESTART_LEVEL)
                     {
                        if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§"!?§)
                        {
                           if(_loc7_)
                           {
                              if(_loc7_ || param2)
                              {
                                 this.§[!R§();
                                 if(_loc7_)
                                 {
                                    addr99:
                                    if(_loc7_ || param3)
                                    {
                                       addr21:
                                       break loop0;
                                       addr49:
                                    }
                                    else
                                    {
                                       addr116:
                                       if(!(_loc6_ && param2))
                                       {
                                          this.§+8§();
                                          addr125:
                                          if(_loc7_)
                                          {
                                             §§goto(addr21);
                                          }
                                          else
                                          {
                                             §§goto(addr143);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr188);
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr21);
                                 }
                                 break loop0;
                              }
                              §§goto(addr169);
                              §§goto(addr255);
                           }
                           §§goto(addr99);
                        }
                        else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3!T§)
                        {
                           if(_loc7_ || param2)
                           {
                              this.§+!K§();
                           }
                           addr67:
                           if(_loc7_)
                           {
                              if(_loc7_ || this)
                              {
                                 §§goto(addr21);
                              }
                              else
                              {
                                 §§goto(addr137);
                              }
                           }
                           else
                           {
                              §§goto(addr125);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr21);
                     }
                     §§goto(addr116);
                  case 5:
                     sCheetosPopups.hidePopup();
                     if(_loc7_ || param3)
                     {
                        if(!(_loc6_ && param2))
                        {
                           if(!(_loc6_ && param1))
                           {
                              if(true)
                              {
                                 break loop0;
                              }
                              §§goto(addr49);
                           }
                           else
                           {
                              §§goto(addr157);
                           }
                        }
                        else
                        {
                           §§goto(addr67);
                        }
                        §§goto(addr107);
                     }
                     break loop0;
                  case 6:
                     _loc4_ = param3 as §0j§;
                     if(_loc7_)
                     {
                        addr353:
                        §§push(§5!9§.§-!O§);
                        §§push(§5!9§.§-!O§.§8!&§);
                        if(_loc7_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().§8!&§ = §§pop();
                     }
                     addr360:
                     §§push(§5!9§.§-!O§);
                     if(_loc7_ || this)
                     {
                        if(§§pop().§8!&§)
                        {
                           if(_loc7_ || param1)
                           {
                              if(_loc6_ && param2)
                              {
                                 §§goto(addr360);
                              }
                              _loc4_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           }
                           addr361:
                           break loop0;
                           addr350:
                        }
                        _loc4_.setComponentState(§0j§.§+o§);
                        if(_loc7_)
                        {
                           if(false)
                           {
                              §§goto(addr360);
                           }
                           §§goto(addr361);
                        }
                        §§goto(addr350);
                     }
                     §§goto(addr353);
               }
            }
            continue loop3;
            return;
         }
         §§goto(addr465);
      }
      
      private function §+g§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:§^-§ = §%!0§.getItemByName("Button_Replay") as §^-§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§^-§ = §%!0§.getItemByName("Button_Next") as §^-§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§^-§ = §%!0§.getItemByName("Button_Menu") as §^-§;
         if(_loc7_)
         {
            if((§@!Z§.§;!,§ as § $§).§,!e§())
            {
               if(_loc7_ || _loc3_)
               {
                  _loc2_.visible = true;
               }
               if(§@;§.§6!K§ != null)
               {
                  _loc4_.visible = !§@;§.§6Q§();
                  addr102:
                  if(_loc6_ && _loc1_)
                  {
                     addr115:
                     _loc4_.visible = false;
                     addr118:
                  }
                  §§goto(addr55);
               }
               §§goto(addr115);
               addr145:
            }
            else
            {
               _loc2_.visible = false;
               for(; _loc7_; _loc4_.visible = false,if(_loc7_)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr145);
                  }
                  addr55:
                  return;
               })
               {
                  if(_loc7_ || _loc3_)
                  {
                     continue;
                  }
               }
               §§goto(addr102);
            }
         }
         §§goto(addr118);
      }
      
      private function §+8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §'!9§.§7T§();
         }
         do
         {
            mNextState = §'!9§.§3!?§;
         }
         while(!_loc1_);
         
      }
      
      private function §[!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §'!9§.§-4§();
            do
            {
               mNextState = StateCutSceneDynamic.§3!?§;
            }
            while(_loc2_);
            
         }
      }
      
      private function §+!K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §,!7§.§13§();
         }
         do
         {
            mNextState = §39§.§3!?§;
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private function §4!@§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            §§push(§>f§.§%!`§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr45);
                  }
               }
               §§push(§>f§.§%!`§);
            }
            §§push(§§pop().§8!#§());
            if(!_loc3_)
            {
               §§push(§§pop());
            }
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               if(_loc1_)
               {
                  if(_loc2_)
                  {
                     this.§='§(_loc1_);
                  }
               }
            }
            return;
         }
         addr45:
      }
      
      private function §='§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§ in§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr253:
               while(§§pop().§=D§(§§pop()))
               {
                  while(true)
                  {
                     §%!0§.setText(§4I§.getText("Text_AchievementText") + "\n" + this.§ in§.§=D§(param1),"TextField_AchievementText");
                     continue loop0;
                  }
               }
               addr255:
               this.§4!@§();
               addr257:
               return;
            }
         }
         §§goto(addr249);
      }
      
      private function §null§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5x§();
         }
         do
         {
            this.§%!§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§null§);
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private function §5x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§"^§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  addr120:
                  while(true)
                  {
                     §§push(this.§"^§);
                     addr122:
                     while(true)
                     {
                        §§pop().stop();
                        addr123:
                        while(true)
                        {
                        }
                     }
                  }
                  addr120:
               }
               while(true)
               {
                  this.§"^§ = §%g§.§'I§.§5!0§(§%!0§.getItemByName("Container_AchievementBox"),{"y":this.§4Q§},null,§^8§,§%g§.§`!S§);
                  loop2:
                  while(!_loc2_)
                  {
                     §§push(this.§"^§);
                     loop3:
                     while(true)
                     {
                        §§pop().§8!F§ = false;
                        loop4:
                        while(true)
                        {
                           §§push(this.§"^§);
                           loop5:
                           while(!_loc2_)
                           {
                              §§pop().play();
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!(_loc1_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§push(this.§"^§);
                                    if(_loc1_ || _loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    continue loop5;
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                              continue loop2;
                           }
                           §§goto(addr122);
                        }
                     }
                  }
                  §§goto(addr123);
               }
            }
         }
         §§goto(addr120);
      }
   }
}
