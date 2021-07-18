package §<"c§
{
   import § "4§.§8!R§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §1!i§.§;7§;
   import §3§.§<#A§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §^!v§.§@"A§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §""o§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelEndState";
      
      protected static const §0,§:String = "ScoreLoopCountChannel";
      
      protected static const §`O§:String = "EndScreenEffectChannel";
      
      protected static const §<!K§:int = 40;
      
      protected static const §5"n§:int = 30;
      
      protected static const §,#9§:int = 95;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §^!7§ = "LevelEndState";
            while(true)
            {
               §0,§ = "ScoreLoopCountChannel";
               loop1:
               for(; _loc2_ || §""o§; while(!(_loc1_ && §""o§))
               {
                  while(true)
                  {
                     §5"n§ = 30;
                     §§goto(addr57);
                  }
                  §§goto(addr42);
                  §§goto(addr35);
               })
               {
                  §`O§ = "EndScreenEffectChannel";
                  while(true)
                  {
                     §<!K§ = 40;
                     continue loop1;
                     addr57:
                     while(!(_loc1_ && _loc2_))
                     {
                        §,#9§ = 95;
                        if(_loc2_)
                        {
                           addr35:
                           if(_loc2_ || _loc1_)
                           {
                              return;
                              addr42:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      protected var §3!F§:§[#R§;
      
      protected var §-!t§:int;
      
      protected var §0!r§:§<#A§;
      
      protected var §%#>§:Vector.<§<#A§>;
      
      protected var §5"G§:Boolean;
      
      protected var §6!6§:Timer;
      
      public var mNewScoreCounter:int;
      
      protected var §]!w§:§;7§;
      
      protected var §[N§:§@"A§;
      
      protected var §<!L§:Boolean;
      
      protected var §%!x§:Boolean;
      
      protected var §[m§:Boolean;
      
      protected var §^c§:§ #^§;
      
      protected var §^W§:§^"m§;
      
      protected var §^"^§:§^"m§;
      
      protected var §,>§:§^"m§;
      
      protected var §]6§:§^"m§;
      
      protected var §9!#§:§ #^§;
      
      protected var §5"t§:§ #^§;
      
      protected var §"!'§:MovieClip;
      
      protected var §9!@§:TextField;
      
      protected var §7C§:MovieClip;
      
      protected var §`!b§:TextField;
      
      protected var §+#7§:MovieClip;
      
      protected var §1u§:MovieClip;
      
      protected var §`##§:MovieClip;
      
      protected var §3$§:MovieClip;
      
      protected var §">§:§8!R§;
      
      public function §""o§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§]!w§ = new §;7§();
            do
            {
               super(param1,param3,param4,param2);
            }
            while(_loc5_);
            
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               this.§">§ = §4#;§.singleton.dataModel.userProgress;
               loop1:
               while(true)
               {
                  §@;§ = new §]#[§(this);
                  addr100:
                  while(true)
                  {
                     §@;§.init(this.getViewXML());
                     addr93:
                     while(true)
                     {
                        this.§#"y§();
                        while(_loc1_)
                        {
                           continue loop0;
                           if(!(_loc2_ && _loc2_))
                           {
                              return;
                              addr45:
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      protected function getViewXML() : XML
      {
         return §&$§.§@8§.Views.View_LevelEnd[0];
      }
      
      protected function §#"y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§^c§ = § #^§(§@;§.getItemByName("Container_Content"));
            loop0:
            while(true)
            {
               this.§^W§ = §^"m§(§@;§.getItemByName("Button_Menu"));
               addr250:
               while(true)
               {
                  this.§^"^§ = §^"m§(§@;§.getItemByName("Button_Replay"));
                  addr231:
                  while(true)
                  {
                     this.§,>§ = §^"m§(§@;§.getItemByName("Button_NextLevel"));
                     addr222:
                     while(true)
                     {
                        this.§]6§ = §^"m§(§@;§.getItemByName("Button_CutScene"));
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§9!#§ = § #^§(§@;§.getItemByName("Container_NextButton"));
            §§goto(addr190);
         }
      }
      
      protected function §[r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^W§.setVisibility(true);
            loop0:
            while(true)
            {
               this.§5"t§.setVisibility(true);
               loop1:
               while(true)
               {
                  this.§,>§.setVisibility(false);
                  addr66:
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  this.setButtonAlignment();
                  addr73:
                  if(!(_loc1_ && this))
                  {
                     addr34:
                     if(!(_loc2_ || _loc1_))
                     {
                        loop3:
                        while(true)
                        {
                           this.§9!#§.setVisibility(true);
                           addr59:
                           while(true)
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 while(true)
                                 {
                                    this.§]6§.setVisibility(true);
                                    continue loop3;
                                 }
                                 return;
                                 addr43:
                                 addr85:
                              }
                              §§goto(addr66);
                              §§goto(addr73);
                           }
                           continue loop1;
                        }
                     }
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     §§goto(addr43);
                  }
                  §§goto(addr59);
               }
            }
         }
         §§goto(addr85);
      }
      
      protected function §#N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^W§.setVisibility(true);
            while(true)
            {
               this.§5"t§.setVisibility(true);
               loop1:
               while(true)
               {
                  this.§]6§.setVisibility(false);
                  while(true)
                  {
                     this.§,>§.setVisibility(true);
                     while(true)
                     {
                        if(!§+!b§.getNextLevelId())
                        {
                           §§push(this.§9!#§);
                           if(!_loc1_)
                           {
                              §§push(false);
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§pop().setVisibility(§§pop());
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       addr77:
                                       while(true)
                                       {
                                          §§push(this.§9!#§);
                                          addr79:
                                          while(true)
                                          {
                                             §§push(true);
                                          }
                                       }
                                    }
                                    continue loop1;
                                    addr24:
                                    §§goto(addr36);
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §§pop().setVisibility(§§pop());
                                 §§goto(addr81);
                              }
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr77);
                     }
                  }
               }
            }
         }
         addr36:
         while(true)
         {
            this.setButtonAlignment();
            if(!(_loc1_ && this))
            {
               if(_loc2_)
               {
                  break;
               }
               addr81:
               while(_loc2_)
               {
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  continue loop2;
               }
               continue loop3;
            }
            continue loop4;
            addr92:
         }
      }
      
      protected function setButtonAlignment() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Boolean = this.§9!#§.visible;
         var _loc2_:Boolean = this.§^W§.visible;
         §§push(§,#9§);
         if(!(_loc5_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(§5"n§);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(§,#9§);
                           if(!_loc5_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc5_)
                              {
                                 addr73:
                                 §§push(int(§§pop() + §§pop()));
                                 if(!_loc5_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       addr85:
                                       §§push(_loc3_);
                                       if(_loc6_)
                                       {
                                          addr89:
                                          if(_loc1_)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§push(int(§5"n§ + (_loc6_ || _loc1_ ? §§pop() + §,#9§ : §§pop())));
                                                if(!(_loc5_ && this))
                                                {
                                                   _loc3_ = §§pop();
                                                }
                                                addr129:
                                                §§push(-§§pop());
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§push(2);
                                                   if(!_loc5_)
                                                   {
                                                      addr145:
                                                      addr146:
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc6_)
                                                      {
                                                         §§push(§<!K§);
                                                      }
                                                      var _loc4_:* = int(§§pop());
                                                      if(_loc6_ || _loc1_)
                                                      {
                                                         §§push(_loc2_);
                                                         loop0:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  this.§^W§.x = _loc4_;
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc5_ && _loc1_))
                                                                     {
                                                                        §§push(§5"n§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§,#9§);
                                                                           addr297:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              addr298:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 addr299:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                              }
                                                                           }
                                                                           loop12:
                                                                           while(!(_loc5_ && _loc1_))
                                                                           {
                                                                              §§push(§,#9§);
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 addr258:
                                                                                 while(_loc6_ || _loc1_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    while(_loc6_ || this)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       while(_loc6_)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          continue loop0;
                                                                                          addr205:
                                                                                          if(!(_loc6_ || this))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          _loc4_ = §§pop();
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr215:
                                                                                             if(_loc5_ && _loc3_)
                                                                                             {
                                                                                                while(!(_loc5_ && _loc1_))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§9!#§.x = _loc4_;
                                                                                                      addr243:
                                                                                                      while(_loc6_)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(§5"n§);
                                                                                                               if(!(_loc5_ && _loc1_))
                                                                                                               {
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            addr248:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr205);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   §§goto(addr215);
                                                                                                }
                                                                                                continue loop0;
                                                                                                addr232:
                                                                                             }
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr165:
                                                                                                   return;
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                             while(!_loc5_)
                                                                                             {
                                                                                                §§goto(addr248);
                                                                                                §§push(_loc4_);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                addr278:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§5"t§.x = _loc4_;
                                                                                                   §§goto(addr283);
                                                                                                }
                                                                                             }
                                                                                             addr283:
                                                                                             addr311:
                                                                                          }
                                                                                          §§goto(addr243);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          §§goto(addr311);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr299);
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr310);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr145);
                                             }
                                             §§goto(addr129);
                                          }
                                          else
                                          {
                                             §§goto(addr110);
                                             §§push(0);
                                          }
                                          §§goto(addr110);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§push(_loc3_);
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§goto(addr129);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr129);
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr129);
                  }
                  else
                  {
                     §§push(0);
                     if(_loc6_ || _loc2_)
                     {
                        §§goto(addr73);
                        §§push(§§pop());
                     }
                  }
                  §§goto(addr110);
               }
               §§goto(addr89);
            }
            §§goto(addr145);
         }
         §§goto(addr85);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §,!q§.pause();
               loop1:
               while(true)
               {
                  this.§%!x§ = false;
                  loop2:
                  while(true)
                  {
                     this.§5"G§ = false;
                     while(_loc2_)
                     {
                        if(_loc2_ || param1)
                        {
                           return;
                        }
                     }
                     continue loop1;
                     addr64:
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     this.§"!'§.visible = false;
                     addr83:
                     if(!(_loc3_ && this))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           if(_loc2_)
                           {
                              §§goto(addr49);
                           }
                           while(true)
                           {
                              this.§[N§ = new §@"A§(this.§^c§,this.§^c§.getItemByName("MovieClip_NewHighScoreBadge").mClip);
                              addr127:
                              loop6:
                              while(true)
                              {
                                 if(!§+!b§.isCutSceneNext())
                                 {
                                    this.§#N§();
                                    while(true)
                                    {
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          while(true)
                                          {
                                             this.§[r§();
                                             addr114:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr112:
                                       }
                                       while(true)
                                       {
                                          this.setButtonAlignment();
                                          continue loop6;
                                          §§goto(addr114);
                                       }
                                    }
                                    addr100:
                                 }
                                 §§goto(addr112);
                              }
                           }
                           addr132:
                        }
                        while(_loc2_ || this)
                        {
                           this.§="B§();
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr64);
                                 }
                              }
                              else
                              {
                                 §§goto(addr100);
                              }
                              §§goto(addr114);
                              §§goto(addr83);
                           }
                           continue loop2;
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr60);
                  }
               }
            }
         }
         while(true)
         {
            this.mNewScoreCounter = 0;
            §§goto(addr132);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               this.§"#V§();
               while(true)
               {
                  this.§[N§.dispose();
                  while(true)
                  {
                     this.§[N§ = null;
                     loop3:
                     for(; _loc1_ || _loc1_; while(true)
                     {
                        if(!(_loc1_ || this))
                        {
                           continue loop3;
                        }
                        §§goto(addr102);
                     })
                     {
                        this.mNewScoreCounter = 0;
                        loop4:
                        while(true)
                        {
                           §§push(this.§3!F§);
                           if(_loc1_ || this)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §?!r§.§9"4§(§0,§);
                                    addr52:
                                    while(true)
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          continue loop4;
                                       }
                                    }
                                    addr78:
                                    continue loop3;
                                 }
                              }
                              while(_loc1_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§3!F§);
                                 }
                                 §§goto(addr52);
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              §§pop().stop();
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      private function §="B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§[m§ = false;
            while(true)
            {
               this.setScoreData();
               addr98:
               addr54:
               while(true)
               {
                  this.§6!6§ = new Timer(500);
               }
               if(!(_loc2_ || this))
               {
                  continue;
               }
               return;
               addr61:
            }
         }
         loop2:
         while(true)
         {
            this.§-!t§ = 0;
            while(_loc2_)
            {
               this.§6!6§.addEventListener(TimerEvent.TIMER,this.§-K§);
               do
               {
                  this.§6!6§.start();
               }
               while(_loc1_ && _loc1_);
               
               if(_loc2_)
               {
                  continue loop2;
               }
            }
            §§goto(addr98);
         }
         §§goto(addr61);
      }
      
      protected function §+"N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§">§);
            loop0:
            while(true)
            {
               §§push(§§pop().getEagleScoreForLevel(§+!b§.currentLevel));
               loop1:
               while(true)
               {
                  §§push(100);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.§">§);
                     loop3:
                     while(_loc1_)
                     {
                        §§push(§§pop().getEagleScoreForLevel(§+!b§.currentLevel));
                        loop4:
                        while(_loc1_)
                        {
                           §§push(100);
                           loop5:
                           while(!_loc2_)
                           {
                              §§push(§§pop() < §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(this.§">§);
                                             loop15:
                                             for(; _loc1_; while(true)
                                             {
                                                §§push(this.§">§);
                                                if(_loc2_ && this)
                                                {
                                                   continue loop15;
                                                }
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop().getEagleScoreForLevel(§+!b§.currentLevel));
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc1_ || this)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(0);
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr71);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr132);
                                                         }
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr131);
                                                   }
                                                }
                                                §§goto(addr158);
                                             })
                                             {
                                                §§push(§§pop().getEagleScoreForLevel(§+!b§.currentLevel));
                                                while(true)
                                                {
                                                   §§push(50);
                                                   addr132:
                                                   loop17:
                                                   while(!_loc2_)
                                                   {
                                                      §§push(§§pop() <= §§pop());
                                                      loop18:
                                                      for(; _loc1_ || _loc1_; if(_loc2_ && this)
                                                      {
                                                         continue;
                                                      },if(_loc1_)
                                                      {
                                                         §§goto(addr88);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                         }
                                                         addr204:
                                                      },§§goto(addr205))
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc1_ || this))
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr152:
                                                               addr19:
                                                               addr71:
                                                               while(true)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  addr174:
                                                                  if(!(_loc1_ || _loc2_))
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  this.§"!'§.gotoAndStop(3);
                                                               }
                                                               addr227:
                                                               §§pop() > §§pop();
                                                               return;
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  continue loop18;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  this.§"!'§.gotoAndStop(1);
                                                                  if(_loc1_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(_loc2_ && _loc1_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§">§);
                                                                              addr158:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().getEagleScoreForLevel(§+!b§.currentLevel));
                                                                                 addr161:
                                                                                 while(true)
                                                                                 {
                                                                                    break loop17;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr205:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr90:
                                                                        if(!_loc2_)
                                                                        {
                                                                           this.§"!'§.gotoAndStop(2);
                                                                           addr96:
                                                                           if(_loc1_ || this)
                                                                           {
                                                                              if(_loc2_ && this)
                                                                              {
                                                                                 §§goto(addr227);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr185:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr152);
                                                                        }
                                                                        §§goto(addr185);
                                                                     }
                                                                     §§goto(addr19);
                                                                  }
                                                                  §§goto(addr96);
                                                               }
                                                               §§goto(addr90);
                                                            }
                                                            addr88:
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                      continue loop6;
                                                   }
                                                   while(_loc1_)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      continue loop6;
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr174);
                                       }
                                       addr172:
                                    }
                                    §§goto(addr204);
                                 }
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  this.§"!'§.gotoAndStop(4);
                  §§goto(addr19);
               }
            }
         }
         §§goto(addr154);
      }
      
      protected function § >§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            if(!this.§<!L§)
            {
               this.§9!@§.text = "Best " + param2.toString();
               loop0:
               while(true)
               {
                  §§push(int(§+!b§.getNumStarsForLevel(§+!b§.currentLevel,param2)));
                  if(_loc4_ || _loc3_)
                  {
                     if(!_loc5_)
                     {
                        _loc3_ = §§pop();
                        loop1:
                        for(; _loc4_; this.§+#7§.gotoAndStop(_loc3_),if(_loc4_ || param2)
                        {
                           if(!_loc5_)
                           {
                              if(!_loc4_)
                              {
                                 while(true)
                                 {
                                    this.§">§.§9!R§(§+!b§.currentLevel,param2);
                                    §§goto(addr110);
                                    break loop0;
                                 }
                                 addr92:
                                 addr117:
                              }
                              return;
                           }
                           continue loop0;
                        })
                        {
                           if(!_loc5_)
                           {
                              continue;
                           }
                           addr110:
                           while(true)
                           {
                              this.§9!@§.text = "New Highscore!";
                              break loop1;
                           }
                        }
                        while(true)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr92);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(param1);
                              }
                              addr114:
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(int(§§pop()));
                        break loop0;
                     }
                  }
                  break;
               }
               while(true)
               {
                  param2 = §§pop();
                  §§goto(addr117);
               }
            }
            §§goto(addr114);
         }
         §§goto(addr92);
      }
      
      protected function setScoreData() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§">§.getScoreForLevel(§+!b§.currentLevel));
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§,!q§.§>k§.getScore(10));
         if(!(_loc6_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            this.§<!L§ = _loc2_ > _loc1_;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§ >§(_loc2_,_loc1_);
                  do
                  {
                     this.§+"N§();
                  }
                  while(!(_loc7_ || this));
                  
                  if(_loc6_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  §§push(§,!q§.§>k§.getEagleScore());
                  if(_loc7_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  §§push(this.§">§.getEagleScoreForLevel(§+!b§.currentLevel));
                  if(_loc7_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  var _loc5_:*;
                  if(_loc5_ = _loc3_ > _loc4_)
                  {
                     if(_loc7_)
                     {
                        §§push(_loc3_);
                        if(_loc7_ || _loc1_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc4_ = §§pop();
                        if(_loc7_ || _loc3_)
                        {
                           this.§">§.§]"D§(§+!b§.currentLevel,_loc4_);
                           loop8:
                           while(true)
                           {
                              addr159:
                              while(true)
                              {
                                 this.§[N§.visible = false;
                                 addr163:
                                 while(_loc6_)
                                 {
                                    continue loop8;
                                 }
                                 this.§1u§.gotoAndStop("unlit");
                                 loop6:
                                 while(true)
                                 {
                                    this.§`##§.gotoAndStop("unlit");
                                    addr149:
                                    while(!_loc7_)
                                    {
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           addr182:
                        }
                        while(true)
                        {
                           this.§3$§.gotoAndStop("unlit");
                           if(!_loc6_)
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 break;
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr149);
                        }
                        return;
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr159);
               }
            }
         }
         §§goto(addr59);
      }
      
      private function §-K§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = §+!b§.getGoldScoreForLevel(§+!b§.currentLevel);
         var _loc5_:Number = §+!b§.getSilverScoreForLevel(§+!b§.currentLevel);
         if(!(_loc9_ && param1))
         {
            if(this.§1u§.currentLabel != "unlit")
            {
               §§push(this.§]!w§);
               loop0:
               while(true)
               {
                  §§push(§§pop().getValue());
                  loop1:
                  while(_loc10_)
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
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       if(_loc10_)
                                       {
                                          if(!_loc9_)
                                          {
                                             if(!_loc9_)
                                             {
                                                §§push(this.§`##§.currentLabel == "unlit");
                                                while(true)
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§push(this.§]!w§);
                                                         if(!_loc9_)
                                                         {
                                                            if(!(_loc9_ && this))
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(§§pop().getValue());
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(§§pop() >= §§pop());
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_ && _loc3_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(_loc9_ && param1)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(_loc9_ && _loc3_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr211:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§3$§.currentLabel == "unlit");
                                                                                    addr120:
                                                                                    do
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                    }
                                                                                    while(!_loc9_);
                                                                                    
                                                                                    continue loop7;
                                                                                 }
                                                                              }
                                                                           }
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§push(this.§5"G§);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             this.§5"G§ = true;
                                                                                             break;
                                                                                          }
                                                                                          addr288:
                                                                                          addr288:
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr290:
                                                                                             if(!(_loc9_ && _loc3_))
                                                                                             {
                                                                                                §§push(this.§3!F§);
                                                                                                do
                                                                                                {
                                                                                                   §§pop().onComplete = this.§?!z§;
                                                                                                   §§push(this.§3!F§);
                                                                                                }
                                                                                                while(_loc9_);
                                                                                                
                                                                                                §§pop().play();
                                                                                                addr297:
                                                                                                if(_loc9_ && _loc3_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.lightStar(1);
                                                                                                      addr372:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §?!r§.§"#_§("misc_score_1",§0,§,100);
                                                                                                         addr363:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§6!6§.delay = 1000;
                                                                                                            addr356:
                                                                                                            addr350:
                                                                                                            this.§]!w§.§3"Q§(§,!q§.§>k§.getScore(10));
                                                                                                            break loop7;
                                                                                                            §§goto(addr288);
                                                                                                         }
                                                                                                         §§goto(addr290);
                                                                                                      }
                                                                                                      §§goto(addr297);
                                                                                                      §§goto(addr297);
                                                                                                   }
                                                                                                   addr369:
                                                                                                }
                                                                                                addr373:
                                                                                                var _loc7_:*;
                                                                                                §§push((_loc7_ = this).§-!t§);
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() + 1);
                                                                                                }
                                                                                                var _loc8_:* = §§pop();
                                                                                                if(_loc10_ || this)
                                                                                                {
                                                                                                   _loc7_.§-!t§ = _loc8_;
                                                                                                }
                                                                                                break loop5;
                                                                                             }
                                                                                             §§goto(addr372);
                                                                                          }
                                                                                          §§goto(addr363);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    this.§6!6§.stop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_ && this)
                                                                                       {
                                                                                          break loop12;
                                                                                       }
                                                                                       if(!(_loc9_ && param1))
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr220:
                                                                                             this.lightStar(2);
                                                                                             break;
                                                                                          }
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             this.showScore();
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(false)
                                                                                                   {
                                                                                                      addr61:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr113:
                                                                                                }
                                                                                             }
                                                                                             break loop5;
                                                                                          }
                                                                                          §§goto(addr271);
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr126:
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                this.lightStar(3);
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   if(_loc10_ || _loc3_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         this.§%!x§ = true;
                                                                                                         §§goto(addr113);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr356);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr297);
                                                                                                }
                                                                                                break loop5;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr211);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr373);
                                                                                    §§goto(addr350);
                                                                                 }
                                                                                 §§goto(addr120);
                                                                              }
                                                                              §§goto(addr126);
                                                                           }
                                                                           §§goto(addr61);
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     addr329:
                                                                     §§push(§§pop() / §§pop());
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        §§push(2);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           addr339:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           addr304:
                                                                           §§push(0);
                                                                           if(_loc9_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr272:
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              addr313:
                                                                              break loop1;
                                                                           }
                                                                           this.§3!F§ = §-#C§.§%!E§.§^!H§(this,{"mNewScoreCounter":this.§]!w§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                           §§goto(addr288);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        addr341:
                                                                        §§push(_loc4_);
                                                                        addr315:
                                                                        if(_loc10_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr304);
                                                                        }
                                                                        if(_loc10_ || _loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr339);
                                                                     }
                                                                     _loc6_ = §§pop();
                                                                     §§goto(addr272);
                                                                  }
                                                                  §§goto(addr329);
                                                                  §§push(_loc4_);
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   §§goto(addr328);
                                                }
                                                addr218:
                                             }
                                             §§goto(addr341);
                                          }
                                          §§goto(addr313);
                                       }
                                       §§goto(addr329);
                                    }
                                    break;
                                 }
                                 return;
                              }
                              §§goto(addr218);
                           }
                        }
                     }
                  }
                  §§goto(addr315);
               }
            }
         }
         §§goto(addr369);
      }
      
      protected function lightStar(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §?!r§.§"#_§("star_" + param1,§`O§);
         }
         var _loc2_:MovieClip = [this.§1u§,this.§`##§,this.§3$§][param1 - 1];
         if(_loc3_ || _loc3_)
         {
            _loc2_.gotoAndStop("lit");
            loop0:
            do
            {
               this.§0!r§ = new §<#A§(§4#;§.screenWidth,§4#;§.screenHeight,_loc2_.x + this.§^c§.x + 70,_loc2_.y + this.§^c§.y + 70,[§<#A§.§=!D§,§<#A§.§!&§,§<#A§.§?b§][param1 - 1]);
               while(true)
               {
                  §@;§.addChild(this.§0!r§);
                  while(!(_loc4_ && _loc2_))
                  {
                     this.§%#>§.push(this.§0!r§);
                     if(!(_loc4_ && this))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc3_);
            
         }
      }
      
      protected function showScore() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!this.§<!L§)
            {
               this.§[N§.visible = false;
               loop0:
               while(_loc1_)
               {
                  this.§7C§.visible = true;
                  while(true)
                  {
                     if(_loc1_)
                     {
                        if(_loc1_)
                        {
                           if(_loc2_ && this)
                           {
                              this.§+#7§.visible = false;
                           }
                           else
                           {
                              addr95:
                           }
                           continue;
                           break loop0;
                        }
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr24);
               }
               this.showHighScoreBadge();
               §§goto(addr91);
            }
            §§goto(addr95);
         }
         §§goto(addr67);
      }
      
      protected function showHighScoreBadge() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§[m§)
            {
               if(_loc2_ || this)
               {
                  §§push(this.§[N§);
                  loop0:
                  while(true)
                  {
                     §§pop().visible = true;
                     addr79:
                     addr49:
                     while(true)
                     {
                        §?!r§.§"#_§("highscore");
                        continue loop0;
                     }
                  }
               }
               §§goto(addr79);
            }
            return;
         }
         §§goto(addr79);
      }
      
      private function §?!z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §?!r§.§9"4§(§0,§);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§<#A§ = null;
         if(!(_loc5_ && this))
         {
            super.update(param1);
            if(!(_loc5_ && this))
            {
               this.§`!b§.text = this.mNewScoreCounter.toString();
            }
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this.§%#>§)
         {
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.update(param1);
            }
         }
         if(!_loc5_)
         {
            this.§[N§.update(param1);
            while(nextState.length > 0)
            {
               if(!_loc5_)
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  §,!q§.§9!,§.clearLevel();
               }
               break;
            }
            return;
         }
         §§goto(addr106);
      }
      
      protected function §7b§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^W§.setComponentVisualState(param1);
            while(true)
            {
               this.§^"^§.setComponentVisualState(param1);
               while(_loc3_)
               {
                  this.§]6§.setComponentVisualState(param1);
                  if(!(_loc2_ && param1))
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      private function §"#V§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var splash:§<#A§ = null;
         if(_loc5_ || this)
         {
            if(this.§6!6§)
            {
               if(!_loc4_)
               {
                  addr37:
                  this.§6!6§.stop();
               }
               try
               {
                  this.§6!6§.removeEventListener(TimerEvent.TIMER,this.§-K§);
                  if(_loc4_)
                  {
                  }
               }
               catch(e:Error)
               {
               }
               do
               {
                  this.§?N§();
               }
               while(_loc4_);
               
               return;
               addr171:
               addr164:
            }
            var _loc2_:int = 0;
            if(!_loc4_)
            {
               var _loc3_:* = this.§%#>§;
               if(!(_loc4_ && this))
               {
                  loop1:
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     loop2:
                     while(true)
                     {
                        §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                        loop3:
                        while(true)
                        {
                           addr116:
                           while(true)
                           {
                              if(!§@;§.contains(splash))
                              {
                                 continue loop2;
                              }
                              while(true)
                              {
                                 §@;§.removeChild(splash);
                                 addr126:
                                 while(_loc5_)
                                 {
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  addr141:
                  if(_loc5_)
                  {
                     this.§%#>§ = new Vector.<§<#A§>();
                     §§goto(addr171);
                  }
                  §§goto(addr164);
               }
               while(true)
               {
                  §§goto(addr89);
               }
            }
            §§goto(addr141);
         }
         §§goto(addr37);
      }
      
      protected function §?N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§7C§.visible = false;
         }
         do
         {
            this.§+#7§.visible = false;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      protected function loadNextLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §'$§();
            do
            {
               § g§(this.getCutSceneState());
            }
            while(_loc1_);
            
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && this))
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(_loc6_ || this)
               {
                  addr89:
                  §§push(0);
                  if(_loc5_ && param1)
                  {
                     addr123:
                  }
               }
               else
               {
                  addr110:
                  §§push(2);
                  if(_loc6_)
                  {
                     §§goto(addr123);
                  }
               }
               §§goto(addr128);
            }
            else
            {
               if("REPLAY" !== _loc4_)
               {
                  if("MENU" === _loc4_)
                  {
                     §§goto(addr110);
                  }
                  else
                  {
                     §§push(3);
                  }
                  addr128:
                  switch(§§pop())
                  {
                     case 0:
                        this.loadNextLevel();
                        break;
                        addr56:
                     case 1:
                        § g§(this.getStateLevelLoadState());
                        addr31:
                        break;
                        addr51:
                     case 2:
                        §?!r§.§0"#§();
                        if(!(_loc5_ && param3))
                        {
                           § g§(this.getMenuButtonTargetState());
                           if(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr56);
                                 }
                              }
                              else
                              {
                                 §§goto(addr51);
                              }
                              §§goto(addr31);
                           }
                           break;
                        }
                  }
                  return;
               }
               if(_loc6_)
               {
                  §§push(1);
                  if(!_loc6_)
                  {
                  }
               }
               else
               {
                  §§goto(addr110);
               }
               §§goto(addr128);
            }
            §§goto(addr110);
         }
         §§goto(addr89);
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §<2§.§^!7§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§^!7§;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §+#?§.§^!7§;
      }
   }
}
