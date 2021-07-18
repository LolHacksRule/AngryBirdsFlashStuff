package §%w§
{
   import §#!F§.§78§;
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import §&!7§.§,!A§;
   import §&p§.§9!H§;
   import §'!3§.§4C§;
   import §,j§.§0!@§;
   import §,j§.§1-§;
   import §,j§.§=X§;
   import §,j§.§[i§;
   import §-!@§.§@!Q§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§&!3§;
   import §1§.§'n§;
   import §5!M§.§<e§;
   import §6v§.§"g§;
   import §;!Q§.§^!S§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import §]!F§.§7e§;
   import §`!K§.§!!>§;
   import §`C§.§9!'§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § p§ extends §;s§
   {
      
      public static const §9!P§:String = "LevelEndState3";
      
      public static const §2M§:Number = 30;
      
      private static const §&!Q§:String = "ScoreLoopCountChannel";
      
      private static const §8E§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §9!P§ = "LevelEndState3";
         }
         while(true)
         {
            §2M§ = 30;
            while(_loc2_ || _loc2_)
            {
               §&!Q§ = "ScoreLoopCountChannel";
               while(_loc2_)
               {
                  §8E§ = "EndScreenEffectChannel";
                  if(!(_loc1_ && § p§))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private var §9!O§:§&!!§;
      
      private var §80§:Number;
      
      private var §1V§:Number;
      
      private var §;L§:Number;
      
      private var §0!_§:Boolean = false;
      
      private var §&!X§:Timer;
      
      private var §[2§:§"g§;
      
      private var §0g§:§^!S§;
      
      private var §@!&§:Vector.<§^!S§>;
      
      public var mNewScoreCounter:int;
      
      private var §<-§:int;
      
      private var § i§:Boolean;
      
      private var §5E§:§78§;
      
      private var §-J§:Boolean;
      
      private var §6!6§:§&!!§;
      
      public function § p§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§5E§ = new §78§();
         }
         do
         {
            super(param1,param2);
         }
         while(_loc4_);
         
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.init();
            while(true)
            {
               loop1:
               while(true)
               {
                  §3t§ = new §'j§(this);
                  do
                  {
                     §3t§.init(§0p§.§'! §.Views.View_LevelEndRio[0]);
                  }
                  while(!(_loc2_ || _loc1_));
                  
                  if(!_loc2_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc1_:§[i§ = §3t§.getItemByName("TextField_LevelCompleted") as §[i§;
                  if(_loc2_)
                  {
                     _loc1_.setText(§4C§.getText("Text_Level_Completed"));
                  }
                  while(true)
                  {
                     this.§[2§ = new §"g§(0,0,0,0);
                     loop5:
                     while(!(_loc3_ && this))
                     {
                        §3t§.movieClip.addChildAt(this.§[2§,§3t§.movieClip.numChildren - 1);
                        do
                        {
                           this.§@!&§ = new Vector.<§^!S§>();
                           while(_loc2_ || this)
                           {
                              §!!>§.§6!K§(§&!Q§,1,1);
                              do
                              {
                                 §!!>§.§6!K§(§8E§,16,1);
                              }
                              while(_loc3_);
                              
                              if(!(_loc2_ || this))
                              {
                                 continue;
                              }
                              §§goto(addr93);
                           }
                           continue loop5;
                        }
                        while(!(_loc2_ || this));
                        
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.activate();
            if(_loc2_)
            {
               §§push(§9!'§.§7!Z§);
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr32);
               }
               §§pop().start();
               §§goto(addr32);
            }
            §§goto(addr29);
         }
         addr32:
         if(!_loc3_)
         {
            addr29:
            §§push(§9!'§.§7!Z§);
         }
         var _loc1_:int = 0;
         if(_loc2_ || _loc1_)
         {
            this.mNewScoreCounter = 0;
            loop0:
            while(true)
            {
               this.§ i§ = false;
               do
               {
                  §!!>§.playSound("LevelCompletedTheme1");
                  loop2:
                  do
                  {
                     this.§[2§.§#R§(0.7);
                     loop3:
                     while(true)
                     {
                        this.§!!"§();
                        do
                        {
                           if(!_loc3_)
                           {
                              (§3t§.getItemByName("Button_CutScene") as §0!@§).setVisibility(§7e§.§7!N§());
                              do
                              {
                                 if(§7e§.§^"§ == "1-3")
                                 {
                                    continue;
                                 }
                                 (§3t§.getItemByName("Button_Next") as §0!@§).setVisibility(true);
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          §§goto(addr42);
                                       }
                                       continue loop3;
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              while(_loc3_);
                              
                              continue;
                           }
                           continue loop0;
                        }
                        while(_loc3_);
                        
                        (§3t§.getItemByName("Button_Next") as §0!@§).setVisibility(false);
                        continue loop2;
                     }
                  }
                  while(!(_loc2_ || _loc3_));
                  
               }
               while(!_loc2_);
               
            }
         }
         addr42:
      }
      
      private function §!!"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§2!?§();
            while(true)
            {
               this.§&!X§ = new Timer(100);
               loop1:
               while(_loc2_ || _loc1_)
               {
                  this.§<-§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§&!X§.addEventListener(TimerEvent.TIMER,this.§-!5§);
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §2!?§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc1_:* = Number(§#x§.§[Y§.§`>§(§7e§.§^"§));
         var _loc2_:Number = (§7?§.§75§ as §@!Q§).getScore();
         if(!_loc6_)
         {
            this.§-J§ = _loc2_ > _loc1_;
            loop0:
            while(true)
            {
               if(!this.§-J§)
               {
                  §3t§.setText(§4C§.getText("Text_Best") + " " + _loc1_.toString(),"TextField_BestScore");
                  loop1:
                  while(_loc5_)
                  {
                     if(!(_loc6_ && this))
                     {
                        if(_loc5_ || this)
                        {
                           §§push(§7e§.§]!7§(§7e§.§^"§,_loc1_));
                           if(_loc5_ || _loc2_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc3_ = §§pop();
                           if(!_loc5_)
                           {
                              continue;
                           }
                           §§push(_loc3_);
                           if(!(_loc6_ && _loc1_))
                           {
                              var _loc4_:* = §§pop();
                              if(!_loc6_)
                              {
                                 §§push(1);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(0);
                                             if(_loc5_)
                                             {
                                                addr216:
                                             }
                                             else
                                             {
                                                addr243:
                                             }
                                          }
                                          else
                                          {
                                             addr240:
                                             §§push(2);
                                             if(_loc5_)
                                             {
                                                §§goto(addr243);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(2);
                                          if(!_loc6_)
                                          {
                                             §§push(_loc4_);
                                             if(!_loc6_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      addr226:
                                                      §§push(1);
                                                      if(_loc6_ && _loc2_)
                                                      {
                                                         §§goto(addr243);
                                                      }
                                                      addr249:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            (§3t§.getItemByName("MovieClip_BestScoreStars") as §=X§).§=5§("OneStar");
                                                            if(!_loc6_)
                                                            {
                                                               addr54:
                                                            }
                                                            else
                                                            {
                                                               addr252:
                                                            }
                                                            addr313:
                                                            (§3t§.getItemByName("MovieClip_NewHighScoreBadge") as §=X§).setVisibility(false);
                                                            (§3t§.getItemByName("MovieClip_StarLeft") as §=X§).mClip.gotoAndStop("UnLit");
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            addr320:
                                                            §§goto(addr320);
                                                         case 1:
                                                            (§3t§.getItemByName("MovieClip_BestScoreStars") as §=X§).§=5§("TwoStar");
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§goto(addr313);
                                                            }
                                                            break;
                                                         case 2:
                                                            (§3t§.getItemByName("MovieClip_BestScoreStars") as §=X§).§=5§("ThreeStar");
                                                            if(!(_loc6_ && _loc1_))
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr54);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr252);
                                                            }
                                                            §§goto(addr313);
                                                         default:
                                                            §§goto(addr313);
                                                      }
                                                      (§3t§.getItemByName("MovieClip_StarCenter") as §=X§).mClip.gotoAndStop("UnLit");
                                                      addr283:
                                                      if(_loc5_ || this)
                                                      {
                                                         (§3t§.getItemByName("MovieClip_StarRight") as §=X§).mClip.gotoAndStop("UnLit");
                                                         if(_loc6_ && _loc1_)
                                                         {
                                                            §§goto(addr283);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr313);
                                                      addr248:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr240);
                                                   }
                                                   §§goto(addr248);
                                                }
                                                else
                                                {
                                                   §§push(3);
                                                   if(_loc5_)
                                                   {
                                                      addr239:
                                                      if(§§pop() === _loc4_)
                                                      {
                                                         §§goto(addr240);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr283);
                                                         §§push(3);
                                                      }
                                                   }
                                                   §§goto(addr283);
                                                }
                                             }
                                             §§goto(addr239);
                                          }
                                       }
                                       §§goto(addr283);
                                    }
                                    §§goto(addr239);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr249);
                           continue;
                        }
                        addr178:
                        addr178:
                        §§push(_loc2_);
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc1_ = §§pop();
                        while(true)
                        {
                           §#x§.§[Y§.§'z§(§7e§.§^"§,_loc1_);
                        }
                        addr178:
                     }
                     while(true)
                     {
                        if(_loc5_)
                        {
                           §3t§.setText(§4C§.getText("Text_New_Highscore"),"TextField_BestScore");
                           break loop1;
                        }
                        break;
                        §§goto(addr178);
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     if(!(_loc6_ && _loc1_))
                     {
                        §§goto(addr313);
                     }
                     else
                     {
                        §§goto(addr178);
                     }
                  }
               }
               §§goto(addr178);
            }
         }
         §§goto(addr178);
      }
      
      private function §[@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.§-J§)
            {
               (§3t§.getItemByName("TextField_BestScore") as §[i§).setVisibility(true);
               loop0:
               for(; !_loc2_; (§3t§.getItemByName("MovieClip_BestScoreStars") as §=X§).setVisibility(true),if(!(_loc1_ || this))
               {
                  continue;
               },if(!_loc2_)
               {
                  if(_loc1_)
                  {
                     §§goto(addr24);
                  }
                  else
                  {
                     §§goto(addr106);
                  }
               },§§goto(addr90))
               {
                  if(!(_loc2_ && this))
                  {
                     continue;
                  }
                  loop5:
                  while(true)
                  {
                     (§3t§.getItemByName("TextField_NewHighScore") as §[i§).setVisibility(true);
                     addr106:
                     while(true)
                     {
                        if(_loc1_ || this)
                        {
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 (§3t§.getItemByName("MovieClip_BestScoreStars") as §=X§).setVisibility(false);
                                 addr90:
                                 while(!(_loc1_ || _loc2_))
                                 {
                                 }
                                 this.§`X§();
                                 break loop0;
                              }
                              addr115:
                           }
                           else
                           {
                              while(true)
                              {
                                 §!!>§.§8y§(§8E§);
                              }
                              addr143:
                           }
                           while(true)
                           {
                              §!!>§.playSound("Hiscore_Badge",§8E§);
                           }
                        }
                        while(true)
                        {
                           §3t§.setText(§4C§.getText("Text_New_Highscore"),"TextField_NewHighScore");
                           continue loop5;
                        }
                        continue loop5;
                     }
                  }
               }
               addr24:
               return;
            }
            §§goto(addr143);
         }
         §§goto(addr115);
      }
      
      private function §`X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§1V§ = (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).x;
         }
         do
         {
            this.§;L§ = (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).y;
            do
            {
               this.§80§ = §2M§;
            }
            while(_loc2_ && this);
            
         }
         while(!_loc1_);
         
      }
      
      private function §@!;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§80§ <= 0)
            {
               if(!(_loc2_ && this))
               {
                  (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).x = this.§1V§;
               }
               while(true)
               {
                  (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).y = this.§;L§;
                  addr145:
                  loop1:
                  while(true)
                  {
                     addr24:
                     addr95:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§80§);
                        if(!_loc2_)
                        {
                           §§push(param1);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(§§pop() / 10);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().§80§ = §§pop();
                        if(_loc2_ && param1)
                        {
                           continue;
                        }
                        if(_loc3_ || _loc2_)
                        {
                           return;
                        }
                     }
                     while(true)
                     {
                        if(_loc2_ && _loc2_)
                        {
                           continue loop1;
                        }
                        §§goto(addr24);
                     }
                  }
               }
               addr175:
            }
            else
            {
               §§push(§3t§.getItemByName("Container_LevelEndStripe") as §1-§);
               §§push(this.§1V§);
               if(_loc3_ || this)
               {
                  §§push(Math.random() * (this.§80§ / §2M§));
                  if(_loc3_)
                  {
                     §§push(§§pop() * 20);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().x = §§pop();
            }
            while(true)
            {
               if(!_loc2_)
               {
                  while(true)
                  {
                     §§push(§3t§.getItemByName("Container_LevelEndStripe") as §1-§);
                     §§push(this.§;L§);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(Math.random() * (this.§80§ / §2M§));
                        if(_loc3_)
                        {
                           §§push(§§pop() * 20);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().y = §§pop();
                     §§goto(addr95);
                  }
                  addr135:
               }
               else
               {
                  §§goto(addr175);
               }
               §§goto(addr145);
            }
         }
         §§goto(addr135);
      }
      
      private function §-!5§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = §7e§.§`!7§(§7e§.§^"§).§7z§;
         var _loc5_:Number = §7e§.§`!7§(§7e§.§^"§).§;!L§;
         if(!(_loc10_ && _loc2_))
         {
            if((§3t§.getItemByName("MovieClip_StarLeft") as §=X§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§5E§);
               loop0:
               while(_loc9_ || param1)
               {
                  §§push(§§pop().getValue());
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     addr642:
                     addr772:
                     while(_loc9_)
                     {
                        §§push(§§pop() >= §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           addr646:
                           addr461:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       if(_loc9_ || param1)
                                       {
                                          §§push((§3t§.getItemByName("MovieClip_StarCenter") as §=X§).mClip.currentLabel == "UnLit");
                                          while(!(_loc10_ && param1))
                                          {
                                             while(!§§pop())
                                             {
                                                §§push(this.§5E§);
                                                if(!_loc10_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      §§pop().§7!X§(§7?§.§75§.getScore());
                                                      §§push(this.§5E§);
                                                   }
                                                   else
                                                   {
                                                      addr790:
                                                      addr794:
                                                   }
                                                   continue loop1;
                                                   break loop0;
                                                }
                                                continue loop0;
                                             }
                                             §!!>§.§8y§(§8E§);
                                             §!!>§.playSound("Hiscore_Star_Splash2",§8E§);
                                             (§3t§.getItemByName("MovieClip_StarCenter") as §=X§).mClip.gotoAndStop("Lit");
                                             addr594:
                                             if(!_loc10_)
                                             {
                                                if(_loc9_)
                                                {
                                                   addr567:
                                                   §§push(Number((§3t§.getItemByName("MovieClip_StarCenter") as §=X§).x + (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).x));
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr575:
                                                      if(!_loc10_)
                                                      {
                                                         if(_loc9_ || param1)
                                                         {
                                                            addr541:
                                                            §§push(Number((§3t§.getItemByName("MovieClip_StarCenter") as §=X§).y + (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).y));
                                                            if(!_loc10_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr544:
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  this.§0g§ = new §^!S§(§#x§.§;#§,§#x§.§0h§,_loc2_,_loc3_,§^!S§.§[!§);
                                                                  addr786:
                                                                  addr518:
                                                                  addr766:
                                                                  if(_loc9_ || _loc3_)
                                                                  {
                                                                     §3t§.addChild(this.§0g§);
                                                                     addr502:
                                                                     if(_loc9_)
                                                                     {
                                                                        this.§@!&§.push(this.§0g§);
                                                                        addr489:
                                                                        if(_loc10_ && _loc3_)
                                                                        {
                                                                           §§goto(addr575);
                                                                        }
                                                                        addr827:
                                                                        var _loc7_:*;
                                                                        §§push((_loc7_ = this).§<-§);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                        var _loc8_:* = §§pop();
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           _loc7_.§<-§ = _loc8_;
                                                                        }
                                                                        break loop5;
                                                                     }
                                                                     this.§&!X§.delay = 1000;
                                                                     addr800:
                                                                     §§goto(addr790);
                                                                     §§push(this.§5E§);
                                                                     addr806:
                                                                     addr800:
                                                                  }
                                                                  this.§6!6§ = §';§.§%!O§.§set §(this,{"mNewScoreCounter":this.§5E§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                  §§push(this.§6!6§);
                                                                  do
                                                                  {
                                                                     §§pop().onComplete = this.§<y§;
                                                                     §§push(this.§6!6§);
                                                                  }
                                                                  while(_loc10_);
                                                                  
                                                                  §§pop().play();
                                                                  addr740:
                                                                  if(!_loc9_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §!!>§.§8y§(§8E§);
                                                                        addr811:
                                                                        §!!>§.playSound("Hiscore_Star_Splash1",§8E§);
                                                                        §§goto(addr806);
                                                                     }
                                                                     addr826:
                                                                  }
                                                                  (§3t§.getItemByName("MovieClip_StarLeft") as §=X§).mClip.gotoAndStop("Lit");
                                                                  addr722:
                                                                  _loc2_ = Number((§3t§.getItemByName("MovieClip_StarLeft") as §=X§).x + (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).x);
                                                                  addr705:
                                                                  _loc3_ = Number((§3t§.getItemByName("MovieClip_StarLeft") as §=X§).y + (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).y);
                                                                  this.§0g§ = new §^!S§(§#x§.§;#§,§#x§.§0h§,_loc2_,_loc3_,§^!S§.§?C§);
                                                                  §3t§.addChild(this.§0g§);
                                                                  this.§@!&§.push(this.§0g§);
                                                                  §§goto(addr827);
                                                                  addr669:
                                                                  addr733:
                                                                  addr689:
                                                                  addr706:
                                                                  addr675:
                                                                  addr723:
                                                                  addr742:
                                                               }
                                                               §§goto(addr594);
                                                            }
                                                            §§goto(addr567);
                                                         }
                                                         §§goto(addr740);
                                                      }
                                                      §§goto(addr669);
                                                   }
                                                   §§goto(addr705);
                                                }
                                                §§goto(addr794);
                                             }
                                             addr604:
                                             §§goto(addr604);
                                          }
                                          continue;
                                          addr615:
                                       }
                                       §§goto(addr749);
                                    }
                                    break;
                                 }
                                 §§goto(addr857);
                              }
                              §§goto(addr622);
                           }
                           loop8:
                           while(true)
                           {
                              if(!(_loc9_ || this))
                              {
                                 continue loop3;
                              }
                              §§push(§§pop());
                              if(!(_loc10_ && _loc2_))
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       if(!_loc9_)
                                       {
                                          break loop8;
                                       }
                                       §§pop();
                                       if(!_loc9_)
                                       {
                                          addr857:
                                       }
                                       §§push((§3t§.getItemByName("MovieClip_StarRight") as §=X§).mClip.currentLabel == "UnLit");
                                       loop10:
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             continue loop9;
                                          }
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(this.§ i§);
                                                continue loop10;
                                             }
                                             if(!(_loc10_ && this))
                                             {
                                                if(!(_loc10_ && this))
                                                {
                                                   §!!>§.§8y§(§8E§);
                                                   §!!>§.playSound("Hiscore_Star_Splash3",§8E§);
                                                   (§3t§.getItemByName("MovieClip_StarRight") as §=X§).mClip.gotoAndStop("Lit");
                                                   addr370:
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      addr353:
                                                      §§push(Number((§3t§.getItemByName("MovieClip_StarRight") as §=X§).x + (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).x));
                                                      if(_loc9_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            addr358:
                                                            if(!_loc10_)
                                                            {
                                                               §§push(Number((§3t§.getItemByName("MovieClip_StarRight") as §=X§).y + (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).y));
                                                               if(_loc10_)
                                                               {
                                                                  §§goto(addr353);
                                                               }
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  this.§0g§ = new §^!S§(§#x§.§;#§,§#x§.§0h§,_loc2_,_loc3_,§^!S§.§"-§);
                                                                  §3t§.addChild(this.§0g§);
                                                                  addr295:
                                                                  if(!_loc10_)
                                                                  {
                                                                     this.§@!&§.push(this.§0g§);
                                                                     addr287:
                                                                     if(_loc10_)
                                                                     {
                                                                        §§goto(addr733);
                                                                     }
                                                                     §§goto(addr827);
                                                                  }
                                                                  §§goto(addr689);
                                                                  addr337:
                                                                  addr311:
                                                               }
                                                               else
                                                               {
                                                                  addr785:
                                                                  _loc6_ = §§pop();
                                                                  §§goto(addr786);
                                                               }
                                                               §§goto(addr786);
                                                            }
                                                            §!!>§.playSound("Hiscore_Count",§&!Q§,100);
                                                            §§goto(addr826);
                                                         }
                                                         §§goto(addr722);
                                                      }
                                                      §§goto(addr541);
                                                   }
                                                   §§goto(addr544);
                                                   addr383:
                                                   addr427:
                                                }
                                                §§goto(addr706);
                                             }
                                             else
                                             {
                                                §§goto(addr624);
                                             }
                                          }
                                       }
                                       continue loop8;
                                       return;
                                    }
                                 }
                                 §§goto(addr398);
                              }
                              else
                              {
                                 §§goto(addr646);
                              }
                           }
                           §§goto(addr615);
                        }
                     }
                     §§push(§§pop() / §§pop());
                     if(!_loc10_)
                     {
                        §§push(§§pop() * 2);
                        if(_loc9_ || _loc2_)
                        {
                           addr784:
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr785);
                     }
                     §§goto(addr784);
                  }
               }
               while(true)
               {
                  §§goto(addr771);
                  §§goto(addr790);
               }
               §§goto(addr742);
            }
            §§goto(addr358);
         }
         §§goto(addr786);
      }
      
      private function §<y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §!!>§.§8y§(§&!Q§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§^!S§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc7_)
         {
            §§push(_loc2_);
            if(_loc7_)
            {
               if(§§pop() == §&c§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     this.§?<§();
                     while(_loc7_)
                     {
                        loop2:
                        while(true)
                        {
                           §3t§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 §3t§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                                 if(_loc7_ || this)
                                 {
                                    continue loop2;
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr94);
                        }
                     }
                     addr92:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
               §§push(_loc2_);
               if(!(_loc6_ && _loc3_))
               {
                  return §§pop();
               }
            }
            addr94:
            for each(_loc3_ in this.§@!&§)
            {
               if(!_loc6_)
               {
                  _loc3_.update(param1);
               }
            }
            if(!(_loc6_ && this))
            {
               if(this.§80§ > 0)
               {
                  while(true)
                  {
                     this.§@!;§(param1);
                     addr171:
                     while(true)
                     {
                     }
                     addr146:
                     if(_loc7_ || this)
                     {
                        §§goto(addr123);
                     }
                  }
               }
               for(; mNextState.length > 0; §§goto(addr171))
               {
                  if(_loc7_ || this)
                  {
                     if(_loc7_)
                     {
                        §§goto(addr143);
                     }
                     continue;
                  }
                  §§goto(addr146);
               }
               addr123:
               return §&c§.STATE_STATUS_RUNNING;
            }
            addr143:
            return §&c§.STATE_STATUS_COMPLETED;
         }
         §§goto(addr92);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            while(true)
            {
               this.§[2§.§6!Y§(0);
               addr149:
               while(true)
               {
                  this.§?U§();
                  addr143:
                  while(true)
                  {
                     this.§80§ = 0;
                  }
               }
            }
            addr152:
         }
         while(true)
         {
            §!!>§.§8y§(§&!Q§);
            loop4:
            while(true)
            {
               (§3t§.getItemByName("Button_Menu") as §0!@§).setComponentVisualState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr117:
               while(!_loc1_)
               {
                  (§3t§.getItemByName("Button_Replay") as §0!@§).setComponentVisualState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  continue loop4;
               }
               §§goto(addr149);
            }
         }
      }
      
      private function §?U§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§^!S§ = null;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§&!X§)
            {
               if(_loc5_)
               {
                  this.§&!X§.stop();
                  if(_loc5_ || _loc2_)
                  {
                  }
                  addr49:
                  var _loc2_:int = 0;
                  var _loc3_:* = this.§@!&§;
                  for each(_loc1_ in _loc3_)
                  {
                     if(_loc5_)
                     {
                        if(§3t§.contains(_loc1_))
                        {
                           if(!(_loc5_ || _loc2_))
                           {
                              continue;
                           }
                           addr85:
                           §3t§.removeChild(_loc1_);
                           if(_loc4_)
                           {
                              continue;
                           }
                        }
                        _loc1_.clean();
                        continue;
                     }
                     §§goto(addr85);
                  }
                  if(_loc5_)
                  {
                     this.§@!&§ = new Vector.<§^!S§>();
                     while(true)
                     {
                        (§3t§.getItemByName("TextField_BestScore") as §[i§).setVisibility(false);
                        loop2:
                        while(!_loc4_)
                        {
                           while(true)
                           {
                              (§3t§.getItemByName("MovieClip_BestScoreStars") as §=X§).setVisibility(false);
                              while(_loc5_)
                              {
                                 (§3t§.getItemByName("TextField_NewHighScore") as §[i§).setVisibility(false);
                                 if(_loc5_ || _loc3_)
                                 {
                                    return;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr150);
               }
               this.§&!X§.removeEventListener(TimerEvent.TIMER,this.§-!5§);
            }
         }
         §§goto(addr49);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.keyUp(param1);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(!(_loc8_ || param3))
                     {
                        break;
                     }
                     §§pop().§§slot[5] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop3;
                        addr452:
                        loop6:
                        while(true)
                        {
                           if(!(_loc7_ && param2))
                           {
                              if(!_loc8_)
                              {
                                 break;
                                 addr431:
                              }
                              §§push(§§newactivation());
                              loop7:
                              while(!(_loc7_ && this))
                              {
                                 §§pop().§§slot[2] = param2;
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc8_ || param3)
                                    {
                                       continue loop0;
                                    }
                                    continue loop7;
                                    addr417:
                                    §§pop().§§slot[3] = param3;
                                    if(_loc7_ && this)
                                    {
                                       continue;
                                    }
                                    if(!_loc8_)
                                    {
                                       continue loop6;
                                    }
                                    addr593:
                                    var _loc5_:* = eventName;
                                    if(!_loc7_)
                                    {
                                       if("NEXT_LEVEL" === _loc5_)
                                       {
                                          if(_loc8_)
                                          {
                                             §§push(0);
                                             if(_loc8_ || param2)
                                             {
                                                addr713:
                                                switch(§§pop())
                                                {
                                                   case 5:
                                                      addr157:
                                                      var checkBoxComponent:§&!3§ = component as §&!3§;
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               addr133:
                                                               §§push(§#x§.§=!!§);
                                                               §§push(§#x§.§=!!§.§9!E§);
                                                               if(_loc8_ || param3)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               §§pop().§9!E§ = §§pop();
                                                               addr145:
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  addr68:
                                                                  §§push(§#x§.§=!!§);
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     §§push(§§pop().§9!E§);
                                                                     if(!(_loc7_ && param3))
                                                                     {
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc7_ && param2))
                                                                                 {
                                                                                    addr112:
                                                                                    §§pop().§§slot[4].setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                    addr110:
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       addr120:
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§goto(addr145);
                                                                                       }
                                                                                       if(_loc8_ || param1)
                                                                                       {
                                                                                          addr480:
                                                                                          break;
                                                                                       }
                                                                                       addr195:
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc8_ || param2)
                                                                                          {
                                                                                             addr153:
                                                                                             break;
                                                                                          }
                                                                                          addr330:
                                                                                          if(!§;s§.sCheetosPopups.showPopup(§0!U§.RESTART_LEVEL))
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr589:
                                                                                                break;
                                                                                             }
                                                                                             this.§ A§();
                                                                                             addr340:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       addr301:
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr378:
                                                                                       this.§,>§();
                                                                                       break;
                                                                                       addr341:
                                                                                       addr380:
                                                                                    }
                                                                                    §§push(-1);
                                                                                    if(!(_loc7_ && param3))
                                                                                    {
                                                                                       addr542:
                                                                                       §§push(§§newactivation());
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§pop().§§slot[5] = §3t§.getItemByName("Button_Claim_Prize") as §0!@§;
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc8_ || this)
                                                                                             {
                                                                                                addr562:
                                                                                                §§push(§§pop().§§slot[5]);
                                                                                                if(!(_loc7_ && param3))
                                                                                                {
                                                                                                   §§pop().setComponentState(§&!3§.§;2§);
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      addr577:
                                                                                                      claimPrizeButton.setEnabled(false);
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§goto(addr713);
                                                                                                      }
                                                                                                   }
                                                                                                   switch(§§pop())
                                                                                                   {
                                                                                                      case 0:
                                                                                                         §§goto(addr535);
                                                                                                      default:
                                                                                                         §§goto(addr589);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr577);
                                                                                          }
                                                                                          §§goto(addr713);
                                                                                       }
                                                                                       §§goto(addr562);
                                                                                    }
                                                                                    §§goto(addr713);
                                                                                    addr489:
                                                                                 }
                                                                                 §§goto(addr593);
                                                                              }
                                                                              §§goto(addr120);
                                                                           }
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc7_ && param3))
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(§§pop().§§slot[4]);
                                                                                 if(_loc8_ || param2)
                                                                                 {
                                                                                    §§push(§&!3§.§;2§);
                                                                                    if(!(_loc7_ && param3))
                                                                                    {
                                                                                       §§pop().setComponentState(§§pop());
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc8_ || param3)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr68);
                                                                                                   }
                                                                                                   §§goto(addr480);
                                                                                                }
                                                                                                addr372:
                                                                                                if(!§;s§.sCheetosPopups.showPopup(§0!U§.§`1§))
                                                                                                {
                                                                                                   §§goto(addr378);
                                                                                                }
                                                                                                §§goto(addr341);
                                                                                             }
                                                                                             addr219:
                                                                                             break;
                                                                                             addr269:
                                                                                          }
                                                                                          addr228:
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(!(_loc7_ && param2))
                                                                                             {
                                                                                                this.§ A§();
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(_loc8_ || this)
                                                                                                   {
                                                                                                      §§goto(addr153);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr293:
                                                                                                      sCheetosPopups.hidePopup();
                                                                                                      addr295:
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr340);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr281:
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§goto(addr380);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr219);
                                                                                       }
                                                                                       §§goto(addr489);
                                                                                    }
                                                                                    §§goto(addr112);
                                                                                 }
                                                                                 §§goto(addr110);
                                                                              }
                                                                              §§goto(addr157);
                                                                           }
                                                                           §§goto(addr593);
                                                                        }
                                                                        addr351:
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(!(_loc8_ || param2))
                                                                           {
                                                                              addr390:
                                                                              if(§§pop())
                                                                              {
                                                                                 addr392:
                                                                                 §§pop();
                                                                                 if(_loc8_ || param2)
                                                                                 {
                                                                                    addr350:
                                                                                    §§goto(addr351);
                                                                                    §§push(!§7e§.§7!N§());
                                                                                 }
                                                                                 §§goto(addr589);
                                                                              }
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr372);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.§,>§();
                                                                              addr346:
                                                                           }
                                                                           §§goto(addr378);
                                                                        }
                                                                        §§goto(addr392);
                                                                     }
                                                                     addr320:
                                                                     if(_loc8_ || this)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr330);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.§ A§();
                                                                              addr309:
                                                                           }
                                                                           §§goto(addr330);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr389:
                                                                           §§goto(addr390);
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        §§goto(addr589);
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                                  §§goto(addr133);
                                                               }
                                                               addr258:
                                                               if(!_loc7_)
                                                               {
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     sCheetosPopups.hidePopup();
                                                                     §§goto(addr269);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr346);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr295);
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            §§goto(addr309);
                                                         }
                                                         §§goto(addr153);
                                                         addr218:
                                                      }
                                                      break;
                                                   case 6:
                                                      try
                                                      {
                                                         try
                                                         {
                                                         }
                                                         catch(e:Error)
                                                         {
                                                            §§goto(addr112);
                                                         }
                                                         §,!A§.§9!M§("claimPrize",§9!H§.userPrizeId);
                                                         if(_loc8_)
                                                         {
                                                            §§goto(addr112);
                                                         }
                                                      }
                                                      catch(_loc_e_:*)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§goto(addr542);
                                                            §§push(0);
                                                         }
                                                         addr535:
                                                         throw _loc6_;
                                                      }
                                                   case 0:
                                                      addr386:
                                                      §§goto(addr389);
                                                   case 1:
                                                      §§push((§7?§.§4!H§ as §<e§).§#n§());
                                                      §§push(§7?§.§4!H§);
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr320);
                                                         §§push((§§pop() as §<e§).§#n§());
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr386);
                                                      }
                                                      §§goto(addr389);
                                                   case 2:
                                                      this.§?!§();
                                                      §§goto(addr301);
                                                   case 3:
                                                      if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
                                                      {
                                                         §§goto(addr293);
                                                      }
                                                      else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§`1§)
                                                      {
                                                         addr279:
                                                         sCheetosPopups.hidePopup();
                                                         §§goto(addr281);
                                                      }
                                                      else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§]k§)
                                                      {
                                                         §§goto(addr258);
                                                      }
                                                      §§goto(addr219);
                                                   case 4:
                                                      if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
                                                      {
                                                         §§goto(addr228);
                                                      }
                                                      else
                                                      {
                                                         if(§;s§.sCheetosPopups.getCurrentPopupName() != §0!U§.§`1§)
                                                         {
                                                            if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§]k§)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     this.§?!§();
                                                                     §§goto(addr195);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr214:
                                                                     if(!_loc7_)
                                                                     {
                                                                        this.§,>§();
                                                                        §§goto(addr218);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr279);
                                                                     }
                                                                  }
                                                                  §§goto(addr378);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr153);
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                }
                                                return;
                                                addr712:
                                             }
                                             addr690:
                                             §§goto(addr712);
                                          }
                                          addr654:
                                          §§push(3);
                                          if(!_loc7_)
                                          {
                                             addr657:
                                          }
                                          §§goto(addr712);
                                       }
                                       if("REPLAY" === _loc5_)
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             §§push(1);
                                             if(_loc8_)
                                             {
                                                §§goto(addr712);
                                             }
                                             addr707:
                                             §§goto(addr712);
                                          }
                                          addr635:
                                          §§push(2);
                                          if(_loc8_ || this)
                                          {
                                             §§goto(addr712);
                                          }
                                          §§goto(addr657);
                                       }
                                       if("MENU" === _loc5_)
                                       {
                                          if(_loc8_ || param2)
                                          {
                                             §§goto(addr635);
                                          }
                                          addr682:
                                          §§push(5);
                                          if(!(_loc7_ && this))
                                          {
                                             §§goto(addr690);
                                          }
                                          §§goto(addr707);
                                       }
                                       if("BUTTON_NO" === _loc5_)
                                       {
                                          if(!(_loc7_ && param3))
                                          {
                                             §§goto(addr654);
                                          }
                                          §§goto(addr682);
                                       }
                                       if("BUTTON_YES" === _loc5_)
                                       {
                                          if(!(_loc7_ && param2))
                                          {
                                             §§push(4);
                                             if(_loc8_ || param3)
                                             {
                                                §§goto(addr712);
                                             }
                                             §§goto(addr690);
                                          }
                                          addr694:
                                          §§push(6);
                                          if(!_loc7_)
                                          {
                                             §§goto(addr707);
                                          }
                                          §§goto(addr712);
                                       }
                                       if("CHECKBOX_CHANGE" === _loc5_)
                                       {
                                          if(_loc8_)
                                          {
                                             §§goto(addr682);
                                          }
                                          §§goto(addr694);
                                       }
                                       if("CLAIM_PRIZE" === _loc5_)
                                       {
                                          §§goto(addr694);
                                       }
                                       §§goto(addr712);
                                       §§push(7);
                                    }
                                    §§goto(addr682);
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private function §?<§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:§0!@§ = §3t§.getItemByName("Button_Replay") as §0!@§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§0!@§ = §3t§.getItemByName("Button_Next") as §0!@§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§0!@§ = §3t§.getItemByName("Button_Menu") as §0!@§;
         var _loc6_:§0!@§ = §3t§.getItemByName("Button_Claim_Prize") as §0!@§;
         if(!(_loc8_ && _loc1_))
         {
            §§push(§9!H§.hasWonPrize);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  _loc6_.visible = false;
                  loop1:
                  while(true)
                  {
                     if(_loc7_)
                     {
                        continue loop0;
                     }
                     addr133:
                     while(true)
                     {
                        if(!(_loc8_ && this))
                        {
                           _loc4_.visible = false;
                           addr66:
                           return;
                           addr143:
                           addr108:
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  _loc6_.visible = true;
                  addr189:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr163);
      }
      
      private function § A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[!X§.§]!J§();
            do
            {
               mNextState = §[!X§.§9!P§;
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      private function §,>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §[!X§.§9P§();
         }
         do
         {
            mNextState = StateCutScene.§9!P§;
         }
         while(!_loc2_);
         
      }
      
      private function §?!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = §`L§.§9!P§;
         }
      }
   }
}
